package rnauthenticator.authenticator.service;

import androidx.autofill.HintConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.Config;
import rnauthenticator.authenticator.Result;
import rnauthenticator.authenticator.model.DeleteAccount;
import rnauthenticator.authenticator.model.DeleteAccountKt;
import rnauthenticator.authenticator.model.OTP;
import rnauthenticator.authenticator.model.OTPKt;
import rnauthenticator.authenticator.model.OtpVerification;
import rnauthenticator.authenticator.model.OtpVerificationKt;
import rnauthenticator.authenticator.model.Register;
import rnauthenticator.authenticator.model.RegisterKt;
import rnauthenticator.authenticator.model.ResetPassword;
import rnauthenticator.authenticator.model.ResetPasswordKt;
import rnauthenticator.authenticator.model.SetPassword;
import rnauthenticator.authenticator.model.SetPasswordKt;
import rnauthenticator.authenticator.model.Token;
import rnauthenticator.authenticator.model.TokenKt;
import rnauthenticator.authenticator.model.UpdatePasswordConfirmation;
import rnauthenticator.authenticator.model.UpdatePasswordConfirmationKt;
import rnauthenticator.authenticator.model.UserExist;
import rnauthenticator.authenticator.model.UserExistKt;
import rnauthenticator.authenticator.model.VerifiedEmail;
import rnauthenticator.authenticator.model.VerifiedEmailKt;
import rnauthenticator.authenticator.model.VerifiedToken;
import rnauthenticator.authenticator.model.VerifiedTokenKt;
import rnauthenticator.authenticator.network.AuthenticationNetworkInterface;
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
import rnauthenticator.authenticator.security.PKCE;

