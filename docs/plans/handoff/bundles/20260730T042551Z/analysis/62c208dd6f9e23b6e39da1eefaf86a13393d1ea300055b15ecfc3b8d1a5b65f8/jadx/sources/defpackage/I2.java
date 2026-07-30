package defpackage;

import defpackage.AbstractC3884vr;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class I2<E> implements Collection<E>, Set<E> {

    /* renamed from: for, reason: not valid java name */
    public static Object[] f1416for;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f1417if = new int[0];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final Object[] f1418if = new Object[0];

    /* renamed from: new, reason: not valid java name */
    public static int f1419new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static Object[] f1420new;

    /* renamed from: try, reason: not valid java name */
    public static int f1421try;

    /* renamed from: do, reason: not valid java name */
    public H2 f1422do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f1423do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object[] f1424do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f1425for;

    public I2() {
        this(0);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m904case(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (I2.class) {
                if (f1421try < 10) {
                    objArr[0] = f1420new;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f1420new = objArr;
                    f1421try++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (I2.class) {
                if (f1419new < 10) {
                    objArr[0] = f1416for;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f1416for = objArr;
                    f1419new++;
                }
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(E e) {
        int i;
        int m905else;
        if (e == null) {
            m905else = m906goto();
            i = 0;
        } else {
            int hashCode = e.hashCode();
            i = hashCode;
            m905else = m905else(hashCode, e);
        }
        if (m905else >= 0) {
            return false;
        }
        int i2 = ~m905else;
        int i3 = this.f1425for;
        int[] iArr = this.f1423do;
        if (i3 >= iArr.length) {
            int i4 = 8;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.f1424do;
            m908try(i4);
            int[] iArr2 = this.f1423do;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1424do, 0, objArr.length);
            }
            m904case(iArr, objArr, this.f1425for);
        }
        int i5 = this.f1425for;
        if (i2 < i5) {
            int[] iArr3 = this.f1423do;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f1424do;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f1425for - i2);
        }
        this.f1423do[i2] = i;
        this.f1424do[i2] = e;
        this.f1425for++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> collection) {
        int size = collection.size() + this.f1425for;
        int[] iArr = this.f1423do;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f1424do;
            m908try(size);
            int i = this.f1425for;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f1423do, 0, i);
                System.arraycopy(objArr, 0, this.f1424do, 0, this.f1425for);
            }
            m904case(iArr, objArr, this.f1425for);
        }
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.f1425for;
        if (i != 0) {
            m904case(this.f1423do, this.f1424do, i);
            this.f1423do = f1417if;
            this.f1424do = f1418if;
            this.f1425for = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m905else(int i, Object obj) {
        int i2 = this.f1425for;
        if (i2 == 0) {
            return -1;
        }
        int m1166for = C0315Kc.m1166for(this.f1423do, i2, i);
        if (m1166for < 0) {
            return m1166for;
        }
        if (obj.equals(this.f1424do[m1166for])) {
            return m1166for;
        }
        int i3 = m1166for + 1;
        while (i3 < i2 && this.f1423do[i3] == i) {
            if (obj.equals(this.f1424do[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = m1166for - 1; i4 >= 0 && this.f1423do[i4] == i; i4--) {
            if (obj.equals(this.f1424do[i4])) {
                return i4;
            }
        }
        return ~i3;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f1425for != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f1425for; i++) {
                try {
                    if (!set.contains(this.f1424do[i])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m906goto() {
        int i = this.f1425for;
        if (i == 0) {
            return -1;
        }
        int m1166for = C0315Kc.m1166for(this.f1423do, i, 0);
        if (m1166for < 0) {
            return m1166for;
        }
        if (this.f1424do[m1166for] == null) {
            return m1166for;
        }
        int i2 = m1166for + 1;
        while (i2 < i && this.f1423do[i2] == 0) {
            if (this.f1424do[i2] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = m1166for - 1; i3 >= 0 && this.f1423do[i3] == 0; i3--) {
            if (this.f1424do[i3] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f1423do;
        int i = this.f1425for;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public final int indexOf(Object obj) {
        return obj == null ? m906goto() : m905else(obj.hashCode(), obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f1425for <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        if (this.f1422do == null) {
            this.f1422do = new H2(this);
        }
        H2 h2 = this.f1422do;
        if (((AbstractC3884vr) h2).f16131do == null) {
            ((AbstractC3884vr) h2).f16131do = new AbstractC3884vr.Cfor();
        }
        return (Iterator<E>) ((AbstractC3884vr) h2).f16131do.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        m907this(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f1425for - 1; i >= 0; i--) {
            if (!collection.contains(this.f1424do[i])) {
                m907this(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f1425for;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m907this(int i) {
        Object[] objArr = this.f1424do;
        Object obj = objArr[i];
        int i2 = this.f1425for;
        if (i2 <= 1) {
            m904case(this.f1423do, objArr, i2);
            this.f1423do = f1417if;
            this.f1424do = f1418if;
            this.f1425for = 0;
            return;
        }
        int[] iArr = this.f1423do;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            int i3 = i2 - 1;
            this.f1425for = i3;
            if (i < i3) {
                int i4 = i + 1;
                System.arraycopy(iArr, i4, iArr, i, i3 - i);
                Object[] objArr2 = this.f1424do;
                System.arraycopy(objArr2, i4, objArr2, i, this.f1425for - i);
            }
            this.f1424do[this.f1425for] = null;
            return;
        }
        m908try(i2 > 8 ? i2 + (i2 >> 1) : 8);
        this.f1425for--;
        if (i > 0) {
            System.arraycopy(iArr, 0, this.f1423do, 0, i);
            System.arraycopy(objArr, 0, this.f1424do, 0, i);
        }
        int i5 = this.f1425for;
        if (i < i5) {
            int i6 = i + 1;
            System.arraycopy(iArr, i6, this.f1423do, i, i5 - i);
            System.arraycopy(objArr, i6, this.f1424do, i, this.f1425for - i);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i = this.f1425for;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f1424do, 0, objArr, 0, i);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1425for * 14);
        sb.append('{');
        for (int i = 0; i < this.f1425for; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = this.f1424do[i];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m908try(int i) {
        if (i == 8) {
            synchronized (I2.class) {
                Object[] objArr = f1420new;
                if (objArr != null) {
                    this.f1424do = objArr;
                    f1420new = (Object[]) objArr[0];
                    this.f1423do = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f1421try--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (I2.class) {
                Object[] objArr2 = f1416for;
                if (objArr2 != null) {
                    this.f1424do = objArr2;
                    f1416for = (Object[]) objArr2[0];
                    this.f1423do = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f1419new--;
                    return;
                }
            }
        }
        this.f1423do = new int[i];
        this.f1424do = new Object[i];
    }

    public I2(int i) {
        if (i == 0) {
            this.f1423do = f1417if;
            this.f1424do = f1418if;
        } else {
            m908try(i);
        }
        this.f1425for = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f1425for) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1425for));
        }
        System.arraycopy(this.f1424do, 0, tArr, 0, this.f1425for);
        int length = tArr.length;
        int i = this.f1425for;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }
}
