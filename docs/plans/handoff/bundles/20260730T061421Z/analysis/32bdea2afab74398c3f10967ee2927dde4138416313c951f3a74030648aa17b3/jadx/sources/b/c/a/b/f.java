package b.c.a.b;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class f implements Iterator, g {

    /* renamed from: a, reason: collision with root package name */
    public d f619a;

    /* renamed from: b, reason: collision with root package name */
    public d f620b;

    public f(d dVar, d dVar2) {
        this.f619a = dVar2;
        this.f620b = dVar;
    }

    @Override // b.c.a.b.g
    public void a(d dVar) {
        d dVar2 = null;
        if (this.f619a == dVar && dVar == this.f620b) {
            this.f620b = null;
            this.f619a = null;
        }
        d dVar3 = this.f619a;
        if (dVar3 == dVar) {
            this.f619a = b(dVar3);
        }
        d dVar4 = this.f620b;
        if (dVar4 == dVar) {
            d dVar5 = this.f619a;
            if (dVar4 != dVar5 && dVar5 != null) {
                dVar2 = c(dVar4);
            }
            this.f620b = dVar2;
        }
    }

    public abstract d b(d dVar);

    public abstract d c(d dVar);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f620b != null;
    }

    @Override // java.util.Iterator
    public Object next() {
        d dVar = this.f620b;
        d dVar2 = this.f619a;
        this.f620b = (dVar == dVar2 || dVar2 == null) ? null : c(dVar);
        return dVar;
    }
}
