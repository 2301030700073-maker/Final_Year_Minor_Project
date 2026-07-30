package defpackage;

import defpackage.C3997xm;

/* renamed from: yj, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC4053yj implements KE {

    /* renamed from: do, reason: not valid java name */
    public final KE f16822do;

    public AbstractC4053yj(C3997xm.Cif cif) {
        if (cif == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f16822do = cif;
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f16822do.close();
    }

    public final String toString() {
        return getClass().getSimpleName() + "(" + this.f16822do.toString() + ")";
    }

    @Override // defpackage.KE
    /* renamed from: try */
    public final C3675sH mo632try() {
        return this.f16822do.mo632try();
    }
}
