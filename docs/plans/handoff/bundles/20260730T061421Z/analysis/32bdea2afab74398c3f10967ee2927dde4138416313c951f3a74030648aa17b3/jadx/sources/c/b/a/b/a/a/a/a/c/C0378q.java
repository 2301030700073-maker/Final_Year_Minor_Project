package c.b.a.b.a.a.a.a.c;

import android.util.FloatProperty;

/* renamed from: c.b.a.b.a.a.a.a.c.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0378q extends FloatProperty {
    public C0378q(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Float get(Object obj) {
        return Float.valueOf(((C0380t) obj).l);
    }

    @Override // android.util.FloatProperty
    public void setValue(Object obj, float f) {
        C0380t c0380t = (C0380t) obj;
        c0380t.l = f;
        c0380t.invalidate();
    }
}
