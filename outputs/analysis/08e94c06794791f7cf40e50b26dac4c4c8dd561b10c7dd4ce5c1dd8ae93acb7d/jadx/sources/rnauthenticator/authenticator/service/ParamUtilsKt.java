package rnauthenticator.authenticator.service;

import androidx.autofill.HintConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import rnauthenticator.authenticator.Config;
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
import rnauthenticator.authenticator.security.PKCE;

/* compiled from: ParamUtils.kt */
@Metadata(d1 = {"\u0000^\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u001ad\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u001c\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0013\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0015\u001a\u00020\u0016*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0004H\u0000\u001a,\u0010\u001e\u001a\u00020\u001f*\u00020\u00022\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0000\u001a&\u0010#\u001a\u00020$*\u00020\u00022\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004H\u0000\u001a\u001c\u0010'\u001a\u00020(*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000¨\u0006)"}, d2 = {"generateRegistrationData", "Lrnauthenticator/authenticator/network/model/request/RegistrationData;", "Lrnauthenticator/authenticator/Config;", "email", "", HintConstants.AUTOFILL_HINT_PASSWORD, "generateAuthenticationData", "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "socialToken", "provider", "otpId", "otp", "codeChallenge", "challengeMethod", "Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;", "generateCodeExchangeData", "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;", "authCode", "codeVerifier", "generateResetPasswordData", "Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;", "generateEmailVerificationData", "Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;", "token", "generateUpdatePasswordData", "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "generateDeleteAccountData", "Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;", "id", "generateOTPAuthenticationData", "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;", "recipient", "region", "locale", "generateSetPasswordData", "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;", "currentPassword", "refreshToken", "generateOtpVerificationData", "Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ParamUtilsKt {
    public static final RegistrationData generateRegistrationData(Config config, String email, String password) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        String redirectUrl = config.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        return new RegistrationData(email, password, config.getLocale().getValue(), redirectUrl, config.getResponseType());
    }

    public static final AuthenticationData generateAuthenticationData(Config config, String str, String str2, String str3, String str4, String str5, String str6, String codeChallenge, PKCE.ChallengeMethod challengeMethod) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(codeChallenge, "codeChallenge");
        Intrinsics.checkNotNullParameter(challengeMethod, "challengeMethod");
        String str7 = str6;
        return new AuthenticationData(codeChallenge, challengeMethod.getValue(), str, str2, str3, (str7 == null || str7.length() == 0) ? config.grantType$propertyguru_react_native_authenticator_release(str4) : "otp_login", config.getResponseType(), str4, str5, str6, config.getScope(), config.getRedirectUrl());
    }

    public static final CodeExchangeData generateCodeExchangeData(Config config, String authCode, String codeVerifier) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(authCode, "authCode");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        String redirectUrl = config.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        return new CodeExchangeData(authCode, codeVerifier, Config.grantType$propertyguru_react_native_authenticator_release$default(config, null, 1, null), redirectUrl);
    }

    public static final ResetPasswordData generateResetPasswordData(Config config, String email) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(email, "email");
        String value = config.getLocale().getValue();
        String redirectUrl = config.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        return new ResetPasswordData(email, redirectUrl, config.getClientId(), value, config.getResponseType());
    }

    public static final EmailVerificationData generateEmailVerificationData(Config config, String token) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(token, "token");
        String scope = config.getScope();
        String redirectUrl = config.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        return new EmailVerificationData(token, redirectUrl, scope, config.getClientId());
    }

    public static final UpdatePasswordData generateUpdatePasswordData(Config config, String token, String newPassword) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        String value = config.getLocale().getValue();
        String redirectUrl = config.getRedirectUrl();
        if (redirectUrl == null) {
            redirectUrl = "";
        }
        return new UpdatePasswordData(newPassword, redirectUrl, config.getClientId(), value, config.getResponseType(), token, config.getClientType().getValue());
    }

    public static final DeleteAccountData generateDeleteAccountData(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new DeleteAccountData(id);
    }

    public static final OTPAuthenticationData generateOTPAuthenticationData(Config config, String recipient, String id, String region, String locale) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(locale, "locale");
        return new OTPAuthenticationData(recipient, id, region, locale);
    }

    public static final SetPasswordData generateSetPasswordData(Config config, String str, String newPassword, String refreshToken) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new SetPasswordData(str, newPassword, refreshToken);
    }

    public static final OtpVerificationData generateOtpVerificationData(Config config, String otpId, String otp) {
        Intrinsics.checkNotNullParameter(config, "<this>");
        Intrinsics.checkNotNullParameter(otpId, "otpId");
        Intrinsics.checkNotNullParameter(otp, "otp");
        return new OtpVerificationData(otpId, otp);
    }
}
