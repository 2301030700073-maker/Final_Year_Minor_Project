package rnauthenticator.authenticator.network;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import okhttp3.Response;
import okhttp3.ResponseBody;
import rnauthenticator.authenticator.network.Endpoint;
import rnauthenticator.authenticator.network.http.HttpRequest;
import rnauthenticator.authenticator.network.model.request.AuthenticationData;
import rnauthenticator.authenticator.network.model.request.AuthenticationDataKt;
import rnauthenticator.authenticator.network.model.request.CodeExchangeData;
import rnauthenticator.authenticator.network.model.request.CodeExchangeDataKt;
import rnauthenticator.authenticator.network.model.request.DeleteAccountData;
import rnauthenticator.authenticator.network.model.request.DeleteAccountDataKt;
import rnauthenticator.authenticator.network.model.request.EmailVerificationData;
import rnauthenticator.authenticator.network.model.request.EmailVerificationDataKt;
import rnauthenticator.authenticator.network.model.request.OTPAuthenticationData;
import rnauthenticator.authenticator.network.model.request.OTPAuthenticationDataKt;
import rnauthenticator.authenticator.network.model.request.OtpVerificationData;
import rnauthenticator.authenticator.network.model.request.OtpVerificationDataKt;
import rnauthenticator.authenticator.network.model.request.RegistrationData;
import rnauthenticator.authenticator.network.model.request.RegistrationDataKt;
import rnauthenticator.authenticator.network.model.request.ResetPasswordData;
import rnauthenticator.authenticator.network.model.request.ResetPasswordDataKt;
import rnauthenticator.authenticator.network.model.request.SetPasswordData;
import rnauthenticator.authenticator.network.model.request.SetPasswordDataKt;
import rnauthenticator.authenticator.network.model.request.UpdatePasswordData;
import rnauthenticator.authenticator.network.model.request.UpdatePasswordDataKt;
import rnauthenticator.authenticator.network.model.response.AuthError;
import rnauthenticator.authenticator.network.model.response.AuthResponse;
import rnauthenticator.authenticator.network.model.response.DeleteAccountResponse;
import rnauthenticator.authenticator.network.model.response.EmailVerificationResponse;
import rnauthenticator.authenticator.network.model.response.OTPResponse;
import rnauthenticator.authenticator.network.model.response.OtpVerificationResponse;
import rnauthenticator.authenticator.network.model.response.RegistrationResponse;
import rnauthenticator.authenticator.network.model.response.ResetPasswordResponse;
import rnauthenticator.authenticator.network.model.response.SetPasswordResponse;
import rnauthenticator.authenticator.network.model.response.ThrowableUtilsKt;
import rnauthenticator.authenticator.network.model.response.TokenVerificationResponse;
import rnauthenticator.authenticator.network.model.response.UpdatePasswordResponse;
import rnauthenticator.authenticator.network.model.response.UserExistResponse;

