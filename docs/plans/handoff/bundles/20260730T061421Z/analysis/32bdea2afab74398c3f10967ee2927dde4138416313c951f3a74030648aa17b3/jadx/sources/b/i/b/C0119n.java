package b.i.b;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: b.i.b.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0119n extends b.a.l.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f923a;

    public C0119n(r rVar, AtomicReference atomicReference, b.a.l.j.b bVar) {
        this.f923a = atomicReference;
    }

    @Override // b.a.l.c
    public void a(Object obj, b.e.b.c cVar) {
        b.a.l.c cVar2 = (b.a.l.c) this.f923a.get();
        if (cVar2 == null) {
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }
        cVar2.a(obj, cVar);
    }

    @Override // b.a.l.c
    public void b() {
        b.a.l.c cVar = (b.a.l.c) this.f923a.getAndSet(null);
        if (cVar != null) {
            cVar.b();
        }
    }
}
