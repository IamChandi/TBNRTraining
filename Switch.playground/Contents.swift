var StatusCode: Int16 = 401
var ErrorMessage: String = "There was an error"

//Style 1
switch StatusCode {
case 401:
    ErrorMessage="Bad Request"
case 402:
    ErrorMessage="Unauthorized"
case 403:
    ErrorMessage="Forbidden"
case 404:
    ErrorMessage="Not Found"
default:
    ErrorMessage="None"
}

print (ErrorMessage)

//Style 2
switch StatusCode {
case 401, 402, 403, 404:
    ErrorMessage="There is something wrong with your request."
    fallthrough
default:
    ErrorMessage += "Please try again"
}

print (ErrorMessage)

ErrorMessage = ""

//Style 3
switch StatusCode {
case 100, 101:
    ErrorMessage += "Informational, \(StatusCode)"
case 204:
    ErrorMessage += "Successful but no content, \(StatusCode)"
case 300...307:
    ErrorMessage += "Redirectional, \(StatusCode)"
case 400...417:
    ErrorMessage += "Client Error, \(StatusCode)"
case 500...517:
    ErrorMessage += "Server Error, \(StatusCode)"
case let UnknownCode:
    ErrorMessage = "\(UnknownCode) is not a known error code"
}
print (ErrorMessage)

let error = (StatusCode,ErrorMessage)

print(error.0)
print(error.1)

