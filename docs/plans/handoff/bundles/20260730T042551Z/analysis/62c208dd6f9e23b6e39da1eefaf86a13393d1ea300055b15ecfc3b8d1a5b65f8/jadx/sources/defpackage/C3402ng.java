package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* renamed from: ng, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3402ng implements MF, InterfaceC3950wy {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f14548do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f14547do = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public ArrayDeque f14546do = new ArrayDeque();

    public C3402ng(Executor executor) {
        this.f14548do = executor;
    }

    @Override // defpackage.MF
    /* renamed from: do */
    public final synchronized void mo1401do(Executor executor, InterfaceC3637rg interfaceC3637rg) {
        executor.getClass();
        if (!this.f14547do.containsKey(C0315Kc.class)) {
            this.f14547do.put(C0315Kc.class, new ConcurrentHashMap());
        }
        ((ConcurrentHashMap) this.f14547do.get(C0315Kc.class)).put(interfaceC3637rg, executor);
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized Set<Map.Entry<InterfaceC3637rg<Object>, Executor>> m7601for(C3284lg<?> c3284lg) {
        Map map;
        HashMap hashMap = this.f14547do;
        c3284lg.getClass();
        map = (Map) hashMap.get(null);
        return map == null ? Collections.emptySet() : map.entrySet();
    }

    @Override // defpackage.MF
    /* renamed from: if */
    public final void mo1402if(C3404ni c3404ni) {
        mo1401do(this.f14548do, c3404ni);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m7602new(C3284lg<?> c3284lg) {
        c3284lg.getClass();
        synchronized (this) {
            ArrayDeque arrayDeque = this.f14546do;
            if (arrayDeque != null) {
                arrayDeque.add(c3284lg);
                return;
            }
            for (Map.Entry<InterfaceC3637rg<Object>, Executor> entry : m7601for(c3284lg)) {
                entry.getValue().execute(new Cabstract(6, entry, c3284lg));
            }
        }
    }
}
