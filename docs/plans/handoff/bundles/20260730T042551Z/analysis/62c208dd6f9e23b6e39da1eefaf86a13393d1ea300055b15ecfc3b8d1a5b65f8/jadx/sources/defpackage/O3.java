package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class O3 extends AbstractC0533Ub.Ctry.Cnew.AbstractC0017new {

    /* renamed from: do, reason: not valid java name */
    public final String f2522do;

    public O3(String str) {
        this.f2522do = str;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Cnew.AbstractC0017new
    /* renamed from: do, reason: not valid java name */
    public final String mo1595do() {
        return this.f2522do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0533Ub.Ctry.Cnew.AbstractC0017new) {
            return this.f2522do.equals(((AbstractC0533Ub.Ctry.Cnew.AbstractC0017new) obj).mo1595do());
        }
        return false;
    }

    public final int hashCode() {
        return this.f2522do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return Creturn.m7984try(new StringBuilder("Log{content="), this.f2522do, "}");
    }
}
