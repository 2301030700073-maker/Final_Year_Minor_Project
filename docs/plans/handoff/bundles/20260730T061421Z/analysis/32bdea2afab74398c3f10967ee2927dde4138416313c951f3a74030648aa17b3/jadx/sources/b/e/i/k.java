package b.e.i;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;
import b.b.c.C0020t;
import java.util.Objects;

/* loaded from: classes.dex */
public class k implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0020t f771a;

    public k(C0020t c0020t) {
        this.f771a = c0020t;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        if (windowInsets == null) {
            throw null;
        }
        D d2 = new D(windowInsets);
        C0020t c0020t = this.f771a;
        Objects.requireNonNull(c0020t);
        int d3 = d2.d();
        int P = c0020t.f319a.P(d2, null);
        if (d3 != P) {
            int b2 = d2.b();
            int c2 = d2.c();
            int a2 = d2.a();
            new D((D) null);
            WindowInsets g = d2.g();
            WindowInsets.Builder builder = g != null ? new WindowInsets.Builder(g) : new WindowInsets.Builder();
            b.e.d.b a3 = b.e.d.b.a(b2, P, c2, a2);
            builder.setSystemWindowInsets(Insets.of(a3.f693a, a3.f694b, a3.f695c, a3.f696d));
            d2 = D.h(builder.build());
        }
        return q.v(view, d2).g();
    }
}
