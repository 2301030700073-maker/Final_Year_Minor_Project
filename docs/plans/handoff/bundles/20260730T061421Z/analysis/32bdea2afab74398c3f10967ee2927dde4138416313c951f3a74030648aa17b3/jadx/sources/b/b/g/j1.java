package b.b.g;

import android.view.View;

/* loaded from: classes.dex */
public class j1 extends b.e.i.v {

    /* renamed from: a, reason: collision with root package name */
    public boolean f546a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f547b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k1 f548c;

    public j1(k1 k1Var, int i) {
        this.f548c = k1Var;
        this.f547b = i;
    }

    @Override // b.e.i.u
    public void a(View view) {
        if (this.f546a) {
            return;
        }
        this.f548c.f551a.setVisibility(this.f547b);
    }

    @Override // b.e.i.v, b.e.i.u
    public void b(View view) {
        this.f548c.f551a.setVisibility(0);
    }

    @Override // b.e.i.v, b.e.i.u
    public void c(View view) {
        this.f546a = true;
    }
}
