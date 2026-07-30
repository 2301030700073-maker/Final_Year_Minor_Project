package b.e.i;

import android.graphics.Insets;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public class w extends x {

    /* renamed from: b, reason: collision with root package name */
    public final WindowInsets.Builder f785b;

    public w(D d2) {
        WindowInsets g = d2.g();
        this.f785b = g != null ? new WindowInsets.Builder(g) : new WindowInsets.Builder();
    }

    @Override // b.e.i.x
    public D a() {
        return D.h(this.f785b.build());
    }

    @Override // b.e.i.x
    public void b(b.e.d.b bVar) {
        this.f785b.setStableInsets(Insets.of(bVar.f693a, bVar.f694b, bVar.f695c, bVar.f696d));
    }

    @Override // b.e.i.x
    public void c(b.e.d.b bVar) {
        this.f785b.setSystemWindowInsets(Insets.of(bVar.f693a, bVar.f694b, bVar.f695c, bVar.f696d));
    }
}