/* compiled from: AuthenticationService.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ2\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J^\u0010\u0013\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010!\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010#\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J<\u0010,\u001a\u00020\u000b2\b\u0010-\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010.\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u00100\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002010\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lrnauthenticator/authenticator/service/AuthenticationService;", "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;", "network", "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;", "config", "Lrnauthenticator/authenticator/Config;", "pkce", "Lrnauthenticator/authenticator/security/PKCE;", "<init>", "(Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;Lrnauthenticator/authenticator/Config;Lrnauthenticator/authenticator/security/PKCE;)V", "signUp", "", "email", "", HintConstants.AUTOFILL_HINT_PASSWORD, "callback", "Lkotlin/Function1;", "Lrnauthenticator/authenticator/Result;", "Lrnauthenticator/authenticator/model/Register;", FirebaseAnalytics.Event.LOGIN, "socialToken", "provider", "otpId", "otp", "Lrnauthenticator/authenticator/model/Token;", "resetPassword", "Lrnauthenticator/authenticator/model/ResetPassword;", "verifyEmail", "token", "Lrnauthenticator/authenticator/model/VerifiedEmail;", "updatePassword", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;", "verifyResetPasswordToken", "Lrnauthenticator/authenticator/model/VerifiedToken;", "verifyUserExist", "Lrnauthenticator/authenticator/model/UserExist;", "deleteAccount", "userId", "Lrnauthenticator/authenticator/model/DeleteAccount;", "generateOTP", "recipient", "id", "Lrnauthenticator/authenticator/model/OTP;", "setPassword", "currentPassword", "refreshToken", "Lrnauthenticator/authenticator/model/SetPassword;", "verifyOtp", "Lrnauthenticator/authenticator/model/OtpVerification;", "exchange", "authCode", "codeVerifier", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationService implements AuthenticationServiceInterface {
    private final Config config;
    private final AuthenticationNetworkInterface network;
    private final PKCE pkce;

    public AuthenticationService(AuthenticationNetworkInterface network, Config config, PKCE pkce) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(pkce, "pkce");
        this.network = network;
        this.config = config;
        this.pkce = pkce;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void signUp(String email, String password, final Function1<? super Result<Register>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.signUp(ParamUtilsKt.generateRegistrationData(this.config, email, password), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit signUp$lambda$2;
                signUp$lambda$2 = AuthenticationService.signUp$lambda$2(Function1.this, (kotlin.Result) obj);
                return signUp$lambda$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit signUp$lambda$2(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(RegisterKt.toRegister((RegistrationResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void login(String email, String password, String socialToken, String provider, String otpId, final String otp, final Function1<? super Result<Token>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.pkce.generateKeys();
        this.network.login(ParamUtilsKt.generateAuthenticationData(this.config, email, password, socialToken, provider, otpId, otp, this.pkce.getCodeChallenge(), this.pkce.getChallengeMethod()), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit login$lambda$5;
                login$lambda$5 = AuthenticationService.login$lambda$5(AuthenticationService.this, otp, callback, (kotlin.Result) obj);
                return login$lambda$5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit login$lambda$5(AuthenticationService authenticationService, String str, Function1 function1, kotlin.Result result) {
        String str2;
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            AuthResponse authResponse = (AuthResponse) value;
            if (!authenticationService.config.getTokenExchangeFlow() || ((str2 = str) != null && str2.length() != 0)) {
                function1.invoke(new Result.Success(TokenKt.toToken(authResponse)));
                return Unit.INSTANCE;
            }
            authenticationService.exchange(String.valueOf(authResponse.getAuthorizationCode()), authenticationService.pkce.getCodeVerifier(), function1);
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void resetPassword(String email, final Function1<? super Result<ResetPassword>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.resetPassword(ParamUtilsKt.generateResetPasswordData(this.config, email), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit resetPassword$lambda$8;
                resetPassword$lambda$8 = AuthenticationService.resetPassword$lambda$8(Function1.this, (kotlin.Result) obj);
                return resetPassword$lambda$8;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resetPassword$lambda$8(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(ResetPasswordKt.toResetPassword((ResetPasswordResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void verifyEmail(String token, final Function1<? super Result<VerifiedEmail>, Unit> callback) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.verifyEmail(ParamUtilsKt.generateEmailVerificationData(this.config, token), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyEmail$lambda$11;
                verifyEmail$lambda$11 = AuthenticationService.verifyEmail$lambda$11(Function1.this, (kotlin.Result) obj);
                return verifyEmail$lambda$11;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyEmail$lambda$11(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(VerifiedEmailKt.toVerifiedEmail((EmailVerificationResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void updatePassword(String token, String newPassword, final Function1<? super Result<UpdatePasswordConfirmation>, Unit> callback) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.updatePassword(ParamUtilsKt.generateUpdatePasswordData(this.config, token, newPassword), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit updatePassword$lambda$14;
                updatePassword$lambda$14 = AuthenticationService.updatePassword$lambda$14(Function1.this, (kotlin.Result) obj);
                return updatePassword$lambda$14;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit updatePassword$lambda$14(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(UpdatePasswordConfirmationKt.toUpdatePassword((UpdatePasswordResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void verifyResetPasswordToken(String token, final Function1<? super Result<VerifiedToken>, Unit> callback) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.verifyResetPasswordToken(token, new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyResetPasswordToken$lambda$17;
                verifyResetPasswordToken$lambda$17 = AuthenticationService.verifyResetPasswordToken$lambda$17(Function1.this, (kotlin.Result) obj);
                return verifyResetPasswordToken$lambda$17;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyResetPasswordToken$lambda$17(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(VerifiedTokenKt.toVerifiedToken((TokenVerificationResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void verifyUserExist(String email, final Function1<? super Result<UserExist>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.verifyUserExist(email, new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyUserExist$lambda$20;
                verifyUserExist$lambda$20 = AuthenticationService.verifyUserExist$lambda$20(Function1.this, (kotlin.Result) obj);
                return verifyUserExist$lambda$20;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyUserExist$lambda$20(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(UserExistKt.toUserExist((UserExistResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void deleteAccount(String userId, final Function1<? super Result<DeleteAccount>, Unit> callback) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.deleteAccount(ParamUtilsKt.generateDeleteAccountData(userId), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit deleteAccount$lambda$23;
                deleteAccount$lambda$23 = AuthenticationService.deleteAccount$lambda$23(Function1.this, (kotlin.Result) obj);
                return deleteAccount$lambda$23;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteAccount$lambda$23(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(DeleteAccountKt.toDeleteAccount((DeleteAccountResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void generateOTP(String recipient, String id, final Function1<? super Result<OTP>, Unit> callback) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        AuthenticationNetworkInterface authenticationNetworkInterface = this.network;
        Config config = this.config;
        authenticationNetworkInterface.generateOTP(ParamUtilsKt.generateOTPAuthenticationData(config, recipient, id, config.getRegion(), this.config.getLocale().toShort$propertyguru_react_native_authenticator_release()), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit generateOTP$lambda$26;
                generateOTP$lambda$26 = AuthenticationService.generateOTP$lambda$26(Function1.this, (kotlin.Result) obj);
                return generateOTP$lambda$26;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit generateOTP$lambda$26(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(OTPKt.toOTP((OTPResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void setPassword(String currentPassword, String newPassword, String refreshToken, final Function1<? super Result<SetPassword>, Unit> callback) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.setPassword(ParamUtilsKt.generateSetPasswordData(this.config, currentPassword, newPassword, refreshToken), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit password$lambda$29;
                password$lambda$29 = AuthenticationService.setPassword$lambda$29(Function1.this, (kotlin.Result) obj);
                return password$lambda$29;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setPassword$lambda$29(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(SetPasswordKt.toSetPassword((SetPasswordResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    @Override // rnauthenticator.authenticator.service.AuthenticationServiceInterface
    public void verifyOtp(String otpId, String otp, final Function1<? super Result<OtpVerification>, Unit> callback) {
        Intrinsics.checkNotNullParameter(otpId, "otpId");
        Intrinsics.checkNotNullParameter(otp, "otp");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.network.verifyOtp(ParamUtilsKt.generateOtpVerificationData(this.config, otpId, otp), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyOtp$lambda$32;
                verifyOtp$lambda$32 = AuthenticationService.verifyOtp$lambda$32(Function1.this, (kotlin.Result) obj);
                return verifyOtp$lambda$32;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyOtp$lambda$32(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(OtpVerificationKt.toOtpVerification((OtpVerificationResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }

    private final void exchange(String authCode, String codeVerifier, final Function1<? super Result<Token>, Unit> callback) {
        this.network.exchangeToken(ParamUtilsKt.generateCodeExchangeData(this.config, authCode, codeVerifier), new Function1() { // from class: rnauthenticator.authenticator.service.AuthenticationService$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit exchange$lambda$35;
                exchange$lambda$35 = AuthenticationService.exchange$lambda$35(Function1.this, (kotlin.Result) obj);
                return exchange$lambda$35;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit exchange$lambda$35(Function1 function1, kotlin.Result result) {
        Object value = result.getValue();
        if (kotlin.Result.m2105isSuccessimpl(value)) {
            function1.invoke(new Result.Success(TokenKt.toToken((AuthResponse) value)));
        }
        Throwable m2101exceptionOrNullimpl = kotlin.Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            function1.invoke(new Result.Error(m2101exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }
}
