package rnauthenticator.authenticator;

import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.di.BaseModule;
import rnauthenticator.authenticator.di.DaggerBaseComponent;
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
import rnauthenticator.authenticator.service.AuthenticationServiceInterface;

/* compiled from: Authenticator.kt */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J0\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0013\u0012\u0004\u0012\u00020\r0\u0012J8\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010&\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010(\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020,0\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010-\u001a\u00020\r2\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u0013\u0012\u0004\u0012\u00020\r0\u0012J:\u00101\u001a\u00020\r2\b\u00102\u001a\u0004\u0018\u00010\u000f2\u0006\u0010$\u001a\u00020\u000f2\u0006\u00103\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002040\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u00105\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002060\u0013\u0012\u0004\u0012\u00020\r0\u0012R\u001e\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u00067"}, d2 = {"Lrnauthenticator/authenticator/Authenticator;", "", "config", "Lrnauthenticator/authenticator/Config;", "<init>", "(Lrnauthenticator/authenticator/Config;)V", NotificationCompat.CATEGORY_SERVICE, "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;", "getService$propertyguru_react_native_authenticator_release", "()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;", "setService$propertyguru_react_native_authenticator_release", "(Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;)V", "signup", "", "email", "", HintConstants.AUTOFILL_HINT_PASSWORD, "callback", "Lkotlin/Function1;", "Lrnauthenticator/authenticator/Result;", "Lrnauthenticator/authenticator/model/Register;", "emailLogin", "Lrnauthenticator/authenticator/model/Token;", "socialLogin", "socialToken", "provider", "Lrnauthenticator/authenticator/SocialLoginProvider;", "otpLogin", "otpId", "otp", "resetPassword", "Lrnauthenticator/authenticator/model/ResetPassword;", "verifyEmail", "token", "Lrnauthenticator/authenticator/model/VerifiedEmail;", "updatePassword", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;", "verifyResetPasswordToken", "Lrnauthenticator/authenticator/model/VerifiedToken;", "verifyUserExist", "Lrnauthenticator/authenticator/model/UserExist;", "deleteAccount", "userId", "Lrnauthenticator/authenticator/model/DeleteAccount;", "generateOTP", "recipient", "id", "Lrnauthenticator/authenticator/model/OTP;", "setPassword", "currentPassword", "refreshToken", "Lrnauthenticator/authenticator/model/SetPassword;", "verifyOTP", "Lrnauthenticator/authenticator/model/OtpVerification;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Authenticator {

    @Inject
    public AuthenticationServiceInterface service;

    public Authenticator(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        DaggerBaseComponent.builder().baseModule(new BaseModule(config)).build().inject(this);
    }

    public final AuthenticationServiceInterface getService$propertyguru_react_native_authenticator_release() {
        AuthenticationServiceInterface authenticationServiceInterface = this.service;
        if (authenticationServiceInterface != null) {
            return authenticationServiceInterface;
        }
        Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
        return null;
    }

    public final void setService$propertyguru_react_native_authenticator_release(AuthenticationServiceInterface authenticationServiceInterface) {
        Intrinsics.checkNotNullParameter(authenticationServiceInterface, "<set-?>");
        this.service = authenticationServiceInterface;
    }

    public final void signup(String email, String password, Function1<? super Result<Register>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().signUp(email, password, callback);
    }

    public final void emailLogin(String email, String password, Function1<? super Result<Token>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(callback, "callback");
        AuthenticationServiceInterface.DefaultImpls.login$default(getService$propertyguru_react_native_authenticator_release(), email, password, null, null, null, null, callback, 60, null);
    }

    public final void socialLogin(String socialToken, SocialLoginProvider provider, Function1<? super Result<Token>, Unit> callback) {
        Intrinsics.checkNotNullParameter(socialToken, "socialToken");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        AuthenticationServiceInterface.DefaultImpls.login$default(getService$propertyguru_react_native_authenticator_release(), null, null, socialToken, provider.getValue(), null, null, callback, 51, null);
    }

    public final void otpLogin(String email, String otpId, String otp, Function1<? super Result<Token>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(otpId, "otpId");
        Intrinsics.checkNotNullParameter(otp, "otp");
        Intrinsics.checkNotNullParameter(callback, "callback");
        AuthenticationServiceInterface.DefaultImpls.login$default(getService$propertyguru_react_native_authenticator_release(), email, null, null, null, otpId, otp, callback, 14, null);
    }

    public final void resetPassword(String email, Function1<? super Result<ResetPassword>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().resetPassword(email, callback);
    }

    public final void verifyEmail(String token, Function1<? super Result<VerifiedEmail>, Unit> callback) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().verifyEmail(token, callback);
    }

    public final void updatePassword(String newPassword, String token, Function1<? super Result<UpdatePasswordConfirmation>, Unit> callback) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().updatePassword(token, newPassword, callback);
    }

    public final void verifyResetPasswordToken(String token, Function1<? super Result<VerifiedToken>, Unit> callback) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().verifyResetPasswordToken(token, callback);
    }

    public final void verifyUserExist(String email, Function1<? super Result<UserExist>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().verifyUserExist(email, callback);
    }

    public final void deleteAccount(String userId, Function1<? super Result<DeleteAccount>, Unit> callback) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().deleteAccount(userId, callback);
    }

    public final void generateOTP(String recipient, String id, Function1<? super Result<OTP>, Unit> callback) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().generateOTP(recipient, id, callback);
    }

    public final void setPassword(String currentPassword, String newPassword, String refreshToken, Function1<? super Result<SetPassword>, Unit> callback) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().setPassword(currentPassword, newPassword, refreshToken, callback);
    }

    public final void verifyOTP(String otpId, String otp, Function1<? super Result<OtpVerification>, Unit> callback) {
        Intrinsics.checkNotNullParameter(otpId, "otpId");
        Intrinsics.checkNotNullParameter(otp, "otp");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getService$propertyguru_react_native_authenticator_release().verifyOtp(otpId, otp, callback);
    }
}
