import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';

import '../../../../core/services/remote/api_result.dart';

class ResendOtpUseCase {
  const ResendOtpUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute() {
    return _repo.resendOtp();
  }
}
