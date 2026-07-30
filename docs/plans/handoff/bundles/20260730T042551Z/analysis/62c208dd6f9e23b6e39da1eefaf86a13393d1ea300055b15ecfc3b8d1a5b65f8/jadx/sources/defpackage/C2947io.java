package defpackage;

import com.google.firebase.perf.util.Timer;
import defpackage.C4123zu;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: io, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2947io extends OutputStream {

    /* renamed from: do, reason: not valid java name */
    public long f13577do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0113Au f13578do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f13579do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final OutputStream f13580do;

    public C2947io(OutputStream outputStream, C0113Au c0113Au, Timer timer) {
        this.f13580do = outputStream;
        this.f13578do = c0113Au;
        this.f13579do = timer;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j = this.f13577do;
        C0113Au c0113Au = this.f13578do;
        if (j != -1) {
            c0113Au.m112else(j);
        }
        Timer timer = this.f13579do;
        long m6126do = timer.m6126do();
        C4123zu.Cdo cdo = c0113Au.f165do;
        cdo.m6307super();
        C4123zu.m8831instanceof((C4123zu) cdo.f12107if, m6126do);
        try {
            this.f13580do.close();
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        try {
            this.f13580do.flush();
        } catch (IOException e) {
            long m6126do = this.f13579do.m6126do();
            C0113Au c0113Au = this.f13578do;
            c0113Au.m116super(m6126do);
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        C0113Au c0113Au = this.f13578do;
        try {
            this.f13580do.write(i);
            long j = this.f13577do + 1;
            this.f13577do = j;
            c0113Au.m112else(j);
        } catch (IOException e) {
            C4122zt.m8828this(this.f13579do, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        C0113Au c0113Au = this.f13578do;
        try {
            this.f13580do.write(bArr);
            long length = this.f13577do + bArr.length;
            this.f13577do = length;
            c0113Au.m112else(length);
        } catch (IOException e) {
            C4122zt.m8828this(this.f13579do, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        C0113Au c0113Au = this.f13578do;
        try {
            this.f13580do.write(bArr, i, i2);
            long j = this.f13577do + i2;
            this.f13577do = j;
            c0113Au.m112else(j);
        } catch (IOException e) {
            C4122zt.m8828this(this.f13579do, c0113Au, c0113Au);
            throw e;
        }
    }
}
