package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class Y3 extends AbstractC0582Wg {

    /* renamed from: do, reason: not valid java name */
    public final byte[] f4638do;

    /* renamed from: if, reason: not valid java name */
    public final byte[] f4639if;

    public Y3(byte[] bArr, byte[] bArr2) {
        this.f4638do = bArr;
        this.f4639if = bArr2;
    }

    @Override // defpackage.AbstractC0582Wg
    /* renamed from: do */
    public final byte[] mo2744do() {
        return this.f4638do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0582Wg)) {
            return false;
        }
        AbstractC0582Wg abstractC0582Wg = (AbstractC0582Wg) obj;
        boolean z = abstractC0582Wg instanceof Y3;
        if (Arrays.equals(this.f4638do, z ? ((Y3) abstractC0582Wg).f4638do : abstractC0582Wg.mo2744do())) {
            if (Arrays.equals(this.f4639if, z ? ((Y3) abstractC0582Wg).f4639if : abstractC0582Wg.mo2745if())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Arrays.hashCode(this.f4638do) ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f4639if);
    }

    @Override // defpackage.AbstractC0582Wg
    /* renamed from: if */
    public final byte[] mo2745if() {
        return this.f4639if;
    }

    public final String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f4638do) + ", encryptedBlob=" + Arrays.toString(this.f4639if) + "}";
    }
}
