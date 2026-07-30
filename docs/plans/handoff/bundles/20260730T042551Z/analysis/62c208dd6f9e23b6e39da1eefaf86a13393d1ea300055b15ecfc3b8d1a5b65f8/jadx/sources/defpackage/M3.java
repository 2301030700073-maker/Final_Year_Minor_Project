package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class M3 extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor {

    /* renamed from: do, reason: not valid java name */
    public final int f2085do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2086do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f2087do;

    /* renamed from: if, reason: not valid java name */
    public final int f2088if;

    /* renamed from: M3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor.AbstractC0011do {

        /* renamed from: do, reason: not valid java name */
        public byte f2089do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f2090do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f2091do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f2092do;

        /* renamed from: if, reason: not valid java name */
        public int f2093if;

        /* renamed from: do, reason: not valid java name */
        public final M3 m1390do() {
            String str;
            if (this.f2089do == 7 && (str = this.f2091do) != null) {
                return new M3(str, this.f2090do, this.f2093if, this.f2092do);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f2091do == null) {
                sb.append(" processName");
            }
            if ((this.f2089do & 1) == 0) {
                sb.append(" pid");
            }
            if ((this.f2089do & 2) == 0) {
                sb.append(" importance");
            }
            if ((this.f2089do & 4) == 0) {
                sb.append(" defaultProcess");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public M3(String str, int i, int i2, boolean z) {
        this.f2086do = str;
        this.f2085do = i;
        this.f2088if = i2;
        this.f2087do = z;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor
    /* renamed from: do, reason: not valid java name */
    public final int mo1386do() {
        return this.f2088if;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor)) {
            return false;
        }
        AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor cfor = (AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor) obj;
        return this.f2086do.equals(cfor.mo1387for()) && this.f2085do == cfor.mo1388if() && this.f2088if == cfor.mo1386do() && this.f2087do == cfor.mo1389new();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor
    /* renamed from: for, reason: not valid java name */
    public final String mo1387for() {
        return this.f2086do;
    }

    public final int hashCode() {
        return ((((((this.f2086do.hashCode() ^ 1000003) * 1000003) ^ this.f2085do) * 1000003) ^ this.f2088if) * 1000003) ^ (this.f2087do ? 1231 : 1237);
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor
    /* renamed from: if, reason: not valid java name */
    public final int mo1388if() {
        return this.f2085do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor
    /* renamed from: new, reason: not valid java name */
    public final boolean mo1389new() {
        return this.f2087do;
    }

    public final String toString() {
        return "ProcessDetails{processName=" + this.f2086do + ", pid=" + this.f2085do + ", importance=" + this.f2088if + ", defaultProcess=" + this.f2087do + "}";
    }
}
