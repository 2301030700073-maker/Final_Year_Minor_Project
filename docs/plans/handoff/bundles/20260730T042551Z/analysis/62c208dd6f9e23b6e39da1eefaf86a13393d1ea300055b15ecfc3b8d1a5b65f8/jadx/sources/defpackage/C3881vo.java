package defpackage;

/* renamed from: vo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3881vo extends C3763to {

    /* renamed from: do, reason: not valid java name */
    public static final C3881vo f16122do = new C3881vo(1, 0);

    public C3881vo(int i, int i2) {
        super(i, i2, 1);
    }

    @Override // defpackage.C3763to
    public final boolean equals(Object obj) {
        if (obj instanceof C3881vo) {
            if (!isEmpty() || !((C3881vo) obj).isEmpty()) {
                C3881vo c3881vo = (C3881vo) obj;
                if (this.f15768for == c3881vo.f15768for) {
                    if (this.f15769new == c3881vo.f15769new) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.C3763to
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f15768for * 31) + this.f15769new;
    }

    @Override // defpackage.C3763to
    public final boolean isEmpty() {
        return this.f15768for > this.f15769new;
    }

    @Override // defpackage.C3763to
    public final String toString() {
        return this.f15768for + ".." + this.f15769new;
    }
}
