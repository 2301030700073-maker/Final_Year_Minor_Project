package defpackage;

import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* renamed from: Tp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0525Tp<T> implements InterfaceC3655ry<Set<T>> {

    /* renamed from: if, reason: not valid java name */
    public volatile Set<T> f3749if = null;

    /* renamed from: do, reason: not valid java name */
    public volatile Set<InterfaceC3655ry<T>> f3748do = Collections.newSetFromMap(new ConcurrentHashMap());

    public C0525Tp(Collection<InterfaceC3655ry<T>> collection) {
        this.f3748do.addAll(collection);
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m2290do() {
        Iterator<InterfaceC3655ry<T>> it = this.f3748do.iterator();
        while (it.hasNext()) {
            this.f3749if.add(it.next().get());
        }
        this.f3748do = null;
    }

    @Override // defpackage.InterfaceC3655ry
    public final Object get() {
        if (this.f3749if == null) {
            synchronized (this) {
                if (this.f3749if == null) {
                    this.f3749if = Collections.newSetFromMap(new ConcurrentHashMap());
                    m2290do();
                }
            }
        }
        return DesugarCollections.unmodifiableSet(this.f3749if);
    }
}
