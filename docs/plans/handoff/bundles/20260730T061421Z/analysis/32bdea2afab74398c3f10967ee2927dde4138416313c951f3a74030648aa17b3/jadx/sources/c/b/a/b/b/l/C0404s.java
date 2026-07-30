package c.b.a.b.b.l;

import android.util.FloatProperty;

/* renamed from: c.b.a.b.b.l.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0404s extends FloatProperty {
    public C0404s(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Float get(Object obj) {
        return Float.valueOf(((A) obj).v);
    }

    @Override // android.util.FloatProperty
    public void setValue(Object obj, float f) {
        A a2 = (A) obj;
        if (a2.v != f) {
            a2.v = f;
            a2.invalidate();
        }
    }
}
