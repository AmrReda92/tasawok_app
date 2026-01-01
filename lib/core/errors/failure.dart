abstract class Failure {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerError extends Failure {
  ServerError(super.errorMessage);

}