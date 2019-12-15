#define HEADER_USERNAME "X-USERNAME"

void loginFailed(HTTPResponse * res) {
  res->setStatusCode(401);
  res->setStatusText("Unauthorized");
  res->setHeader("Content-Type", "text/plain");
  res->setHeader("WWW-Authenticate", "Basic realm=\"ESP32 privileged area\"");
  res->println("401. Unauthorized");
}

void indexHandler(HTTPRequest * req, HTTPResponse * res) {
  req->discardRequestBody();
  res->setStatusCode(200);
  res->setStatusText("OK");
  res->setHeader("Content-Type", "text/plain");
  res->println("Server ok");
}

void login(HTTPRequest * req, HTTPResponse * res, std::function<void()> next) {
  req->setHeader(HEADER_USERNAME, "");

  std::string reqUsername = req->getBasicAuthUser();
  std::string reqPassword = req->getBasicAuthPassword();

  if (reqUsername.length() > 0 && reqPassword.length() > 0) {
    if (reqUsername == "admin" && reqPassword == "secret") {
      //sikeres azonosítás
      req->setHeader(HEADER_USERNAME, reqUsername);
      //következő middleware
      next();
    }
    else {
      loginFailed(res);
    }
  }
  else {
    next();
  }
}

void auth(HTTPRequest * req, HTTPResponse * res, std::function<void()> next) {
  std::string username = req->getHeader(HEADER_USERNAME);
  if (username != "admin") {
    loginFailed(res);
  }
  else {
    next();
  }
}

void gpio(HTTPRequest * req, HTTPResponse * res, std::function<void()> next) {
  res->setStatusCode(200);
  res->setStatusText("OK");
  res->setHeader("Content-Type", "text/plain");
  if (req->getRequestString() == "/on") {
    digitalWrite(LED_BUILTIN, HIGH);
    res->println("on");
  }
  if (req->getRequestString() == "/off") {
    digitalWrite(LED_BUILTIN, LOW);
    res->println("off");
  }
}
