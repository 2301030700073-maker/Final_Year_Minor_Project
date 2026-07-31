package j$.util;

import j$.util.Map;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class j implements java.util.Map, Serializable, Map {
    private static final long serialVersionUID = 1978198479659022715L;
    public final java.util.Map a;
    public final j b = this;
    public transient l c;
    public transient l d;
    public transient h e;

    public j(java.util.Map map) {
        this.a = (java.util.Map) Objects.requireNonNull(map);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.b) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        synchronized (this.b) {
            this.a.clear();
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        Object compute;
        synchronized (this.b) {
            compute = Map.EL.compute(this.a, obj, biFunction);
        }
        return compute;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        Object computeIfAbsent;
        synchronized (this.b) {
            computeIfAbsent = Map.EL.computeIfAbsent(this.a, obj, function);
        }
        return computeIfAbsent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0032, code lost:
    
        r3 = r2;
     */
    @Override // java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object computeIfPresent(java.lang.Object r4, java.util.function.BiFunction r5) {
        /*
            r3 = this;
            j$.util.j r0 = r3.b
            monitor-enter(r0)
            java.util.Map r3 = r3.a     // Catch: java.lang.Throwable -> L3c
            boolean r1 = r3 instanceof j$.util.Map     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L10
            j$.util.Map r3 = (j$.util.Map) r3     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.computeIfPresent(r4, r5)     // Catch: java.lang.Throwable -> L3c
            goto L3a
        L10:
            boolean r1 = r3 instanceof java.util.concurrent.ConcurrentMap     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L36
            java.util.concurrent.ConcurrentMap r3 = (java.util.concurrent.ConcurrentMap) r3     // Catch: java.lang.Throwable -> L3c
            j$.util.Objects.requireNonNull(r5)     // Catch: java.lang.Throwable -> L3c
        L19:
            java.lang.Object r1 = r3.get(r4)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L34
            java.lang.Object r2 = r5.apply(r4, r1)     // Catch: java.lang.Throwable -> L3c
            if (r2 != 0) goto L2c
            boolean r1 = r3.remove(r4, r1)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L19
            goto L32
        L2c:
            boolean r1 = r3.replace(r4, r1, r2)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L19
        L32:
            r3 = r2
            goto L3a
        L34:
            r3 = 0
            goto L3a
        L36:
            java.lang.Object r3 = j$.util.Map.CC.$default$computeIfPresent(r3, r4, r5)     // Catch: java.lang.Throwable -> L3c
        L3a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3c
            return r3
        L3c:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3c
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.j.computeIfPresent(java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.b) {
            containsKey = this.a.containsKey(obj);
        }
        return containsKey;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.b) {
            containsValue = this.a.containsValue(obj);
        }
        return containsValue;
    }

    @Override // java.util.Map
    public final java.util.Set entrySet() {
        l lVar;
        synchronized (this.b) {
            try {
                if (this.d == null) {
                    this.d = new l(this.a.entrySet(), this.b);
                }
                lVar = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        synchronized (this.b) {
            equals = this.a.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        synchronized (this.b) {
            Map.EL.forEach(this.a, biConsumer);
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        synchronized (this.b) {
            obj2 = this.a.get(obj);
        }
        return obj2;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object orDefault;
        synchronized (this.b) {
            orDefault = Map.EL.getOrDefault(this.a, obj, obj2);
        }
        return orDefault;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int hashCode;
        synchronized (this.b) {
            hashCode = this.a.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.b) {
            isEmpty = this.a.isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Map
    public final java.util.Set keySet() {
        l lVar;
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    this.c = new l(this.a.keySet(), this.b);
                }
                lVar = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        Object merge;
        synchronized (this.b) {
            merge = Map.EL.merge(this.a, obj, obj2, biFunction);
        }
        return merge;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        Object put;
        synchronized (this.b) {
            put = this.a.put(obj, obj2);
        }
        return put;
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        synchronized (this.b) {
            this.a.putAll(map);
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        Object putIfAbsent;
        synchronized (this.b) {
            putIfAbsent = Map.EL.putIfAbsent(this.a, obj, obj2);
        }
        return putIfAbsent;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        boolean remove;
        synchronized (this.b) {
            java.util.Map map = this.a;
            remove = map instanceof Map ? ((Map) map).remove(obj, obj2) : Map.CC.$default$remove(map, obj, obj2);
        }
        return remove;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        boolean replace;
        synchronized (this.b) {
            java.util.Map map = this.a;
            replace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.CC.$default$replace(map, obj, obj2, obj3);
        }
        return replace;
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        synchronized (this.b) {
            java.util.Map map = this.a;
            if (map instanceof Map) {
                ((Map) map).replaceAll(biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                j$.nio.file.b0 b0Var = new j$.nio.file.b0(1, concurrentMap, biFunction);
                if (concurrentMap instanceof ConcurrentHashMap) {
                    ((ConcurrentHashMap) concurrentMap).forEach(b0Var);
                } else {
                    a0.b(concurrentMap, b0Var);
                }
            } else {
                Map.CC.$default$replaceAll(map, biFunction);
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        int size;
        synchronized (this.b) {
            size = this.a.size();
        }
        return size;
    }

    public final String toString() {
        String obj;
        synchronized (this.b) {
            obj = this.a.toString();
        }
        return obj;
    }

    @Override // java.util.Map
    public final java.util.Collection values() {
        h hVar;
        synchronized (this.b) {
            try {
                if (this.e == null) {
                    this.e = new h(this.a.values(), this.b);
                }
                hVar = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        Object remove;
        synchronized (this.b) {
            remove = this.a.remove(obj);
        }
        return remove;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        Object replace;
        synchronized (this.b) {
            java.util.Map map = this.a;
            replace = map instanceof Map ? ((Map) map).replace(obj, obj2) : Map.CC.$default$replace(map, obj, obj2);
        }
        return replace;
    }
}
