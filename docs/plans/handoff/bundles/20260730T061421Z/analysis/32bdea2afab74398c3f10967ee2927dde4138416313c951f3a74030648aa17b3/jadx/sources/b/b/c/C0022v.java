package b.b.c;

import android.view.View;

/* renamed from: b.b.c.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0022v extends b.e.i.v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RunnableC0023w f321a;

    public C0022v(RunnableC0023w runnableC0023w) {
        this.f321a = runnableC0023w;
    }

    @Override // b.e.i.u
    public void a(View view) {
        this.f321a.f322a.o.setAlpha(1.0f);
        this.f321a.f322a.r.d(null);
        this.f321a.f322a.r = null;
    }

    @Override // b.e.i.v, b.e.i.u
    public void b(View view) {
        this.f321a.f322a.o.setVisibility(0);
    }
}
