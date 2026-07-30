package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class i extends x {
    public i(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getAlpha();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setAlpha(f);
    }
}
