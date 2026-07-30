package c.b.a.b.a.a.a.a.c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Path;
import android.widget.TextView;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class F extends TextView {

    /* renamed from: a, reason: collision with root package name */
    public h0 f2382a;

    public F(Context context) {
        super(context, null, 0, 0);
        setTextIsSelectable(true);
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        if (this.f2382a == null) {
            return;
        }
        if (i == i2 || getLayout() == null) {
            this.f2382a.a(null);
            return;
        }
        Path path = new Path();
        getLayout().getSelectionPath(i, i2, path);
        this.f2382a.a(path);
    }
}
