package defpackage;

import j$.util.Iterator;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class N8<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: if, reason: not valid java name */
    public static final Object f2306if = new Object();

    /* renamed from: do, reason: not valid java name */
    public transient Cdo f2307do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient Cfor f2308do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient Ctry f2309do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient Object f2310do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient int[] f2311do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public transient Object[] f2312do;

    /* renamed from: for, reason: not valid java name */
    public transient int f2313for = C3645ro.m7993const(3, 1);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public transient Object[] f2314if;

    /* renamed from: new, reason: not valid java name */
    public transient int f2315new;

    /* renamed from: N8$do, reason: invalid class name */
    public class Cdo extends AbstractSet<Map.Entry<K, V>> {
        public Cdo() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            N8.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            if (m1497do != null) {
                return m1497do.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int m1501if = n8.m1501if(entry.getKey());
            return m1501if != -1 && C3645ro.m8013static(n8.m1496catch(m1501if), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            return m1497do != null ? m1497do.entrySet().iterator() : new L8(n8);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            if (m1497do != null) {
                return m1497do.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (n8.m1504try()) {
                return false;
            }
            int i = (1 << (n8.f2313for & 31)) - 1;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object obj2 = n8.f2310do;
            Objects.requireNonNull(obj2);
            int m8014strictfp = C3645ro.m8014strictfp(key, value, i, obj2, n8.m1498else(), n8.m1500goto(), n8.m1503this());
            if (m8014strictfp == -1) {
                return false;
            }
            n8.m1502new(m8014strictfp, i);
            n8.f2315new--;
            n8.f2313for += 32;
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return N8.this.size();
        }
    }

    /* renamed from: N8$for, reason: invalid class name */
    public class Cfor extends AbstractSet<K> {
        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            N8.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return N8.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            return m1497do != null ? m1497do.keySet().iterator() : new K8(n8);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            return m1497do != null ? m1497do.keySet().remove(obj) : n8.m1495case(obj) != N8.f2306if;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return N8.this.size();
        }
    }

    /* renamed from: N8$if, reason: invalid class name */
    public abstract class Cif<T> implements Iterator<T>, j$.util.Iterator {

        /* renamed from: for, reason: not valid java name */
        public int f2319for;

        /* renamed from: new, reason: not valid java name */
        public int f2320new;

        /* renamed from: try, reason: not valid java name */
        public int f2321try;

        public Cif() {
            this.f2319for = N8.this.f2313for;
            this.f2320new = N8.this.isEmpty() ? -1 : 0;
            this.f2321try = -1;
        }

        /* renamed from: do */
        public abstract T mo1125do(int i);

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f2320new >= 0;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final T next() {
            N8 n8 = N8.this;
            if (n8.f2313for != this.f2319for) {
                throw new ConcurrentModificationException();
            }
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.f2320new;
            this.f2321try = i;
            T mo1125do = mo1125do(i);
            int i2 = this.f2320new + 1;
            if (i2 >= n8.f2315new) {
                i2 = -1;
            }
            this.f2320new = i2;
            return mo1125do;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            N8 n8 = N8.this;
            if (n8.f2313for != this.f2319for) {
                throw new ConcurrentModificationException();
            }
            C0315Kc.m1164final(this.f2321try >= 0, "no calls to next() since the last call to remove()");
            this.f2319for += 32;
            n8.remove(n8.m1499for(this.f2321try));
            this.f2320new--;
            this.f2321try = -1;
        }
    }

    /* renamed from: N8$new, reason: invalid class name */
    public final class Cnew extends Cthrow<K, V> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final K f2323do;

        /* renamed from: for, reason: not valid java name */
        public int f2324for;

        public Cnew(int i) {
            Object obj = N8.f2306if;
            this.f2323do = (K) N8.this.m1499for(i);
            this.f2324for = i;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m1505do() {
            int i = this.f2324for;
            K k = this.f2323do;
            N8 n8 = N8.this;
            if (i == -1 || i >= n8.size() || !C3645ro.m8013static(k, n8.m1499for(this.f2324for))) {
                Object obj = N8.f2306if;
                this.f2324for = n8.m1501if(k);
            }
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f2323do;
        }

        @Override // defpackage.Cthrow, java.util.Map.Entry
        public final V getValue() {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            if (m1497do != null) {
                return m1497do.get(this.f2323do);
            }
            m1505do();
            int i = this.f2324for;
            if (i == -1) {
                return null;
            }
            return (V) n8.m1496catch(i);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            K k = this.f2323do;
            if (m1497do != null) {
                return m1497do.put(k, v);
            }
            m1505do();
            int i = this.f2324for;
            if (i == -1) {
                n8.put(k, v);
                return null;
            }
            V v2 = (V) n8.m1496catch(i);
            n8.m1503this()[this.f2324for] = v;
            return v2;
        }
    }

    /* renamed from: N8$try, reason: invalid class name */
    public class Ctry extends AbstractCollection<V> {
        public Ctry() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            N8.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final java.util.Iterator<V> iterator() {
            N8 n8 = N8.this;
            Map<K, V> m1497do = n8.m1497do();
            return m1497do != null ? m1497do.values().iterator() : new M8(n8);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return N8.this.size();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        if (!(readInt >= 0)) {
            throw new IllegalArgumentException("Expected size must be >= 0");
        }
        this.f2313for = C3645ro.m7993const(readInt, 1);
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Map<K, V> m1497do = m1497do();
        java.util.Iterator<Map.Entry<K, V>> it = m1497do != null ? m1497do.entrySet().iterator() : new L8(this);
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final int m1494break(int i, int i2, int i3, int i4) {
        Object m8007native = C3645ro.m8007native(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            C3645ro.m8005instanceof(i3 & i5, i4 + 1, m8007native);
        }
        Object obj = this.f2310do;
        Objects.requireNonNull(obj);
        int[] m1498else = m1498else();
        for (int i6 = 0; i6 <= i; i6++) {
            int m8003implements = C3645ro.m8003implements(i6, obj);
            while (m8003implements != 0) {
                int i7 = m8003implements - 1;
                int i8 = m1498else[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int m8003implements2 = C3645ro.m8003implements(i10, m8007native);
                C3645ro.m8005instanceof(i10, m8003implements, m8007native);
                m1498else[i7] = ((~i5) & i9) | (m8003implements2 & i5);
                m8003implements = i8 & i;
            }
        }
        this.f2310do = m8007native;
        this.f2313for = ((32 - Integer.numberOfLeadingZeros(i5)) & 31) | (this.f2313for & (-32));
        return i5;
    }

    /* renamed from: case, reason: not valid java name */
    public final Object m1495case(Object obj) {
        boolean m1504try = m1504try();
        Object obj2 = f2306if;
        if (m1504try) {
            return obj2;
        }
        int i = (1 << (this.f2313for & 31)) - 1;
        Object obj3 = this.f2310do;
        Objects.requireNonNull(obj3);
        int m8014strictfp = C3645ro.m8014strictfp(obj, null, i, obj3, m1498else(), m1500goto(), null);
        if (m8014strictfp == -1) {
            return obj2;
        }
        V m1496catch = m1496catch(m8014strictfp);
        m1502new(m8014strictfp, i);
        this.f2315new--;
        this.f2313for += 32;
        return m1496catch;
    }

    /* renamed from: catch, reason: not valid java name */
    public final V m1496catch(int i) {
        return (V) m1503this()[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (m1504try()) {
            return;
        }
        this.f2313for += 32;
        Map<K, V> m1497do = m1497do();
        if (m1497do != null) {
            this.f2313for = C3645ro.m7993const(size(), 3);
            m1497do.clear();
            this.f2310do = null;
            this.f2315new = 0;
            return;
        }
        Arrays.fill(m1500goto(), 0, this.f2315new, (Object) null);
        Arrays.fill(m1503this(), 0, this.f2315new, (Object) null);
        Object obj = this.f2310do;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(m1498else(), 0, this.f2315new, 0);
        this.f2315new = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map<K, V> m1497do = m1497do();
        return m1497do != null ? m1497do.containsKey(obj) : m1501if(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> m1497do = m1497do();
        if (m1497do != null) {
            return m1497do.containsValue(obj);
        }
        for (int i = 0; i < this.f2315new; i++) {
            if (C3645ro.m8013static(obj, m1496catch(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public final Map<K, V> m1497do() {
        Object obj = this.f2310do;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public final int[] m1498else() {
        int[] iArr = this.f2311do;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Cdo cdo = this.f2307do;
        if (cdo != null) {
            return cdo;
        }
        Cdo cdo2 = new Cdo();
        this.f2307do = cdo2;
        return cdo2;
    }

    /* renamed from: for, reason: not valid java name */
    public final K m1499for(int i) {
        return (K) m1500goto()[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> m1497do = m1497do();
        if (m1497do != null) {
            return m1497do.get(obj);
        }
        int m1501if = m1501if(obj);
        if (m1501if == -1) {
            return null;
        }
        return m1496catch(m1501if);
    }

    /* renamed from: goto, reason: not valid java name */
    public final Object[] m1500goto() {
        Object[] objArr = this.f2312do;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m1501if(Object obj) {
        if (m1504try()) {
            return -1;
        }
        int m1159continue = C0315Kc.m1159continue(obj);
        int i = (1 << (this.f2313for & 31)) - 1;
        Object obj2 = this.f2310do;
        Objects.requireNonNull(obj2);
        int m8003implements = C3645ro.m8003implements(m1159continue & i, obj2);
        if (m8003implements == 0) {
            return -1;
        }
        int i2 = ~i;
        int i3 = m1159continue & i2;
        do {
            int i4 = m8003implements - 1;
            int i5 = m1498else()[i4];
            if ((i5 & i2) == i3 && C3645ro.m8013static(obj, m1499for(i4))) {
                return i4;
            }
            m8003implements = i5 & i;
        } while (m8003implements != 0);
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Cfor cfor = this.f2308do;
        if (cfor != null) {
            return cfor;
        }
        Cfor cfor2 = new Cfor();
        this.f2308do = cfor2;
        return cfor2;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1502new(int i, int i2) {
        Object obj = this.f2310do;
        Objects.requireNonNull(obj);
        int[] m1498else = m1498else();
        Object[] m1500goto = m1500goto();
        Object[] m1503this = m1503this();
        int size = size() - 1;
        if (i >= size) {
            m1500goto[i] = null;
            m1503this[i] = null;
            m1498else[i] = 0;
            return;
        }
        Object obj2 = m1500goto[size];
        m1500goto[i] = obj2;
        m1503this[i] = m1503this[size];
        m1500goto[size] = null;
        m1503this[size] = null;
        m1498else[i] = m1498else[size];
        m1498else[size] = 0;
        int m1159continue = C0315Kc.m1159continue(obj2) & i2;
        int m8003implements = C3645ro.m8003implements(m1159continue, obj);
        int i3 = size + 1;
        if (m8003implements == i3) {
            C3645ro.m8005instanceof(m1159continue, i + 1, obj);
            return;
        }
        while (true) {
            int i4 = m8003implements - 1;
            int i5 = m1498else[i4];
            int i6 = i5 & i2;
            if (i6 == i3) {
                m1498else[i4] = ((i + 1) & i2) | (i5 & (~i2));
                return;
            }
            m8003implements = i6;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int min;
        if (m1504try()) {
            C0315Kc.m1164final(m1504try(), "Arrays already allocated");
            int i = this.f2313for;
            int max = Math.max(i + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            if (max > ((int) (highestOneBit * 1.0d)) && (highestOneBit = highestOneBit << 1) <= 0) {
                highestOneBit = 1073741824;
            }
            int max2 = Math.max(4, highestOneBit);
            this.f2310do = C3645ro.m8007native(max2);
            this.f2313for = ((32 - Integer.numberOfLeadingZeros(max2 - 1)) & 31) | (this.f2313for & (-32));
            this.f2311do = new int[i];
            this.f2312do = new Object[i];
            this.f2314if = new Object[i];
        }
        Map<K, V> m1497do = m1497do();
        if (m1497do != null) {
            return m1497do.put(k, v);
        }
        int[] m1498else = m1498else();
        Object[] m1500goto = m1500goto();
        Object[] m1503this = m1503this();
        int i2 = this.f2315new;
        int i3 = i2 + 1;
        int m1159continue = C0315Kc.m1159continue(k);
        int i4 = (1 << (this.f2313for & 31)) - 1;
        int i5 = m1159continue & i4;
        Object obj = this.f2310do;
        Objects.requireNonNull(obj);
        int m8003implements = C3645ro.m8003implements(i5, obj);
        if (m8003implements != 0) {
            int i6 = ~i4;
            int i7 = m1159continue & i6;
            int i8 = 0;
            while (true) {
                int i9 = m8003implements - 1;
                int i10 = m1498else[i9];
                int i11 = i10 & i6;
                if (i11 == i7 && C3645ro.m8013static(k, m1500goto[i9])) {
                    V v2 = (V) m1503this[i9];
                    m1503this[i9] = v;
                    return v2;
                }
                int i12 = i10 & i4;
                int i13 = i7;
                int i14 = i8 + 1;
                if (i12 != 0) {
                    m8003implements = i12;
                    i8 = i14;
                    i7 = i13;
                } else {
                    if (i14 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(((1 << (this.f2313for & 31)) - 1) + 1, 1.0f);
                        int i15 = isEmpty() ? -1 : 0;
                        while (i15 >= 0) {
                            linkedHashMap.put(m1499for(i15), m1496catch(i15));
                            i15++;
                            if (i15 >= this.f2315new) {
                                i15 = -1;
                            }
                        }
                        this.f2310do = linkedHashMap;
                        this.f2311do = null;
                        this.f2312do = null;
                        this.f2314if = null;
                        this.f2313for += 32;
                        return (V) linkedHashMap.put(k, v);
                    }
                    if (i3 > i4) {
                        i4 = m1494break(i4, (i4 + 1) * (i4 < 32 ? 4 : 2), m1159continue, i2);
                    } else {
                        m1498else[i9] = (i3 & i4) | i11;
                    }
                }
            }
        } else if (i3 > i4) {
            i4 = m1494break(i4, (i4 + 1) * (i4 < 32 ? 4 : 2), m1159continue, i2);
        } else {
            Object obj2 = this.f2310do;
            Objects.requireNonNull(obj2);
            C3645ro.m8005instanceof(i5, i3, obj2);
        }
        int length = m1498else().length;
        if (i3 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f2311do = Arrays.copyOf(m1498else(), min);
            this.f2312do = Arrays.copyOf(m1500goto(), min);
            this.f2314if = Arrays.copyOf(m1503this(), min);
        }
        m1498else()[i2] = ((~i4) & m1159continue) | (i4 & 0);
        m1500goto()[i2] = k;
        m1503this()[i2] = v;
        this.f2315new = i3;
        this.f2313for += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> m1497do = m1497do();
        if (m1497do != null) {
            return m1497do.remove(obj);
        }
        V v = (V) m1495case(obj);
        if (v == f2306if) {
            return null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> m1497do = m1497do();
        return m1497do != null ? m1497do.size() : this.f2315new;
    }

    /* renamed from: this, reason: not valid java name */
    public final Object[] m1503this() {
        Object[] objArr = this.f2314if;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m1504try() {
        return this.f2310do == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Ctry ctry = this.f2309do;
        if (ctry != null) {
            return ctry;
        }
        Ctry ctry2 = new Ctry();
        this.f2309do = ctry2;
        return ctry2;
    }
}
