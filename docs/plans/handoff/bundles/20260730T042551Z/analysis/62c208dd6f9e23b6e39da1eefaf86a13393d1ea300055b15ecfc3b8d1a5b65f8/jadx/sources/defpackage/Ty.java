package defpackage;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class Ty implements Z5 {

    /* renamed from: do, reason: not valid java name */
    public final U5 f3766do = new U5();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3908wE f3767do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3768do;

    public Ty(InterfaceC3908wE interfaceC3908wE) {
        this.f3767do = interfaceC3908wE;
    }

    @Override // defpackage.Z5
    public final Z5 c(int i) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        this.f3766do.m2338return(i);
        m2295do();
        return this;
    }

    @Override // defpackage.InterfaceC3908wE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InterfaceC3908wE interfaceC3908wE = this.f3767do;
        if (this.f3768do) {
            return;
        }
        try {
            U5 u5 = this.f3766do;
            long j = u5.f3826do;
            if (j > 0) {
                interfaceC3908wE.mo1111super(u5, j);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            interfaceC3908wE.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f3768do = true;
        if (th == null) {
            return;
        }
        Charset charset = TJ.f3645do;
        throw th;
    }

    /* renamed from: do, reason: not valid java name */
    public final Z5 m2295do() {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        U5 u5 = this.f3766do;
        long j = u5.f3826do;
        if (j == 0) {
            j = 0;
        } else {
            VB vb = u5.f3827do.f4054if;
            if (vb.f4053if < 8192 && vb.f4055if) {
                j -= r6 - vb.f4049do;
            }
        }
        if (j > 0) {
            this.f3767do.mo1111super(u5, j);
        }
        return this;
    }

    @Override // defpackage.Z5
    public final Z5 e(int i) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        this.f3766do.m2336package(i);
        m2295do();
        return this;
    }

    @Override // defpackage.Z5, defpackage.InterfaceC3908wE, java.io.Flushable
    public final void flush() {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        U5 u5 = this.f3766do;
        long j = u5.f3826do;
        InterfaceC3908wE interfaceC3908wE = this.f3767do;
        if (j > 0) {
            interfaceC3908wE.mo1111super(u5, j);
        }
        interfaceC3908wE.flush();
    }

    /* renamed from: if, reason: not valid java name */
    public final Z5 m2296if(byte[] bArr, int i, int i2) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        this.f3766do.write(bArr, i, i2);
        m2295do();
        return this;
    }

    @Override // defpackage.Z5
    /* renamed from: import, reason: not valid java name */
    public final Z5 mo2297import(long j) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        this.f3766do.m2343throws(j);
        m2295do();
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f3768do;
    }

    @Override // defpackage.Z5
    public final Z5 p(String str) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        U5 u5 = this.f3766do;
        u5.getClass();
        u5.m2340strictfp(0, str.length(), str);
        m2295do();
        return this;
    }

    @Override // defpackage.Z5
    /* renamed from: protected, reason: not valid java name */
    public final Z5 mo2298protected(byte[] bArr) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        U5 u5 = this.f3766do;
        u5.getClass();
        u5.write(bArr, 0, bArr.length);
        m2295do();
        return this;
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: super */
    public final void mo1111super(U5 u5, long j) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        this.f3766do.mo1111super(u5, j);
        m2295do();
    }

    public final String toString() {
        return "buffer(" + this.f3767do + ")";
    }

    @Override // defpackage.Z5
    /* renamed from: transient, reason: not valid java name */
    public final Z5 mo2299transient(int i) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        this.f3766do.m2329continue(i);
        m2295do();
        return this;
    }

    @Override // defpackage.InterfaceC3908wE
    /* renamed from: try */
    public final C3675sH mo1112try() {
        return this.f3767do.mo1112try();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        if (this.f3768do) {
            throw new IllegalStateException("closed");
        }
        int write = this.f3766do.write(byteBuffer);
        m2295do();
        return write;
    }
}
