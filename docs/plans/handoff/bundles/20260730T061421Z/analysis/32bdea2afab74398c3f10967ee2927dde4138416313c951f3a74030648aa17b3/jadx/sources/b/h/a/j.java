package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class j extends x {
    public j(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getScrollX();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setScrollX((int) f);
    }
}
