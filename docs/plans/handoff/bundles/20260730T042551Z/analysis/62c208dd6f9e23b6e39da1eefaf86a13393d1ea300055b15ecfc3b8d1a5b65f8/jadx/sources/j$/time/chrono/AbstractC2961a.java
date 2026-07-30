package j$.time.chrono;

import j$.time.LocalDateTime;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.ServiceLoader;

/* renamed from: j$.time.chrono.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2961a implements n {
    private static final ConcurrentHashMap a = new ConcurrentHashMap();
    private static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final /* synthetic */ int c = 0;

    static {
        new Locale("ja", "JP", "JP");
    }

    protected AbstractC2961a() {
    }

    static n j(String str) {
        boolean z;
        Objects.requireNonNull(str, "id");
        do {
            ConcurrentHashMap concurrentHashMap = a;
            n nVar = (n) concurrentHashMap.get(str);
            if (nVar == null) {
                nVar = (n) b.get(str);
            }
            if (nVar != null) {
                return nVar;
            }
            if (concurrentHashMap.get("ISO") == null) {
                q qVar = q.o;
                k(qVar, qVar.h());
                x xVar = x.d;
                k(xVar, xVar.h());
                C c2 = C.d;
                k(c2, c2.h());
                I i = I.d;
                k(i, i.h());
                Iterator it = ServiceLoader.load(AbstractC2961a.class, null).iterator();
                while (it.hasNext()) {
                    AbstractC2961a abstractC2961a = (AbstractC2961a) it.next();
                    if (!abstractC2961a.h().equals("ISO")) {
                        k(abstractC2961a, abstractC2961a.h());
                    }
                }
                u uVar = u.d;
                k(uVar, uVar.h());
                z = true;
            } else {
                z = false;
            }
        } while (z);
        Iterator it2 = ServiceLoader.load(n.class).iterator();
        while (it2.hasNext()) {
            n nVar2 = (n) it2.next();
            if (str.equals(nVar2.h()) || str.equals(nVar2.m())) {
                return nVar2;
            }
        }
        throw new j$.time.d("Unknown chronology: " + str);
    }

    static n k(AbstractC2961a abstractC2961a, String str) {
        String m;
        n nVar = (n) a.putIfAbsent(str, abstractC2961a);
        if (nVar == null && (m = abstractC2961a.m()) != null) {
            b.putIfAbsent(m, abstractC2961a);
        }
        return nVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC2961a) && compareTo((AbstractC2961a) obj) == 0;
    }

    public final int hashCode() {
        return getClass().hashCode() ^ h().hashCode();
    }

    @Override // java.lang.Comparable
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final int compareTo(n nVar) {
        return h().compareTo(nVar.h());
    }

    @Override // j$.time.chrono.n
    public InterfaceC2966f t(LocalDateTime localDateTime) {
        try {
            return s(localDateTime).x(j$.time.l.F(localDateTime));
        } catch (j$.time.d e) {
            throw new j$.time.d("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }

    public final String toString() {
        return h();
    }
}
