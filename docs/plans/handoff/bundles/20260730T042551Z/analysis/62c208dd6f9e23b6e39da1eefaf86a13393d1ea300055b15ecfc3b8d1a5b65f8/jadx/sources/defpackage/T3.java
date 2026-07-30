package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class T3 extends AbstractC0533Ub.Ctry.Ccase {

    /* renamed from: do, reason: not valid java name */
    public final String f3589do;

    public T3(String str) {
        this.f3589do = str;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.Ccase
    /* renamed from: do, reason: not valid java name */
    public final String mo2213do() {
        return this.f3589do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0533Ub.Ctry.Ccase) {
            return this.f3589do.equals(((AbstractC0533Ub.Ctry.Ccase) obj).mo2213do());
        }
        return false;
    }

    public final int hashCode() {
        return this.f3589do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return Creturn.m7984try(new StringBuilder("User{identifier="), this.f3589do, "}");
    }
}
