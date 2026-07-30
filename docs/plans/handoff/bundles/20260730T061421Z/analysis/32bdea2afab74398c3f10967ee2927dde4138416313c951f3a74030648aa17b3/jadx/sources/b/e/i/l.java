package b.e.i;

import android.view.View;

/* loaded from: classes.dex */
public class l extends p {
    public l(int i, Class cls, int i2) {
        super(i, cls, i2);
    }

    @Override // b.e.i.p
    public Object a(View view) {
        return Boolean.valueOf(view.isScreenReaderFocusable());
    }
}
