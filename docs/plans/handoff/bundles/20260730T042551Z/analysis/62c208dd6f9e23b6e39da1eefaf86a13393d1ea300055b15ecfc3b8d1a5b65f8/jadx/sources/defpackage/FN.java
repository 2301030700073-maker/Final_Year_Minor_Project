package defpackage;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class FN extends BN implements Set, j$.util.Set {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f1047for = 0;

    /* renamed from: do, reason: not valid java name */
    public transient EN f1048do;

    /* renamed from: break, reason: not valid java name */
    public void mo612break() {
        throw null;
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FN) {
            ((FN) obj).mo612break();
            if (obj.hashCode() != 0) {
                return false;
            }
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract CN iterator();
}
