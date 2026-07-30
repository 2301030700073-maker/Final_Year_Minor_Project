package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class o extends x {
    public o(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getScaleX();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setScaleX(f);
    }
}
