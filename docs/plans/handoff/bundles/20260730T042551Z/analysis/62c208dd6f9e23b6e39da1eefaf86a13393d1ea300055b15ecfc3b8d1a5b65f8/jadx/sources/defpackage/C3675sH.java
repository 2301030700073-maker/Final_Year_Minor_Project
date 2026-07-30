package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* renamed from: sH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3675sH {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f15427do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f15428do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15429do;

    /* renamed from: if, reason: not valid java name */
    public long f15430if;

    /* renamed from: sH$do, reason: invalid class name */
    public class Cdo extends C3675sH {
        @Override // defpackage.C3675sH
        /* renamed from: case */
        public final void mo8081case() {
        }

        @Override // defpackage.C3675sH
        /* renamed from: else */
        public final C3675sH mo8083else(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // defpackage.C3675sH
        /* renamed from: new */
        public final C3675sH mo8086new(long j) {
            return this;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void mo8081case() {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f15429do && this.f15428do - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public C3675sH mo8082do() {
        this.f15429do = false;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public C3675sH mo8083else(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(Cpublic.m7828try("timeout < 0: ", j));
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f15430if = timeUnit.toNanos(j);
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public long mo8084for() {
        if (this.f15429do) {
            return this.f15428do;
        }
        throw new IllegalStateException("No deadline");
    }

    /* renamed from: if, reason: not valid java name */
    public C3675sH mo8085if() {
        this.f15430if = 0L;
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public C3675sH mo8086new(long j) {
        this.f15429do = true;
        this.f15428do = j;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean mo8087try() {
        return this.f15429do;
    }
}
