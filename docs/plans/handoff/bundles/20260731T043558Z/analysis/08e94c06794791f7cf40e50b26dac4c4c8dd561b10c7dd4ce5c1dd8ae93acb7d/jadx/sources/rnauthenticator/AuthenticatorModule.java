package rnauthenticator;

import androidx.autofill.HintConstants;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;
import rnauthenticator.authenticator.Authenticator;
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

/* compiled from: AuthenticatorModule.kt */
@ReactModule(hasConstants = true, name = AuthenticatorModule.REACT_CLASS)
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J(\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010 \u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J(\u0010&\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010)\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lrnauthenticator/AuthenticatorModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "authenticator", "Lrnauthenticator/authenticator/Authenticator;", "getName", "", "initialize", "", "config", "Lcom/facebook/react/bridge/ReadableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "emailLogin", "email", HintConstants.AUTOFILL_HINT_PASSWORD, "socialLogin", "socialToken", "provider", "otpLogin", "otpId", "otp", "signUp", "resetPassword", "verifyEmail", "token", "updatePassword", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "verifyResetPasswordToken", "verifyUserExist", "deleteAccount", "userId", "generateOTP", "recipient", "id", "setPassword", "currentPassword", "refreshToken", "verifyOTP", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class AuthenticatorModule extends ReactContextBaseJavaModule {
    private static final String APPLE = "APPLE";
    private static final String CLIENT_TYPE = "clientType";
    private static final String CONSUMER = "CONSUMER";
    private static final String CUSTOMER = "CUSTOMER";
    private static final String DEV = "DEV";
    private static final String ENVIRONMENT = "environment";
    private static final String EN_AU = "EN_AU";
    private static final String EN_MY = "EN_MY";
    private static final String EN_SG = "EN_SG";
    private static final String ERROR_TAG = "E_AUTHENTICATOR";
    private static final String FACEBOOK = "FACEBOOK";
    private static final String GOOGLE = "GOOGLE";
    private static final String ID = "ID";
    private static final String ID_ID = "ID_ID";
    private static final String KEY_CLIENT_ID = "clientId";
    private static final String KEY_CLIENT_SECRET = "clientSecret";
    private static final String KEY_REDIRECT_URL = "redirectUrl";
    private static final String KEY_REGISTRATION_TOKEN = "registrationToken";
    private static final String LOCALE = "locale";
    private static final String MARKET = "market";
    private static final String MS_MY = "MS_MY";
    private static final String MY = "MY";
    private static final String OPTIONS = "options";
    private static final String PROD = "PROD";
    public static final String REACT_CLASS = "Authenticator";
    private static final String SG = "SG";
    private static final String STG = "STG";
    private static final String TH = "TH";
    private static final String TH_TH = "TH_TH";
    private static final String TOKEN_EXCHANGE_FLOW = "tokenExchangeFlow";
    private Authenticator authenticator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticatorModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a3  */
    @com.facebook.react.bridge.ReactMethod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initialize(com.facebook.react.bridge.ReadableMap r13, com.facebook.react.bridge.Promise r14) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rnauthenticator.AuthenticatorModule.initialize(com.facebook.react.bridge.ReadableMap, com.facebook.react.bridge.Promise):void");
    }

    @ReactMethod
    public final void emailLogin(String email, String password, final Promise promise) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.emailLogin(email, password, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit emailLogin$lambda$11;
                emailLogin$lambda$11 = AuthenticatorModule.emailLogin$lambda$11(Promise.this, (Result) obj);
                return emailLogin$lambda$11;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit emailLogin$lambda$11(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(Token.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006c  */
    @com.facebook.react.bridge.ReactMethod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void socialLogin(java.lang.String r4, java.lang.String r5, final com.facebook.react.bridge.Promise r6) {
        /*
            r3 = this;
            java.lang.String r0 = "socialToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "provider"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "promise"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            rnauthenticator.authenticator.Authenticator r0 = r3.authenticator
            java.lang.String r1 = "E_AUTHENTICATOR"
            if (r0 != 0) goto L25
            java.lang.IllegalAccessError r4 = new java.lang.IllegalAccessError
            java.lang.String r5 = "Authenticator has not been initialised"
            r4.<init>(r5)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            r6.reject(r1, r4)
            return
        L25:
            int r0 = r5.hashCode()
            r2 = 62491450(0x3b98b3a, float:1.0905288E-36)
            if (r0 == r2) goto L51
            r2 = 1279756998(0x4c478ac6, float:5.230876E7)
            if (r0 == r2) goto L45
            r2 = 2108052025(0x7da65239, float:2.7634846E37)
            if (r0 == r2) goto L39
            goto L59
        L39:
            java.lang.String r0 = "GOOGLE"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L42
            goto L59
        L42:
            rnauthenticator.authenticator.SocialLoginProvider r5 = rnauthenticator.authenticator.SocialLoginProvider.GOOGLE
            goto L68
        L45:
            java.lang.String r0 = "FACEBOOK"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L4e
            goto L59
        L4e:
            rnauthenticator.authenticator.SocialLoginProvider r5 = rnauthenticator.authenticator.SocialLoginProvider.FACEBOOK
            goto L68
        L51:
            java.lang.String r0 = "APPLE"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L66
        L59:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Unsupported social login provider"
            r4.<init>(r5)
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            r6.reject(r1, r4)
            return
        L66:
            rnauthenticator.authenticator.SocialLoginProvider r5 = rnauthenticator.authenticator.SocialLoginProvider.APPLE
        L68:
            rnauthenticator.authenticator.Authenticator r0 = r3.authenticator
            if (r0 != 0) goto L72
            java.lang.String r0 = "authenticator"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = 0
        L72:
            rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda8 r1 = new rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda8
            r1.<init>()
            r0.socialLogin(r4, r5, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: rnauthenticator.AuthenticatorModule.socialLogin(java.lang.String, java.lang.String, com.facebook.react.bridge.Promise):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit socialLogin$lambda$12(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(Token.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void otpLogin(String email, String otpId, String otp, final Promise promise) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(otpId, "otpId");
        Intrinsics.checkNotNullParameter(otp, "otp");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.otpLogin(email, otpId, otp, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit otpLogin$lambda$13;
                otpLogin$lambda$13 = AuthenticatorModule.otpLogin$lambda$13(Promise.this, (Result) obj);
                return otpLogin$lambda$13;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit otpLogin$lambda$13(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(Token.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void signUp(String email, String password, final Promise promise) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.signup(email, password, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit signUp$lambda$14;
                signUp$lambda$14 = AuthenticatorModule.signUp$lambda$14(Promise.this, (Result) obj);
                return signUp$lambda$14;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit signUp$lambda$14(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(Register.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void resetPassword(String email, final Promise promise) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.resetPassword(email, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit resetPassword$lambda$15;
                resetPassword$lambda$15 = AuthenticatorModule.resetPassword$lambda$15(Promise.this, (Result) obj);
                return resetPassword$lambda$15;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resetPassword$lambda$15(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(ResetPassword.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void verifyEmail(String token, final Promise promise) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.verifyEmail(token, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyEmail$lambda$16;
                verifyEmail$lambda$16 = AuthenticatorModule.verifyEmail$lambda$16(Promise.this, (Result) obj);
                return verifyEmail$lambda$16;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyEmail$lambda$16(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(VerifiedEmail.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void updatePassword(String token, String newPassword, final Promise promise) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.updatePassword(newPassword, token, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit updatePassword$lambda$17;
                updatePassword$lambda$17 = AuthenticatorModule.updatePassword$lambda$17(Promise.this, (Result) obj);
                return updatePassword$lambda$17;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit updatePassword$lambda$17(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(UpdatePasswordConfirmation.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void verifyResetPasswordToken(String token, final Promise promise) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.verifyResetPasswordToken(token, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyResetPasswordToken$lambda$18;
                verifyResetPasswordToken$lambda$18 = AuthenticatorModule.verifyResetPasswordToken$lambda$18(Promise.this, (Result) obj);
                return verifyResetPasswordToken$lambda$18;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyResetPasswordToken$lambda$18(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(VerifiedToken.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void verifyUserExist(String email, final Promise promise) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.verifyUserExist(email, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyUserExist$lambda$19;
                verifyUserExist$lambda$19 = AuthenticatorModule.verifyUserExist$lambda$19(Promise.this, (Result) obj);
                return verifyUserExist$lambda$19;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyUserExist$lambda$19(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(UserExist.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void deleteAccount(String userId, final Promise promise) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.deleteAccount(userId, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit deleteAccount$lambda$20;
                deleteAccount$lambda$20 = AuthenticatorModule.deleteAccount$lambda$20(Promise.this, (Result) obj);
                return deleteAccount$lambda$20;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteAccount$lambda$20(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(DeleteAccount.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void generateOTP(String recipient, String id, final Promise promise) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.generateOTP(recipient, id, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit generateOTP$lambda$21;
                generateOTP$lambda$21 = AuthenticatorModule.generateOTP$lambda$21(Promise.this, (Result) obj);
                return generateOTP$lambda$21;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit generateOTP$lambda$21(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(OTP.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void setPassword(String currentPassword, String newPassword, String refreshToken, final Promise promise) {
        Intrinsics.checkNotNullParameter(currentPassword, "currentPassword");
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.setPassword(currentPassword, newPassword, refreshToken, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit password$lambda$22;
                password$lambda$22 = AuthenticatorModule.setPassword$lambda$22(Promise.this, (Result) obj);
                return password$lambda$22;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setPassword$lambda$22(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(SetPassword.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void verifyOTP(String otpId, String otp, final Promise promise) {
        Intrinsics.checkNotNullParameter(otpId, "otpId");
        Intrinsics.checkNotNullParameter(otp, "otp");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Authenticator authenticator = this.authenticator;
        if (authenticator == null) {
            promise.reject(ERROR_TAG, new IllegalAccessError("Authenticator has not been initialised"));
            return;
        }
        if (authenticator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authenticator");
            authenticator = null;
        }
        authenticator.verifyOTP(otpId, otp, new Function1() { // from class: rnauthenticator.AuthenticatorModule$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit verifyOTP$lambda$23;
                verifyOTP$lambda$23 = AuthenticatorModule.verifyOTP$lambda$23(Promise.this, (Result) obj);
                return verifyOTP$lambda$23;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit verifyOTP$lambda$23(Promise promise, Result response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response instanceof Result.Success) {
            promise.resolve(UtilsKt.toWritableMap(Json.INSTANCE.encodeToJsonElement(OtpVerification.INSTANCE.serializer(), ((Result.Success) response).getValue())));
        } else {
            if (!(response instanceof Result.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            promise.reject(ERROR_TAG, ((Result.Error) response).getError());
        }
        return Unit.INSTANCE;
    }
}
