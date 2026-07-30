package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class l extends x {
    public l(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getTranslationX();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setTranslationX(f);
    }
}
