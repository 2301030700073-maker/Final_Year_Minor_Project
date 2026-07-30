package j$.util;

/* renamed from: j$.util.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2984k extends C2980g implements java.util.Set, Set {
    private static final long serialVersionUID = 487447009682186044L;

    C2984k(java.util.Set set) {
        super(set);
    }

    C2984k(java.util.Set set, Object obj) {
        super(set, obj);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        synchronized (this.b) {
            equals = this.a.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int hashCode() {
        int hashCode;
        synchronized (this.b) {
            hashCode = this.a.hashCode();
        }
        return hashCode;
    }
}
