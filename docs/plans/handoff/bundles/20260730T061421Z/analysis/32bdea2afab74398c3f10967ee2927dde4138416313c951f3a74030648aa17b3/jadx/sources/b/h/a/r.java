package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class r extends x {
    public r(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getRotationX();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setRotationX(f);
    }
}
