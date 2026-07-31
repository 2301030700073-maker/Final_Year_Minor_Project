package rnauthenticator.authenticator.network.model.response;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.internal.ServerProtocol;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: EmailVerificationResponse.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000 ,2\u00020\u0001:\u0002+,BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nBW\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\t\u0010\u000fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003JQ\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\fHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J%\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0001¢\u0006\u0002\b*R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011¨\u0006-"}, d2 = {"Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;", "", "okCode", "", "okMessage", "clientId", ServerProtocol.DIALOG_PARAM_REDIRECT_URI, "token", "scope", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getOkCode", "()Ljava/lang/String;", "getOkMessage", "getClientId", "getRedirect_uri", "getToken", "getScope", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
public final /* data */ class EmailVerificationResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String clientId;
    private final String okCode;
    private final String okMessage;
    private final String redirect_uri;
    private final String scope;
    private final String token;

    public EmailVerificationResponse() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ EmailVerificationResponse copy$default(EmailVerificationResponse emailVerificationResponse, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = emailVerificationResponse.okCode;
        }
        if ((i & 2) != 0) {
            str2 = emailVerificationResponse.okMessage;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = emailVerificationResponse.clientId;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = emailVerificationResponse.redirect_uri;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = emailVerificationResponse.token;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            str6 = emailVerificationResponse.scope;
        }
        return emailVerificationResponse.copy(str, str7, str8, str9, str10, str6);
    }

    /* renamed from: component1, reason: from getter */
    public final String getOkCode() {
        return this.okCode;
    }

    /* renamed from: component2, reason: from getter */
    public final String getOkMessage() {
        return this.okMessage;
    }

    /* renamed from: component3, reason: from getter */
    public final String getClientId() {
        return this.clientId;
    }

    /* renamed from: component4, reason: from getter */
    public final String getRedirect_uri() {
        return this.redirect_uri;
    }

    /* renamed from: component5, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    /* renamed from: component6, reason: from getter */
    public final String getScope() {
        return this.scope;
    }

    public final EmailVerificationResponse copy(String okCode, String okMessage, String clientId, String redirect_uri, String token, String scope) {
        return new EmailVerificationResponse(okCode, okMessage, clientId, redirect_uri, token, scope);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EmailVerificationResponse)) {
            return false;
        }
        EmailVerificationResponse emailVerificationResponse = (EmailVerificationResponse) other;
        return Intrinsics.areEqual(this.okCode, emailVerificationResponse.okCode) && Intrinsics.areEqual(this.okMessage, emailVerificationResponse.okMessage) && Intrinsics.areEqual(this.clientId, emailVerificationResponse.clientId) && Intrinsics.areEqual(this.redirect_uri, emailVerificationResponse.redirect_uri) && Intrinsics.areEqual(this.token, emailVerificationResponse.token) && Intrinsics.areEqual(this.scope, emailVerificationResponse.scope);
    }

    public int hashCode() {
        String str = this.okCode;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.okMessage;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.clientId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.redirect_uri;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.token;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.scope;
        return hashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public String toString() {
        return "EmailVerificationResponse(okCode=" + this.okCode + ", okMessage=" + this.okMessage + ", clientId=" + this.clientId + ", redirect_uri=" + this.redirect_uri + ", token=" + this.token + ", scope=" + this.scope + ")";
    }

    /* compiled from: EmailVerificationResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<EmailVerificationResponse> serializer() {
            return EmailVerificationResponse$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ EmailVerificationResponse(int i, String str, String str2, String str3, String str4, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.okCode = null;
        } else {
            this.okCode = str;
        }
        if ((i & 2) == 0) {
            this.okMessage = null;
        } else {
            this.okMessage = str2;
        }
        if ((i & 4) == 0) {
            this.clientId = null;
        } else {
            this.clientId = str3;
        }
        if ((i & 8) == 0) {
            this.redirect_uri = null;
        } else {
            this.redirect_uri = str4;
        }
        if ((i & 16) == 0) {
            this.token = null;
        } else {
            this.token = str5;
        }
        if ((i & 32) == 0) {
            this.scope = null;
        } else {
            this.scope = str6;
        }
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(EmailVerificationResponse self, CompositeEncoder output, SerialDescriptor serialDesc) {
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.okCode != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.okCode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.okMessage != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.okMessage);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.clientId != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.clientId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.redirect_uri != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.redirect_uri);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.token != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.token);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 5) && self.scope == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.scope);
    }

    public EmailVerificationResponse(String str, String str2, String str3, String str4, String str5, String str6) {
        this.okCode = str;
        this.okMessage = str2;
        this.clientId = str3;
        this.redirect_uri = str4;
        this.token = str5;
        this.scope = str6;
    }

    public /* synthetic */ EmailVerificationResponse(String str, String str2, String str3, String str4, String str5, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6);
    }

    public final String getOkCode() {
        return this.okCode;
    }

    public final String getOkMessage() {
        return this.okMessage;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getRedirect_uri() {
        return this.redirect_uri;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getScope() {
        return this.scope;
    }
}
