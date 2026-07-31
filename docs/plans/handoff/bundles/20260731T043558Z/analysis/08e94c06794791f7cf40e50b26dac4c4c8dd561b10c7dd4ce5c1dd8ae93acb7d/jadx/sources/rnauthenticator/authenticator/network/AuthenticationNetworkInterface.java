package rnauthenticator.authenticator.network;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import rnauthenticator.authenticator.network.model.request.AuthenticationData;
import rnauthenticator.authenticator.network.model.request.CodeExchangeData;
import rnauthenticator.authenticator.network.model.request.DeleteAccountData;
import rnauthenticator.authenticator.network.model.request.EmailVerificationData;
import rnauthenticator.authenticator.network.model.request.OTPAuthenticationData;
import rnauthenticator.authenticator.network.model.request.OtpVerificationData;
import rnauthenticator.authenticator.network.model.request.RegistrationData;
import rnauthenticator.authenticator.network.model.request.ResetPasswordData;
import rnauthenticator.authenticator.network.model.request.SetPasswordData;
import rnauthenticator.authenticator.network.model.request.UpdatePasswordData;
import rnauthenticator.authenticator.network.model.response.AuthResponse;
import rnauthenticator.authenticator.network.model.response.DeleteAccountResponse;
import rnauthenticator.authenticator.network.model.response.EmailVerificationResponse;
import rnauthenticator.authenticator.network.model.response.OTPResponse;
import rnauthenticator.authenticator.network.model.response.OtpVerificationResponse;
import rnauthenticator.authenticator.network.model.response.RegistrationResponse;
import rnauthenticator.authenticator.network.model.response.ResetPasswordResponse;
import rnauthenticator.authenticator.network.model.response.SetPasswordResponse;
import rnauthenticator.authenticator.network.model.response.TokenVerificationResponse;
import rnauthenticator.authenticator.network.model.response.UpdatePasswordResponse;
import rnauthenticator.authenticator.network.model.response.UserExistResponse;

/* compiled from: AuthenticationNetworkInterface.kt */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000b2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000e2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00102\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00132\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00162\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001a2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020 2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020#2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010%\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020&2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\b\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020)2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\b\u0012\u0004\u0012\u00020\u00030\u0007H&¨\u0006+"}, d2 = {"Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;", "", "signUp", "", "param", "Lrnauthenticator/authenticator/network/model/request/RegistrationData;", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;", FirebaseAnalytics.Event.LOGIN, "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "Lrnauthenticator/authenticator/network/model/response/AuthResponse;", "exchangeToken", "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;", "resetPassword", "Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;", "Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;", "verifyEmail", "Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;", "Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;", "updatePassword", "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", "Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;", "verifyResetPasswordToken", "token", "", "Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;", "verifyUserExist", "email", "Lrnauthenticator/authenticator/network/model/response/UserExistResponse;", "deleteAccount", "Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;", "Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;", "generateOTP", "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;", "Lrnauthenticator/authenticator/network/model/response/OTPResponse;", "setPassword", "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;", "Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;", "verifyOtp", "Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;", "Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface AuthenticationNetworkInterface {
    void deleteAccount(DeleteAccountData param, Function1<? super Result<DeleteAccountResponse>, Unit> callback);

    void exchangeToken(CodeExchangeData param, Function1<? super Result<AuthResponse>, Unit> callback);

    void generateOTP(OTPAuthenticationData param, Function1<? super Result<OTPResponse>, Unit> callback);

    void login(AuthenticationData param, Function1<? super Result<AuthResponse>, Unit> callback);

    void resetPassword(ResetPasswordData param, Function1<? super Result<ResetPasswordResponse>, Unit> callback);

    void setPassword(SetPasswordData param, Function1<? super Result<SetPasswordResponse>, Unit> callback);

    void signUp(RegistrationData param, Function1<? super Result<RegistrationResponse>, Unit> callback);

    void updatePassword(UpdatePasswordData param, Function1<? super Result<UpdatePasswordResponse>, Unit> callback);

    void verifyEmail(EmailVerificationData param, Function1<? super Result<EmailVerificationResponse>, Unit> callback);

    void verifyOtp(OtpVerificationData param, Function1<? super Result<OtpVerificationResponse>, Unit> callback);

    void verifyResetPasswordToken(String token, Function1<? super Result<TokenVerificationResponse>, Unit> callback);

    void verifyUserExist(String email, Function1<? super Result<UserExistResponse>, Unit> callback);
}
