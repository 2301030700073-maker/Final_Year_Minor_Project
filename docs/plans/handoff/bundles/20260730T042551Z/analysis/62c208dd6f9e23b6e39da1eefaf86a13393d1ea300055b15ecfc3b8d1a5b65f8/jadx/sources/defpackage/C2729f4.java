package defpackage;

/* renamed from: f4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2729f4 extends AbstractC0657Zp {

    /* renamed from: do, reason: not valid java name */
    public final String f12827do;

    /* renamed from: if, reason: not valid java name */
    public final String f12828if;

    public C2729f4(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f12827do = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f12828if = str2;
    }

    @Override // defpackage.AbstractC0657Zp
    /* renamed from: do */
    public final String mo3067do() {
        return this.f12827do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0657Zp)) {
            return false;
        }
        AbstractC0657Zp abstractC0657Zp = (AbstractC0657Zp) obj;
        return this.f12827do.equals(abstractC0657Zp.mo3067do()) && this.f12828if.equals(abstractC0657Zp.mo3068if());
    }

    public final int hashCode() {
        return ((this.f12827do.hashCode() ^ 1000003) * 1000003) ^ this.f12828if.hashCode();
    }

    @Override // defpackage.AbstractC0657Zp
    /* renamed from: if */
    public final String mo3068if() {
        return this.f12828if;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f12827do);
        sb.append(", version=");
        return Creturn.m7984try(sb, this.f12828if, "}");
    }
}
