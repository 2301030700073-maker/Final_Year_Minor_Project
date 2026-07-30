package b.i.b;

import android.view.View;

/* renamed from: b.i.b.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0116k extends A {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f912a;

    public C0116k(r rVar) {
        this.f912a = rVar;
    }

    @Override // b.i.b.A
    public View b(int i) {
        View view = this.f912a.mView;
        if (view != null) {
            return view.findViewById(i);
        }
        StringBuilder f = c.a.c.a.a.f("Fragment ");
        f.append(this.f912a);
        f.append(" does not have a view");
        throw new IllegalStateException(f.toString());
    }

    @Override // b.i.b.A
    public boolean c() {
        return this.f912a.mView != null;
    }
}
