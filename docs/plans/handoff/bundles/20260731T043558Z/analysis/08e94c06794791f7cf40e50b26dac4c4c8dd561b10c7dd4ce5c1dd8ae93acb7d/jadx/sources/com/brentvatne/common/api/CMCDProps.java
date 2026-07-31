package com.brentvatne.common.api;

import com.brentvatne.common.toolbox.ReactBridgeUtils;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CMCDProps.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0081\u0001\u0012\u001a\b\u0002\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003\u0012\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003\u0012\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003\u0012\u001a\b\u0002\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003HÆ\u0003J\u001b\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003HÆ\u0003J\u001b\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003HÆ\u0003J\u001b\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\nHÆ\u0003J\u0083\u0001\u0010\u0019\u001a\u00020\u00002\u001a\b\u0002\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u00032\u001a\b\u0002\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u00032\u001a\b\u0002\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u00032\u001a\b\u0002\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u00032\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\nHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R#\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR#\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR#\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR#\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/brentvatne/common/api/CMCDProps;", "", "cmcdObject", "", "Lkotlin/Pair;", "", "cmcdRequest", "cmcdSession", "cmcdStatus", CMCDProps.PROP_CMCD_MODE, "", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V", "getCmcdObject", "()Ljava/util/List;", "getCmcdRequest", "getCmcdSession", "getCmcdStatus", "getMode", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", InAppPurchaseConstants.METHOD_TO_STRING, "Companion", "react-native-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final /* data */ class CMCDProps {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String PROP_CMCD_MODE = "mode";
    private static final String PROP_CMCD_OBJECT = "object";
    private static final String PROP_CMCD_REQUEST = "request";
    private static final String PROP_CMCD_SESSION = "session";
    private static final String PROP_CMCD_STATUS = "status";
    private final List<Pair<String, Object>> cmcdObject;
    private final List<Pair<String, Object>> cmcdRequest;
    private final List<Pair<String, Object>> cmcdSession;
    private final List<Pair<String, Object>> cmcdStatus;
    private final int mode;

    public CMCDProps() {
        this(null, null, null, null, 0, 31, null);
    }

    public static /* synthetic */ CMCDProps copy$default(CMCDProps cMCDProps, List list, List list2, List list3, List list4, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = cMCDProps.cmcdObject;
        }
        if ((i2 & 2) != 0) {
            list2 = cMCDProps.cmcdRequest;
        }
        List list5 = list2;
        if ((i2 & 4) != 0) {
            list3 = cMCDProps.cmcdSession;
        }
        List list6 = list3;
        if ((i2 & 8) != 0) {
            list4 = cMCDProps.cmcdStatus;
        }
        List list7 = list4;
        if ((i2 & 16) != 0) {
            i = cMCDProps.mode;
        }
        return cMCDProps.copy(list, list5, list6, list7, i);
    }

    @JvmStatic
    public static final CMCDProps parse(ReadableMap readableMap) {
        return INSTANCE.parse(readableMap);
    }

    public final List<Pair<String, Object>> component1() {
        return this.cmcdObject;
    }

    public final List<Pair<String, Object>> component2() {
        return this.cmcdRequest;
    }

    public final List<Pair<String, Object>> component3() {
        return this.cmcdSession;
    }

    public final List<Pair<String, Object>> component4() {
        return this.cmcdStatus;
    }

    /* renamed from: component5, reason: from getter */
    public final int getMode() {
        return this.mode;
    }

    public final CMCDProps copy(List<? extends Pair<String, ? extends Object>> cmcdObject, List<? extends Pair<String, ? extends Object>> cmcdRequest, List<? extends Pair<String, ? extends Object>> cmcdSession, List<? extends Pair<String, ? extends Object>> cmcdStatus, int mode) {
        Intrinsics.checkNotNullParameter(cmcdObject, "cmcdObject");
        Intrinsics.checkNotNullParameter(cmcdRequest, "cmcdRequest");
        Intrinsics.checkNotNullParameter(cmcdSession, "cmcdSession");
        Intrinsics.checkNotNullParameter(cmcdStatus, "cmcdStatus");
        return new CMCDProps(cmcdObject, cmcdRequest, cmcdSession, cmcdStatus, mode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CMCDProps)) {
            return false;
        }
        CMCDProps cMCDProps = (CMCDProps) other;
        return Intrinsics.areEqual(this.cmcdObject, cMCDProps.cmcdObject) && Intrinsics.areEqual(this.cmcdRequest, cMCDProps.cmcdRequest) && Intrinsics.areEqual(this.cmcdSession, cMCDProps.cmcdSession) && Intrinsics.areEqual(this.cmcdStatus, cMCDProps.cmcdStatus) && this.mode == cMCDProps.mode;
    }

    public int hashCode() {
        return (((((((this.cmcdObject.hashCode() * 31) + this.cmcdRequest.hashCode()) * 31) + this.cmcdSession.hashCode()) * 31) + this.cmcdStatus.hashCode()) * 31) + Integer.hashCode(this.mode);
    }

    public String toString() {
        return "CMCDProps(cmcdObject=" + this.cmcdObject + ", cmcdRequest=" + this.cmcdRequest + ", cmcdSession=" + this.cmcdSession + ", cmcdStatus=" + this.cmcdStatus + ", mode=" + this.mode + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CMCDProps(List<? extends Pair<String, ? extends Object>> cmcdObject, List<? extends Pair<String, ? extends Object>> cmcdRequest, List<? extends Pair<String, ? extends Object>> cmcdSession, List<? extends Pair<String, ? extends Object>> cmcdStatus, int i) {
        Intrinsics.checkNotNullParameter(cmcdObject, "cmcdObject");
        Intrinsics.checkNotNullParameter(cmcdRequest, "cmcdRequest");
        Intrinsics.checkNotNullParameter(cmcdSession, "cmcdSession");
        Intrinsics.checkNotNullParameter(cmcdStatus, "cmcdStatus");
        this.cmcdObject = cmcdObject;
        this.cmcdRequest = cmcdRequest;
        this.cmcdSession = cmcdSession;
        this.cmcdStatus = cmcdStatus;
        this.mode = i;
    }

    public /* synthetic */ CMCDProps(List list, List list2, List list3, List list4, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? CollectionsKt.emptyList() : list, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list2, (i2 & 4) != 0 ? CollectionsKt.emptyList() : list3, (i2 & 8) != 0 ? CollectionsKt.emptyList() : list4, (i2 & 16) != 0 ? 1 : i);
    }

    public final List<Pair<String, Object>> getCmcdObject() {
        return this.cmcdObject;
    }

    public final List<Pair<String, Object>> getCmcdRequest() {
        return this.cmcdRequest;
    }

    public final List<Pair<String, Object>> getCmcdSession() {
        return this.cmcdSession;
    }

    public final List<Pair<String, Object>> getCmcdStatus() {
        return this.cmcdStatus;
    }

    public final int getMode() {
        return this.mode;
    }

    /* compiled from: CMCDProps.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J$\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00100\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/brentvatne/common/api/CMCDProps$Companion;", "", "<init>", "()V", "PROP_CMCD_OBJECT", "", "PROP_CMCD_REQUEST", "PROP_CMCD_SESSION", "PROP_CMCD_STATUS", "PROP_CMCD_MODE", "parse", "Lcom/brentvatne/common/api/CMCDProps;", "src", "Lcom/facebook/react/bridge/ReadableMap;", "parseKeyValuePairs", "", "Lkotlin/Pair;", "array", "Lcom/facebook/react/bridge/ReadableArray;", "react-native-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {

        /* compiled from: CMCDProps.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ReadableType.values().length];
                try {
                    iArr[ReadableType.Number.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ReadableType.String.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CMCDProps parse(ReadableMap src) {
            if (src == null) {
                return null;
            }
            return new CMCDProps(parseKeyValuePairs(src.getArray(CMCDProps.PROP_CMCD_OBJECT)), parseKeyValuePairs(src.getArray("request")), parseKeyValuePairs(src.getArray("session")), parseKeyValuePairs(src.getArray("status")), ReactBridgeUtils.safeGetInt(src, CMCDProps.PROP_CMCD_MODE, 1));
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006b A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0074 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x001d A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final java.util.List<kotlin.Pair<java.lang.String, java.lang.Object>> parseKeyValuePairs(com.facebook.react.bridge.ReadableArray r9) {
            /*
                r8 = this;
                if (r9 != 0) goto L7
                java.util.List r9 = kotlin.collections.CollectionsKt.emptyList()
                return r9
            L7:
                r0 = 0
                int r1 = r9.size()
                kotlin.ranges.IntRange r0 = kotlin.ranges.RangesKt.until(r0, r1)
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                java.util.Collection r1 = (java.util.Collection) r1
                java.util.Iterator r0 = r0.iterator()
            L1d:
                boolean r2 = r0.hasNext()
                if (r2 == 0) goto L78
                r2 = r0
                kotlin.collections.IntIterator r2 = (kotlin.collections.IntIterator) r2
                int r2 = r2.nextInt()
                com.facebook.react.bridge.ReadableMap r2 = r9.getMap(r2)
                r3 = 0
                if (r2 == 0) goto L38
                java.lang.String r4 = "key"
                java.lang.String r4 = r2.getString(r4)
                goto L39
            L38:
                r4 = r3
            L39:
                java.lang.String r5 = "value"
                if (r2 == 0) goto L43
                com.facebook.react.bridge.ReadableType r6 = r2.getType(r5)
                goto L44
            L43:
                r6 = r3
            L44:
                if (r6 != 0) goto L48
                r6 = -1
                goto L50
            L48:
                int[] r7 = com.brentvatne.common.api.CMCDProps.Companion.WhenMappings.$EnumSwitchMapping$0
                int r6 = r6.ordinal()
                r6 = r7[r6]
            L50:
                r7 = 1
                if (r6 == r7) goto L5f
                r7 = 2
                if (r6 == r7) goto L58
            L56:
                r2 = r3
                goto L69
            L58:
                if (r2 == 0) goto L56
                java.lang.String r2 = r2.getString(r5)
                goto L69
            L5f:
                if (r2 == 0) goto L56
                double r5 = r2.getDouble(r5)
                java.lang.Double r2 = java.lang.Double.valueOf(r5)
            L69:
                if (r4 == 0) goto L72
                if (r2 == 0) goto L72
                kotlin.Pair r3 = new kotlin.Pair
                r3.<init>(r4, r2)
            L72:
                if (r3 == 0) goto L1d
                r1.add(r3)
                goto L1d
            L78:
                java.util.List r1 = (java.util.List) r1
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.brentvatne.common.api.CMCDProps.Companion.parseKeyValuePairs(com.facebook.react.bridge.ReadableArray):java.util.List");
        }
    }
}
