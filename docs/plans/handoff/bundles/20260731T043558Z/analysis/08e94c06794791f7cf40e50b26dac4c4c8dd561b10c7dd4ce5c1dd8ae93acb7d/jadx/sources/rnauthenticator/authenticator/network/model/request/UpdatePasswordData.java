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

/* compiled from: UpdatePasswordData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 /2\u00020\u0001:\u0002./B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\n\u0010\u000bBa\b\u0010\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\n\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\rHÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001J%\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0001¢\u0006\u0002\b-R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012¨\u00060"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", "", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "", "redirectUrl", "clientId", "locale", "responseType", "token", "clientType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getNewPassword", "()Ljava/lang/String;", "getRedirectUrl", "getClientId", "getLocale", "getResponseType", "getToken", "getClientType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
public final /* data */ class UpdatePasswordData {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String clientId;
    private final String clientType;
    private final String locale;
    private final String newPassword;
    private final String redirectUrl;
    private final String responseType;
    private final String token;

    public static /* synthetic */ UpdatePasswordData copy$default(UpdatePasswordData updatePasswordData, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = updatePasswordData.newPassword;
        }
        if ((i & 2) != 0) {
            str2 = updatePasswordData.redirectUrl;
        }
        String str8 = str2;
        if ((i & 4) != 0) {
            str3 = updatePasswordData.clientId;
        }
        String str9 = str3;
        if ((i & 8) != 0) {
            str4 = updatePasswordData.locale;
        }
        String str10 = str4;
        if ((i & 16) != 0) {
            str5 = updatePasswordData.responseType;
        }
        String str11 = str5;
        if ((i & 32) != 0) {
            str6 = updatePasswordData.token;
        }
        String str12 = str6;
        if ((i & 64) != 0) {
            str7 = updatePasswordData.clientType;
        }
        return updatePasswordData.copy(str, str8, str9, str10, str11, str12, str7);
    }

    /* renamed from: component1, reason: from getter */
    public final String getNewPassword() {
        return this.newPassword;
    }

    /* renamed from: component2, reason: from getter */
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    /* renamed from: component3, reason: from getter */
    public final String getClientId() {
        return this.clientId;
    }

    /* renamed from: component4, reason: from getter */
    public final String getLocale() {
        return this.locale;
    }

    /* renamed from: component5, reason: from getter */
    public final String getResponseType() {
        return this.responseType;
    }

    /* renamed from: component6, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    /* renamed from: component7, reason: from getter */
    public final String getClientType() {
        return this.clientType;
    }

    public final UpdatePasswordData copy(String newPassword, String redirectUrl, String clientId, String locale, String responseType, String token, String clientType) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        return new UpdatePasswordData(newPassword, redirectUrl, clientId, locale, responseType, token, clientType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdatePasswordData)) {
            return false;
        }
        UpdatePasswordData updatePasswordData = (UpdatePasswordData) other;
        return Intrinsics.areEqual(this.newPassword, updatePasswordData.newPassword) && Intrinsics.areEqual(this.redirectUrl, updatePasswordData.redirectUrl) && Intrinsics.areEqual(this.clientId, updatePasswordData.clientId) && Intrinsics.areEqual(this.locale, updatePasswordData.locale) && Intrinsics.areEqual(this.responseType, updatePasswordData.responseType) && Intrinsics.areEqual(this.token, updatePasswordData.token) && Intrinsics.areEqual(this.clientType, updatePasswordData.clientType);
    }

    public int hashCode() {
        return (((((((((((this.newPassword.hashCode() * 31) + this.redirectUrl.hashCode()) * 31) + this.clientId.hashCode()) * 31) + this.locale.hashCode()) * 31) + this.responseType.hashCode()) * 31) + this.token.hashCode()) * 31) + this.clientType.hashCode();
    }

    public String toString() {
        return "UpdatePasswordData(newPassword=" + this.newPassword + ", redirectUrl=" + this.redirectUrl + ", clientId=" + this.clientId + ", locale=" + this.locale + ", responseType=" + this.responseType + ", token=" + this.token + ", clientType=" + this.clientType + ")";
    }

    /* compiled from: UpdatePasswordData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<UpdatePasswordData> serializer() {
            return UpdatePasswordData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ UpdatePasswordData(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i & 127)) {
            PluginExceptionsKt.throwMissingFieldException(i, 127, UpdatePasswordData$$serializer.INSTANCE.getDescriptor());
        }
        this.newPassword = str;
        this.redirectUrl = str2;
        this.clientId = str3;
        this.locale = str4;
        this.responseType = str5;
        this.token = str6;
        this.clientType = str7;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(UpdatePasswordData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.newPassword);
        output.encodeStringElement(serialDesc, 1, self.redirectUrl);
        output.encodeStringElement(serialDesc, 2, self.clientId);
        output.encodeStringElement(serialDesc, 3, self.locale);
        output.encodeStringElement(serialDesc, 4, self.responseType);
        output.encodeStringElement(serialDesc, 5, self.token);
        output.encodeStringElement(serialDesc, 6, self.clientType);
    }

    public UpdatePasswordData(String newPassword, String redirectUrl, String clientId, String locale, String responseType, String token, String clientType) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        this.newPassword = newPassword;
        this.redirectUrl = redirectUrl;
        this.clientId = clientId;
        this.locale = locale;
        this.responseType = responseType;
        this.token = token;
        this.clientType = clientType;
    }

    public final String getNewPassword() {
        return this.newPassword;
    }

    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getLocale() {
        return this.locale;
    }

    public final String getResponseType() {
        return this.responseType;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getClientType() {
        return this.clientType;
    }
}
