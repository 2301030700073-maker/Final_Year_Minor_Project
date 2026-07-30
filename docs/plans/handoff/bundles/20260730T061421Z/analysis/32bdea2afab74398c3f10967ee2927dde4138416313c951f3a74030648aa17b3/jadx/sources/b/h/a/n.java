package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class n extends x {
    public n(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return b.e.i.q.n((View) obj);
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        b.e.i.q.K((View) obj, f);
    }
}
