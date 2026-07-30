package b.d;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class n {

    /* renamed from: d, reason: collision with root package name */
    public static Object[] f653d;
    public static int e;
    public static Object[] f;
    public static int g;

    /* renamed from: a, reason: collision with root package name */
    public int[] f654a = j.f639a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f655b = j.f641c;

    /* renamed from: c, reason: collision with root package name */
    public int f656c = 0;

    public static void b(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (n.class) {
                if (g < 10) {
                    objArr[0] = f;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f = objArr;
                    g++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (n.class) {
                if (e < 10) {
                    objArr[0] = f653d;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f653d = objArr;
                    e++;
                }
            }
        }
    }

    public final void a(int i) {
        if (i == 8) {
            synchronized (n.class) {
                if (f != null) {
                    Object[] objArr = f;
                    this.f655b = objArr;
                    f = (Object[]) objArr[0];
                    this.f654a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    g--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (n.class) {
                if (f653d != null) {
                    Object[] objArr2 = f653d;
                    this.f655b = objArr2;
                    f653d = (Object[]) objArr2[0];
                    this.f654a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    e--;
                    return;
                }
            }
        }
        this.f654a = new int[i];
        this.f655b = new Object[i << 1];
    }

    public int c(Object obj, int i) {
        int i2 = this.f656c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int a2 = j.a(this.f654a, i2, i);
            if (a2 < 0 || obj.equals(this.f655b[a2 << 1])) {
                return a2;
            }
            int i3 = a2 + 1;
            while (i3 < i2 && this.f654a[i3] == i) {
                if (obj.equals(this.f655b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = a2 - 1; i4 >= 0 && this.f654a[i4] == i; i4--) {
                if (obj.equals(this.f655b[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.f656c;
        if (i > 0) {
            int[] iArr = this.f654a;
            Object[] objArr = this.f655b;
            this.f654a = j.f639a;
            this.f655b = j.f641c;
            this.f656c = 0;
            b(iArr, objArr, i);
        }
        if (this.f656c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return f(obj) >= 0;
    }

    public int d(Object obj) {
        return obj == null ? e() : c(obj, obj.hashCode());
    }

    public int e() {
        int i = this.f656c;
        if (i == 0) {
            return -1;
        }
        try {
            int a2 = j.a(this.f654a, i, 0);
            if (a2 < 0 || this.f655b[a2 << 1] == null) {
                return a2;
            }
            int i2 = a2 + 1;
            while (i2 < i && this.f654a[i2] == 0) {
                if (this.f655b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = a2 - 1; i3 >= 0 && this.f654a[i3] == 0; i3--) {
                if (this.f655b[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.f656c != nVar.f656c) {
                return false;
            }
            for (int i = 0; i < this.f656c; i++) {
                Object g2 = g(i);
                Object j = j(i);
                Object obj2 = nVar.get(g2);
                if (j == null) {
                    if (obj2 != null || !nVar.containsKey(g2)) {
                        return false;
                    }
                } else if (!j.equals(obj2)) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f656c != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f656c; i2++) {
                Object g3 = g(i2);
                Object j2 = j(i2);
                Object obj3 = map.get(g3);
                if (j2 == null) {
                    if (obj3 != null || !map.containsKey(g3)) {
                        return false;
                    }
                } else if (!j2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int f(Object obj) {
        int i = this.f656c * 2;
        Object[] objArr = this.f655b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public Object g(int i) {
        return this.f655b[i << 1];
    }

    public Object get(Object obj) {
        return getOrDefault(obj, null);
    }

    public Object getOrDefault(Object obj, Object obj2) {
        int d2 = d(obj);
        return d2 >= 0 ? this.f655b[(d2 << 1) + 1] : obj2;
    }

    public Object h(int i) {
        int i2 = i << 1;
        Object obj = this.f655b[i2 + 1];
        int i3 = this.f656c;
        if (i3 <= 1) {
            clear();
        } else {
            int i4 = i3 - 1;
            int[] iArr = this.f654a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i4) {
                    int[] iArr2 = this.f654a;
                    int i5 = i + 1;
                    int i6 = i4 - i;
                    System.arraycopy(iArr2, i5, iArr2, i, i6);
                    Object[] objArr = this.f655b;
                    System.arraycopy(objArr, i5 << 1, objArr, i2, i6 << 1);
                }
                Object[] objArr2 = this.f655b;
                int i7 = i4 << 1;
                objArr2[i7] = null;
                objArr2[i7 + 1] = null;
            } else {
                int i8 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.f654a;
                Object[] objArr3 = this.f655b;
                a(i8);
                if (i3 != this.f656c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f654a, 0, i);
                    System.arraycopy(objArr3, 0, this.f655b, 0, i2);
                }
                if (i < i4) {
                    int i9 = i + 1;
                    int i10 = i4 - i;
                    System.arraycopy(iArr3, i9, this.f654a, i, i10);
                    System.arraycopy(objArr3, i9 << 1, this.f655b, i2, i10 << 1);
                }
            }
            if (i3 != this.f656c) {
                throw new ConcurrentModificationException();
            }
            this.f656c = i4;
        }
        return obj;
    }

    public int hashCode() {
        int[] iArr = this.f654a;
        Object[] objArr = this.f655b;
        int i = this.f656c;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public Object i(int i, Object obj) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f655b;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    public boolean isEmpty() {
        return this.f656c <= 0;
    }

    public Object j(int i) {
        return this.f655b[(i << 1) + 1];
    }

    public Object put(Object obj, Object obj2) {
        int i;
        int c2;
        int i2 = this.f656c;
        if (obj == null) {
            c2 = e();
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            c2 = c(obj, hashCode);
        }
        if (c2 >= 0) {
            int i3 = (c2 << 1) + 1;
            Object[] objArr = this.f655b;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~c2;
        if (i2 >= this.f654a.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f654a;
            Object[] objArr2 = this.f655b;
            a(i5);
            if (i2 != this.f656c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f654a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f655b, 0, objArr2.length);
            }
            b(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f654a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f655b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f656c - i4) << 1);
        }
        int i7 = this.f656c;
        if (i2 == i7) {
            int[] iArr4 = this.f654a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f655b;
                int i8 = i4 << 1;
                objArr4[i8] = obj;
                objArr4[i8 + 1] = obj2;
                this.f656c = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        Object orDefault = getOrDefault(obj, null);
        return orDefault == null ? put(obj, obj2) : orDefault;
    }

    public Object remove(Object obj) {
        int d2 = d(obj);
        if (d2 >= 0) {
            return h(d2);
        }
        return null;
    }

    public Object replace(Object obj, Object obj2) {
        int d2 = d(obj);
        if (d2 >= 0) {
            return i(d2, obj2);
        }
        return null;
    }

    public int size() {
        return this.f656c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f656c * 28);
        sb.append('{');
        for (int i = 0; i < this.f656c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object g2 = g(i);
            if (g2 != this) {
                sb.append(g2);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object j = j(i);
            if (j != this) {
                sb.append(j);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int d2 = d(obj);
        if (d2 < 0) {
            return false;
        }
        Object j = j(d2);
        if (obj2 != j && (obj2 == null || !obj2.equals(j))) {
            return false;
        }
        h(d2);
        return true;
    }

    public boolean replace(Object obj, Object obj2, Object obj3) {
        int d2 = d(obj);
        if (d2 < 0) {
            return false;
        }
        Object j = j(d2);
        if (j != obj2 && (obj2 == null || !obj2.equals(j))) {
            return false;
        }
        i(d2, obj3);
        return true;
    }
}
