package androidx.datastore.preferences.protobuf;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: androidx.datastore.preferences.protobuf.import, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cimport extends Cnative {

    /* renamed from: androidx.datastore.preferences.protobuf.import$do, reason: invalid class name */
    public static class Cdo<K> implements Map.Entry<K, Object> {

        /* renamed from: do, reason: not valid java name */
        public final Map.Entry<K, Cimport> f6597do;

        public Cdo() {
            throw null;
        }

        public Cdo(Map.Entry entry) {
            this.f6597do = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f6597do.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            Cimport value = this.f6597do.getValue();
            if (value == null) {
                return null;
            }
            return value.m3945do(null);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof Cfinally)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            Cimport value = this.f6597do.getValue();
            Cfinally cfinally = ((Cnative) value).f6609do;
            ((Cnative) value).f6610do = null;
            ((Cnative) value).f6609do = (Cfinally) obj;
            return cfinally;
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.import$if, reason: invalid class name */
    public static class Cif<K> implements Iterator<Map.Entry<K, Object>>, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name */
        public final Iterator<Map.Entry<K, Object>> f6598do;

        public Cif(Iterator<Map.Entry<K, Object>> it) {
            this.f6598do = it;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f6598do.hasNext();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.f6598do.next();
            return next.getValue() instanceof Cimport ? new Cdo(next) : next;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            this.f6598do.remove();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cnative
    public final boolean equals(Object obj) {
        return m3945do(null).equals(obj);
    }

    @Override // androidx.datastore.preferences.protobuf.Cnative
    public final int hashCode() {
        return m3945do(null).hashCode();
    }

    public final String toString() {
        return m3945do(null).toString();
    }
}
