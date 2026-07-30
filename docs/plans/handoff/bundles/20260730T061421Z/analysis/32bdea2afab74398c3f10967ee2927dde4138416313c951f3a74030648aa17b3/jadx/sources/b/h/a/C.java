package b.h.a;

import android.util.FloatProperty;

/* loaded from: classes.dex */
public abstract class C {
    public final String mPropertyName;

    public C(String str) {
        this.mPropertyName = str;
    }

    public static C createFloatPropertyCompat(FloatProperty floatProperty) {
        return new B(floatProperty.getName(), floatProperty);
    }

    public abstract float getValue(Object obj);

    public abstract void setValue(Object obj, float f);
}
