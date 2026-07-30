package defpackage;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class L2 implements KE {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ KE f1909do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ M2 f1910do;

    public L2(C4124zv c4124zv, C4065yv c4065yv) {
        this.f1910do = c4124zv;
        this.f1909do = c4065yv;
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        M2 m2 = this.f1910do;
        try {
            try {
                this.f1909do.close();
                m2.m1381catch(true);
            } catch (IOException e) {
                throw m2.m1380break(e);
            }
        } catch (Throwable th) {
            m2.m1381catch(false);
            throw th;
        }
    }

    @Override // defpackage.KE
    /* renamed from: throw */
    public final long mo631throw(U5 u5, long j) {
        M2 m2 = this.f1910do;
        m2.m1385this();
        try {
            try {
                long mo631throw = this.f1909do.mo631throw(u5, j);
                m2.m1381catch(true);
                return mo631throw;
            } catch (IOException e) {
                throw m2.m1380break(e);
            }
        } catch (Throwable th) {
            m2.m1381catch(false);
            throw th;
        }
    }

    public final String toString() {
        return "AsyncTimeout.source(" + this.f1909do + ")";
    }

    @Override // defpackage.KE
    /* renamed from: try */
    public final C3675sH mo632try() {
        return this.f1910do;
    }
}
