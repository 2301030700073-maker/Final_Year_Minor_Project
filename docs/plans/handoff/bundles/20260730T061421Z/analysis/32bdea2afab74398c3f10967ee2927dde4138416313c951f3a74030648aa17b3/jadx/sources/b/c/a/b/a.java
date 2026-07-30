package b.c.a.b;

import java.util.HashMap;

/* loaded from: classes.dex */
public class a extends h {
    public HashMap e = new HashMap();

    public boolean contains(Object obj) {
        return this.e.containsKey(obj);
    }

    @Override // b.c.a.b.h
    public d g(Object obj) {
        return (d) this.e.get(obj);
    }

    @Override // b.c.a.b.h
    public Object j(Object obj, Object obj2) {
        d dVar = (d) this.e.get(obj);
        if (dVar != null) {
            return dVar.f613b;
        }
        this.e.put(obj, i(obj, obj2));
        return null;
    }

    @Override // b.c.a.b.h
    public Object k(Object obj) {
        Object k = super.k(obj);
        this.e.remove(obj);
        return k;
    }
}
