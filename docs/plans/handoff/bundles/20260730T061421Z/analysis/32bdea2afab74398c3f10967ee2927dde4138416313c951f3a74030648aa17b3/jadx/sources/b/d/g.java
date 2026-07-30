package b.d;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class g extends n implements Map {
    public a h;
    public c i;
    public e j;

    public static boolean k(Set set, Object obj) {
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

    @Override // java.util.Map
    public Set entrySet() {
        a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(this);
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.Map
    public Set keySet() {
        c cVar = this.i;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(this);
        this.i = cVar2;
        return cVar2;
    }

    public boolean l(Collection collection) {
        int i = this.f656c;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (!collection.contains(g(i2))) {
                h(i2);
            }
        }
        return i != this.f656c;
    }

    public Object[] m(Object[] objArr, int i) {
        int i2 = this.f656c;
        if (objArr.length < i2) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = this.f655b[(i3 << 1) + i];
        }
        if (objArr.length > i2) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        int size = map.size() + this.f656c;
        int i = this.f656c;
        int[] iArr = this.f654a;
        if (iArr.length < size) {
            Object[] objArr = this.f655b;
            a(size);
            if (this.f656c > 0) {
                System.arraycopy(iArr, 0, this.f654a, 0, i);
                System.arraycopy(objArr, 0, this.f655b, 0, i << 1);
            }
            n.b(iArr, objArr, i);
        }
        if (this.f656c != i) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection values() {
        e eVar = this.j;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(this);
        this.j = eVar2;
        return eVar2;
    }
}
