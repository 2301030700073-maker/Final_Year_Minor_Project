package c.b.b;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class K0 extends AbstractMap {

    /* renamed from: a, reason: collision with root package name */
    public final int f3130a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3133d;
    public volatile J0 e;

    /* renamed from: b, reason: collision with root package name */
    public List f3131b = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public Map f3132c = Collections.emptyMap();
    public Map f = Collections.emptyMap();

    public K0(int i, D0 d0) {
        this.f3130a = i;
    }

    public final int b(Comparable comparable) {
        int size = this.f3131b.size() - 1;
        if (size >= 0) {
            int compareTo = comparable.compareTo(((H0) this.f3131b.get(size)).f3121a);
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
            int compareTo2 = comparable.compareTo(((H0) this.f3131b.get(i2)).f3121a);
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

    public final void c() {
        if (this.f3133d) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        c();
        if (!this.f3131b.isEmpty()) {
            this.f3131b.clear();
        }
        if (this.f3132c.isEmpty()) {
            return;
        }
        this.f3132c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return b(comparable) >= 0 || this.f3132c.containsKey(comparable);
    }

    public Map.Entry d(int i) {
        return (Map.Entry) this.f3131b.get(i);
    }

    public int e() {
        return this.f3131b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        if (this.e == null) {
            this.e = new J0(this, null);
        }
        return this.e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K0)) {
            return super.equals(obj);
        }
        K0 k0 = (K0) obj;
        int size = size();
        if (size != k0.size()) {
            return false;
        }
        int e = e();
        if (e != k0.e()) {
            return entrySet().equals(k0.entrySet());
        }
        for (int i = 0; i < e; i++) {
            if (!d(i).equals(k0.d(i))) {
                return false;
            }
        }
        if (e != size) {
            return this.f3132c.equals(k0.f3132c);
        }
        return true;
    }

    public Iterable f() {
        return this.f3132c.isEmpty() ? G0.f3120b : this.f3132c.entrySet();
    }

    public final SortedMap g() {
        c();
        if (this.f3132c.isEmpty() && !(this.f3132c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3132c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f3132c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int b2 = b(comparable);
        return b2 >= 0 ? ((H0) this.f3131b.get(b2)).f3122b : this.f3132c.get(comparable);
    }

    public void h() {
        if (this.f3133d) {
            return;
        }
        this.f3132c = this.f3132c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3132c);
        this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
        this.f3133d = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int e = e();
        int i = 0;
        for (int i2 = 0; i2 < e; i2++) {
            i += ((H0) this.f3131b.get(i2)).hashCode();
        }
        return this.f3132c.size() > 0 ? i + this.f3132c.hashCode() : i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Object put(Comparable comparable, Object obj) {
        c();
        int b2 = b(comparable);
        if (b2 >= 0) {
            H0 h0 = (H0) this.f3131b.get(b2);
            h0.f3123c.c();
            Object obj2 = h0.f3122b;
            h0.f3122b = obj;
            return obj2;
        }
        c();
        if (this.f3131b.isEmpty() && !(this.f3131b instanceof ArrayList)) {
            this.f3131b = new ArrayList(this.f3130a);
        }
        int i = -(b2 + 1);
        if (i >= this.f3130a) {
            return g().put(comparable, obj);
        }
        int size = this.f3131b.size();
        int i2 = this.f3130a;
        if (size == i2) {
            H0 h02 = (H0) this.f3131b.remove(i2 - 1);
            g().put(h02.f3121a, h02.f3122b);
        }
        this.f3131b.add(i, new H0(this, comparable, obj));
        return null;
    }

    public final Object j(int i) {
        c();
        Object obj = ((H0) this.f3131b.remove(i)).f3122b;
        if (!this.f3132c.isEmpty()) {
            Iterator it = g().entrySet().iterator();
            this.f3131b.add(new H0(this, (Map.Entry) it.next()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        c();
        Comparable comparable = (Comparable) obj;
        int b2 = b(comparable);
        if (b2 >= 0) {
            return j(b2);
        }
        if (this.f3132c.isEmpty()) {
            return null;
        }
        return this.f3132c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f3132c.size() + this.f3131b.size();
    }
}
