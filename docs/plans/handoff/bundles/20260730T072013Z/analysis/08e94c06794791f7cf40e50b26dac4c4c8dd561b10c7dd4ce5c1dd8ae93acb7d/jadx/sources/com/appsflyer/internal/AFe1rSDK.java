package com.appsflyer.internal;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b&\u0018\u0000 \t2\u00020\u0001:\u0004\t\n\u000b\fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\b\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007"}, d2 = {"Lcom/appsflyer/internal/AFe1rSDK;", "", "", "p0", "<init>", "(Ljava/lang/String;)V", "getMediationNetwork", "Ljava/lang/String;", "getMonetizationNetwork", "AFa1vSDK", "AFa1uSDK", "AFa1ySDK", "AFa1tSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class AFe1rSDK {

    /* renamed from: getMediationNetwork, reason: from kotlin metadata */
    public final String getMonetizationNetwork;

    /* renamed from: AFa1vSDK, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> AFAdRevenueData = CollectionsKt.listOf((Object[]) new String[]{AFInAppEventType.ACHIEVEMENT_UNLOCKED, AFInAppEventType.AD_CLICK, AFInAppEventType.AD_VIEW, AFInAppEventType.ADD_PAYMENT_INFO, AFInAppEventType.ADD_TO_CART, AFInAppEventType.ADD_TO_WISH_LIST, AFInAppEventType.COMPLETE_REGISTRATION, AFInAppEventType.CONTENT_VIEW, AFInAppEventType.INITIATED_CHECKOUT, AFInAppEventType.INVITE, AFInAppEventType.LEVEL_ACHIEVED, AFInAppEventType.LIST_VIEW, AFInAppEventType.LOGIN, AFInAppEventType.OPENED_FROM_PUSH_NOTIFICATION, AFInAppEventType.PURCHASE, AFInAppEventType.RATE, AFInAppEventType.RE_ENGAGE, AFInAppEventType.SEARCH, AFInAppEventType.SHARE, AFInAppEventType.SPENT_CREDIT, AFInAppEventType.START_TRIAL, AFInAppEventType.SUBSCRIBE, AFInAppEventType.TRAVEL_BOOKING, AFInAppEventType.TUTORIAL_COMPLETION, AFInAppEventType.UPDATE});

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f"}, d2 = {"Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;", "", "<init>", "()V", "Lcom/appsflyer/internal/AFh1jSDK;", "p0", "Lcom/appsflyer/internal/AFe1rSDK;", "getMonetizationNetwork", "(Lcom/appsflyer/internal/AFh1jSDK;)Lcom/appsflyer/internal/AFe1rSDK;", "", "", "AFAdRevenueData", "Ljava/util/List;", "getRevenue"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* renamed from: com.appsflyer.internal.AFe1rSDK$AFa1vSDK, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public static AFe1rSDK getMonetizationNetwork(AFh1jSDK p0) {
            String obj;
            Object obj2;
            String obj3;
            Intrinsics.checkNotNullParameter(p0, "");
            if (p0.getCurrencyIso4217Code() == AFe1mSDK.CONVERSION) {
                return AFa1uSDK.INSTANCE;
            }
            Integer num = null;
            if (p0.getCurrencyIso4217Code() != AFe1mSDK.INAPP || !AFe1rSDK.AFAdRevenueData.contains(p0.component4)) {
                return null;
            }
            Map<String, Object> map = p0.AFAdRevenueData;
            Float floatOrNull = (map == null || (obj2 = map.get(AFInAppEventParameterName.REVENUE)) == null || (obj3 = obj2.toString()) == null) ? null : StringsKt.toFloatOrNull(obj3);
            Object obj4 = p0.getCurrencyIso4217Code.get("iaecounter");
            if (obj4 != null && (obj = obj4.toString()) != null) {
                num = StringsKt.toIntOrNull(obj);
            }
            String str = p0.component4;
            Intrinsics.checkNotNullExpressionValue(str, "");
            return new AFa1ySDK(str, floatOrNull, num);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFe1rSDK(String str) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getMonetizationNetwork = str;
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;", "Lcom/appsflyer/internal/AFe1rSDK;", "<init>", "()V"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AFa1uSDK extends AFe1rSDK {
        public static final AFa1uSDK INSTANCE = new AFa1uSDK();

        private AFa1uSDK() {
            super("install");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;", "Lcom/appsflyer/internal/AFe1rSDK;", "<init>", "()V"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AFa1tSDK extends AFe1rSDK {
        public static final AFa1tSDK INSTANCE = new AFa1tSDK();

        private AFa1tSDK() {
            super("af_sandbox_revenue");
        }
    }

    public static final class AFa1ySDK extends AFe1rSDK {
        public final Float getCurrencyIso4217Code;
        private final String getMonetizationNetwork;
        public final Integer getRevenue;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AFa1ySDK(String str, Float f, Integer num) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "");
            this.getMonetizationNetwork = str;
            this.getCurrencyIso4217Code = f;
            this.getRevenue = num;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AFa1ySDK)) {
                return false;
            }
            AFa1ySDK aFa1ySDK = (AFa1ySDK) obj;
            return Intrinsics.areEqual(this.getMonetizationNetwork, aFa1ySDK.getMonetizationNetwork) && Intrinsics.areEqual((Object) this.getCurrencyIso4217Code, (Object) aFa1ySDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.getRevenue, aFa1ySDK.getRevenue);
        }

        public final int hashCode() {
            int hashCode = this.getMonetizationNetwork.hashCode() * 31;
            Float f = this.getCurrencyIso4217Code;
            int hashCode2 = (hashCode + (f == null ? 0 : f.hashCode())) * 31;
            Integer num = this.getRevenue;
            return hashCode2 + (num != null ? num.hashCode() : 0);
        }

        public final String toString() {
            return "PredefinedInAppEvent(name=" + this.getMonetizationNetwork + ", eventRevenue=" + this.getCurrencyIso4217Code + ", eventCounter=" + this.getRevenue + ")";
        }
    }
}
