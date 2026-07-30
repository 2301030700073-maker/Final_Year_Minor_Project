package c.b.a.b.b.l;

import android.util.FloatProperty;

/* loaded from: classes.dex */
public class E extends FloatProperty {
    public E(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Float get(Object obj) {
        return Float.valueOf(((H) obj).L);
    }

    @Override // android.util.FloatProperty
    public void setValue(Object obj, float f) {
        H h = (H) obj;
        h.L = f;
        H.s(h);
    }
}
