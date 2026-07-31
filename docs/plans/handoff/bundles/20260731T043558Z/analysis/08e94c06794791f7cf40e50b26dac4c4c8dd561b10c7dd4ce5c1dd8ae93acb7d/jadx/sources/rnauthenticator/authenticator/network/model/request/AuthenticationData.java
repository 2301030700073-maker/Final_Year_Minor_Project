package rnauthenticator.authenticator.network.model.request;

import androidx.autofill.HintConstants;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: AuthenticationData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000 >2\u00020\u0001:\u0002=>Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000f\u0010\u0010B\u0093\u0001\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u000f\u0010\u0015J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u008f\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0012HÖ\u0001J\t\u00104\u001a\u00020\u0003HÖ\u0001J%\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u00002\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0001¢\u0006\u0002\b<R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017¨\u0006?"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "", "codeChallenge", "", "codeChallengeMethod", "username", HintConstants.AUTOFILL_HINT_PASSWORD, "socialToken", "grantType", "responseType", "provider", "otpId", "otp", "scope", "redirectUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCodeChallenge", "()Ljava/lang/String;", "getCodeChallengeMethod", "getUsername", "getPassword", "getSocialToken", "getGrantType", "getResponseType", "getProvider", "getOtpId", "getOtp", "getScope", "getRedirectUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
public final /* data */ class AuthenticationData {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String codeChallenge;
    private final String codeChallengeMethod;
    private final String grantType;
    private final String otp;
    private final String otpId;
    private final String password;
    private final String provider;
    private final String redirectUrl;
    private final String responseType;
    private final String scope;
    private final String socialToken;
    private final String username;

    /* renamed from: component1, reason: from getter */
    public final String getCodeChallenge() {
        return this.codeChallenge;
    }

    /* renamed from: component10, reason: from getter */
    public final String getOtp() {
        return this.otp;
    }

    /* renamed from: component11, reason: from getter */
    public final String getScope() {
        return this.scope;
    }

    /* renamed from: component12, reason: from getter */
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    /* renamed from: component2, reason: from getter */
    public final String getCodeChallengeMethod() {
        return this.codeChallengeMethod;
    }

    /* renamed from: component3, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    /* renamed from: component4, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    /* renamed from: component5, reason: from getter */
    public final String getSocialToken() {
        return this.socialToken;
    }

    /* renamed from: component6, reason: from getter */
    public final String getGrantType() {
        return this.grantType;
    }

    /* renamed from: component7, reason: from getter */
    public final String getResponseType() {
        return this.responseType;
    }

    /* renamed from: component8, reason: from getter */
    public final String getProvider() {
        return this.provider;
    }

    /* renamed from: component9, reason: from getter */
    public final String getOtpId() {
        return this.otpId;
    }

    public final AuthenticationData copy(String codeChallenge, String codeChallengeMethod, String username, String password, String socialToken, String grantType, String responseType, String provider, String otpId, String otp, String scope, String redirectUrl) {
        Intrinsics.checkNotNullParameter(codeChallenge, "codeChallenge");
        Intrinsics.checkNotNullParameter(codeChallengeMethod, "codeChallengeMethod");
        Intrinsics.checkNotNullParameter(grantType, "grantType");
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new AuthenticationData(codeChallenge, codeChallengeMethod, username, password, socialToken, grantType, responseType, provider, otpId, otp, scope, redirectUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AuthenticationData)) {
            return false;
        }
        AuthenticationData authenticationData = (AuthenticationData) other;
        return Intrinsics.areEqual(this.codeChallenge, authenticationData.codeChallenge) && Intrinsics.areEqual(this.codeChallengeMethod, authenticationData.codeChallengeMethod) && Intrinsics.areEqual(this.username, authenticationData.username) && Intrinsics.areEqual(this.password, authenticationData.password) && Intrinsics.areEqual(this.socialToken, authenticationData.socialToken) && Intrinsics.areEqual(this.grantType, authenticationData.grantType) && Intrinsics.areEqual(this.responseType, authenticationData.responseType) && Intrinsics.areEqual(this.provider, authenticationData.provider) && Intrinsics.areEqual(this.otpId, authenticationData.otpId) && Intrinsics.areEqual(this.otp, authenticationData.otp) && Intrinsics.areEqual(this.scope, authenticationData.scope) && Intrinsics.areEqual(this.redirectUrl, authenticationData.redirectUrl);
    }

    public int hashCode() {
        int hashCode = ((this.codeChallenge.hashCode() * 31) + this.codeChallengeMethod.hashCode()) * 31;
        String str = this.username;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.password;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.socialToken;
        int hashCode4 = (((((hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.grantType.hashCode()) * 31) + this.responseType.hashCode()) * 31;
        String str4 = this.provider;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.otpId;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.otp;
        int hashCode7 = (((hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31) + this.scope.hashCode()) * 31;
        String str7 = this.redirectUrl;
        return hashCode7 + (str7 != null ? str7.hashCode() : 0);
    }

    public String toString() {
        return "AuthenticationData(codeChallenge=" + this.codeChallenge + ", codeChallengeMethod=" + this.codeChallengeMethod + ", username=" + this.username + ", password=" + this.password + ", socialToken=" + this.socialToken + ", grantType=" + this.grantType + ", responseType=" + this.responseType + ", provider=" + this.provider + ", otpId=" + this.otpId + ", otp=" + this.otp + ", scope=" + this.scope + ", redirectUrl=" + this.redirectUrl + ")";
    }

    /* compiled from: AuthenticationData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/AuthenticationData$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<AuthenticationData> serializer() {
            return AuthenticationData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ AuthenticationData(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, SerializationConstructorMarker serializationConstructorMarker) {
        if (4095 != (i & 4095)) {
            PluginExceptionsKt.throwMissingFieldException(i, 4095, AuthenticationData$$serializer.INSTANCE.getDescriptor());
        }
        this.codeChallenge = str;
        this.codeChallengeMethod = str2;
        this.username = str3;
        this.password = str4;
        this.socialToken = str5;
        this.grantType = str6;
        this.responseType = str7;
        this.provider = str8;
        this.otpId = str9;
        this.otp = str10;
        this.scope = str11;
        this.redirectUrl = str12;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(AuthenticationData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.codeChallenge);
        output.encodeStringElement(serialDesc, 1, self.codeChallengeMethod);
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.username);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.password);
        output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.socialToken);
        output.encodeStringElement(serialDesc, 5, self.grantType);
        output.encodeStringElement(serialDesc, 6, self.responseType);
        output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.provider);
        output.encodeNullableSerializableElement(serialDesc, 8, StringSerializer.INSTANCE, self.otpId);
        output.encodeNullableSerializableElement(serialDesc, 9, StringSerializer.INSTANCE, self.otp);
        output.encodeStringElement(serialDesc, 10, self.scope);
        output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.redirectUrl);
    }

    public AuthenticationData(String codeChallenge, String codeChallengeMethod, String str, String str2, String str3, String grantType, String responseType, String str4, String str5, String str6, String scope, String str7) {
        Intrinsics.checkNotNullParameter(codeChallenge, "codeChallenge");
        Intrinsics.checkNotNullParameter(codeChallengeMethod, "codeChallengeMethod");
        Intrinsics.checkNotNullParameter(grantType, "grantType");
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.codeChallenge = codeChallenge;
        this.codeChallengeMethod = codeChallengeMethod;
        this.username = str;
        this.password = str2;
        this.socialToken = str3;
        this.grantType = grantType;
        this.responseType = responseType;
        this.provider = str4;
        this.otpId = str5;
        this.otp = str6;
        this.scope = scope;
        this.redirectUrl = str7;
    }

    public final String getCodeChallenge() {
        return this.codeChallenge;
    }

    public final String getCodeChallengeMethod() {
        return this.codeChallengeMethod;
    }

    public final String getUsername() {
        return this.username;
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getSocialToken() {
        return this.socialToken;
    }

    public final String getGrantType() {
        return this.grantType;
    }

    public final String getResponseType() {
        return this.responseType;
    }

    public final String getProvider() {
        return this.provider;
    }

    public final String getOtpId() {
        return this.otpId;
    }

    public final String getOtp() {
        return this.otp;
    }

    public final String getScope() {
        return this.scope;
    }

    public final String getRedirectUrl() {
        return this.redirectUrl;
    }
}
