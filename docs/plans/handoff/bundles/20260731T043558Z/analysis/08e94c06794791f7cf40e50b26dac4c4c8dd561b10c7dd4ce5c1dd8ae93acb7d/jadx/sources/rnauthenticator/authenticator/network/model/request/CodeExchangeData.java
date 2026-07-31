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

/* compiled from: CodeExchangeData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000 &2\u00020\u0001:\u0002%&B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bBC\b\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0007\u0010\rJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\nHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J%\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0001¢\u0006\u0002\b$R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006'"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;", "", "code", "", "codeVerifier", "grantType", "redirectUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCode", "()Ljava/lang/String;", "getCodeVerifier", "getGrantType", "getRedirectUrl", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
public final /* data */ class CodeExchangeData {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String code;
    private final String codeVerifier;
    private final String grantType;
    private final String redirectUrl;

    public static /* synthetic */ CodeExchangeData copy$default(CodeExchangeData codeExchangeData, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = codeExchangeData.code;
        }
        if ((i & 2) != 0) {
            str2 = codeExchangeData.codeVerifier;
        }
        if ((i & 4) != 0) {
            str3 = codeExchangeData.grantType;
        }
        if ((i & 8) != 0) {
            str4 = codeExchangeData.redirectUrl;
        }
        return codeExchangeData.copy(str, str2, str3, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* renamed from: component2, reason: from getter */
    public final String getCodeVerifier() {
        return this.codeVerifier;
    }

    /* renamed from: component3, reason: from getter */
    public final String getGrantType() {
        return this.grantType;
    }

    /* renamed from: component4, reason: from getter */
    public final String getRedirectUrl() {
        return this.redirectUrl;
    }

    public final CodeExchangeData copy(String code, String codeVerifier, String grantType, String redirectUrl) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Intrinsics.checkNotNullParameter(grantType, "grantType");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        return new CodeExchangeData(code, codeVerifier, grantType, redirectUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CodeExchangeData)) {
            return false;
        }
        CodeExchangeData codeExchangeData = (CodeExchangeData) other;
        return Intrinsics.areEqual(this.code, codeExchangeData.code) && Intrinsics.areEqual(this.codeVerifier, codeExchangeData.codeVerifier) && Intrinsics.areEqual(this.grantType, codeExchangeData.grantType) && Intrinsics.areEqual(this.redirectUrl, codeExchangeData.redirectUrl);
    }

    public int hashCode() {
        return (((((this.code.hashCode() * 31) + this.codeVerifier.hashCode()) * 31) + this.grantType.hashCode()) * 31) + this.redirectUrl.hashCode();
    }

    public String toString() {
        return "CodeExchangeData(code=" + this.code + ", codeVerifier=" + this.codeVerifier + ", grantType=" + this.grantType + ", redirectUrl=" + this.redirectUrl + ")";
    }

    /* compiled from: CodeExchangeData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/CodeExchangeData$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<CodeExchangeData> serializer() {
            return CodeExchangeData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ CodeExchangeData(int i, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, CodeExchangeData$$serializer.INSTANCE.getDescriptor());
        }
        this.code = str;
        this.codeVerifier = str2;
        this.grantType = str3;
        this.redirectUrl = str4;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(CodeExchangeData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.code);
        output.encodeStringElement(serialDesc, 1, self.codeVerifier);
        output.encodeStringElement(serialDesc, 2, self.grantType);
        output.encodeStringElement(serialDesc, 3, self.redirectUrl);
    }

    public CodeExchangeData(String code, String codeVerifier, String grantType, String redirectUrl) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Intrinsics.checkNotNullParameter(grantType, "grantType");
        Intrinsics.checkNotNullParameter(redirectUrl, "redirectUrl");
        this.code = code;
        this.codeVerifier = codeVerifier;
        this.grantType = grantType;
        this.redirectUrl = redirectUrl;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getCodeVerifier() {
        return this.codeVerifier;
    }

    public final String getGrantType() {
        return this.grantType;
    }

    public final String getRedirectUrl() {
        return this.redirectUrl;
    }
}
