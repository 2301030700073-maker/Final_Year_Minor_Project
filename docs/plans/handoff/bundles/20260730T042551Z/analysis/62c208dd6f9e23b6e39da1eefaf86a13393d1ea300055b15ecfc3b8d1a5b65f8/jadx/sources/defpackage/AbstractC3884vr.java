package defpackage;

import j$.util.Iterator;
import j$.util.Map;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Consumer;

/* renamed from: vr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3884vr<K, V> {

    /* renamed from: do, reason: not valid java name */
    public AbstractC3884vr<K, V>.Cfor f16131do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3884vr<K, V>.Cif f16132do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3884vr<K, V>.Ctry f16133do;

    /* renamed from: vr$do, reason: invalid class name */
    public final class Cdo<T> implements Iterator<T>, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f16135do = false;

        /* renamed from: for, reason: not valid java name */
        public final int f16136for;

        /* renamed from: new, reason: not valid java name */
        public int f16137new;

        /* renamed from: try, reason: not valid java name */
        public int f16138try;

        public Cdo(int i) {
            this.f16136for = i;
            this.f16137new = AbstractC3884vr.this.mo423new();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f16138try < this.f16137new;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) AbstractC3884vr.this.mo422if(this.f16138try, this.f16136for);
            this.f16138try++;
            this.f16135do = true;
            return t;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            if (!this.f16135do) {
                throw new IllegalStateException();
            }
            int i = this.f16138try - 1;
            this.f16138try = i;
            this.f16137new--;
            this.f16135do = false;
            AbstractC3884vr.this.mo421goto(i);
        }
    }

    /* renamed from: vr$for, reason: invalid class name */
    public final class Cfor implements Set<K> {
        public Cfor() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC3884vr.this.mo418do();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC3884vr.this.mo425try(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Map<K, V> mo420for = AbstractC3884vr.this.mo420for();
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!mo420for.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC3884vr.m8480break(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int i = 0;
            for (int mo423new = abstractC3884vr.mo423new() - 1; mo423new >= 0; mo423new--) {
                Object mo422if = abstractC3884vr.mo422if(mo423new, 0);
                i += mo422if == null ? 0 : mo422if.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC3884vr.this.mo423new() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator<K> iterator() {
            return new Cdo(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo425try = abstractC3884vr.mo425try(obj);
            if (mo425try < 0) {
                return false;
            }
            abstractC3884vr.mo421goto(mo425try);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> mo420for = AbstractC3884vr.this.mo420for();
            int size = mo420for.size();
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                mo420for.remove(it.next());
            }
            return size != mo420for.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return AbstractC3884vr.m8481catch(AbstractC3884vr.this.mo420for(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC3884vr.this.mo423new();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC3884vr.this.m8482class(0, tArr);
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo423new = abstractC3884vr.mo423new();
            Object[] objArr = new Object[mo423new];
            for (int i = 0; i < mo423new; i++) {
                objArr[i] = abstractC3884vr.mo422if(i, 0);
            }
            return objArr;
        }
    }

    /* renamed from: vr$if, reason: invalid class name */
    public final class Cif implements Set<Map.Entry<K, V>> {
        public Cif() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo423new = abstractC3884vr.mo423new();
            for (Map.Entry<K, V> entry : collection) {
                abstractC3884vr.mo419else(entry.getKey(), entry.getValue());
            }
            return mo423new != abstractC3884vr.mo423new();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC3884vr.this.mo418do();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo425try = abstractC3884vr.mo425try(key);
            if (mo425try < 0) {
                return false;
            }
            Object mo422if = abstractC3884vr.mo422if(mo425try, 1);
            Object value = entry.getValue();
            return mo422if == value || (mo422if != null && mo422if.equals(value));
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC3884vr.m8480break(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int i = 0;
            for (int mo423new = abstractC3884vr.mo423new() - 1; mo423new >= 0; mo423new--) {
                Object mo422if = abstractC3884vr.mo422if(mo423new, 0);
                Object mo422if2 = abstractC3884vr.mo422if(mo423new, 1);
                i += (mo422if == null ? 0 : mo422if.hashCode()) ^ (mo422if2 == null ? 0 : mo422if2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC3884vr.this.mo423new() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator<Map.Entry<K, V>> iterator() {
            return new Cnew();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC3884vr.this.mo423new();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: vr$new, reason: invalid class name */
    public final class Cnew implements java.util.Iterator<Map.Entry<K, V>>, Map.Entry<K, V>, j$.util.Iterator, Map.Entry {

        /* renamed from: for, reason: not valid java name */
        public int f16143for;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f16142do = false;

        /* renamed from: new, reason: not valid java name */
        public int f16144new = -1;

        public Cnew() {
            this.f16143for = AbstractC3884vr.this.mo423new() - 1;
        }

        @Override // java.util.Map.Entry, j$.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.f16142do) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            int i = this.f16144new;
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            Object mo422if = abstractC3884vr.mo422if(i, 0);
            if (!(key == mo422if || (key != null && key.equals(mo422if)))) {
                return false;
            }
            Object value = entry.getValue();
            Object mo422if2 = abstractC3884vr.mo422if(this.f16144new, 1);
            return value == mo422if2 || (value != null && value.equals(mo422if2));
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Map.Entry, j$.util.Map.Entry
        public final K getKey() {
            if (!this.f16142do) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (K) AbstractC3884vr.this.mo422if(this.f16144new, 0);
        }

        @Override // java.util.Map.Entry, j$.util.Map.Entry
        public final V getValue() {
            if (!this.f16142do) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            return (V) AbstractC3884vr.this.mo422if(this.f16144new, 1);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f16144new < this.f16143for;
        }

        @Override // java.util.Map.Entry, j$.util.Map.Entry
        public final int hashCode() {
            if (!this.f16142do) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            int i = this.f16144new;
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            Object mo422if = abstractC3884vr.mo422if(i, 0);
            Object mo422if2 = abstractC3884vr.mo422if(this.f16144new, 1);
            return (mo422if == null ? 0 : mo422if.hashCode()) ^ (mo422if2 != null ? mo422if2.hashCode() : 0);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f16144new++;
            this.f16142do = true;
            return this;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            if (!this.f16142do) {
                throw new IllegalStateException();
            }
            AbstractC3884vr.this.mo421goto(this.f16144new);
            this.f16144new--;
            this.f16143for--;
            this.f16142do = false;
        }

        @Override // java.util.Map.Entry, j$.util.Map.Entry
        public final V setValue(V v) {
            if (this.f16142do) {
                return (V) AbstractC3884vr.this.mo424this(this.f16144new, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: vr$try, reason: invalid class name */
    public final class Ctry implements Collection<V> {
        public Ctry() {
        }

        @Override // java.util.Collection
        public final boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            AbstractC3884vr.this.mo418do();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC3884vr.this.mo417case(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return AbstractC3884vr.this.mo423new() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final java.util.Iterator<V> iterator() {
            return new Cdo(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo417case = abstractC3884vr.mo417case(obj);
            if (mo417case < 0) {
                return false;
            }
            abstractC3884vr.mo421goto(mo417case);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo423new = abstractC3884vr.mo423new();
            int i = 0;
            boolean z = false;
            while (i < mo423new) {
                if (collection.contains(abstractC3884vr.mo422if(i, 1))) {
                    abstractC3884vr.mo421goto(i);
                    i--;
                    mo423new--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo423new = abstractC3884vr.mo423new();
            int i = 0;
            boolean z = false;
            while (i < mo423new) {
                if (!collection.contains(abstractC3884vr.mo422if(i, 1))) {
                    abstractC3884vr.mo421goto(i);
                    i--;
                    mo423new--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return AbstractC3884vr.this.mo423new();
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC3884vr.this.m8482class(1, tArr);
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            AbstractC3884vr abstractC3884vr = AbstractC3884vr.this;
            int mo423new = abstractC3884vr.mo423new();
            Object[] objArr = new Object[mo423new];
            for (int i = 0; i < mo423new; i++) {
                objArr[i] = abstractC3884vr.mo422if(i, 1);
            }
            return objArr;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> boolean m8480break(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public static <K, V> boolean m8481catch(java.util.Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        java.util.Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: case */
    public abstract int mo417case(Object obj);

    /* renamed from: class, reason: not valid java name */
    public final Object[] m8482class(int i, Object[] objArr) {
        int mo423new = mo423new();
        if (objArr.length < mo423new) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), mo423new);
        }
        for (int i2 = 0; i2 < mo423new; i2++) {
            objArr[i2] = mo422if(i2, i);
        }
        if (objArr.length > mo423new) {
            objArr[mo423new] = null;
        }
        return objArr;
    }

    /* renamed from: do */
    public abstract void mo418do();

    /* renamed from: else */
    public abstract void mo419else(K k, V v);

    /* renamed from: for */
    public abstract java.util.Map<K, V> mo420for();

    /* renamed from: goto */
    public abstract void mo421goto(int i);

    /* renamed from: if */
    public abstract Object mo422if(int i, int i2);

    /* renamed from: new */
    public abstract int mo423new();

    /* renamed from: this */
    public abstract V mo424this(int i, V v);

    /* renamed from: try */
    public abstract int mo425try(Object obj);
}
