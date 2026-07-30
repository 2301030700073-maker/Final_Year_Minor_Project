package c.b.a.c.d.g.u;

import android.os.Handler;

/* renamed from: c.b.a.c.d.g.u.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0417h implements I {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0416g f2907a;

    public C0417h(C0416g c0416g) {
        this.f2907a = c0416g;
    }

    @Override // c.b.a.c.d.g.u.I
    public final void a(boolean z) {
        Handler handler = this.f2907a.m;
        handler.sendMessage(handler.obtainMessage(1, Boolean.valueOf(z)));
    }
}
