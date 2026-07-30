package c.b.a.b.b.f;

import android.util.IntProperty;

/* loaded from: classes.dex */
public class c extends IntProperty {
    public c(String str) {
        super(str);
    }

    @Override // android.util.Property
    public Integer get(Object obj) {
        return Integer.valueOf(((f) obj).f);
    }

    @Override // android.util.IntProperty
    public void setValue(Object obj, int i) {
        f fVar = (f) obj;
        if (fVar.f != i) {
            fVar.f = i;
            fVar.invalidate();
        }
    }
}
