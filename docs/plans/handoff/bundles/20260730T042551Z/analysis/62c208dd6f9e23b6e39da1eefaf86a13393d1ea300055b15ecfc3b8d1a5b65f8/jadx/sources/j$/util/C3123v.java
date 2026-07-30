package j$.util;

/* renamed from: j$.util.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C3123v extends C2986m implements java.util.Set, Set {
    private static final long serialVersionUID = -9215047833775013803L;

    C3123v(java.util.Set set) {
        super(set);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public boolean equals(Object obj) {
        return obj == this || this.a.equals(obj);
    }

    @Override // java.util.Collection, j$.util.Collection, java.util.List, j$.util.List
    public final int hashCode() {
        return this.a.hashCode();
    }
}
