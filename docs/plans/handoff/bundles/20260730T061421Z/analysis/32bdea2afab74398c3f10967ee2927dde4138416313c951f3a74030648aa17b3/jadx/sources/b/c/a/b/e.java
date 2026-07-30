package b.c.a.b;

import java.util.Iterator;

/* loaded from: classes.dex */
public class e implements Iterator, g {

    /* renamed from: a, reason: collision with root package name */
    public d f616a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f617b = true;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f618c;

    public e(h hVar) {
        this.f618c = hVar;
    }

    @Override // b.c.a.b.g
    public void a(d dVar) {
        d dVar2 = this.f616a;
        if (dVar == dVar2) {
            d dVar3 = dVar2.f615d;
            this.f616a = dVar3;
            this.f617b = dVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f617b) {
            return this.f618c.f621a != null;
        }
        d dVar = this.f616a;
        return (dVar == null || dVar.f614c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f617b) {
            this.f617b = false;
            this.f616a = this.f618c.f621a;
        } else {
            d dVar = this.f616a;
            this.f616a = dVar != null ? dVar.f614c : null;
        }
        return this.f616a;
    }
}
