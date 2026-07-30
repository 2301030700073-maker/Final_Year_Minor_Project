package com.appsflyer.internal;

import android.content.Context;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.media3.extractor.ts.TsExtractor;
import com.appsflyer.AFLogger;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class AFc1iSDK extends HashMap<String, Object> {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int areAllFieldsValid = 1;
    private static int getMediationNetwork;
    private static long getMonetizationNetwork;
    private static int getRevenue;
    private final Map<String, Object> AFAdRevenueData;
    private final Context getCurrencyIso4217Code;

    public AFc1iSDK(Map<String, Object> map, Context context) {
        this.AFAdRevenueData = map;
        this.getCurrencyIso4217Code = context;
        put(getMediationNetwork(), getMonetizationNetwork());
    }

    private static void b(String str, int i, Object[] objArr) {
        char[] cArr;
        int i2 = 2 % 2;
        int i3 = $10;
        int i4 = i3 + 27;
        $11 = i4 % 128;
        int i5 = i4 % 2;
        char[] cArr2 = str;
        if (str != null) {
            int i6 = i3 + 97;
            $11 = i6 % 128;
            if (i6 % 2 == 0) {
                int i7 = 74 / 0;
                cArr = str.toCharArray();
            } else {
                cArr = str.toCharArray();
            }
            int i8 = $10 + 9;
            $11 = i8 % 128;
            int i9 = i8 % 2;
            cArr2 = cArr;
        }
        AFk1gSDK aFk1gSDK = new AFk1gSDK();
        char[] currencyIso4217Code = AFk1gSDK.getCurrencyIso4217Code(getMonetizationNetwork ^ 7975055078221964256L, cArr2, i);
        aFk1gSDK.getCurrencyIso4217Code = 4;
        while (aFk1gSDK.getCurrencyIso4217Code < currencyIso4217Code.length) {
            int i10 = $10 + 23;
            $11 = i10 % 128;
            int i11 = i10 % 2;
            aFk1gSDK.getMediationNetwork = aFk1gSDK.getCurrencyIso4217Code - 4;
            currencyIso4217Code[aFk1gSDK.getCurrencyIso4217Code] = (char) ((currencyIso4217Code[aFk1gSDK.getCurrencyIso4217Code] ^ currencyIso4217Code[aFk1gSDK.getCurrencyIso4217Code % 4]) ^ (aFk1gSDK.getMediationNetwork * (getMonetizationNetwork ^ 7975055078221964256L)));
            aFk1gSDK.getCurrencyIso4217Code++;
        }
        objArr[0] = new String(currencyIso4217Code, 4, currencyIso4217Code.length - 4);
    }

    private static StringBuilder getCurrencyIso4217Code(String... strArr) throws Exception {
        int i = 2 % 2;
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        for (int i2 = 0; i2 < 3; i2++) {
            arrayList.add(Integer.valueOf(strArr[i2].length()));
        }
        Collections.sort(arrayList);
        int intValue = ((Integer) arrayList.get(0)).intValue();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < intValue; i3++) {
            int length2 = strArr.length;
            Object obj = null;
            Integer num = null;
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = areAllFieldsValid + 57;
                getRevenue = i5 % 128;
                int i6 = i5 % 2;
                int charAt = strArr[i4].charAt(i3);
                if (num != null) {
                    charAt ^= num.intValue();
                } else {
                    int i7 = areAllFieldsValid + 69;
                    getRevenue = i7 % 128;
                    if (i7 % 2 != 0) {
                        obj.hashCode();
                        throw null;
                    }
                }
                num = Integer.valueOf(charAt);
            }
            sb.append(Integer.toHexString(num.intValue()));
        }
        return sb;
    }

    private String getMediationNetwork() {
        int i = 2 % 2;
        try {
            String num = Integer.toString(Build.VERSION.SDK_INT);
            Map<String, Object> map = this.AFAdRevenueData;
            Object[] objArr = new Object[1];
            a("\n\ufff7\u0003\u0006\ufff7￼\ufff5\n\uffff\u0003\ufffb\t", ExpandableListView.getPackedPositionGroup(0L) + 4, 11 - ExpandableListView.getPackedPositionChild(0L), TextUtils.getCapsMode("", 0, 0) + TsExtractor.TS_STREAM_TYPE_AC4, false, objArr);
            String obj = map.get(((String) objArr[0]).intern()).toString();
            Map<String, Object> map2 = this.AFAdRevenueData;
            Object[] objArr2 = new Object[1];
            a("\ufffa\u000b\ufffb�\u0007", 3 - View.MeasureSpec.makeMeasureSpec(0, 0), 5 - Color.blue(0), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 169, true, objArr2);
            String obj2 = map2.get(((String) objArr2[0]).intern()).toString();
            if (obj2 == null) {
                Object[] objArr3 = new Object[1];
                a("\u0003\u0002\ufff8\u0002\ufff5\u0006\ufff6\u0013", TextUtils.indexOf("", "") + 2, 8 - (ViewConfiguration.getTapTimeout() >> 16), 142 - Drawable.resolveOpacity(0, 0), true, objArr3);
                obj2 = ((String) objArr3[0]).intern();
            }
            StringBuilder sb = new StringBuilder(obj);
            sb.reverse();
            StringBuilder currencyIso4217Code = getCurrencyIso4217Code(num, obj2, sb.toString());
            int length = currencyIso4217Code.length();
            if (length > 4) {
                int i2 = areAllFieldsValid + 97;
                getRevenue = i2 % 128;
                int i3 = i2 % 2;
                currencyIso4217Code.delete(4, length);
            } else {
                while (length < 4) {
                    int i4 = areAllFieldsValid + 89;
                    getRevenue = i4 % 128;
                    int i5 = i4 % 2;
                    length++;
                    currencyIso4217Code.append('1');
                }
            }
            Object[] objArr4 = new Object[1];
            b("퍵ƅ哆鈷팞뛏㫾", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), objArr4);
            currencyIso4217Code.insert(0, ((String) objArr4[0]).intern());
            return currencyIso4217Code.toString();
        } catch (Exception e) {
            Object[] objArr5 = new Object[1];
            b("쬇\udc3a\uf4e9ꃕ쬧歲髒蔬\u17ed俣뾸ꋹ爆경퍙羱嵚鄵\uf01e᭰맗\uf642ᗂ㣆蓎\uda93䪂햘\ue706㿃湈\uf100쉈ᰌ茍蹄⺌䅐ꂮꮘ৬ꖘ쑧䢔", -((byte) KeyEvent.getModifierMetaStateMask()), objArr5);
            AFLogger.afErrorLogForExcManagerOnly(((String) objArr5[0]).intern(), e);
            StringBuilder sb2 = new StringBuilder();
            Object[] objArr6 = new Object[1];
            b("╨鳵다턗┎⮻\udcd3\uf4f6鈴ེ吏팹鱵\uec3c镗\u0e60댽퇢똟檸埿뛊叁䤏檢騎ಅꑋॹ罂⡕肋ⰸ峎앆ￃ샰ƙ\ue6bf\uda0a\ue780\ue557艱㥐먊쩒", -((byte) KeyEvent.getModifierMetaStateMask()), objArr6);
            AFLogger.afRDLog(sb2.append(((String) objArr6[0]).intern()).append(e).toString());
            Object[] objArr7 = new Object[1];
            b("쁃w\uf497꜍쀨뜽骯芹᳆鎥뾴", Drawable.resolveOpacity(0, 0) + 1, objArr7);
            return ((String) objArr7[0]).intern();
        }
    }

    private static void a(String str, int i, int i2, int i3, boolean z, Object[] objArr) {
        int i4 = 2 % 2;
        char[] cArr = str;
        if (str != null) {
            int i5 = $10 + 15;
            $11 = i5 % 128;
            if (i5 % 2 == 0) {
                str.toCharArray();
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            cArr = str.toCharArray();
        }
        char[] cArr2 = cArr;
        AFk1cSDK aFk1cSDK = new AFk1cSDK();
        char[] cArr3 = new char[i2];
        aFk1cSDK.getMonetizationNetwork = 0;
        while (aFk1cSDK.getMonetizationNetwork < i2) {
            int i6 = $11 + 45;
            $10 = i6 % 128;
            int i7 = i6 % 2;
            aFk1cSDK.AFAdRevenueData = cArr2[aFk1cSDK.getMonetizationNetwork];
            cArr3[aFk1cSDK.getMonetizationNetwork] = (char) (aFk1cSDK.AFAdRevenueData + i3);
            int i8 = aFk1cSDK.getMonetizationNetwork;
            cArr3[i8] = (char) (cArr3[i8] - ((int) (getMediationNetwork ^ (-1147347204026316506L))));
            aFk1cSDK.getMonetizationNetwork++;
        }
        if (i > 0) {
            int i9 = $11 + 43;
            $10 = i9 % 128;
            int i10 = i9 % 2;
            aFk1cSDK.getCurrencyIso4217Code = i;
            char[] cArr4 = new char[i2];
            System.arraycopy(cArr3, 0, cArr4, 0, i2);
            System.arraycopy(cArr4, 0, cArr3, i2 - aFk1cSDK.getCurrencyIso4217Code, aFk1cSDK.getCurrencyIso4217Code);
            System.arraycopy(cArr4, aFk1cSDK.getCurrencyIso4217Code, cArr3, 0, i2 - aFk1cSDK.getCurrencyIso4217Code);
        }
        if (z) {
            char[] cArr5 = new char[i2];
            aFk1cSDK.getMonetizationNetwork = 0;
            while (aFk1cSDK.getMonetizationNetwork < i2) {
                cArr5[aFk1cSDK.getMonetizationNetwork] = cArr3[(i2 - aFk1cSDK.getMonetizationNetwork) - 1];
                aFk1cSDK.getMonetizationNetwork++;
            }
            cArr3 = cArr5;
        }
        objArr[0] = new String(cArr3);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x02f4 A[Catch: Exception -> 0x0328, TRY_LEAVE, TryCatch #1 {Exception -> 0x0328, blocks: (B:6:0x016e, B:10:0x01b0, B:11:0x01cb, B:13:0x01d5, B:16:0x01fe, B:18:0x02f4, B:21:0x030a, B:23:0x0314, B:26:0x031a), top: B:5:0x016e }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x03be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x03bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getMonetizationNetwork() {
        /*
            Method dump skipped, instructions count: 961
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFc1iSDK.getMonetizationNetwork():java.lang.String");
    }

    public static class AFa1zSDK {
        static byte[] getMonetizationNetwork(String str) throws Exception {
            return str.getBytes(Charset.defaultCharset());
        }

        static byte[] AFAdRevenueData(byte[] bArr) throws Exception {
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
            }
            return bArr;
        }
    }

    static void AFAdRevenueData() {
        getMediationNetwork = -33994396;
        getMonetizationNetwork = 8254201675162375375L;
    }

    static {
        AFAdRevenueData();
        PointF.length(0.0f, 0.0f);
        ExpandableListView.getPackedPositionChild(0L);
        ViewConfiguration.getZoomControlsTimeout();
        ViewConfiguration.getScrollDefaultDelay();
        View.MeasureSpec.makeMeasureSpec(0, 0);
        ImageFormat.getBitsPerPixel(0);
        ViewConfiguration.getFadingEdgeLength();
        SystemClock.currentThreadTimeMillis();
        KeyEvent.getModifierMetaStateMask();
        ViewConfiguration.getTouchSlop();
        ViewConfiguration.getScrollBarSize();
        TypedValue.complexToFraction(0, 0.0f, 0.0f);
        ViewConfiguration.getScrollFriction();
        Process.myPid();
        View.resolveSizeAndState(0, 0, 0);
        ExpandableListView.getPackedPositionChild(0L);
        ViewConfiguration.getFadingEdgeLength();
        ViewConfiguration.getTapTimeout();
        TextUtils.indexOf((CharSequence) "", '0', 0, 0);
        int i = areAllFieldsValid + 19;
        getRevenue = i % 128;
        if (i % 2 == 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }
}
