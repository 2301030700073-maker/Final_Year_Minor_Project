package b.h.a;

import android.view.View;

/* loaded from: classes.dex */
public class s extends x {
    public s(String str) {
        super(str, null);
    }

    @Override // b.h.a.C
    public float getValue(Object obj) {
        return ((View) obj).getRotationY();
    }

    @Override // b.h.a.C
    public void setValue(Object obj, float f) {
        ((View) obj).setRotationY(f);
    }
}
