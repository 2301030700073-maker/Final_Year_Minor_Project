package androidx.datastore.preferences.protobuf;

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

/* renamed from: androidx.datastore.preferences.protobuf.transient, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctransient<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ int f6659new = 0;

    /* renamed from: do, reason: not valid java name */
    public volatile Ctransient<K, V>.Cnew f6660do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6663do;

    /* renamed from: for, reason: not valid java name */
    public final int f6664for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List<Ctransient<K, V>.Cif> f6661do = Collections.emptyList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Map<K, V> f6662do = Collections.emptyMap();

    /* renamed from: if, reason: not valid java name */
    public Map<K, V> f6665if = Collections.emptyMap();

    /* renamed from: androidx.datastore.preferences.protobuf.transient$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final C0035do f6666do = new C0035do();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final Cif f6667do = new Cif();

        /* renamed from: androidx.datastore.preferences.protobuf.transient$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0035do implements Iterator<Object>, j$.util.Iterator {
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

        /* renamed from: androidx.datastore.preferences.protobuf.transient$do$if, reason: invalid class name */
        public static class Cif implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final java.util.Iterator<Object> iterator() {
                return Cdo.f6666do;
            }
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.transient$for, reason: invalid class name */
    public class Cfor implements java.util.Iterator<Map.Entry<K, V>>, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public java.util.Iterator<Map.Entry<K, V>> f6669do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6670do;

        /* renamed from: for, reason: not valid java name */
        public int f6671for = -1;

        public Cfor() {
        }

        /* renamed from: do, reason: not valid java name */
        public final java.util.Iterator<Map.Entry<K, V>> m4010do() {
            if (this.f6669do == null) {
                this.f6669do = Ctransient.this.f6662do.entrySet().iterator();
            }
            return this.f6669do;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            int i = this.f6671for + 1;
            Ctransient ctransient = Ctransient.this;
            if (i >= ctransient.f6661do.size()) {
                return !ctransient.f6662do.isEmpty() && m4010do().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            this.f6670do = true;
            int i = this.f6671for + 1;
            this.f6671for = i;
            Ctransient ctransient = Ctransient.this;
            return i < ctransient.f6661do.size() ? ctransient.f6661do.get(this.f6671for) : m4010do().next();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            if (!this.f6670do) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f6670do = false;
            int i = Ctransient.f6659new;
            Ctransient ctransient = Ctransient.this;
            ctransient.m4006if();
            if (this.f6671for >= ctransient.f6661do.size()) {
                m4010do().remove();
                return;
            }
            int i2 = this.f6671for;
            this.f6671for = i2 - 1;
            ctransient.m4008this(i2);
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.transient$if, reason: invalid class name */
    public class Cif implements Map.Entry<K, V>, Comparable<Ctransient<K, V>.Cif> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final K f6673do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public V f6674do;

        public Cif() {
            throw null;
        }

        public Cif(K k, V v) {
            this.f6673do = k;
            this.f6674do = v;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f6673do.compareTo(((Cif) obj).f6673do);
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
            K k = this.f6673do;
            if (k == null ? key == null : k.equals(key)) {
                V v = this.f6674do;
                Object value = entry.getValue();
                if (v == null ? value == null : v.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f6673do;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f6674do;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f6673do;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f6674do;
            return (v != null ? v.hashCode() : 0) ^ hashCode;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            int i = Ctransient.f6659new;
            Ctransient.this.m4006if();
            V v2 = this.f6674do;
            this.f6674do = v;
            return v2;
        }

        public final String toString() {
            return this.f6673do + "=" + this.f6674do;
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.transient$new, reason: invalid class name */
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
            Ctransient.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Ctransient.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = Ctransient.this.get(entry.getKey());
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
            Ctransient.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return Ctransient.this.size();
        }
    }

    public Ctransient(int i) {
        this.f6664for = i;
    }

    /* renamed from: case, reason: not valid java name */
    public final SortedMap<K, V> m4002case() {
        m4006if();
        if (this.f6662do.isEmpty() && !(this.f6662do instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f6662do = treeMap;
            this.f6665if = treeMap.descendingMap();
        }
        return (SortedMap) this.f6662do;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m4006if();
        if (!this.f6661do.isEmpty()) {
            this.f6661do.clear();
        }
        if (this.f6662do.isEmpty()) {
            return;
        }
        this.f6662do.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m4003do(comparable) >= 0 || this.f6662do.containsKey(comparable);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m4003do(K k) {
        int size = this.f6661do.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f6661do.get(size).f6673do);
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
            int compareTo2 = k.compareTo(this.f6661do.get(i2).f6673do);
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
    public void mo3982else() {
        if (this.f6663do) {
            return;
        }
        this.f6662do = this.f6662do.isEmpty() ? Collections.emptyMap() : DesugarCollections.unmodifiableMap(this.f6662do);
        this.f6665if = this.f6665if.isEmpty() ? Collections.emptyMap() : DesugarCollections.unmodifiableMap(this.f6665if);
        this.f6663do = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f6660do == null) {
            this.f6660do = new Cnew();
        }
        return this.f6660do;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ctransient)) {
            return super.equals(obj);
        }
        Ctransient ctransient = (Ctransient) obj;
        int size = size();
        if (size != ctransient.size()) {
            return false;
        }
        int m4007new = m4007new();
        if (m4007new != ctransient.m4007new()) {
            return entrySet().equals(ctransient.entrySet());
        }
        for (int i = 0; i < m4007new; i++) {
            if (!m4004for(i).equals(ctransient.m4004for(i))) {
                return false;
            }
        }
        if (m4007new != size) {
            return this.f6662do.equals(ctransient.f6662do);
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public final Map.Entry<K, V> m4004for(int i) {
        return this.f6661do.get(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m4003do = m4003do(comparable);
        return m4003do >= 0 ? this.f6661do.get(m4003do).f6674do : this.f6662do.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public final V put(K k, V v) {
        m4006if();
        int m4003do = m4003do(k);
        if (m4003do >= 0) {
            return this.f6661do.get(m4003do).setValue(v);
        }
        m4006if();
        boolean isEmpty = this.f6661do.isEmpty();
        int i = this.f6664for;
        if (isEmpty && !(this.f6661do instanceof ArrayList)) {
            this.f6661do = new ArrayList(i);
        }
        int i2 = -(m4003do + 1);
        if (i2 >= i) {
            return m4002case().put(k, v);
        }
        if (this.f6661do.size() == i) {
            Ctransient<K, V>.Cif remove = this.f6661do.remove(i - 1);
            m4002case().put(remove.f6673do, remove.f6674do);
        }
        this.f6661do.add(i2, new Cif(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m4007new = m4007new();
        int i = 0;
        for (int i2 = 0; i2 < m4007new; i2++) {
            i += this.f6661do.get(i2).hashCode();
        }
        return this.f6662do.size() > 0 ? i + this.f6662do.hashCode() : i;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4006if() {
        if (this.f6663do) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final int m4007new() {
        return this.f6661do.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m4006if();
        Comparable comparable = (Comparable) obj;
        int m4003do = m4003do(comparable);
        if (m4003do >= 0) {
            return (V) m4008this(m4003do);
        }
        if (this.f6662do.isEmpty()) {
            return null;
        }
        return this.f6662do.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f6662do.size() + this.f6661do.size();
    }

    /* renamed from: this, reason: not valid java name */
    public final V m4008this(int i) {
        m4006if();
        V v = this.f6661do.remove(i).f6674do;
        if (!this.f6662do.isEmpty()) {
            java.util.Iterator<Map.Entry<K, V>> it = m4002case().entrySet().iterator();
            List<Ctransient<K, V>.Cif> list = this.f6661do;
            Map.Entry<K, V> next = it.next();
            list.add(new Cif(next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: try, reason: not valid java name */
    public final Iterable<Map.Entry<K, V>> m4009try() {
        return this.f6662do.isEmpty() ? Cdo.f6667do : this.f6662do.entrySet();
    }
}
