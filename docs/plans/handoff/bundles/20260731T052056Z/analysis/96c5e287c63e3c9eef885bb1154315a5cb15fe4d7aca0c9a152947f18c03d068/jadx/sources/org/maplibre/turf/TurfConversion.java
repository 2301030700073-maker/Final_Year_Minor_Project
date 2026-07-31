package org.maplibre.turf;

import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TurfConversion {
    public static final HashMap FACTORS;

    static {
        HashMap hashMap = new HashMap();
        FACTORS = hashMap;
        hashMap.put("miles", Double.valueOf(3960.0d));
        hashMap.put("nauticalmiles", Double.valueOf(3441.145d));
        hashMap.put("degrees", Double.valueOf(57.2957795d));
        hashMap.put("radians", Double.valueOf(1.0d));
        hashMap.put("inches", Double.valueOf(2.509056E8d));
        hashMap.put("yards", Double.valueOf(6969600.0d));
        Double valueOf = Double.valueOf(6373000.0d);
        hashMap.put("meters", valueOf);
        Double valueOf2 = Double.valueOf(6.373E8d);
        hashMap.put("centimeters", valueOf2);
        Double valueOf3 = Double.valueOf(6373.0d);
        hashMap.put("kilometers", valueOf3);
        hashMap.put("feet", Double.valueOf(2.090879265E7d));
        hashMap.put("centimetres", valueOf2);
        hashMap.put("metres", valueOf);
        hashMap.put("kilometres", valueOf3);
    }

    public static double degreesToRadians(double d) {
        return ((d % 360.0d) * 3.141592653589793d) / 180.0d;
    }
}
