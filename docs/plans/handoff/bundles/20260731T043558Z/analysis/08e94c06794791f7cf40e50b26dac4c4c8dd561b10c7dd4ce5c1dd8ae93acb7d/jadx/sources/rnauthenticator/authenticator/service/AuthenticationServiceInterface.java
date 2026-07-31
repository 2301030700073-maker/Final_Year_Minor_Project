package rnauthenticator.authenticator.service;

import androidx.autofill.HintConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import rnauthenticator.authenticator.Result;
import rnauthenticator.authenticator.model.DeleteAccount;
import rnauthenticator.authenticator.model.OTP;
import rnauthenticator.authenticator.model.OtpVerification;
import rnauthenticator.authenticator.model.Register;
import rnauthenticator.authenticator.model.ResetPassword;
import rnauthenticator.authenticator.model.SetPassword;
import rnauthenticator.authenticator.model.Token;
import rnauthenticator.authenticator.model.UpdatePasswordConfirmation;
import rnauthenticator.authenticator.model.UserExist;
import rnauthenticator.authenticator.model.VerifiedEmail;
import rnauthenticator.authenticator.model.VerifiedToken;

/* compiled from: AuthenticationServiceInterface.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u00030\bH&Jj\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\t\u0012\u0004\u0012\u00020\u00030\bH&J*\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t\u0012\u0004\u0012\u00020\u00030\bH&J*\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\t\u0012\u0004\u0012\u00020\u00030\bH&J2\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\t\u0012\u0004\u0012\u00020\u00030\bH&J*\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\t\u0012\u0004\u0012\u00020\u00030\bH&J*\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\t\u0012\u0004\u0012\u00020\u00030\bH&J*\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\t\u0012\u0004\u0012\u00020\u00030\bH&J2\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\t\u0012\u0004\u0012\u00020\u00030\bH&J<\u0010$\u001a\u00020\u00032\b\u0010%\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\t\u0012\u0004\u0012\u00020\u00030\bH&J2\u0010(\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0\t\u0012\u0004\u0012\u00020\u00030\bH&¨\u0006*"}, d2 = {"Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;", "", "signUp", "", "email", "", HintConstants.AUTOFILL_HINT_PASSWORD, "callback", "Lkotlin/Function1;", "Lrnauthenticator/authenticator/Result;", "Lrnauthenticator/authenticator/model/Register;", FirebaseAnalytics.Event.LOGIN, "socialToken", "provider", "otpId", "otp", "Lrnauthenticator/authenticator/model/Token;", "resetPassword", "Lrnauthenticator/authenticator/model/ResetPassword;", "verifyEmail", "token", "Lrnauthenticator/authenticator/model/VerifiedEmail;", "updatePassword", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;", "verifyResetPasswordToken", "Lrnauthenticator/authenticator/model/VerifiedToken;", "verifyUserExist", "Lrnauthenticator/authenticator/model/UserExist;", "deleteAccount", "userId", "Lrnauthenticator/authenticator/model/DeleteAccount;", "generateOTP", "recipient", "id", "Lrnauthenticator/authenticator/model/OTP;", "setPassword", "currentPassword", "refreshToken", "Lrnauthenticator/authenticator/model/SetPassword;", "verifyOtp", "Lrnauthenticator/authenticator/model/OtpVerification;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface AuthenticationServiceInterface {
    void deleteAccount(String userId, Function1<? super Result<DeleteAccount>, Unit> callback);

    void generateOTP(String recipient, String id, Function1<? super Result<OTP>, Unit> callback);

    void login(String email, String password, String socialToken, String provider, String otpId, String otp, Function1<? super Result<Token>, Unit> callback);

    void resetPassword(String email, Function1<? super Result<ResetPassword>, Unit> callback);

    void setPassword(String currentPassword, String newPassword, String refreshToken, Function1<? super Result<SetPassword>, Unit> callback);

    void signUp(String email, String password, Function1<? super Result<Register>, Unit> callback);

    void updatePassword(String token, String newPassword, Function1<? super Result<UpdatePasswordConfirmation>, Unit> callback);

    void verifyEmail(String token, Function1<? super Result<VerifiedEmail>, Unit> callback);

    void verifyOtp(String otpId, String otp, Function1<? super Result<OtpVerification>, Unit> callback);

    void verifyResetPasswordToken(String token, Function1<? super Result<VerifiedToken>, Unit> callback);

    void verifyUserExist(String email, Function1<? super Result<UserExist>, Unit> callback);

    /* compiled from: AuthenticationServiceInterface.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ void login$default(AuthenticationServiceInterface authenticationServiceInterface, String str, String str2, String str3, String str4, String str5, String str6, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: login");
            }
            authenticationServiceInterface.login((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, function1);
        }
    }
}
