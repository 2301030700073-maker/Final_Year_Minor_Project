package rnauthenticator.authenticator.network.model.request;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import io.sentry.SentryEnvelopeItemHeader;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* compiled from: OTPAuthenticationData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0083\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB3\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\fJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J'\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J%\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0001¢\u0006\u0002\b!R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0010¨\u0006$"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/OtpOptions;", "", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "", "ttl", "isNumeric", "", "<init>", "(IIZ)V", "seen0", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IIIZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getLength", "()I", "getTtl", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
final /* data */ class OtpOptions {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean isNumeric;
    private final int length;
    private final int ttl;

    public static /* synthetic */ OtpOptions copy$default(OtpOptions otpOptions, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = otpOptions.length;
        }
        if ((i3 & 2) != 0) {
            i2 = otpOptions.ttl;
        }
        if ((i3 & 4) != 0) {
            z = otpOptions.isNumeric;
        }
        return otpOptions.copy(i, i2, z);
    }

    /* renamed from: component1, reason: from getter */
    public final int getLength() {
        return this.length;
    }

    /* renamed from: component2, reason: from getter */
    public final int getTtl() {
        return this.ttl;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsNumeric() {
        return this.isNumeric;
    }

    public final OtpOptions copy(int length, int ttl, boolean isNumeric) {
        return new OtpOptions(length, ttl, isNumeric);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OtpOptions)) {
            return false;
        }
        OtpOptions otpOptions = (OtpOptions) other;
        return this.length == otpOptions.length && this.ttl == otpOptions.ttl && this.isNumeric == otpOptions.isNumeric;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.length) * 31) + Integer.hashCode(this.ttl)) * 31) + Boolean.hashCode(this.isNumeric);
    }

    public String toString() {
        return "OtpOptions(length=" + this.length + ", ttl=" + this.ttl + ", isNumeric=" + this.isNumeric + ")";
    }

    /* compiled from: OTPAuthenticationData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/OtpOptions$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/OtpOptions;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<OtpOptions> serializer() {
            return OtpOptions$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ OtpOptions(int i, int i2, int i3, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, OtpOptions$$serializer.INSTANCE.getDescriptor());
        }
        this.length = i2;
        this.ttl = i3;
        this.isNumeric = z;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(OtpOptions self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeIntElement(serialDesc, 0, self.length);
        output.encodeIntElement(serialDesc, 1, self.ttl);
        output.encodeBooleanElement(serialDesc, 2, self.isNumeric);
    }

    public OtpOptions(int i, int i2, boolean z) {
        this.length = i;
        this.ttl = i2;
        this.isNumeric = z;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getTtl() {
        return this.ttl;
    }

    public final boolean isNumeric() {
        return this.isNumeric;
    }
}
