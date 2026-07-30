package defpackage;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* renamed from: eE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C2680eE<K, V> {

    /* renamed from: for, reason: not valid java name */
    public static Object[] f12626for;

    /* renamed from: if, reason: not valid java name */
    public static Object[] f12627if;

    /* renamed from: new, reason: not valid java name */
    public static int f12628new;

    /* renamed from: try, reason: not valid java name */
    public static int f12629try;

    /* renamed from: do, reason: not valid java name */
    public int[] f12630do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object[] f12631do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f12632for;

    public C2680eE() {
        this.f12630do = C0315Kc.f1829do;
        this.f12631do = C0315Kc.f1830do;
        this.f12632for = 0;
    }

    /* renamed from: do, reason: not valid java name */
    private void m6522do(int i) {
        if (i == 8) {
            synchronized (C2680eE.class) {
                Object[] objArr = f12626for;
                if (objArr != null) {
                    this.f12631do = objArr;
                    f12626for = (Object[]) objArr[0];
                    this.f12630do = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f12629try--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C2680eE.class) {
                Object[] objArr2 = f12627if;
                if (objArr2 != null) {
                    this.f12631do = objArr2;
                    f12627if = (Object[]) objArr2[0];
                    this.f12630do = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f12628new--;
                    return;
                }
            }
        }
        this.f12630do = new int[i];
        this.f12631do = new Object[i << 1];
    }

    /* renamed from: for, reason: not valid java name */
    public static void m6523for(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C2680eE.class) {
                if (f12629try < 10) {
                    objArr[0] = f12626for;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f12626for = objArr;
                    f12629try++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (C2680eE.class) {
                if (f12628new < 10) {
                    objArr[0] = f12627if;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f12627if = objArr;
                    f12628new++;
                }
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final V m6524break(int i) {
        return (V) this.f12631do[(i << 1) + 1];
    }

    /* renamed from: case, reason: not valid java name */
    public final int m6525case() {
        int i = this.f12632for;
        if (i == 0) {
            return -1;
        }
        try {
            int m1166for = C0315Kc.m1166for(this.f12630do, i, 0);
            if (m1166for < 0) {
                return m1166for;
            }
            if (this.f12631do[m1166for << 1] == null) {
                return m1166for;
            }
            int i2 = m1166for + 1;
            while (i2 < i && this.f12630do[i2] == 0) {
                if (this.f12631do[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m1166for - 1; i3 >= 0 && this.f12630do[i3] == 0; i3--) {
                if (this.f12631do[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        int i = this.f12632for;
        if (i > 0) {
            int[] iArr = this.f12630do;
            Object[] objArr = this.f12631do;
            this.f12630do = C0315Kc.f1829do;
            this.f12631do = C0315Kc.f1830do;
            this.f12632for = 0;
            m6523for(iArr, objArr, i);
        }
        if (this.f12632for > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return m6531try(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return m6526else(obj) >= 0;
    }

    /* renamed from: else, reason: not valid java name */
    final int m6526else(Object obj) {
        int i = this.f12632for * 2;
        Object[] objArr = this.f12631do;
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2680eE) {
            C2680eE c2680eE = (C2680eE) obj;
            if (this.f12632for != c2680eE.f12632for) {
                return false;
            }
            for (int i = 0; i < this.f12632for; i++) {
                try {
                    K m6527goto = m6527goto(i);
                    V m6524break = m6524break(i);
                    Object orDefault = c2680eE.getOrDefault(m6527goto, null);
                    if (m6524break == null) {
                        if (orDefault != null || !c2680eE.containsKey(m6527goto)) {
                            return false;
                        }
                    } else if (!m6524break.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f12632for != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f12632for; i2++) {
                try {
                    K m6527goto2 = m6527goto(i2);
                    V m6524break2 = m6524break(i2);
                    Object obj2 = map.get(m6527goto2);
                    if (m6524break2 == null) {
                        if (obj2 != null || !map.containsKey(m6527goto2)) {
                            return false;
                        }
                    } else if (!m6524break2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final V getOrDefault(Object obj, V v) {
        int m6531try = m6531try(obj);
        return m6531try >= 0 ? (V) this.f12631do[(m6531try << 1) + 1] : v;
    }

    /* renamed from: goto, reason: not valid java name */
    public final K m6527goto(int i) {
        return (K) this.f12631do[i << 1];
    }

    public final int hashCode() {
        int[] iArr = this.f12630do;
        Object[] objArr = this.f12631do;
        int i = this.f12632for;
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

    /* renamed from: if, reason: not valid java name */
    public final void m6528if(int i) {
        int i2 = this.f12632for;
        int[] iArr = this.f12630do;
        if (iArr.length < i) {
            Object[] objArr = this.f12631do;
            m6522do(i);
            if (this.f12632for > 0) {
                System.arraycopy(iArr, 0, this.f12630do, 0, i2);
                System.arraycopy(objArr, 0, this.f12631do, 0, i2 << 1);
            }
            m6523for(iArr, objArr, i2);
        }
        if (this.f12632for != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean isEmpty() {
        return this.f12632for <= 0;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m6529new(int i, Object obj) {
        int i2 = this.f12632for;
        if (i2 == 0) {
            return -1;
        }
        try {
            int m1166for = C0315Kc.m1166for(this.f12630do, i2, i);
            if (m1166for < 0) {
                return m1166for;
            }
            if (obj.equals(this.f12631do[m1166for << 1])) {
                return m1166for;
            }
            int i3 = m1166for + 1;
            while (i3 < i2 && this.f12630do[i3] == i) {
                if (obj.equals(this.f12631do[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m1166for - 1; i4 >= 0 && this.f12630do[i4] == i; i4--) {
                if (obj.equals(this.f12631do[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final V put(K k, V v) {
        int i;
        int m6529new;
        int i2 = this.f12632for;
        if (k == null) {
            m6529new = m6525case();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            m6529new = m6529new(hashCode, k);
        }
        if (m6529new >= 0) {
            int i3 = (m6529new << 1) + 1;
            Object[] objArr = this.f12631do;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = ~m6529new;
        int[] iArr = this.f12630do;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.f12631do;
            m6522do(i5);
            if (i2 != this.f12632for) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f12630do;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f12631do, 0, objArr2.length);
            }
            m6523for(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f12630do;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f12631do;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f12632for - i4) << 1);
        }
        int i7 = this.f12632for;
        if (i2 == i7) {
            int[] iArr4 = this.f12630do;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f12631do;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f12632for = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final V putIfAbsent(K k, V v) {
        V orDefault = getOrDefault(k, null);
        return orDefault == null ? put(k, v) : orDefault;
    }

    public final V remove(Object obj) {
        int m6531try = m6531try(obj);
        if (m6531try >= 0) {
            return m6530this(m6531try);
        }
        return null;
    }

    public final V replace(K k, V v) {
        int m6531try = m6531try(k);
        if (m6531try < 0) {
            return null;
        }
        int i = (m6531try << 1) + 1;
        Object[] objArr = this.f12631do;
        V v2 = (V) objArr[i];
        objArr[i] = v;
        return v2;
    }

    public final int size() {
        return this.f12632for;
    }

    /* renamed from: this, reason: not valid java name */
    public final V m6530this(int i) {
        Object[] objArr = this.f12631do;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f12632for;
        int i4 = 0;
        if (i3 <= 1) {
            m6523for(this.f12630do, objArr, i3);
            this.f12630do = C0315Kc.f1829do;
            this.f12631do = C0315Kc.f1830do;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f12630do;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, iArr, i, i7);
                    Object[] objArr2 = this.f12631do;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.f12631do;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                m6522do(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.f12632for) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f12630do, 0, i);
                    System.arraycopy(objArr, 0, this.f12631do, 0, i2);
                }
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, this.f12630do, i, i10);
                    System.arraycopy(objArr, i9 << 1, this.f12631do, i2, i10 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.f12632for) {
            throw new ConcurrentModificationException();
        }
        this.f12632for = i4;
        return v;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f12632for * 28);
        sb.append('{');
        for (int i = 0; i < this.f12632for; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m6527goto = m6527goto(i);
            if (m6527goto != this) {
                sb.append(m6527goto);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m6524break = m6524break(i);
            if (m6524break != this) {
                sb.append(m6524break);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m6531try(Object obj) {
        return obj == null ? m6525case() : m6529new(obj.hashCode(), obj);
    }

    public final boolean remove(Object obj, Object obj2) {
        int m6531try = m6531try(obj);
        if (m6531try < 0) {
            return false;
        }
        V m6524break = m6524break(m6531try);
        if (obj2 != m6524break && (obj2 == null || !obj2.equals(m6524break))) {
            return false;
        }
        m6530this(m6531try);
        return true;
    }

    public final boolean replace(K k, V v, V v2) {
        int m6531try = m6531try(k);
        if (m6531try < 0) {
            return false;
        }
        V m6524break = m6524break(m6531try);
        if (m6524break != v && (v == null || !v.equals(m6524break))) {
            return false;
        }
        int i = (m6531try << 1) + 1;
        Object[] objArr = this.f12631do;
        Object obj = objArr[i];
        objArr[i] = v2;
        return true;
    }

    public C2680eE(int i) {
        if (i == 0) {
            this.f12630do = C0315Kc.f1829do;
            this.f12631do = C0315Kc.f1830do;
        } else {
            m6522do(i);
        }
        this.f12632for = 0;
    }

    public C2680eE(C2680eE<K, V> c2680eE) {
        this();
        if (c2680eE != null) {
            int i = c2680eE.f12632for;
            m6528if(this.f12632for + i);
            if (this.f12632for != 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    put(c2680eE.m6527goto(i2), c2680eE.m6524break(i2));
                }
            } else if (i > 0) {
                System.arraycopy(c2680eE.f12630do, 0, this.f12630do, 0, i);
                System.arraycopy(c2680eE.f12631do, 0, this.f12631do, 0, i << 1);
                this.f12632for = i;
            }
        }
    }
}
