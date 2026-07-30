package defpackage;

import java.util.Arrays;

/* renamed from: n3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3367n3 extends E4 {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<AbstractC3696sg> f14435do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f14436do;

    public C3367n3() {
        throw null;
    }

    public C3367n3(Iterable iterable, byte[] bArr) {
        this.f14435do = iterable;
        this.f14436do = bArr;
    }

    @Override // defpackage.E4
    /* renamed from: do */
    public final Iterable<AbstractC3696sg> mo433do() {
        return this.f14435do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof E4)) {
            return false;
        }
        E4 e4 = (E4) obj;
        if (this.f14435do.equals(e4.mo433do())) {
            if (Arrays.equals(this.f14436do, e4 instanceof C3367n3 ? ((C3367n3) e4).f14436do : e4.mo434if())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f14435do.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14436do);
    }

    @Override // defpackage.E4
    /* renamed from: if */
    public final byte[] mo434if() {
        return this.f14436do;
    }

    public final String toString() {
        return "BackendRequest{events=" + this.f14435do + ", extras=" + Arrays.toString(this.f14436do) + "}";
    }
}
