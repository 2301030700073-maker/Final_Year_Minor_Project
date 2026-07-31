package rnauthenticator.authenticator.network.model.request;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.messaging.Constants;
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

/* compiled from: OTPAuthenticationData.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0083\b\u0018\u0000 /2\u00020\u0001:\u0002./BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bBa\b\u0010\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\n\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003JU\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\rHÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001J%\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0001¢\u0006\u0002\b-R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012¨\u00060"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/NotificationOptions;", "", "clientName", "", "clientAppName", "categoryName", "marketplace", "templatePath", "templateName", Constants.MessagePayloadKeys.FROM, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getClientName", "()Ljava/lang/String;", "getClientAppName", "getCategoryName", "getMarketplace", "getTemplatePath", "getTemplateName", "getFrom", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$propertyguru_react_native_authenticator_release", "$serializer", "Companion", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
/* loaded from: classes3.dex */
final /* data */ class NotificationOptions {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String categoryName;
    private final String clientAppName;
    private final String clientName;
    private final String from;
    private final String marketplace;
    private final String templateName;
    private final String templatePath;

    public static /* synthetic */ NotificationOptions copy$default(NotificationOptions notificationOptions, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = notificationOptions.clientName;
        }
        if ((i & 2) != 0) {
            str2 = notificationOptions.clientAppName;
        }
        String str8 = str2;
        if ((i & 4) != 0) {
            str3 = notificationOptions.categoryName;
        }
        String str9 = str3;
        if ((i & 8) != 0) {
            str4 = notificationOptions.marketplace;
        }
        String str10 = str4;
        if ((i & 16) != 0) {
            str5 = notificationOptions.templatePath;
        }
        String str11 = str5;
        if ((i & 32) != 0) {
            str6 = notificationOptions.templateName;
        }
        String str12 = str6;
        if ((i & 64) != 0) {
            str7 = notificationOptions.from;
        }
        return notificationOptions.copy(str, str8, str9, str10, str11, str12, str7);
    }

    /* renamed from: component1, reason: from getter */
    public final String getClientName() {
        return this.clientName;
    }

    /* renamed from: component2, reason: from getter */
    public final String getClientAppName() {
        return this.clientAppName;
    }

    /* renamed from: component3, reason: from getter */
    public final String getCategoryName() {
        return this.categoryName;
    }

    /* renamed from: component4, reason: from getter */
    public final String getMarketplace() {
        return this.marketplace;
    }

    /* renamed from: component5, reason: from getter */
    public final String getTemplatePath() {
        return this.templatePath;
    }

    /* renamed from: component6, reason: from getter */
    public final String getTemplateName() {
        return this.templateName;
    }

    /* renamed from: component7, reason: from getter */
    public final String getFrom() {
        return this.from;
    }

    public final NotificationOptions copy(String clientName, String clientAppName, String categoryName, String marketplace, String templatePath, String templateName, String from) {
        Intrinsics.checkNotNullParameter(clientName, "clientName");
        Intrinsics.checkNotNullParameter(clientAppName, "clientAppName");
        Intrinsics.checkNotNullParameter(categoryName, "categoryName");
        Intrinsics.checkNotNullParameter(marketplace, "marketplace");
        return new NotificationOptions(clientName, clientAppName, categoryName, marketplace, templatePath, templateName, from);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NotificationOptions)) {
            return false;
        }
        NotificationOptions notificationOptions = (NotificationOptions) other;
        return Intrinsics.areEqual(this.clientName, notificationOptions.clientName) && Intrinsics.areEqual(this.clientAppName, notificationOptions.clientAppName) && Intrinsics.areEqual(this.categoryName, notificationOptions.categoryName) && Intrinsics.areEqual(this.marketplace, notificationOptions.marketplace) && Intrinsics.areEqual(this.templatePath, notificationOptions.templatePath) && Intrinsics.areEqual(this.templateName, notificationOptions.templateName) && Intrinsics.areEqual(this.from, notificationOptions.from);
    }

    public int hashCode() {
        int hashCode = ((((((this.clientName.hashCode() * 31) + this.clientAppName.hashCode()) * 31) + this.categoryName.hashCode()) * 31) + this.marketplace.hashCode()) * 31;
        String str = this.templatePath;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.templateName;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.from;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "NotificationOptions(clientName=" + this.clientName + ", clientAppName=" + this.clientAppName + ", categoryName=" + this.categoryName + ", marketplace=" + this.marketplace + ", templatePath=" + this.templatePath + ", templateName=" + this.templateName + ", from=" + this.from + ")";
    }

    /* compiled from: OTPAuthenticationData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lrnauthenticator/authenticator/network/model/request/NotificationOptions$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lrnauthenticator/authenticator/network/model/request/NotificationOptions;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<NotificationOptions> serializer() {
            return NotificationOptions$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ NotificationOptions(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i & 127)) {
            PluginExceptionsKt.throwMissingFieldException(i, 127, NotificationOptions$$serializer.INSTANCE.getDescriptor());
        }
        this.clientName = str;
        this.clientAppName = str2;
        this.categoryName = str3;
        this.marketplace = str4;
        this.templatePath = str5;
        this.templateName = str6;
        this.from = str7;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$propertyguru_react_native_authenticator_release(NotificationOptions self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.clientName);
        output.encodeStringElement(serialDesc, 1, self.clientAppName);
        output.encodeStringElement(serialDesc, 2, self.categoryName);
        output.encodeStringElement(serialDesc, 3, self.marketplace);
        output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.templatePath);
        output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.templateName);
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.from);
    }

    public NotificationOptions(String clientName, String clientAppName, String categoryName, String marketplace, String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(clientName, "clientName");
        Intrinsics.checkNotNullParameter(clientAppName, "clientAppName");
        Intrinsics.checkNotNullParameter(categoryName, "categoryName");
        Intrinsics.checkNotNullParameter(marketplace, "marketplace");
        this.clientName = clientName;
        this.clientAppName = clientAppName;
        this.categoryName = categoryName;
        this.marketplace = marketplace;
        this.templatePath = str;
        this.templateName = str2;
        this.from = str3;
    }

    public final String getClientName() {
        return this.clientName;
    }

    public final String getClientAppName() {
        return this.clientAppName;
    }

    public final String getCategoryName() {
        return this.categoryName;
    }

    public final String getMarketplace() {
        return this.marketplace;
    }

    public final String getTemplatePath() {
        return this.templatePath;
    }

    public final String getTemplateName() {
        return this.templateName;
    }

    public final String getFrom() {
        return this.from;
    }
}
