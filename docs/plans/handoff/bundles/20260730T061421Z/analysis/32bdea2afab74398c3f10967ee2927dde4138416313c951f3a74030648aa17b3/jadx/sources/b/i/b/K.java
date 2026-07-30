package b.i.b;

import java.util.HashSet;

/* loaded from: classes.dex */
public class K {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f863a;

    public K(X x) {
        this.f863a = x;
    }

    public void a(r rVar, b.e.f.b bVar) {
        boolean z;
        synchronized (bVar) {
            z = bVar.f700a;
        }
        if (z) {
            return;
        }
        X x = this.f863a;
        HashSet hashSet = (HashSet) x.l.get(rVar);
        if (hashSet != null && hashSet.remove(bVar) && hashSet.isEmpty()) {
            x.l.remove(rVar);
            if (rVar.mState < 5) {
                x.i(rVar);
                x.S(rVar, x.p);
            }
        }
    }

    public void b(r rVar, b.e.f.b bVar) {
        X x = this.f863a;
        if (x.l.get(rVar) == null) {
            x.l.put(rVar, new HashSet());
        }
        ((HashSet) x.l.get(rVar)).add(bVar);
    }
}
