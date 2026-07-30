package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class p extends x {
    public p(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getScaleY();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setScaleY(f);
    }
}