/* compiled from: AuthenticationNetwork.kt */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00112\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00142\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0015\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00162\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00192\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u001c2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020 2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010%\u001a\u00020\t2\u0006\u0010\n\u001a\u00020&2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020'0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010(\u001a\u00020\t2\u0006\u0010\n\u001a\u00020)2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010+\u001a\u00020\t2\u0006\u0010\n\u001a\u00020,2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020-0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010.\u001a\u00020\t2\u0006\u0010\n\u001a\u00020/2\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016JN\u00101\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H20\u000e\u0012\u0004\u0012\u00020\t0\r\"\u0004\b\u0000\u001022\u0018\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H20\u000e\u0012\u0004\u0012\u00020\t0\r2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u0002040\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lrnauthenticator/authenticator/network/AuthenticationNetwork;", "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;", "httpRequest", "Lrnauthenticator/authenticator/network/http/HttpRequest;", "endpoint", "Lrnauthenticator/authenticator/network/Endpoint;", "<init>", "(Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)V", "signUp", "", "param", "Lrnauthenticator/authenticator/network/model/request/RegistrationData;", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;", FirebaseAnalytics.Event.LOGIN, "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "Lrnauthenticator/authenticator/network/model/response/AuthResponse;", "exchangeToken", "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;", "resetPassword", "Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;", "Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;", "verifyEmail", "Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;", "Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;", "updatePassword", "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", "Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;", "verifyResetPasswordToken", "token", "", "Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;", "verifyUserExist", "email", "Lrnauthenticator/authenticator/network/model/response/UserExistResponse;", "deleteAccount", "Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;", "Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;", "generateOTP", "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;", "Lrnauthenticator/authenticator/network/model/response/OTPResponse;", "setPassword", "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;", "Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;", "verifyOtp", "Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;", "Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;", "processResponse", "T", "parseErrorResponse", "", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AuthenticationNetwork implements AuthenticationNetworkInterface {
    private final Endpoint endpoint;
    private final HttpRequest httpRequest;

    public AuthenticationNetwork(HttpRequest httpRequest, Endpoint endpoint) {
        Intrinsics.checkNotNullParameter(httpRequest, "httpRequest");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        this.httpRequest = httpRequest;
        this.endpoint = endpoint;
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void signUp(RegistrationData param, Function1<? super Result<RegistrationResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Function1 processResponse = processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable signUp$lambda$0;
                signUp$lambda$0 = AuthenticationNetwork.signUp$lambda$0((Throwable) obj);
                return signUp$lambda$0;
            }
        });
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.SIGN_UP), RegistrationDataKt.toRequestParams(param), RegistrationDataKt.toQueryParams(param), processResponse, null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                RegistrationResponse signUp$lambda$1;
                signUp$lambda$1 = AuthenticationNetwork.signUp$lambda$1((Response) obj);
                return signUp$lambda$1;
            }
        }, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable signUp$lambda$0(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toRegistrationError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RegistrationResponse signUp$lambda$1(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<RegistrationResponse> serializer = RegistrationResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (RegistrationResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void login(AuthenticationData param, Function1<? super Result<AuthResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Function1 processResponse = processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable login$lambda$2;
                login$lambda$2 = AuthenticationNetwork.login$lambda$2((Throwable) obj);
                return login$lambda$2;
            }
        });
        Endpoint endpoint = this.endpoint;
        String otp = param.getOtp();
        HttpRequest.post$default(this.httpRequest, endpoint.of$propertyguru_react_native_authenticator_release((otp == null || StringsKt.isBlank(otp)) ? Endpoint.Operation.LOGIN : Endpoint.Operation.OTP_LOGIN), AuthenticationDataKt.toRequestParams(param), null, processResponse, null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AuthResponse login$lambda$3;
                login$lambda$3 = AuthenticationNetwork.login$lambda$3((Response) obj);
                return login$lambda$3;
            }
        }, 20, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable login$lambda$2(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toAuthError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AuthResponse login$lambda$3(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<AuthResponse> serializer = AuthResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (AuthResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void exchangeToken(CodeExchangeData param, Function1<? super Result<AuthResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.TOKEN_EXCHANGE), CodeExchangeDataKt.toRequestParams(param), null, processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable exchangeToken$lambda$4;
                exchangeToken$lambda$4 = AuthenticationNetwork.exchangeToken$lambda$4((Throwable) obj);
                return exchangeToken$lambda$4;
            }
        }), null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AuthResponse exchangeToken$lambda$5;
                exchangeToken$lambda$5 = AuthenticationNetwork.exchangeToken$lambda$5((Response) obj);
                return exchangeToken$lambda$5;
            }
        }, 20, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable exchangeToken$lambda$4(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toAuthError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AuthResponse exchangeToken$lambda$5(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<AuthResponse> serializer = AuthResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (AuthResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void resetPassword(ResetPasswordData param, Function1<? super Result<ResetPasswordResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Function1 processResponse = processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable resetPassword$lambda$6;
                resetPassword$lambda$6 = AuthenticationNetwork.resetPassword$lambda$6((Throwable) obj);
                return resetPassword$lambda$6;
            }
        });
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.RESET_PASSWORD), ResetPasswordDataKt.toRequestParams(param), ResetPasswordDataKt.toQueryParams(param), processResponse, null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ResetPasswordResponse resetPassword$lambda$7;
                resetPassword$lambda$7 = AuthenticationNetwork.resetPassword$lambda$7((Response) obj);
                return resetPassword$lambda$7;
            }
        }, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable resetPassword$lambda$6(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toResetPasswordError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ResetPasswordResponse resetPassword$lambda$7(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<ResetPasswordResponse> serializer = ResetPasswordResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (ResetPasswordResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void verifyEmail(EmailVerificationData param, Function1<? super Result<EmailVerificationResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.VERIFY_EMAIL), null, EmailVerificationDataKt.toQueryParams(param), processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable verifyEmail$lambda$8;
                verifyEmail$lambda$8 = AuthenticationNetwork.verifyEmail$lambda$8((Throwable) obj);
                return verifyEmail$lambda$8;
            }
        }), null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                EmailVerificationResponse verifyEmail$lambda$9;
                verifyEmail$lambda$9 = AuthenticationNetwork.verifyEmail$lambda$9((Response) obj);
                return verifyEmail$lambda$9;
            }
        }, 18, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable verifyEmail$lambda$8(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toEmailVerificationError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EmailVerificationResponse verifyEmail$lambda$9(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<EmailVerificationResponse> serializer = EmailVerificationResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (EmailVerificationResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void updatePassword(UpdatePasswordData param, Function1<? super Result<UpdatePasswordResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Function1 processResponse = processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable updatePassword$lambda$10;
                updatePassword$lambda$10 = AuthenticationNetwork.updatePassword$lambda$10((Throwable) obj);
                return updatePassword$lambda$10;
            }
        });
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.UPDATE_PASSWORD), UpdatePasswordDataKt.toRequestParams(param), UpdatePasswordDataKt.toQueryParams(param), processResponse, null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                UpdatePasswordResponse updatePassword$lambda$11;
                updatePassword$lambda$11 = AuthenticationNetwork.updatePassword$lambda$11((Response) obj);
                return updatePassword$lambda$11;
            }
        }, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable updatePassword$lambda$10(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toUpdatePasswordError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UpdatePasswordResponse updatePassword$lambda$11(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<UpdatePasswordResponse> serializer = UpdatePasswordResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (UpdatePasswordResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void verifyResetPasswordToken(String token, Function1<? super Result<TokenVerificationResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Function1 processResponse = processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable verifyResetPasswordToken$lambda$12;
                verifyResetPasswordToken$lambda$12 = AuthenticationNetwork.verifyResetPasswordToken$lambda$12((Throwable) obj);
                return verifyResetPasswordToken$lambda$12;
            }
        });
        HttpRequest httpRequest = this.httpRequest;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.VERIFY_TOKEN), Arrays.copyOf(new Object[]{token}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        HttpRequest.get$default(httpRequest, format, null, processResponse, null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TokenVerificationResponse verifyResetPasswordToken$lambda$13;
                verifyResetPasswordToken$lambda$13 = AuthenticationNetwork.verifyResetPasswordToken$lambda$13((Response) obj);
                return verifyResetPasswordToken$lambda$13;
            }
        }, 10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable verifyResetPasswordToken$lambda$12(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toTokenVerificationError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TokenVerificationResponse verifyResetPasswordToken$lambda$13(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<TokenVerificationResponse> serializer = TokenVerificationResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (TokenVerificationResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void verifyUserExist(String email, Function1<? super Result<UserExistResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HttpRequest.get$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.USER_EXIST), MapsKt.mapOf(TuplesKt.to("email", email), TuplesKt.to("is_registration_in_progress", true)), processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable verifyUserExist$lambda$14;
                verifyUserExist$lambda$14 = AuthenticationNetwork.verifyUserExist$lambda$14((Throwable) obj);
                return verifyUserExist$lambda$14;
            }
        }), null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                UserExistResponse verifyUserExist$lambda$15;
                verifyUserExist$lambda$15 = AuthenticationNetwork.verifyUserExist$lambda$15((Response) obj);
                return verifyUserExist$lambda$15;
            }
        }, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable verifyUserExist$lambda$14(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toUserExistError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UserExistResponse verifyUserExist$lambda$15(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<UserExistResponse> serializer = UserExistResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (UserExistResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void deleteAccount(DeleteAccountData param, Function1<? super Result<DeleteAccountResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HttpRequest.delete$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.DELETE_ACCOUNT), null, DeleteAccountDataKt.toQueryParams(param), processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable deleteAccount$lambda$16;
                deleteAccount$lambda$16 = AuthenticationNetwork.deleteAccount$lambda$16((Throwable) obj);
                return deleteAccount$lambda$16;
            }
        }), null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DeleteAccountResponse deleteAccount$lambda$17;
                deleteAccount$lambda$17 = AuthenticationNetwork.deleteAccount$lambda$17((Response) obj);
                return deleteAccount$lambda$17;
            }
        }, 18, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable deleteAccount$lambda$16(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toDeleteAccountError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DeleteAccountResponse deleteAccount$lambda$17(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<DeleteAccountResponse> serializer = DeleteAccountResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (DeleteAccountResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void generateOTP(OTPAuthenticationData param, Function1<? super Result<OTPResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.httpRequest.post(this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.GENERATE_OTP), OTPAuthenticationDataKt.toRequestParams(param), OTPAuthenticationDataKt.toQueryParams(param), processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable generateOTP$lambda$18;
                generateOTP$lambda$18 = AuthenticationNetwork.generateOTP$lambda$18((Throwable) obj);
                return generateOTP$lambda$18;
            }
        }), OTPAuthenticationDataKt.toHeaderParams(param), new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                OTPResponse generateOTP$lambda$19;
                generateOTP$lambda$19 = AuthenticationNetwork.generateOTP$lambda$19((Response) obj);
                return generateOTP$lambda$19;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable generateOTP$lambda$18(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toGenerateOTPError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OTPResponse generateOTP$lambda$19(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<OTPResponse> serializer = OTPResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (OTPResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void setPassword(SetPasswordData param, Function1<? super Result<SetPasswordResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.SET_PASSWORD), SetPasswordDataKt.toRequestParams(param), null, processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable password$lambda$20;
                password$lambda$20 = AuthenticationNetwork.setPassword$lambda$20((Throwable) obj);
                return password$lambda$20;
            }
        }), SetPasswordDataKt.toHeaderParams(param), new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SetPasswordResponse password$lambda$21;
                password$lambda$21 = AuthenticationNetwork.setPassword$lambda$21((Response) obj);
                return password$lambda$21;
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable setPassword$lambda$20(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toSetPasswordError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SetPasswordResponse setPassword$lambda$21(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<SetPasswordResponse> serializer = SetPasswordResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (SetPasswordResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    @Override // rnauthenticator.authenticator.network.AuthenticationNetworkInterface
    public void verifyOtp(OtpVerificationData param, Function1<? super Result<OtpVerificationResponse>, Unit> callback) {
        Intrinsics.checkNotNullParameter(param, "param");
        Intrinsics.checkNotNullParameter(callback, "callback");
        HttpRequest.post$default(this.httpRequest, this.endpoint.of$propertyguru_react_native_authenticator_release(Endpoint.Operation.VERIFY_OTP), OtpVerificationDataKt.toRequestParams(param), null, processResponse(callback, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable verifyOtp$lambda$22;
                verifyOtp$lambda$22 = AuthenticationNetwork.verifyOtp$lambda$22((Throwable) obj);
                return verifyOtp$lambda$22;
            }
        }), null, new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                OtpVerificationResponse verifyOtp$lambda$23;
                verifyOtp$lambda$23 = AuthenticationNetwork.verifyOtp$lambda$23((Response) obj);
                return verifyOtp$lambda$23;
            }
        }, 20, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable verifyOtp$lambda$22(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return new Exception(JSONUtilsKt.jsonSerialize(AuthError.INSTANCE.serializer(), ThrowableUtilsKt.toGenerateOTPError(throwable)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OtpVerificationResponse verifyOtp$lambda$23(Response response) {
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        KSerializer<OtpVerificationResponse> serializer = OtpVerificationResponse.INSTANCE.serializer();
        ResponseBody body = response.body();
        if (body == null || (str = body.string()) == null) {
            str = "";
        }
        return (OtpVerificationResponse) JSONUtilsKt.jsonParse(serializer, str);
    }

    private final <T> Function1<Result<? extends T>, Unit> processResponse(final Function1<? super Result<? extends T>, Unit> callback, final Function1<? super Throwable, ? extends Throwable> parseErrorResponse) {
        return new Function1() { // from class: rnauthenticator.authenticator.network.AuthenticationNetwork$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit processResponse$lambda$26;
                processResponse$lambda$26 = AuthenticationNetwork.processResponse$lambda$26(Function1.this, parseErrorResponse, (Result) obj);
                return processResponse$lambda$26;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit processResponse$lambda$26(Function1 function1, Function1 function12, Result result) {
        Object value = result.getValue();
        if (Result.m2105isSuccessimpl(value)) {
            Result.Companion companion = Result.INSTANCE;
            function1.invoke(Result.m2097boximpl(Result.m2098constructorimpl(value)));
        }
        Throwable m2101exceptionOrNullimpl = Result.m2101exceptionOrNullimpl(result.getValue());
        if (m2101exceptionOrNullimpl != null) {
            Result.Companion companion2 = Result.INSTANCE;
            function1.invoke(Result.m2097boximpl(Result.m2098constructorimpl(ResultKt.createFailure((Throwable) function12.invoke(m2101exceptionOrNullimpl)))));
        }
        return Unit.INSTANCE;
    }
}
