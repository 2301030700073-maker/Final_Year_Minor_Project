package com.appsflyer.internal;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.telephony.cdma.CdmaCellLocation;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.internal.AFg1dSDK;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AFg1gSDK {
    private final LinkedHashMap<String, Object> getMediationNetwork;
    public static final Object getRevenue = new Object() { // from class: com.appsflyer.internal.AFg1gSDK.1
        public final boolean equals(Object obj) {
            return obj == this || obj == null;
        }

        public final int hashCode() {
            return Objects.hashCode(null);
        }

        public final String toString() {
            return "null";
        }
    };
    private static final Double getMonetizationNetwork = Double.valueOf(-0.0d);

    public AFg1gSDK() {
        this.getMediationNetwork = new LinkedHashMap<>();
    }

    public AFg1gSDK(Map map) {
        this();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                throw new NullPointerException("key == null");
            }
            this.getMediationNetwork.put(str, getMediationNetwork(entry.getValue()));
        }
    }

    private AFg1gSDK(Object obj) throws AFg1jSDK {
        try {
            Object obj2 = AFa1jSDK.unregisterClient.get(953122140);
            if (obj2 == null) {
                obj2 = ((Class) AFa1jSDK.AFAdRevenueData((ViewConfiguration.getKeyRepeatDelay() >> 16) + 357, (char) (ViewConfiguration.getScrollBarSize() >> 8), TextUtils.getTrimmedLength("") + 36)).getDeclaredMethod("getMediationNetwork", null);
                AFa1jSDK.unregisterClient.put(953122140, obj2);
            }
            Object invoke = ((Method) obj2).invoke(obj, null);
            if (invoke instanceof AFg1gSDK) {
                this.getMediationNetwork = ((AFg1gSDK) invoke).getMediationNetwork;
                return;
            }
            Object[] objArr = {invoke, "AFJsonObject"};
            Object obj3 = AFa1jSDK.unregisterClient.get(-362099263);
            if (obj3 == null) {
                obj3 = ((Class) AFa1jSDK.AFAdRevenueData(285 - (ViewConfiguration.getDoubleTapTimeout() >> 16), (char) (33655 - (ViewConfiguration.getJumpTapTimeout() >> 16)), 35 - ImageFormat.getBitsPerPixel(0))).getDeclaredMethod("getMediationNetwork", Object.class, String.class);
                AFa1jSDK.unregisterClient.put(-362099263, obj3);
            }
            throw ((Throwable) ((Method) obj3).invoke(null, objArr));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private AFg1gSDK(java.lang.String r6) throws com.appsflyer.internal.AFg1jSDK {
        /*
            r5 = this;
            java.lang.Object[] r6 = new java.lang.Object[]{r6}     // Catch: java.lang.Throwable -> L54
            java.util.Map r0 = com.appsflyer.internal.AFa1jSDK.unregisterClient     // Catch: java.lang.Throwable -> L54
            r1 = 932770076(0x3798f11c, float:1.8232087E-5)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L54
            if (r0 == 0) goto L14
            goto L4a
        L14:
            int r0 = android.view.ViewConfiguration.getKeyRepeatTimeout()     // Catch: java.lang.Throwable -> L54
            int r0 = r0 >> 16
            int r0 = r0 + 357
            java.lang.String r2 = ""
            r3 = 48
            int r2 = android.text.TextUtils.lastIndexOf(r2, r3)     // Catch: java.lang.Throwable -> L54
            int r2 = (-1) - r2
            char r2 = (char) r2     // Catch: java.lang.Throwable -> L54
            int r3 = android.view.ViewConfiguration.getScrollBarSize()     // Catch: java.lang.Throwable -> L54
            int r3 = r3 >> 8
            int r3 = 36 - r3
            java.lang.Object r0 = com.appsflyer.internal.AFa1jSDK.AFAdRevenueData(r0, r2, r3)     // Catch: java.lang.Throwable -> L54
            java.lang.Class r0 = (java.lang.Class) r0     // Catch: java.lang.Throwable -> L54
            r2 = 1
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.Throwable -> L54
            java.lang.Class<java.lang.String> r3 = java.lang.String.class
            r4 = 0
            r2[r4] = r3     // Catch: java.lang.Throwable -> L54
            java.lang.reflect.Constructor r0 = r0.getDeclaredConstructor(r2)     // Catch: java.lang.Throwable -> L54
            java.util.Map r2 = com.appsflyer.internal.AFa1jSDK.unregisterClient     // Catch: java.lang.Throwable -> L54
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L54
            r2.put(r1, r0)     // Catch: java.lang.Throwable -> L54
        L4a:
            java.lang.reflect.Constructor r0 = (java.lang.reflect.Constructor) r0     // Catch: java.lang.Throwable -> L54
            java.lang.Object r6 = r0.newInstance(r6)     // Catch: java.lang.Throwable -> L54
            r5.<init>(r6)
            return
        L54:
            r6 = move-exception
            java.lang.Throwable r0 = r6.getCause()
            if (r0 == 0) goto L5c
            throw r0
        L5c:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1gSDK.<init>(java.lang.String):void");
    }

    static String getMediationNetwork(Number number) throws AFg1jSDK {
        if (number == null) {
            throw new AFg1jSDK("Number must be non-null");
        }
        double doubleValue = number.doubleValue();
        try {
            Object[] objArr = {Double.valueOf(doubleValue)};
            Object obj = AFa1jSDK.unregisterClient.get(-1755342830);
            if (obj == null) {
                obj = ((Class) AFa1jSDK.AFAdRevenueData(KeyEvent.normalizeMetaState(0) + 285, (char) (33655 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), 36 - (ViewConfiguration.getMinimumFlingVelocity() >> 16))).getDeclaredMethod("getMonetizationNetwork", Double.TYPE);
                AFa1jSDK.unregisterClient.put(-1755342830, obj);
            }
            ((Double) ((Method) obj).invoke(null, objArr)).doubleValue();
            if (number.equals(getMonetizationNetwork)) {
                return "-0";
            }
            long longValue = number.longValue();
            if (doubleValue == longValue) {
                return Long.toString(longValue);
            }
            return number.toString();
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static Object getMediationNetwork(Object obj) {
        if (obj == null) {
            return getRevenue;
        }
        if (((Class) AFa1jSDK.AFAdRevenueData((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 321, (char) (TextUtils.indexOf("", "", 0) + 56708), 36 - (CdmaCellLocation.convertQuartSecToDecDegrees(0) > 0.0d ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == 0.0d ? 0 : -1)))).isInstance(obj) || (obj instanceof AFg1gSDK)) {
            return obj;
        }
        if (obj instanceof JSONArray) {
            try {
                Object[] objArr = {obj.toString()};
                Object obj2 = AFa1jSDK.unregisterClient.get(-2136715534);
                if (obj2 == null) {
                    obj2 = ((Class) AFa1jSDK.AFAdRevenueData(ExpandableListView.getPackedPositionType(0L) + 321, (char) (56708 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))), Color.rgb(0, 0, 0) + 16777252)).getDeclaredConstructor(String.class);
                    AFa1jSDK.unregisterClient.put(-2136715534, obj2);
                }
                obj = ((Constructor) obj2).newInstance(objArr);
                return obj;
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        if (obj instanceof JSONObject) {
            return new AFg1gSDK(obj.toString());
        }
        if (obj.equals(getRevenue)) {
            return obj;
        }
        if (obj instanceof Collection) {
            try {
                Object[] objArr2 = {(Collection) obj};
                Object obj3 = AFa1jSDK.unregisterClient.get(-1441240789);
                if (obj3 == null) {
                    obj3 = ((Class) AFa1jSDK.AFAdRevenueData(322 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (char) (56708 - TextUtils.getOffsetBefore("", 0)), 36 - KeyEvent.keyCodeFromString(""))).getDeclaredConstructor(Collection.class);
                    AFa1jSDK.unregisterClient.put(-1441240789, obj3);
                }
                return ((Constructor) obj3).newInstance(objArr2);
            } catch (Throwable th2) {
                Throwable cause2 = th2.getCause();
                if (cause2 != null) {
                    throw cause2;
                }
                throw th2;
            }
        }
        if (obj.getClass().isArray()) {
            try {
                Object[] objArr3 = {obj};
                Object obj4 = AFa1jSDK.unregisterClient.get(453738144);
                if (obj4 == null) {
                    obj4 = ((Class) AFa1jSDK.AFAdRevenueData(320 - ExpandableListView.getPackedPositionChild(0L), (char) (56708 - TextUtils.getOffsetBefore("", 0)), 36 - View.combineMeasuredStates(0, 0))).getDeclaredConstructor(Object.class);
                    AFa1jSDK.unregisterClient.put(453738144, obj4);
                }
                return ((Constructor) obj4).newInstance(objArr3);
            } catch (Throwable th3) {
                Throwable cause3 = th3.getCause();
                if (cause3 != null) {
                    throw cause3;
                }
                throw th3;
            }
        }
        if (obj instanceof Map) {
            return new AFg1gSDK((Map) obj);
        }
        if ((obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof String)) {
            return obj;
        }
        if (obj.getClass().getPackage().getName().startsWith("java.")) {
            return obj.toString();
        }
        return null;
        return null;
    }

    public final AFg1gSDK getRevenue(String str, Object obj) throws AFg1jSDK {
        if (obj == null) {
            this.getMediationNetwork.remove(str);
            return this;
        }
        if (obj instanceof Number) {
            try {
                Object[] objArr = {Double.valueOf(((Number) obj).doubleValue())};
                Object obj2 = AFa1jSDK.unregisterClient.get(-1755342830);
                if (obj2 == null) {
                    obj2 = ((Class) AFa1jSDK.AFAdRevenueData(AndroidCharacter.getMirror('0') + 237, (char) ((ViewConfiguration.getJumpTapTimeout() >> 16) + 33655), 36 - TextUtils.indexOf("", ""))).getMethod("getMonetizationNetwork", Double.TYPE);
                    AFa1jSDK.unregisterClient.put(-1755342830, obj2);
                }
                ((Double) ((Method) obj2).invoke(null, objArr)).doubleValue();
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        LinkedHashMap<String, Object> linkedHashMap = this.getMediationNetwork;
        if (str == null) {
            throw new AFg1jSDK("Names must be non-null");
        }
        linkedHashMap.put(str, obj);
        return this;
    }

    public final String toString() {
        try {
            AFg1dSDK aFg1dSDK = new AFg1dSDK();
            getRevenue(aFg1dSDK);
            return aFg1dSDK.toString();
        } catch (AFg1jSDK unused) {
            return null;
        }
    }

    final void getRevenue(AFg1dSDK aFg1dSDK) throws AFg1jSDK {
        aFg1dSDK.AFAdRevenueData(AFg1dSDK.AFa1uSDK.EMPTY_OBJECT, "{");
        for (Map.Entry<String, Object> entry : this.getMediationNetwork.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new AFg1jSDK("Names must be non-null");
            }
            aFg1dSDK.getCurrencyIso4217Code();
            aFg1dSDK.getCurrencyIso4217Code(key);
            aFg1dSDK.getMonetizationNetwork(entry.getValue());
        }
        aFg1dSDK.getMediationNetwork(AFg1dSDK.AFa1uSDK.EMPTY_OBJECT, AFg1dSDK.AFa1uSDK.NONEMPTY_OBJECT, "}");
    }
}
