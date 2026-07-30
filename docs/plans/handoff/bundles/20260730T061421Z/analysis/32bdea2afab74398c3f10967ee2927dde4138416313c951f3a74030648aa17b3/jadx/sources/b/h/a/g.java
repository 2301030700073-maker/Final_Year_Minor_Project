package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class g extends x {
    public g(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getY();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setY(f);
    }
}
