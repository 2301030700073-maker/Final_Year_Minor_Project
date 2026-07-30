package defpackage;

import java.io.OutputStream;

/* renamed from: xv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4006xv implements InterfaceC3908wE {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ OutputStream f16651do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3675sH f16652do;

    public C4006xv(OutputStream outputStream, C4124zv c4124zv) {
        this.f16652do = c4124zv;
        this.f16651do = outputStream;
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16651do.close();
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Flushable
    public final void flush() {
        this.f16651do.flush();
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: super */
    public final void mo1111super(U5 u5, long j) {
        TJ.m2240do(u5.f3826do, 0L, j);
        while (j > 0) {
            this.f16652do.mo8081case();
            VB vb = u5.f3827do;
            int min = (int) Math.min(j, vb.f4053if - vb.f4049do);
            this.f16651do.write(vb.f4052do, vb.f4049do, min);
            int i = vb.f4049do + min;
            vb.f4049do = i;
            long j2 = min;
            j -= j2;
            u5.f3826do -= j2;
            if (i == vb.f4053if) {
                u5.f3827do = vb.m2547do();
                XB.m2797do(vb);
            }
        }
    }

    public final String toString() {
        return "sink(" + this.f16651do + ")";
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: try */
    public final C3675sH mo1112try() {
        return this.f16652do;
    }
}
