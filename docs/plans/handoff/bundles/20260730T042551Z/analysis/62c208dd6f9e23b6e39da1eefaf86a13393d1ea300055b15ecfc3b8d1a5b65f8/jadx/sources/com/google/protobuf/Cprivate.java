package com.google.protobuf;

import j$.util.DesugarCollections;
import j$.util.Iterator;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.function.Consumer;

/* renamed from: com.google.protobuf.private, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cprivate<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ int f12087new = 0;

    /* renamed from: do, reason: not valid java name */
    public volatile Cprivate<K, V>.Cnew f12088do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12091do;

    /* renamed from: for, reason: not valid java name */
    public final int f12092for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<Cprivate<K, V>.Cif> f12089do = Collections.emptyList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Map<K, V> f12090do = Collections.emptyMap();

    /* renamed from: if, reason: not valid java name */
    public Map<K, V> f12093if = Collections.emptyMap();

    /* renamed from: com.google.protobuf.private$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final C0080do f12094do = new C0080do();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final Cif f12095do = new Cif();

        /* renamed from: com.google.protobuf.private$do$do, reason: invalid class name and collision with other inner class name */
        public class C0080do implements Iterator<Object>, j$.util.Iterator {
            @Override // java.util.Iterator, j$.util.Iterator
            public final /* synthetic */ void forEachRemaining(Consumer consumer) {
                Iterator.CC.$default$forEachRemaining(this, consumer);
            }

            @Override // java.util.Iterator, j$.util.Iterator
            public final boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator, j$.util.Iterator
            public final Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator, j$.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* renamed from: com.google.protobuf.private$do$if, reason: invalid class name */
        public class Cif implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final java.util.Iterator<Object> iterator() {
                return Cdo.f12094do;
            }
        }
    }

    /* renamed from: com.google.protobuf.private$for, reason: invalid class name */
    public class Cfor implements java.util.Iterator<Map.Entry<K, V>>, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public java.util.Iterator<Map.Entry<K, V>> f12097do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f12098do;

        /* renamed from: for, reason: not valid java name */
        public int f12099for = -1;

        public Cfor() {
        }

        /* renamed from: do, reason: not valid java name */
        public final java.util.Iterator<Map.Entry<K, V>> m6280do() {
            if (this.f12097do == null) {
                this.f12097do = Cprivate.this.f12090do.entrySet().iterator();
            }
            return this.f12097do;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            int i = this.f12099for + 1;
            Cprivate cprivate = Cprivate.this;
            if (i >= cprivate.f12089do.size()) {
                return !cprivate.f12090do.isEmpty() && m6280do().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            this.f12098do = true;
            int i = this.f12099for + 1;
            this.f12099for = i;
            Cprivate cprivate = Cprivate.this;
            return i < cprivate.f12089do.size() ? cprivate.f12089do.get(this.f12099for) : m6280do().next();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            if (!this.f12098do) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f12098do = false;
            int i = Cprivate.f12087new;
            Cprivate cprivate = Cprivate.this;
            cprivate.m6276if();
            if (this.f12099for >= cprivate.f12089do.size()) {
                m6280do().remove();
                return;
            }
            int i2 = this.f12099for;
            this.f12099for = i2 - 1;
            cprivate.m6278this(i2);
        }
    }

    /* renamed from: com.google.protobuf.private$if, reason: invalid class name */
    public class Cif implements Map.Entry<K, V>, Comparable<Cprivate<K, V>.Cif> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final K f12101do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public V f12102do;

        public Cif() {
            throw null;
        }

        public Cif(K k, V v) {
            this.f12101do = k;
            this.f12102do = v;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f12101do.compareTo(((Cif) obj).f12101do);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            K k = this.f12101do;
            if (k == null ? key == null : k.equals(key)) {
                V v = this.f12102do;
                Object value = entry.getValue();
                if (v == null ? value == null : v.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12101do;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f12102do;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f12101do;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f12102do;
            return (v != null ? v.hashCode() : 0) ^ hashCode;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            int i = Cprivate.f12087new;
            Cprivate.this.m6276if();
            V v2 = this.f12102do;
            this.f12102do = v;
            return v2;
        }

        public final String toString() {
            return this.f12101do + "=" + this.f12102do;
        }
    }

    /* renamed from: com.google.protobuf.private$new, reason: invalid class name */
    public class Cnew extends AbstractSet<Map.Entry<K, V>> {
        public Cnew() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            Cprivate.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Cprivate.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = Cprivate.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<Map.Entry<K, V>> iterator() {
            return new Cfor();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            Cprivate.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return Cprivate.this.size();
        }
    }

    public Cprivate(int i) {
        this.f12092for = i;
    }

    /* renamed from: case, reason: not valid java name */
    public final SortedMap<K, V> m6272case() {
        m6276if();
        if (this.f12090do.isEmpty() && !(this.f12090do instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f12090do = treeMap;
            this.f12093if = treeMap.descendingMap();
        }
        return (SortedMap) this.f12090do;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m6276if();
        if (!this.f12089do.isEmpty()) {
            this.f12089do.clear();
        }
        if (this.f12090do.isEmpty()) {
            return;
        }
        this.f12090do.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m6273do(comparable) >= 0 || this.f12090do.containsKey(comparable);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m6273do(K k) {
        int size = this.f12089do.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f12089do.get(size).f12101do);
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo(this.f12089do.get(i2).f12101do);
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: else */
    public void mo6271else() {
        if (this.f12091do) {
            return;
        }
        this.f12090do = this.f12090do.isEmpty() ? Collections.emptyMap() : DesugarCollections.unmodifiableMap(this.f12090do);
        this.f12093if = this.f12093if.isEmpty() ? Collections.emptyMap() : DesugarCollections.unmodifiableMap(this.f12093if);
        this.f12091do = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f12088do == null) {
            this.f12088do = new Cnew();
        }
        return this.f12088do;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cprivate)) {
            return super.equals(obj);
        }
        Cprivate cprivate = (Cprivate) obj;
        int size = size();
        if (size != cprivate.size()) {
            return false;
        }
        int m6277new = m6277new();
        if (m6277new != cprivate.m6277new()) {
            return entrySet().equals(cprivate.entrySet());
        }
        for (int i = 0; i < m6277new; i++) {
            if (!m6274for(i).equals(cprivate.m6274for(i))) {
                return false;
            }
        }
        if (m6277new != size) {
            return this.f12090do.equals(cprivate.f12090do);
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public final Map.Entry<K, V> m6274for(int i) {
        return this.f12089do.get(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m6273do = m6273do(comparable);
        return m6273do >= 0 ? this.f12089do.get(m6273do).f12102do : this.f12090do.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public final V put(K k, V v) {
        m6276if();
        int m6273do = m6273do(k);
        if (m6273do >= 0) {
            return this.f12089do.get(m6273do).setValue(v);
        }
        m6276if();
        boolean isEmpty = this.f12089do.isEmpty();
        int i = this.f12092for;
        if (isEmpty && !(this.f12089do instanceof ArrayList)) {
            this.f12089do = new ArrayList(i);
        }
        int i2 = -(m6273do + 1);
        if (i2 >= i) {
            return m6272case().put(k, v);
        }
        if (this.f12089do.size() == i) {
            Cprivate<K, V>.Cif remove = this.f12089do.remove(i - 1);
            m6272case().put(remove.f12101do, remove.f12102do);
        }
        this.f12089do.add(i2, new Cif(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m6277new = m6277new();
        int i = 0;
        for (int i2 = 0; i2 < m6277new; i2++) {
            i += this.f12089do.get(i2).hashCode();
        }
        return this.f12090do.size() > 0 ? i + this.f12090do.hashCode() : i;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6276if() {
        if (this.f12091do) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final int m6277new() {
        return this.f12089do.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m6276if();
        Comparable comparable = (Comparable) obj;
        int m6273do = m6273do(comparable);
        if (m6273do >= 0) {
            return (V) m6278this(m6273do);
        }
        if (this.f12090do.isEmpty()) {
            return null;
        }
        return this.f12090do.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f12090do.size() + this.f12089do.size();
    }

    /* renamed from: this, reason: not valid java name */
    public final V m6278this(int i) {
        m6276if();
        V v = this.f12089do.remove(i).f12102do;
        if (!this.f12090do.isEmpty()) {
            java.util.Iterator<Map.Entry<K, V>> it = m6272case().entrySet().iterator();
            List<Cprivate<K, V>.Cif> list = this.f12089do;
            Map.Entry<K, V> next = it.next();
            list.add(new Cif(next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: try, reason: not valid java name */
    public final Iterable<Map.Entry<K, V>> m6279try() {
        return this.f12090do.isEmpty() ? Cdo.f12095do : this.f12090do.entrySet();
    }
}
