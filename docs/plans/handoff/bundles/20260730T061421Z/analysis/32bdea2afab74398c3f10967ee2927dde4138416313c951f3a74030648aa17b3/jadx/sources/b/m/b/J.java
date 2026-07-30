package b.m.b;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class J {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0176f0 f1109a;

    /* renamed from: b, reason: collision with root package name */
    public int f1110b = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1111c = new Rect();

    public J(AbstractC0176f0 abstractC0176f0, H h) {
        this.f1109a = abstractC0176f0;
    }

    public static J a(AbstractC0176f0 abstractC0176f0, int i) {
        if (i == 0) {
            return new H(abstractC0176f0);
        }
        if (i == 1) {
            return new I(abstractC0176f0);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public int m() {
        if (Integer.MIN_VALUE == this.f1110b) {
            return 0;
        }
        return l() - this.f1110b;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i);
}
