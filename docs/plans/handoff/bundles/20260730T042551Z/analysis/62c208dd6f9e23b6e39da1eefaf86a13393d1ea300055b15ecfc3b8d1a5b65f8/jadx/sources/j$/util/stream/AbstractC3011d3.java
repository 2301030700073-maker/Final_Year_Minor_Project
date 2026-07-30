package j$.util.stream;

import j$.util.C2979f;
import j$.util.stream.Collector;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.stream.Collector;

/* renamed from: j$.util.stream.d3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC3011d3 {
    public static Set a(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof Collector.Characteristics) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    hashSet.add(AbstractC3037j.b((Collector.Characteristics) it.next()));
                } catch (ClassCastException e) {
                    C2979f.a(e, "java.util.stream.Collector.Characteristics");
                    throw null;
                }
            }
            return hashSet;
        }
        if (!(next instanceof Collector.Characteristics)) {
            C2979f.a(next.getClass(), "java.util.stream.Collector.Characteristics");
            throw null;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            try {
                hashSet.add(AbstractC3037j.a((Collector.Characteristics) it2.next()));
            } catch (ClassCastException e2) {
                C2979f.a(e2, "java.util.stream.Collector.Characteristics");
                throw null;
            }
        }
        return hashSet;
    }
}
