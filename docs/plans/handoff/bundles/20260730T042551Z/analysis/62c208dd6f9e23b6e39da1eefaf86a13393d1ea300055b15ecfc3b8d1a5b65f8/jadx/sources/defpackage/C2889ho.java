package defpackage;

import com.google.firebase.perf.util.Timer;
import defpackage.C4123zu;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: ho, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2889ho extends InputStream {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0113Au f13360do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f13361do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InputStream f13362do;

    /* renamed from: if, reason: not valid java name */
    public long f13364if;

    /* renamed from: do, reason: not valid java name */
    public long f13359do = -1;

    /* renamed from: for, reason: not valid java name */
    public long f13363for = -1;

    public C2889ho(InputStream inputStream, C0113Au c0113Au, Timer timer) {
        this.f13361do = timer;
        this.f13362do = inputStream;
        this.f13360do = c0113Au;
        this.f13364if = ((C4123zu) c0113Au.f165do.f12107if).p();
    }

    @Override // java.io.InputStream
    public final int available() {
        try {
            return this.f13362do.available();
        } catch (IOException e) {
            long m6126do = this.f13361do.m6126do();
            C0113Au c0113Au = this.f13360do;
            c0113Au.m116super(m6126do);
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C0113Au c0113Au = this.f13360do;
        Timer timer = this.f13361do;
        long m6126do = timer.m6126do();
        if (this.f13363for == -1) {
            this.f13363for = m6126do;
        }
        try {
            this.f13362do.close();
            long j = this.f13359do;
            if (j != -1) {
                c0113Au.m113final(j);
            }
            long j2 = this.f13364if;
            if (j2 != -1) {
                C4123zu.Cdo cdo = c0113Au.f165do;
                cdo.m6307super();
                C4123zu.m8835synchronized((C4123zu) cdo.f12107if, j2);
            }
            c0113Au.m116super(this.f13363for);
            c0113Au.m114if();
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f13362do.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f13362do.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        Timer timer = this.f13361do;
        C0113Au c0113Au = this.f13360do;
        try {
            int read = this.f13362do.read();
            long m6126do = timer.m6126do();
            if (this.f13364if == -1) {
                this.f13364if = m6126do;
            }
            if (read == -1 && this.f13363for == -1) {
                this.f13363for = m6126do;
                c0113Au.m116super(m6126do);
                c0113Au.m114if();
            } else {
                long j = this.f13359do + 1;
                this.f13359do = j;
                c0113Au.m113final(j);
            }
            return read;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void reset() {
        try {
            this.f13362do.reset();
        } catch (IOException e) {
            long m6126do = this.f13361do.m6126do();
            C0113Au c0113Au = this.f13360do;
            c0113Au.m116super(m6126do);
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        Timer timer = this.f13361do;
        C0113Au c0113Au = this.f13360do;
        try {
            long skip = this.f13362do.skip(j);
            long m6126do = timer.m6126do();
            if (this.f13364if == -1) {
                this.f13364if = m6126do;
            }
            if (skip == -1 && this.f13363for == -1) {
                this.f13363for = m6126do;
                c0113Au.m116super(m6126do);
            } else {
                long j2 = this.f13359do + skip;
                this.f13359do = j2;
                c0113Au.m113final(j2);
            }
            return skip;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        Timer timer = this.f13361do;
        C0113Au c0113Au = this.f13360do;
        try {
            int read = this.f13362do.read(bArr, i, i2);
            long m6126do = timer.m6126do();
            if (this.f13364if == -1) {
                this.f13364if = m6126do;
            }
            if (read == -1 && this.f13363for == -1) {
                this.f13363for = m6126do;
                c0113Au.m116super(m6126do);
                c0113Au.m114if();
            } else {
                long j = this.f13359do + read;
                this.f13359do = j;
                c0113Au.m113final(j);
            }
            return read;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        Timer timer = this.f13361do;
        C0113Au c0113Au = this.f13360do;
        try {
            int read = this.f13362do.read(bArr);
            long m6126do = timer.m6126do();
            if (this.f13364if == -1) {
                this.f13364if = m6126do;
            }
            if (read == -1 && this.f13363for == -1) {
                this.f13363for = m6126do;
                c0113Au.m116super(m6126do);
                c0113Au.m114if();
            } else {
                long j = this.f13359do + read;
                this.f13359do = j;
                c0113Au.m113final(j);
            }
            return read;
        } catch (IOException e) {
            C4122zt.m8828this(timer, c0113Au, c0113Au);
            throw e;
        }
    }
}
