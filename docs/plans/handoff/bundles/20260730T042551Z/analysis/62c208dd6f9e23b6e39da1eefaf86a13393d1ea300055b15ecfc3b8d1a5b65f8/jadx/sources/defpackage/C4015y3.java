package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* renamed from: y3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4015y3 extends AbstractC0533Ub.Cnew {

    /* renamed from: do, reason: not valid java name */
    public final String f16674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Cnew.Cdo> f16675do;

    public C4015y3(List list, String str) {
        this.f16675do = list;
        this.f16674do = str;
    }

    @Override // defpackage.AbstractC0533Ub.Cnew
    /* renamed from: do */
    public final List<AbstractC0533Ub.Cnew.Cdo> mo2453do() {
        return this.f16675do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Cnew)) {
            return false;
        }
        AbstractC0533Ub.Cnew cnew = (AbstractC0533Ub.Cnew) obj;
        if (this.f16675do.equals(cnew.mo2453do())) {
            String str = this.f16674do;
            if (str == null) {
                if (cnew.mo2454if() == null) {
                    return true;
                }
            } else if (str.equals(cnew.mo2454if())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f16675do.hashCode() ^ 1000003) * 1000003;
        String str = this.f16674do;
        return hashCode ^ (str == null ? 0 : str.hashCode());
    }

    @Override // defpackage.AbstractC0533Ub.Cnew
    /* renamed from: if */
    public final String mo2454if() {
        return this.f16674do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FilesPayload{files=");
        sb.append(this.f16675do);
        sb.append(", orgId=");
        return Creturn.m7984try(sb, this.f16674do, "}");
    }
}
