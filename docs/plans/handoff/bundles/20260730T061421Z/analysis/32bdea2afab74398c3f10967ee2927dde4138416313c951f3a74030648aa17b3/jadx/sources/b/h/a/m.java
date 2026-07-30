package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class m extends x {
    public m(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getTranslationY();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setTranslationY(f);
    }
}
