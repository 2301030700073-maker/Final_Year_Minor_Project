package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class t extends x {
    public t(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getX();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setX(f);
    }
}
