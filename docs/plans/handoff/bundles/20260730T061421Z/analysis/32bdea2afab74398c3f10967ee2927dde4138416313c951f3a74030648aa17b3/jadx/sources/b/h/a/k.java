package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class k extends x {
    public k(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getScrollY();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setScrollY((int) f);
    }
}
