package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: yv, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4065yv implements KE {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InputStream f16840do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3675sH f16841do;

    public C4065yv(InputStream inputStream, C3675sH c3675sH) {
        this.f16841do = c3675sH;
        this.f16840do = inputStream;
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16840do.close();
    }

    @Override // defpackage.KE
    /* renamed from: throw */
    public final long mo631throw(U5 u5, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("byteCount < 0: ", j));
        }
        if (j == 0) {
            return 0L;
        }
        try {
            this.f16841do.mo8081case();
            VB m2337public = u5.m2337public(1);
            int read = this.f16840do.read(m2337public.f4052do, m2337public.f4053if, (int) Math.min(j, 8192 - m2337public.f4053if));
            if (read == -1) {
                return -1L;
            }
            m2337public.f4053if += read;
            long j2 = read;
            u5.f3826do += j2;
            return j2;
        } catch (AssertionError e) {
            if ((e.getCause() == null || e.getMessage() == null || !e.getMessage().contains("getsockname failed")) ? false : true) {
                throw new IOException(e);
            }
            throw e;
        }
    }

    public final String toString() {
        return "source(" + this.f16840do + ")";
    }

    @Override // defpackage.KE
    /* renamed from: try */
    public final C3675sH mo632try() {
        return this.f16841do;
    }
}
