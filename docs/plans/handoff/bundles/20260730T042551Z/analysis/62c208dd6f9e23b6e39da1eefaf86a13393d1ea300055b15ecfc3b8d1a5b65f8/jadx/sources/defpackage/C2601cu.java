package defpackage;

import java.io.Serializable;

/* renamed from: cu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2601cu extends AbstractC3182jw<Comparable<?>> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public static final C2601cu f12393do = new C2601cu();

    private Object readResolve() {
        return f12393do;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
