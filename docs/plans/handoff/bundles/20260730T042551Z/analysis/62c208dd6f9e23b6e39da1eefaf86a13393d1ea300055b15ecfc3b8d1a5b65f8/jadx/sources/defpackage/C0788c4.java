package defpackage;

import defpackage.InterfaceC0712ao;

/* renamed from: c4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0788c4 extends InterfaceC0712ao.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final String f8483do;

    /* renamed from: for, reason: not valid java name */
    public final String f8484for;

    /* renamed from: if, reason: not valid java name */
    public final String f8485if;

    public C0788c4(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null crashlyticsInstallId");
        }
        this.f8483do = str;
        this.f8485if = str2;
        this.f8484for = str3;
    }

    @Override // defpackage.InterfaceC0712ao.Cdo
    /* renamed from: do */
    public final String mo4760do() {
        return this.f8483do;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InterfaceC0712ao.Cdo)) {
            return false;
        }
        InterfaceC0712ao.Cdo cdo = (InterfaceC0712ao.Cdo) obj;
        if (this.f8483do.equals(cdo.mo4760do()) && ((str = this.f8485if) != null ? str.equals(cdo.mo4761for()) : cdo.mo4761for() == null)) {
            String str2 = this.f8484for;
            if (str2 == null) {
                if (cdo.mo4762if() == null) {
                    return true;
                }
            } else if (str2.equals(cdo.mo4762if())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.InterfaceC0712ao.Cdo
    /* renamed from: for */
    public final String mo4761for() {
        return this.f8485if;
    }

    public final int hashCode() {
        int hashCode = (this.f8483do.hashCode() ^ 1000003) * 1000003;
        String str = this.f8485if;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f8484for;
        return hashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    @Override // defpackage.InterfaceC0712ao.Cdo
    /* renamed from: if */
    public final String mo4762if() {
        return this.f8484for;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallIds{crashlyticsInstallId=");
        sb.append(this.f8483do);
        sb.append(", firebaseInstallationId=");
        sb.append(this.f8485if);
        sb.append(", firebaseAuthenticationToken=");
        return Creturn.m7984try(sb, this.f8484for, "}");
    }
}
