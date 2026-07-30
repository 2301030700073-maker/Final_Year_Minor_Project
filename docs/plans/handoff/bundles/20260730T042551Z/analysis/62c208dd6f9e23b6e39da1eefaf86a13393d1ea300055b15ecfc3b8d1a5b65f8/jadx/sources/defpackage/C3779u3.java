package defpackage;

import java.io.File;

/* renamed from: u3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3779u3 extends AbstractC0700ac {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub f15846do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final File f15847do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15848do;

    public C3779u3(C3720t3 c3720t3, String str, File file) {
        this.f15846do = c3720t3;
        if (str == null) {
            throw new NullPointerException("Null sessionId");
        }
        this.f15848do = str;
        if (file == null) {
            throw new NullPointerException("Null reportFile");
        }
        this.f15847do = file;
    }

    @Override // defpackage.AbstractC0700ac
    /* renamed from: do */
    public final AbstractC0533Ub mo3134do() {
        return this.f15846do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0700ac)) {
            return false;
        }
        AbstractC0700ac abstractC0700ac = (AbstractC0700ac) obj;
        return this.f15846do.equals(abstractC0700ac.mo3134do()) && this.f15848do.equals(abstractC0700ac.mo3135for()) && this.f15847do.equals(abstractC0700ac.mo3136if());
    }

    @Override // defpackage.AbstractC0700ac
    /* renamed from: for */
    public final String mo3135for() {
        return this.f15848do;
    }

    public final int hashCode() {
        return ((((this.f15846do.hashCode() ^ 1000003) * 1000003) ^ this.f15848do.hashCode()) * 1000003) ^ this.f15847do.hashCode();
    }

    @Override // defpackage.AbstractC0700ac
    /* renamed from: if */
    public final File mo3136if() {
        return this.f15847do;
    }

    public final String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f15846do + ", sessionId=" + this.f15848do + ", reportFile=" + this.f15847do + "}";
    }
}
