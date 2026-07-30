package b.d;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class i implements Collection, Set {

    /* renamed from: d, reason: collision with root package name */
    public static Object[] f635d;
    public static int e;
    public static Object[] f;
    public static int g;
    public static final Object h = new Object();
    public static final Object i = new Object();

    /* renamed from: a, reason: collision with root package name */
    public int[] f636a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f637b;

    /* renamed from: c, reason: collision with root package name */
    public int f638c;

    public i(int i2) {
        if (i2 == 0) {
            this.f636a = j.f639a;
            this.f637b = j.f641c;
        } else {
            g(i2);
        }
        this.f638c = 0;
    }

    public static void h(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (i) {
                if (g < 10) {
                    objArr[0] = f;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f = objArr;
                    g++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (h) {
                if (e < 10) {
                    objArr[0] = f635d;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f635d = objArr;
                    e++;
                }
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        int i2;
        int i3;
        int i4 = this.f638c;
        if (obj == null) {
            i3 = j();
            i2 = 0;
        } else {
            int hashCode = obj.hashCode();
            i2 = hashCode;
            i3 = i(obj, hashCode);
        }
        if (i3 >= 0) {
            return false;
        }
        int i5 = ~i3;
        if (i4 >= this.f636a.length) {
            int i6 = 4;
            if (i4 >= 8) {
                i6 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i6 = 8;
            }
            int[] iArr = this.f636a;
            Object[] objArr = this.f637b;
            g(i6);
            if (i4 != this.f638c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f636a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f637b, 0, objArr.length);
            }
            h(iArr, objArr, i4);
        }
        if (i5 < i4) {
            int[] iArr3 = this.f636a;
            int i7 = i5 + 1;
            int i8 = i4 - i5;
            System.arraycopy(iArr3, i5, iArr3, i7, i8);
            Object[] objArr2 = this.f637b;
            System.arraycopy(objArr2, i5, objArr2, i7, i8);
        }
        int i9 = this.f638c;
        if (i4 == i9) {
            int[] iArr4 = this.f636a;
            if (i5 < iArr4.length) {
                iArr4[i5] = i2;
                this.f637b[i5] = obj;
                this.f638c = i9 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection collection) {
        int size = collection.size() + this.f638c;
        int i2 = this.f638c;
        int[] iArr = this.f636a;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f637b;
            g(size);
            int i3 = this.f638c;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f636a, 0, i3);
                System.arraycopy(objArr, 0, this.f637b, 0, this.f638c);
            }
            h(iArr, objArr, this.f638c);
        }
        if (this.f638c != i2) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f638c;
        if (i2 != 0) {
            int[] iArr = this.f636a;
            Object[] objArr = this.f637b;
            this.f636a = j.f639a;
            this.f637b = j.f641c;
            this.f638c = 0;
            h(iArr, objArr, i2);
        }
        if (this.f638c != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return (obj == null ? j() : i(obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f638c != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f638c; i2++) {
                try {
                    if (!set.contains(this.f637b[i2])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public final void g(int i2) {
        if (i2 == 8) {
            synchronized (i) {
                if (f != null) {
                    Object[] objArr = f;
                    try {
                        this.f637b = objArr;
                        f = (Object[]) objArr[0];
                        int[] iArr = (int[]) objArr[1];
                        this.f636a = iArr;
                        if (iArr != null) {
                            objArr[1] = null;
                            objArr[0] = null;
                            g--;
                            return;
                        }
                    } catch (ClassCastException unused) {
                    }
                    System.out.println("ArraySet Found corrupt ArraySet cache: [0]=" + objArr[0] + " [1]=" + objArr[1]);
                    f = null;
                    g = 0;
                }
            }
        } else if (i2 == 4) {
            synchronized (h) {
                if (f635d != null) {
                    Object[] objArr2 = f635d;
                    try {
                        this.f637b = objArr2;
                        f635d = (Object[]) objArr2[0];
                        int[] iArr2 = (int[]) objArr2[1];
                        this.f636a = iArr2;
                        if (iArr2 != null) {
                            objArr2[1] = null;
                            objArr2[0] = null;
                            e--;
                            return;
                        }
                    } catch (ClassCastException unused2) {
                    }
                    System.out.println("ArraySet Found corrupt ArraySet cache: [0]=" + objArr2[0] + " [1]=" + objArr2[1]);
                    f635d = null;
                    e = 0;
                }
            }
        }
        this.f636a = new int[i2];
        this.f637b = new Object[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f636a;
        int i2 = this.f638c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public final int i(Object obj, int i2) {
        int i3 = this.f638c;
        if (i3 == 0) {
            return -1;
        }
        try {
            int a2 = j.a(this.f636a, i3, i2);
            if (a2 < 0 || obj.equals(this.f637b[a2])) {
                return a2;
            }
            int i4 = a2 + 1;
            while (i4 < i3 && this.f636a[i4] == i2) {
                if (obj.equals(this.f637b[i4])) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = a2 - 1; i5 >= 0 && this.f636a[i5] == i2; i5--) {
                if (obj.equals(this.f637b[i5])) {
                    return i5;
                }
            }
            return ~i4;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f638c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new h(this);
    }

    public final int j() {
        int i2 = this.f638c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int a2 = j.a(this.f636a, i2, 0);
            if (a2 < 0 || this.f637b[a2] == null) {
                return a2;
            }
            int i3 = a2 + 1;
            while (i3 < i2 && this.f636a[i3] == 0) {
                if (this.f637b[i3] == null) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a2 - 1; i4 >= 0 && this.f636a[i4] == 0; i4--) {
                if (this.f637b[i4] == null) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public Object k(int i2) {
        int i3 = this.f638c;
        Object obj = this.f637b[i2];
        if (i3 <= 1) {
            clear();
        } else {
            int i4 = i3 - 1;
            int[] iArr = this.f636a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i2 < i4) {
                    int[] iArr2 = this.f636a;
                    int i5 = i2 + 1;
                    int i6 = i4 - i2;
                    System.arraycopy(iArr2, i5, iArr2, i2, i6);
                    Object[] objArr = this.f637b;
                    System.arraycopy(objArr, i5, objArr, i2, i6);
                }
                this.f637b[i4] = null;
            } else {
                int i7 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.f636a;
                Object[] objArr2 = this.f637b;
                g(i7);
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.f636a, 0, i2);
                    System.arraycopy(objArr2, 0, this.f637b, 0, i2);
                }
                if (i2 < i4) {
                    int i8 = i2 + 1;
                    int i9 = i4 - i2;
                    System.arraycopy(iArr3, i8, this.f636a, i2, i9);
                    System.arraycopy(objArr2, i8, this.f637b, i2, i9);
                }
            }
            if (i3 != this.f638c) {
                throw new ConcurrentModificationException();
            }
            this.f638c = i4;
        }
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int j = obj == null ? j() : i(obj, obj.hashCode());
        if (j < 0) {
            return false;
        }
        k(j);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection collection) {
        boolean z = false;
        for (int i2 = this.f638c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f637b[i2])) {
                k(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f638c;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.f638c;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f637b, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f638c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f638c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.f637b[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f638c) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f638c);
        }
        System.arraycopy(this.f637b, 0, objArr, 0, this.f638c);
        int length = objArr.length;
        int i2 = this.f638c;
        if (length > i2) {
            objArr[i2] = null;
        }
        return objArr;
    }
}
