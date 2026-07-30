package c.b.a.b.b.l;

import android.util.FloatProperty;

/* loaded from: classes.dex */
public class F extends FloatProperty {
    public F(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Float get(Object obj) {
        return Float.valueOf(((H) obj).M);
    }

    @Override // android.util.FloatProperty
    public void setValue(Object obj, float f) {
        H h = (H) obj;
        h.M = f;
        H.s(h);
    }
}
