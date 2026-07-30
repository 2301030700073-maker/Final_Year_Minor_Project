package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.Arrays;

/* renamed from: z3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4074z3 extends AbstractC0533Ub.Cnew.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final String f16852do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f16853do;

    public C4074z3(String str, byte[] bArr) {
        this.f16852do = str;
        this.f16853do = bArr;
    }

    @Override // defpackage.AbstractC0533Ub.Cnew.Cdo
    /* renamed from: do */
    public final byte[] mo2455do() {
        return this.f16853do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Cnew.Cdo)) {
            return false;
        }
        AbstractC0533Ub.Cnew.Cdo cdo = (AbstractC0533Ub.Cnew.Cdo) obj;
        if (this.f16852do.equals(cdo.mo2456if())) {
            if (Arrays.equals(this.f16853do, cdo instanceof C4074z3 ? ((C4074z3) cdo).f16853do : cdo.mo2455do())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f16852do.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f16853do);
    }

    @Override // defpackage.AbstractC0533Ub.Cnew.Cdo
    /* renamed from: if */
    public final String mo2456if() {
        return this.f16852do;
    }

    public final String toString() {
        return "File{filename=" + this.f16852do + ", contents=" + Arrays.toString(this.f16853do) + "}";
    }
}
