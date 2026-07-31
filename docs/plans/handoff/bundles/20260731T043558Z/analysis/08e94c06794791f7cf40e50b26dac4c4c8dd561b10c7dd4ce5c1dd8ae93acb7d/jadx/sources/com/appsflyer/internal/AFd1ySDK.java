package com.appsflyer.internal;

import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.app.AppCompatDelegate;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFd1xSDK;
import com.google.common.net.HttpHeaders;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AFd1ySDK implements AFd1xSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static long copy = -1417917781629150226L;
    private static int copydefault = 1;
    private static int equals;
    private final Lazy AFAdRevenueData;
    private final Lazy areAllFieldsValid;
    private final String component1;
    private final Lazy component2;
    private final Lazy component3;
    private AFd1xSDK.AFa1ySDK component4;
    private final Lazy getCurrencyIso4217Code;
    private final Lazy getMediationNetwork;
    private final Lazy getMonetizationNetwork;
    private AFc1bSDK getRevenue;

    public static /* synthetic */ Object getRevenue(Object[] objArr, int i, int i2, int i3) {
        int i4 = (i * (-464)) + (i2 * (-929));
        int i5 = ~i;
        int i6 = i2 | i3;
        int i7 = i4 + (((~i6) | i5) * (-465)) + ((i2 | (~(i3 | i5))) * 930) + ((i5 | i6) * 465);
        if (i7 == 1) {
            final AFd1ySDK aFd1ySDK = (AFd1ySDK) objArr[0];
            AFd1xSDK.AFa1ySDK aFa1ySDK = (AFd1xSDK.AFa1ySDK) objArr[1];
            int i8 = 2 % 2;
            int i9 = equals + 57;
            copydefault = i9 % 128;
            int i10 = i9 % 2;
            aFd1ySDK.component4 = aFa1ySDK;
            ((ExecutorService) getRevenue(new Object[]{aFd1ySDK}, -1221964614, 1221964616, System.identityHashCode(aFd1ySDK))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1ySDK.getMediationNetwork(AFd1ySDK.this);
                }
            });
            int i11 = equals + 61;
            copydefault = i11 % 128;
            int i12 = i11 % 2;
            return null;
        }
        if (i7 == 2) {
            return getMediationNetwork(objArr);
        }
        if (i7 == 3) {
            return AFAdRevenueData(objArr);
        }
        if (i7 == 4) {
            return getCurrencyIso4217Code(objArr);
        }
        Map map = (Map) objArr[0];
        List list = (List) objArr[1];
        int i13 = 2 % 2;
        int i14 = copydefault + 47;
        equals = i14 % 128;
        int i15 = i14 % 2;
        Map mapOf = MapsKt.mapOf(TuplesKt.to("deviceInfo", map), TuplesKt.to("excs", AFd1tSDK.AFAdRevenueData(list)));
        int i16 = equals + 11;
        copydefault = i16 % 128;
        int i17 = i16 % 2;
        return mapOf;
    }

    public AFd1ySDK(AFc1bSDK aFc1bSDK) {
        Intrinsics.checkNotNullParameter(aFc1bSDK, "");
        this.getRevenue = aFc1bSDK;
        this.getCurrencyIso4217Code = LazyKt.lazy(new Function0<AFf1lSDK>() { // from class: com.appsflyer.internal.AFd1ySDK.1
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getCurrencyIso4217Code, reason: merged with bridge method [inline-methods] */
            public final AFf1lSDK invoke() {
                AFf1lSDK component1 = AFd1ySDK.getMonetizationNetwork(AFd1ySDK.this).component1();
                Intrinsics.checkNotNullExpressionValue(component1, "");
                return component1;
            }

            {
                super(0);
            }
        });
        this.getMediationNetwork = LazyKt.lazy(new Function0<AFc1pSDK>() { // from class: com.appsflyer.internal.AFd1ySDK.5
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getMonetizationNetwork, reason: merged with bridge method [inline-methods] */
            public final AFc1pSDK invoke() {
                AFc1pSDK currencyIso4217Code = AFd1ySDK.getMonetizationNetwork(AFd1ySDK.this).getCurrencyIso4217Code();
                Intrinsics.checkNotNullExpressionValue(currencyIso4217Code, "");
                return currencyIso4217Code;
            }

            {
                super(0);
            }
        });
        this.getMonetizationNetwork = LazyKt.lazy(new Function0<AFc1oSDK>() { // from class: com.appsflyer.internal.AFd1ySDK.3
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getMonetizationNetwork, reason: merged with bridge method [inline-methods] */
            public final AFc1oSDK invoke() {
                AFc1oSDK component2 = AFd1ySDK.getMonetizationNetwork(AFd1ySDK.this).component2();
                Intrinsics.checkNotNullExpressionValue(component2, "");
                return component2;
            }

            {
                super(0);
            }
        });
        this.AFAdRevenueData = LazyKt.lazy(new Function0<AFf1cSDK>() { // from class: com.appsflyer.internal.AFd1ySDK.9
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: AFAdRevenueData, reason: merged with bridge method [inline-methods] */
            public final AFf1cSDK invoke() {
                AFf1cSDK AFKeystoreWrapper = AFd1ySDK.getMonetizationNetwork(AFd1ySDK.this).AFKeystoreWrapper();
                Intrinsics.checkNotNullExpressionValue(AFKeystoreWrapper, "");
                return AFKeystoreWrapper;
            }

            {
                super(0);
            }
        });
        this.component2 = LazyKt.lazy(new Function0<ExecutorService>() { // from class: com.appsflyer.internal.AFd1ySDK.2
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getCurrencyIso4217Code, reason: merged with bridge method [inline-methods] */
            public final ExecutorService invoke() {
                ExecutorService mediationNetwork = AFd1ySDK.getMonetizationNetwork(AFd1ySDK.this).getMediationNetwork();
                Intrinsics.checkNotNullExpressionValue(mediationNetwork, "");
                return mediationNetwork;
            }

            {
                super(0);
            }
        });
        this.component1 = "6.17.3";
        this.areAllFieldsValid = LazyKt.lazy(new Function0<AFd1uSDK>() { // from class: com.appsflyer.internal.AFd1ySDK.4
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: getMediationNetwork, reason: merged with bridge method [inline-methods] */
            public final AFd1uSDK invoke() {
                AFc1gSDK registerClient = AFd1ySDK.getMonetizationNetwork(AFd1ySDK.this).registerClient();
                Intrinsics.checkNotNullExpressionValue(registerClient, "");
                return new AFd1uSDK(registerClient);
            }

            {
                super(0);
            }
        });
        this.component3 = LazyKt.lazy(new Function0<AFd1vSDK>() { // from class: com.appsflyer.internal.AFd1ySDK.6
            @Override // kotlin.jvm.functions.Function0
            /* renamed from: AFAdRevenueData, reason: merged with bridge method [inline-methods] */
            public final AFd1vSDK invoke() {
                return new AFd1vSDK(AFd1ySDK.this.AFAdRevenueData());
            }

            {
                super(0);
            }
        });
    }

    public static final /* synthetic */ AFc1bSDK getMonetizationNetwork(AFd1ySDK aFd1ySDK) {
        int i = 2 % 2;
        int i2 = copydefault;
        int i3 = i2 + 19;
        equals = i3 % 128;
        int i4 = i3 % 2;
        AFc1bSDK aFc1bSDK = aFd1ySDK.getRevenue;
        int i5 = i2 + 97;
        equals = i5 % 128;
        int i6 = i5 % 2;
        return aFc1bSDK;
    }

    private final AFf1lSDK getMediationNetwork() {
        AFf1lSDK aFf1lSDK;
        int i = 2 % 2;
        int i2 = copydefault + 121;
        equals = i2 % 128;
        if (i2 % 2 != 0) {
            aFf1lSDK = (AFf1lSDK) this.getCurrencyIso4217Code.getValue();
            int i3 = 71 / 0;
        } else {
            aFf1lSDK = (AFf1lSDK) this.getCurrencyIso4217Code.getValue();
        }
        int i4 = copydefault + 31;
        equals = i4 % 128;
        int i5 = i4 % 2;
        return aFf1lSDK;
    }

    private final AFc1pSDK getMonetizationNetwork() {
        AFc1pSDK aFc1pSDK;
        int i = 2 % 2;
        int i2 = copydefault + 49;
        equals = i2 % 128;
        if (i2 % 2 != 0) {
            aFc1pSDK = (AFc1pSDK) this.getMediationNetwork.getValue();
            int i3 = 51 / 0;
        } else {
            aFc1pSDK = (AFc1pSDK) this.getMediationNetwork.getValue();
        }
        int i4 = equals + 63;
        copydefault = i4 % 128;
        if (i4 % 2 != 0) {
            return aFc1pSDK;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private final AFc1oSDK component3() {
        int i = 2 % 2;
        int i2 = copydefault + 97;
        equals = i2 % 128;
        int i3 = i2 % 2;
        AFc1oSDK aFc1oSDK = (AFc1oSDK) this.getMonetizationNetwork.getValue();
        int i4 = equals + 29;
        copydefault = i4 % 128;
        int i5 = i4 % 2;
        return aFc1oSDK;
    }

    private final AFf1cSDK component1() {
        int i = 2 % 2;
        int i2 = copydefault + 17;
        equals = i2 % 128;
        int i3 = i2 % 2;
        AFf1cSDK aFf1cSDK = (AFf1cSDK) this.AFAdRevenueData.getValue();
        int i4 = copydefault + 113;
        equals = i4 % 128;
        if (i4 % 2 == 0) {
            return aFf1cSDK;
        }
        throw null;
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        AFd1ySDK aFd1ySDK = (AFd1ySDK) objArr[0];
        int i = 2 % 2;
        int i2 = copydefault + 39;
        equals = i2 % 128;
        int i3 = i2 % 2;
        ExecutorService executorService = (ExecutorService) aFd1ySDK.component2.getValue();
        int i4 = copydefault + 45;
        equals = i4 % 128;
        if (i4 % 2 == 0) {
            return executorService;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private final AFh1aSDK areAllFieldsValid() {
        AFi1zSDK aFi1zSDK;
        int i = 2 % 2;
        int i2 = copydefault + 53;
        equals = i2 % 128;
        if (i2 % 2 != 0) {
            AFi1wSDK aFi1wSDK = getMediationNetwork().AFAdRevenueData.AFAdRevenueData;
            throw null;
        }
        AFi1wSDK aFi1wSDK2 = getMediationNetwork().AFAdRevenueData.AFAdRevenueData;
        if (aFi1wSDK2 != null && (aFi1zSDK = aFi1wSDK2.getMonetizationNetwork) != null) {
            int i3 = copydefault + 37;
            equals = i3 % 128;
            int i4 = i3 % 2;
            return aFi1zSDK.getCurrencyIso4217Code;
        }
        int i5 = copydefault + 79;
        equals = i5 % 128;
        if (i5 % 2 == 0) {
            return null;
        }
        throw null;
    }

    public final AFd1zSDK AFAdRevenueData() {
        int i = 2 % 2;
        int i2 = copydefault + 119;
        equals = i2 % 128;
        int i3 = i2 % 2;
        AFd1zSDK aFd1zSDK = (AFd1zSDK) this.areAllFieldsValid.getValue();
        int i4 = equals + 95;
        copydefault = i4 % 128;
        if (i4 % 2 != 0) {
            return aFd1zSDK;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    private AFd1wSDK component2() {
        int i = 2 % 2;
        int i2 = equals + 29;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        AFd1wSDK aFd1wSDK = (AFd1wSDK) this.component3.getValue();
        if (i3 != 0) {
            return aFd1wSDK;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMediationNetwork(AFd1ySDK aFd1ySDK, Throwable th, String str) {
        int i = 2 % 2;
        int i2 = equals + 67;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        Intrinsics.checkNotNullParameter(aFd1ySDK, "");
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(str, "");
        AFh1aSDK areAllFieldsValid = aFd1ySDK.areAllFieldsValid();
        boolean z = false;
        if (areAllFieldsValid != null && aFd1ySDK.getMonetizationNetwork(areAllFieldsValid)) {
            z = true;
        }
        if (z) {
            int i4 = equals + 33;
            copydefault = i4 % 128;
            int i5 = i4 % 2;
            aFd1ySDK.AFAdRevenueData().getRevenue(th, str);
        }
    }

    private static /* synthetic */ Object AFAdRevenueData(Object[] objArr) {
        final AFd1ySDK aFd1ySDK = (AFd1ySDK) objArr[0];
        final Throwable th = (Throwable) objArr[1];
        final String str = (String) objArr[2];
        int i = 2 % 2;
        int i2 = equals + 121;
        copydefault = i2 % 128;
        Object obj = null;
        if (i2 % 2 != 0) {
            Intrinsics.checkNotNullParameter(th, "");
            Intrinsics.checkNotNullParameter(str, "");
            ((ExecutorService) getRevenue(new Object[]{aFd1ySDK}, -1221964614, 1221964616, System.identityHashCode(aFd1ySDK))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1ySDK.getMediationNetwork(AFd1ySDK.this, th, str);
                }
            });
            return null;
        }
        Intrinsics.checkNotNullParameter(th, "");
        Intrinsics.checkNotNullParameter(str, "");
        ((ExecutorService) getRevenue(new Object[]{aFd1ySDK}, -1221964614, 1221964616, System.identityHashCode(aFd1ySDK))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AFd1ySDK.getMediationNetwork(AFd1ySDK.this, th, str);
            }
        });
        obj.hashCode();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMediationNetwork(AFd1ySDK aFd1ySDK) {
        int i = 2 % 2;
        int i2 = copydefault + 121;
        equals = i2 % 128;
        if (i2 % 2 == 0) {
            Intrinsics.checkNotNullParameter(aFd1ySDK, "");
            aFd1ySDK.equals();
        } else {
            Intrinsics.checkNotNullParameter(aFd1ySDK, "");
            aFd1ySDK.equals();
            throw null;
        }
    }

    private static void a(String str, int i, Object[] objArr) {
        int i2 = 2 % 2;
        char[] cArr = str;
        if (str != null) {
            int i3 = $10 + 37;
            $11 = i3 % 128;
            int i4 = i3 % 2;
            cArr = str.toCharArray();
        }
        char[] cArr2 = cArr;
        AFk1lSDK aFk1lSDK = new AFk1lSDK();
        aFk1lSDK.getMonetizationNetwork = i;
        int length = cArr2.length;
        long[] jArr = new long[length];
        aFk1lSDK.getRevenue = 0;
        while (aFk1lSDK.getRevenue < cArr2.length) {
            int i5 = $10 + 29;
            $11 = i5 % 128;
            int i6 = i5 % 2;
            jArr[aFk1lSDK.getRevenue] = (cArr2[aFk1lSDK.getRevenue] ^ (aFk1lSDK.getRevenue * aFk1lSDK.getMonetizationNetwork)) ^ (copy ^ (-2523060390901184290L));
            aFk1lSDK.getRevenue++;
        }
        char[] cArr3 = new char[length];
        aFk1lSDK.getRevenue = 0;
        while (aFk1lSDK.getRevenue < cArr2.length) {
            int i7 = $10 + 77;
            $11 = i7 % 128;
            int i8 = i7 % 2;
            cArr3[aFk1lSDK.getRevenue] = (char) jArr[aFk1lSDK.getRevenue];
            aFk1lSDK.getRevenue++;
        }
        String str2 = new String(cArr3);
        int i9 = $11 + 87;
        $10 = i9 % 128;
        if (i9 % 2 != 0) {
            throw null;
        }
        objArr[0] = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCurrencyIso4217Code(AFd1ySDK aFd1ySDK) {
        int i = 2 % 2;
        int i2 = copydefault + 119;
        equals = i2 % 128;
        int i3 = i2 % 2;
        Intrinsics.checkNotNullParameter(aFd1ySDK, "");
        aFd1ySDK.copy();
        int i4 = copydefault + 11;
        equals = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getCurrencyIso4217Code() {
        int i = 2 % 2;
        int i2 = copydefault + 51;
        equals = i2 % 128;
        if (i2 % 2 == 0) {
            ((ExecutorService) getRevenue(new Object[]{this}, -1221964614, 1221964616, System.identityHashCode(this))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1ySDK.getCurrencyIso4217Code(AFd1ySDK.this);
                }
            });
            int i3 = copydefault + 113;
            equals = i3 % 128;
            int i4 = i3 % 2;
            return;
        }
        ((ExecutorService) getRevenue(new Object[]{this}, -1221964614, 1221964616, System.identityHashCode(this))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AFd1ySDK.getCurrencyIso4217Code(AFd1ySDK.this);
            }
        });
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRevenue(AFd1ySDK aFd1ySDK) {
        int i = 2 % 2;
        int i2 = equals + 85;
        copydefault = i2 % 128;
        if (i2 % 2 != 0) {
            Intrinsics.checkNotNullParameter(aFd1ySDK, "");
            aFd1ySDK.copydefault();
        } else {
            Intrinsics.checkNotNullParameter(aFd1ySDK, "");
            aFd1ySDK.copydefault();
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getRevenue() {
        int i = 2 % 2;
        int i2 = equals + 41;
        copydefault = i2 % 128;
        if (i2 % 2 == 0) {
            ((ExecutorService) getRevenue(new Object[]{this}, -1221964614, 1221964616, System.identityHashCode(this))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1ySDK.getRevenue(AFd1ySDK.this);
                }
            });
            int i3 = 23 / 0;
        } else {
            ((ExecutorService) getRevenue(new Object[]{this}, -1221964614, 1221964616, System.identityHashCode(this))).execute(new Runnable() { // from class: com.appsflyer.internal.AFd1ySDK$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1ySDK.getRevenue(AFd1ySDK.this);
                }
            });
        }
        int i4 = copydefault + 121;
        equals = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00bc, code lost:
    
        if (r6 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00a0, code lost:
    
        if (r6 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
    
        if (r6 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00be, code lost:
    
        r6 = kotlin.text.StringsKt.toIntOrNull(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c2, code lost:
    
        if (r6 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c4, code lost:
    
        r6 = r6.intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x015b, code lost:
    
        if (r1.intValue() != (-1)) goto L91;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized void equals() {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1ySDK.equals():void");
    }

    private final void copy() {
        String mediationNetwork;
        int i = 2 % 2;
        int i2 = equals + 101;
        copydefault = i2 % 128;
        if (i2 % 2 != 0) {
            AFh1aSDK areAllFieldsValid = areAllFieldsValid();
            if (areAllFieldsValid != null) {
                if (AFAdRevenueData(areAllFieldsValid)) {
                    int i3 = equals + 23;
                    copydefault = i3 % 128;
                    if (i3 % 2 == 0) {
                        mediationNetwork = component1().getMediationNetwork();
                        int i4 = 66 / 0;
                        if (mediationNetwork == null) {
                            return;
                        }
                    } else {
                        mediationNetwork = component1().getMediationNetwork();
                        if (mediationNetwork == null) {
                            return;
                        }
                    }
                    String jSONObject = new JSONObject((Map) getRevenue(new Object[]{getCurrencyIso4217Code(areAllFieldsValid), AFAdRevenueData().getMediationNetwork()}, -1519321264, 1519321264, (int) System.currentTimeMillis())).toString();
                    Intrinsics.checkNotNullExpressionValue(jSONObject, "");
                    Intrinsics.checkNotNullExpressionValue(mediationNetwork, "");
                    getRevenue(new Object[]{this, jSONObject, mediationNetwork}, -1047452469, 1047452473, System.identityHashCode(this));
                    return;
                }
                AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "skipping", false, 4, null);
                return;
            }
            return;
        }
        areAllFieldsValid();
        throw null;
    }

    private final synchronized void copydefault() {
        boolean z;
        int i = 2 % 2;
        AFh1aSDK areAllFieldsValid = areAllFieldsValid();
        if (areAllFieldsValid != null) {
            if (areAllFieldsValid.getRevenue == -1) {
                int i2 = copydefault + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
                equals = i2 % 128;
                int i3 = i2 % 2;
                component3().getCurrencyIso4217Code("af_send_exc_to_server_window");
            } else if (component3().getCurrencyIso4217Code("af_send_exc_to_server_window", -1L) == -1) {
                getMediationNetwork(areAllFieldsValid);
            }
            z = getMonetizationNetwork(areAllFieldsValid);
            int i4 = 2 % 2;
        } else {
            int i5 = 2 % 2;
            z = false;
        }
        AFd1xSDK.AFa1ySDK aFa1ySDK = this.component4;
        if (aFa1ySDK != null) {
            int i6 = equals + 67;
            copydefault = i6 % 128;
            if (i6 % 2 != 0) {
                aFa1ySDK.onConfigurationChanged(z);
            } else {
                aFa1ySDK.onConfigurationChanged(z);
                throw null;
            }
        }
    }

    private final void getMediationNetwork(AFh1aSDK aFh1aSDK) {
        int i;
        long currentTimeMillis;
        int i2 = 2 % 2;
        int i3 = equals + 93;
        copydefault = i3 % 128;
        if (i3 % 2 == 0) {
            i = aFh1aSDK.getCurrencyIso4217Code;
            currentTimeMillis = System.currentTimeMillis() ^ TimeUnit.DAYS.toMillis(aFh1aSDK.getRevenue);
        } else {
            i = aFh1aSDK.getCurrencyIso4217Code;
            currentTimeMillis = System.currentTimeMillis() + TimeUnit.DAYS.toMillis(aFh1aSDK.getRevenue);
        }
        AFc1oSDK component3 = component3();
        component3.getRevenue("af_send_exc_to_server_window", currentTimeMillis);
        component3.getRevenue("af_send_exc_min", i);
    }

    private final Map<String, String> getCurrencyIso4217Code(AFh1aSDK aFh1aSDK) {
        int i = 2 % 2;
        Object[] objArr = new Object[1];
        a("퍒䪹\ue0a7ắ뒸", (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 39419, objArr);
        Map<String, String> mapOf = MapsKt.mapOf(TuplesKt.to(((String) objArr[0]).intern(), Build.BRAND), TuplesKt.to("model", Build.MODEL), TuplesKt.to("app_id", getMonetizationNetwork().getRevenue.getRevenue.getPackageName()), TuplesKt.to("p_ex", new AFa1ySDK().getMediationNetwork()), TuplesKt.to("api", String.valueOf(Build.VERSION.SDK_INT)), TuplesKt.to("sdk", this.component1), TuplesKt.to("uid", AFb1jSDK.getRevenue(getMonetizationNetwork().getMonetizationNetwork)), TuplesKt.to("exc_config", aFh1aSDK.getMonetizationNetwork()));
        int i2 = equals + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
        copydefault = i2 % 128;
        int i3 = i2 % 2;
        return mapOf;
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        AFd1ySDK aFd1ySDK = (AFd1ySDK) objArr[0];
        String str = (String) objArr[1];
        String str2 = (String) objArr[2];
        int i = 2 % 2;
        int i2 = copydefault + 41;
        equals = i2 % 128;
        int i3 = i2 % 2;
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "");
        aFd1ySDK.component2().getRevenue(bytes, MapsKt.mapOf(TuplesKt.to(HttpHeaders.AUTHORIZATION, AFj1bSDK.getRevenue(str, str2))), 2000);
        int i4 = copydefault + 37;
        equals = i4 % 128;
        if (i4 % 2 == 0) {
            return null;
        }
        throw null;
    }

    private final boolean AFAdRevenueData(AFh1aSDK aFh1aSDK) {
        int i = 2 % 2;
        long currentTimeMillis = System.currentTimeMillis();
        long currencyIso4217Code = component3().getCurrencyIso4217Code("af_send_exc_to_server_window", -1L);
        if (aFh1aSDK.getMediationNetwork >= TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis) && currencyIso4217Code != -1) {
            int i2 = copydefault + 51;
            equals = i2 % 128;
            if (i2 % 2 != 0) {
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            if (currencyIso4217Code >= currentTimeMillis) {
                int mediationNetwork = component3().getMediationNetwork("af_send_exc_min", -1);
                if (mediationNetwork != -1 && AFAdRevenueData().AFAdRevenueData() >= mediationNetwork) {
                    return getRevenue(aFh1aSDK);
                }
                int i3 = copydefault + 103;
                equals = i3 % 128;
                if (i3 % 2 != 0) {
                    int i4 = 15 / 0;
                }
                return false;
            }
        }
        return false;
    }

    private final boolean getMonetizationNetwork(AFh1aSDK aFh1aSDK) {
        int i = 2 % 2;
        int i2 = copydefault + 105;
        equals = i2 % 128;
        Object obj = null;
        if (i2 % 2 == 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long currencyIso4217Code = component3().getCurrencyIso4217Code("af_send_exc_to_server_window", -1L);
            if (aFh1aSDK.getMediationNetwork >= TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis)) {
                if (currencyIso4217Code == -1 || currencyIso4217Code < currentTimeMillis) {
                    return false;
                }
                return getRevenue(aFh1aSDK);
            }
            int i3 = equals + 123;
            copydefault = i3 % 128;
            if (i3 % 2 != 0) {
                return false;
            }
            obj.hashCode();
            throw null;
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        component3().getCurrencyIso4217Code("af_send_exc_to_server_window", -1L);
        long j = aFh1aSDK.getMediationNetwork;
        TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis2);
        obj.hashCode();
        throw null;
    }

    private final boolean getRevenue(AFh1aSDK aFh1aSDK) {
        int i = 2 % 2;
        new AFd1sSDK();
        String str = this.component1;
        String str2 = aFh1aSDK.AFAdRevenueData;
        Intrinsics.checkNotNullExpressionValue(str2, "");
        boolean currencyIso4217Code = AFd1sSDK.getCurrencyIso4217Code(str, str2);
        int i2 = equals + 23;
        copydefault = i2 % 128;
        if (i2 % 2 != 0) {
            return currencyIso4217Code;
        }
        throw null;
    }

    private final void AFAdRevenueData(String str, String str2) {
        getRevenue(new Object[]{this, str, str2}, -1047452469, 1047452473, System.identityHashCode(this));
    }

    private static Map<String, Object> getRevenue(Map<String, ? extends Object> map, List<AFc1cSDK> list) {
        return (Map) getRevenue(new Object[]{map, list}, -1519321264, 1519321264, (int) System.currentTimeMillis());
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getMediationNetwork(AFd1xSDK.AFa1ySDK aFa1ySDK) {
        getRevenue(new Object[]{this, aFa1ySDK}, -704073125, 704073126, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getRevenue(Throwable th, String str) {
        getRevenue(new Object[]{this, th, str}, 1146782962, -1146782959, System.identityHashCode(this));
    }

    private final ExecutorService component4() {
        return (ExecutorService) getRevenue(new Object[]{this}, -1221964614, 1221964616, System.identityHashCode(this));
    }
}
