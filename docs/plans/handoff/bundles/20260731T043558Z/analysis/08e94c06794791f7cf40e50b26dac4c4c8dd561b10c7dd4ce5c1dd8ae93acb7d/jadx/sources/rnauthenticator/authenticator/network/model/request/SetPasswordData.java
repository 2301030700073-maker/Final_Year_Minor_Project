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

/* compiled from: SetPasswordData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 #2\u00020\u0001:\u0002\"#B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007B9\b\u0010\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0006\u0010\fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J)\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\tHÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J%\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0001¢\u0006\u0002\b!R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000e¨\u0006$"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/SetPasswordData;", "", "currentPassword", "", HintConstants.AUTOFILL_HINT_NEW_PASSWORD, "refreshToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getCurrentPassword", "()Ljava/lang/String;", "getNewPassword", "getRefreshToken", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
public final /* data */ class SetPasswordData {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String currentPassword;
    private final String newPassword;
    private final String refreshToken;

    public static /* synthetic */ SetPasswordData copy$default(SetPasswordData setPasswordData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setPasswordData.currentPassword;
        }
        if ((i & 2) != 0) {
            str2 = setPasswordData.newPassword;
        }
        if ((i & 4) != 0) {
            str3 = setPasswordData.refreshToken;
        }
        return setPasswordData.copy(str, str2, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getCurrentPassword() {
        return this.currentPassword;
    }

    /* renamed from: component2, reason: from getter */
    public final String getNewPassword() {
        return this.newPassword;
    }

    /* renamed from: component3, reason: from getter */
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final SetPasswordData copy(String currentPassword, String newPassword, String refreshToken) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new SetPasswordData(currentPassword, newPassword, refreshToken);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetPasswordData)) {
            return false;
        }
        SetPasswordData setPasswordData = (SetPasswordData) other;
        return Intrinsics.areEqual(this.currentPassword, setPasswordData.currentPassword) && Intrinsics.areEqual(this.newPassword, setPasswordData.newPassword) && Intrinsics.areEqual(this.refreshToken, setPasswordData.refreshToken);
    }

    public int hashCode() {
        String str = this.currentPassword;
        return ((((str == null ? 0 : str.hashCode()) * 31) + this.newPassword.hashCode()) * 31) + this.refreshToken.hashCode();
    }

    public String toString() {
        return "SetPasswordData(currentPassword=" + this.currentPassword + ", newPassword=" + this.newPassword + ", refreshToken=" + this.refreshToken + ")";
    }

    /* compiled from: SetPasswordData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/SetPasswordData$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<SetPasswordData> serializer() {
            return SetPasswordData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ SetPasswordData(int i, String str, String str2, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, SetPasswordData$$serializer.INSTANCE.getDescriptor());
        }
        this.currentPassword = str;
        this.newPassword = str2;
        this.refreshToken = str3;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(SetPasswordData self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.currentPassword);
        output.encodeStringElement(serialDesc, 1, self.newPassword);
        output.encodeStringElement(serialDesc, 2, self.refreshToken);
    }

    public SetPasswordData(String str, String newPassword, String refreshToken) {
        Intrinsics.checkNotNullParameter(newPassword, "newPassword");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.currentPassword = str;
        this.newPassword = newPassword;
        this.refreshToken = refreshToken;
    }

    public final String getCurrentPassword() {
        return this.currentPassword;
    }

    public final String getNewPassword() {
        return this.newPassword;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }
}
