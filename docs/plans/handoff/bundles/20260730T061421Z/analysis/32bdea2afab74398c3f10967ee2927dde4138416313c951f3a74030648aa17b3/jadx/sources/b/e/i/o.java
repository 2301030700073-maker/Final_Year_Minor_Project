package b.e.i;

import android.view.View;

/* loaded from: classes.dex */
public class o extends p {
    public o(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // b.e.i.p
    public Object a(View view) {
        return Boolean.valueOf(view.isAccessibilityHeading());
    }
}
