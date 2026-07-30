package b.i.b;

import b.j.AbstractC0137g;

/* loaded from: classes.dex */
public class B0 implements b.n.f {

    /* renamed from: a, reason: collision with root package name */
    public b.j.l f832a = null;

    /* renamed from: b, reason: collision with root package name */
    public b.n.e f833b = null;

    @Override // b.j.j
    public AbstractC0137g getLifecycle() {
        if (this.f832a == null) {
            this.f832a = new b.j.l(this);
            this.f833b = new b.n.e(this);
        }
        return this.f832a;
    }

    @Override // b.n.f
    public b.n.d getSavedStateRegistry() {
        return this.f833b.f1236b;
    }
}
