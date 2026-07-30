package defpackage;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class K2 implements InterfaceC3908wE {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ M2 f1748do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3908wE f1749do;

    public K2(C4124zv c4124zv, C4006xv c4006xv) {
        this.f1748do = c4124zv;
        this.f1749do = c4006xv;
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        M2 m2 = this.f1748do;
        m2.m1385this();
        try {
            try {
                this.f1749do.close();
                m2.m1381catch(true);
            } catch (IOException e) {
                throw m2.m1380break(e);
            }
        } catch (Throwable th) {
            m2.m1381catch(false);
            throw th;
        }
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Flushable
    public final void flush() {
        M2 m2 = this.f1748do;
        m2.m1385this();
        try {
            try {
                this.f1749do.flush();
                m2.m1381catch(true);
            } catch (IOException e) {
                throw m2.m1380break(e);
            }
        } catch (Throwable th) {
            m2.m1381catch(false);
            throw th;
        }
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: super, reason: not valid java name */
    public final void mo1111super(U5 u5, long j) {
        TJ.m2240do(u5.f3826do, 0L, j);
        while (true) {
            long j2 = 0;
            if (j <= 0) {
                return;
            }
            VB vb = u5.f3827do;
            while (true) {
                if (j2 >= 65536) {
                    break;
                }
                j2 += vb.f4053if - vb.f4049do;
                if (j2 >= j) {
                    j2 = j;
                    break;
                }
                vb = vb.f4050do;
            }
            M2 m2 = this.f1748do;
            m2.m1385this();
            try {
                try {
                    this.f1749do.mo1111super(u5, j2);
                    j -= j2;
                    m2.m1381catch(true);
                } catch (IOException e) {
                    throw m2.m1380break(e);
                }
            } catch (Throwable th) {
                m2.m1381catch(false);
                throw th;
            }
        }
    }

    public final String toString() {
        return "AsyncTimeout.sink(" + this.f1749do + ")";
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: try, reason: not valid java name */
    public final C3675sH mo1112try() {
        return this.f1748do;
    }
}
