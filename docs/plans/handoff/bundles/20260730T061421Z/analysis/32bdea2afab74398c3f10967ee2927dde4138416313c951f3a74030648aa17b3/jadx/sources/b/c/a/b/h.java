package b.c.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class h implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public d f621a;

    /* renamed from: b, reason: collision with root package name */
    public d f622b;

    /* renamed from: c, reason: collision with root package name */
    public WeakHashMap f623c = new WeakHashMap();

    /* renamed from: d, reason: collision with root package name */
    public int f624d = 0;

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r1.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((b.c.a.b.f) r6).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0054, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof b.c.a.b.h
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            b.c.a.b.h r6 = (b.c.a.b.h) r6
            int r1 = r5.f624d
            int r3 = r6.f624d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r5 = r5.iterator()
            java.util.Iterator r6 = r6.iterator()
        L1b:
            r1 = r5
            b.c.a.b.f r1 = (b.c.a.b.f) r1
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            r3 = r6
            b.c.a.b.f r3 = (b.c.a.b.f) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r1 = r1.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r3.next()
            if (r1 != 0) goto L3b
            if (r3 != 0) goto L43
        L3b:
            if (r1 == 0) goto L1b
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r5 = r1.hasNext()
            if (r5 != 0) goto L53
            b.c.a.b.f r6 = (b.c.a.b.f) r6
            boolean r5 = r6.hasNext()
            if (r5 != 0) goto L53
            goto L54
        L53:
            r0 = r2
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.a.b.h.equals(java.lang.Object):boolean");
    }

    public d g(Object obj) {
        d dVar = this.f621a;
        while (dVar != null && !dVar.f612a.equals(obj)) {
            dVar = dVar.f614c;
        }
        return dVar;
    }

    public e h() {
        e eVar = new e(this);
        this.f623c.put(eVar, Boolean.FALSE);
        return eVar;
    }

    public int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            f fVar = (f) it;
            if (!fVar.hasNext()) {
                return i;
            }
            i += ((Map.Entry) fVar.next()).hashCode();
        }
    }

    public d i(Object obj, Object obj2) {
        d dVar = new d(obj, obj2);
        this.f624d++;
        d dVar2 = this.f622b;
        if (dVar2 == null) {
            this.f621a = dVar;
            this.f622b = dVar;
            return dVar;
        }
        dVar2.f614c = dVar;
        dVar.f615d = dVar2;
        this.f622b = dVar;
        return dVar;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        b bVar = new b(this.f621a, this.f622b);
        this.f623c.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public Object j(Object obj, Object obj2) {
        d g = g(obj);
        if (g != null) {
            return g.f613b;
        }
        i(obj, obj2);
        return null;
    }

    public Object k(Object obj) {
        d g = g(obj);
        if (g == null) {
            return null;
        }
        this.f624d--;
        if (!this.f623c.isEmpty()) {
            Iterator it = this.f623c.keySet().iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(g);
            }
        }
        d dVar = g.f615d;
        if (dVar != null) {
            dVar.f614c = g.f614c;
        } else {
            this.f621a = g.f614c;
        }
        d dVar2 = g.f614c;
        if (dVar2 != null) {
            dVar2.f615d = g.f615d;
        } else {
            this.f622b = g.f615d;
        }
        g.f614c = null;
        g.f615d = null;
        return g.f613b;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("[");
        Iterator it = iterator();
        while (true) {
            f fVar = (f) it;
            if (!fVar.hasNext()) {
                f.append("]");
                return f.toString();
            }
            f.append(((Map.Entry) fVar.next()).toString());
            if (fVar.hasNext()) {
                f.append(", ");
            }
        }
    }
}
