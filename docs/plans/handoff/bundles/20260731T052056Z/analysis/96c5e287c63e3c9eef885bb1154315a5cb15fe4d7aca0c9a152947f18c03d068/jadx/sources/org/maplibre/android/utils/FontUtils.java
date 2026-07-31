package org.maplibre.android.utils;

import android.graphics.Typeface;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import kotlin.text.UStringsKt;
import org.maplibre.android.log.Logger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FontUtils {
    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("sans-serif");
        arrayList.add("serif");
        arrayList.add("monospace");
    }

    public static String extractValidFont(String... strArr) {
        if (strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            Typeface create = Typeface.create(Typeface.DEFAULT, 0);
            Field declaredField = Typeface.class.getDeclaredField("sSystemFontMap");
            declaredField.setAccessible(true);
            arrayList.addAll(((Map) declaredField.get(create)).keySet());
        } catch (Exception e) {
            Logger.e("Mbgl-FontUtils", "Couldn't load fonts from Typeface", e);
            UStringsKt.strictModeViolation("Couldn't load fonts from Typeface", e);
        }
        for (String str : strArr) {
            if (arrayList.contains(str)) {
                return str;
            }
        }
        Logger.i("Mbgl-FontUtils", "Couldn't map font family for local ideograph, using sans-serif instead");
        return "sans-serif";
    }
}
