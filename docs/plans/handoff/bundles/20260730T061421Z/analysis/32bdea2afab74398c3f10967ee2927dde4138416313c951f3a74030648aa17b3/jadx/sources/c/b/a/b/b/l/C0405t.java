package c.b.a.b.b.l;

import android.util.FloatProperty;

/* renamed from: c.b.a.b.b.l.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0405t extends FloatProperty {
    public C0405t(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Float get(Object obj) {
        return Float.valueOf(((A) obj).E);
    }

    @Override // android.util.FloatProperty
    public void setValue(Object obj, float f) {
        A a2 = (A) obj;
        if (a2.E != f) {
            a2.E = f;
            if (a2.D != 0) {
                a2.invalidate();
                a2.r();
            }
        }
    }
}
