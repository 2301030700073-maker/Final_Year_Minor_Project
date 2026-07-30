package c.b.a.b.a.a.a.a.c;

import android.util.FloatProperty;

/* renamed from: c.b.a.b.a.a.a.a.c.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0377p extends FloatProperty {
    public C0377p(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Float get(Object obj) {
        return Float.valueOf(((C0380t) obj).k);
    }

    @Override // android.util.FloatProperty
    public void setValue(Object obj, float f) {
        C0380t c0380t = (C0380t) obj;
        c0380t.k = f;
        c0380t.invalidate();
    }
}
