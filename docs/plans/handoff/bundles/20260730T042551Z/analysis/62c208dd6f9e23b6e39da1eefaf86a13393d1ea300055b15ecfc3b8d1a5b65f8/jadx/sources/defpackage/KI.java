package defpackage;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class KI {
    /* renamed from: case, reason: not valid java name */
    public static TypedArray m1133case(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public static Y8 m1134do(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        Y8 y8;
        if (m1138try(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                return new Y8(null, null, typedValue.data);
            }
            try {
                y8 = Y8.m2891do(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception unused) {
                y8 = null;
            }
            if (y8 != null) {
                return y8;
            }
        }
        return new Y8(null, null, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m1135for(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m1138try(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public static float m1136if(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m1138try(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1137new(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (m1138try(xmlPullParser, str)) {
            return typedArray.getString(i);
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m1138try(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }
}
