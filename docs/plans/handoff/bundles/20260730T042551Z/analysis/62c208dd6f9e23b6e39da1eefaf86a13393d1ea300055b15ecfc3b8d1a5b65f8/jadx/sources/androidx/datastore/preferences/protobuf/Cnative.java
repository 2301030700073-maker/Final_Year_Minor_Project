package androidx.datastore.preferences.protobuf;

import defpackage.AbstractC3370n6;

/* renamed from: androidx.datastore.preferences.protobuf.native, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnative {

    /* renamed from: do, reason: not valid java name */
    public volatile Cfinally f6609do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile AbstractC3370n6 f6610do;

    static {
        Cthis.m3994do();
    }

    /* renamed from: do, reason: not valid java name */
    public final Cfinally m3945do(Cfinally cfinally) {
        if (this.f6609do == null) {
            synchronized (this) {
                if (this.f6609do == null) {
                    try {
                        this.f6609do = cfinally;
                        this.f6610do = AbstractC3370n6.f14461do;
                    } catch (Cwhile unused) {
                        this.f6609do = cfinally;
                        this.f6610do = AbstractC3370n6.f14461do;
                    }
                }
            }
        }
        return this.f6609do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cnative)) {
            return false;
        }
        Cnative cnative = (Cnative) obj;
        Cfinally cfinally = this.f6609do;
        Cfinally cfinally2 = cnative.f6609do;
        return (cfinally == null && cfinally2 == null) ? m3946if().equals(cnative.m3946if()) : (cfinally == null || cfinally2 == null) ? cfinally != null ? cfinally.equals(cnative.m3945do(cfinally.mo2293try())) : m3945do(cfinally2.mo2293try()).equals(cfinally2) : cfinally.equals(cfinally2);
    }

    public int hashCode() {
        return 1;
    }

    /* renamed from: if, reason: not valid java name */
    public final AbstractC3370n6 m3946if() {
        if (this.f6610do != null) {
            return this.f6610do;
        }
        synchronized (this) {
            if (this.f6610do != null) {
                return this.f6610do;
            }
            if (this.f6609do == null) {
                this.f6610do = AbstractC3370n6.f14461do;
            } else {
                this.f6610do = this.f6609do.mo3845if();
            }
            return this.f6610do;
        }
    }
}
