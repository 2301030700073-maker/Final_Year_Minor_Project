package rnauthenticator.authenticator.network.model.request;

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

/* compiled from: ResetPasswordData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000 )2\u00020\u0001:\u0002()B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\b\u0010\u000eJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u000bHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J%\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\b'R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006*"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;", "", "email", "", "redirectUrl", "clientId", "locale", "responseType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getEmail", "()Ljava/lang/String;", "getRedirectUrl", "getClientId", "getLocale", "getResponseType", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
public final /* data */ class ResetPasswordData {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String clientId;
    private final String email;
    private final String locale;
    private final String redirectUrl;
    private final String responseType;

    public static /* synthetic */ ResetPasswordData copy$default(ResetPasswordData resetPasswordData, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = resetPasswordData.email;
        }
        if ((i & 2) != 0) {
            str2 = resetPasswordData.redirectUrl;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = resetPasswordData.clientId;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = resetPasswordData.locale;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = resetPasswordData.responseType;
        }
        return resetPasswordData.copy(str, str6, str7, str8, str5);
    }

    /* renamed from: component1, reason: from getter */
    public final String getEmail() {
        return this.email;
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

    public final ResetPasswordData copy(String email, String redirectUrl, String clientId, String locale, String responseType) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        return new ResetPasswordData(email, redirectUrl, clientId, locale, responseType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResetPasswordData)) {
            return false;
        }
        ResetPasswordData resetPasswordData = (ResetPasswordData) other;
        return Intrinsics.areEqual(this.email, resetPasswordData.email) && Intrinsics.areEqual(this.redirectUrl, resetPasswordData.redirectUrl) && Intrinsics.areEqual(this.clientId, resetPasswordData.clientId) && Intrinsics.areEqual(this.locale, resetPasswordData.locale) && Intrinsics.areEqual(this.responseType, resetPasswordData.responseType);
    }

    public int hashCode() {
        return (((((((this.email.hashCode() * 31) + this.redirectUrl.hashCode()) * 31) + this.clientId.hashCode()) * 31) + this.locale.hashCode()) * 31) + this.responseType.hashCode();
    }

    public String toString() {
        return "ResetPasswordData(email=" + this.email + ", redirectUrl=" + this.redirectUrl + ", clientId=" + this.clientId + ", locale=" + this.locale + ", responseType=" + this.responseType + ")";
    }

    /* compiled from: ResetPasswordData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/ResetPasswordData$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<ResetPasswordData> serializer() {
            return ResetPasswordData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ResetPasswordData(int i, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, ResetPasswordData$$serializer.INSTANCE.getDescriptor());
        }
        this.email = str;
        this.redirectUrl = str2;
        this.clientId = str3;
        this.locale = str4;
        this.responseType = str5;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(ResetPasswordData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.email);
        output.encodeStringElement(serialDesc, 1, self.redirectUrl);
        output.encodeStringElement(serialDesc, 2, self.clientId);
        output.encodeStringElement(serialDesc, 3, self.locale);
        output.encodeStringElement(serialDesc, 4, self.responseType);
    }

    public ResetPasswordData(String email, String redirectUrl, String clientId, String locale, String responseType) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        this.email = email;
        this.redirectUrl = redirectUrl;
        this.clientId = clientId;
        this.locale = locale;
        this.responseType = responseType;
    }

    public final String getEmail() {
        return this.email;
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
}
