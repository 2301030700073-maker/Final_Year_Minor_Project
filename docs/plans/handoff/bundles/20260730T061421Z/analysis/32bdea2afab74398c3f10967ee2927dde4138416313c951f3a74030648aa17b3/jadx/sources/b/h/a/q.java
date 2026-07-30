package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class q extends x {
    public q(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getRotation();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setRotation(f);
    }
}
