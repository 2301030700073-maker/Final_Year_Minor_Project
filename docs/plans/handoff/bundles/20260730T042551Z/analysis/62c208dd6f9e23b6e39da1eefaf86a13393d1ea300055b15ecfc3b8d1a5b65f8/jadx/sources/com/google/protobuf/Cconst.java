package com.google.protobuf;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: com.google.protobuf.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst extends Cfinal {

    /* renamed from: com.google.protobuf.const$do, reason: invalid class name */
    public static class Cdo<K> implements Map.Entry<K, Object> {

        /* renamed from: do, reason: not valid java name */
        public final Map.Entry<K, Cconst> f12048do;

        public Cdo() {
            throw null;
        }

        public Cdo(Map.Entry entry) {
            this.f12048do = entry;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f12048do.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            Cconst value = this.f12048do.getValue();
            if (value == null) {
                return null;
            }
            return value.m6202do(null);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof Cstatic)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            Cconst value = this.f12048do.getValue();
            Cstatic cstatic = ((Cfinal) value).f12063do;
            ((Cfinal) value).f12064do = null;
            ((Cfinal) value).f12063do = (Cstatic) obj;
            return cstatic;
        }
    }

    /* renamed from: com.google.protobuf.const$if, reason: invalid class name */
    public static class Cif<K> implements Iterator<Map.Entry<K, Object>>, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name */
        public final Iterator<Map.Entry<K, Object>> f12049do;

        public Cif(Iterator<Map.Entry<K, Object>> it) {
            this.f12049do = it;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f12049do.hasNext();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.f12049do.next();
            return next.getValue() instanceof Cconst ? new Cdo(next) : next;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            this.f12049do.remove();
        }
    }

    @Override // com.google.protobuf.Cfinal
    public final boolean equals(Object obj) {
        return m6202do(null).equals(obj);
    }

    @Override // com.google.protobuf.Cfinal
    public final int hashCode() {
        return m6202do(null).hashCode();
    }

    public final String toString() {
        return m6202do(null).toString();
    }
}
