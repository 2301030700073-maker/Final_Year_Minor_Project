package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class Gz {

    /* renamed from: do, reason: not valid java name */
    public int f1282do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f1283do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ZJ f1284do = ZJ.m2986do();

    /* renamed from: if, reason: not valid java name */
    public static final long f1281if = TimeUnit.HOURS.toMillis(24);

    /* renamed from: for, reason: not valid java name */
    public static final long f1280for = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: do, reason: not valid java name */
    public final synchronized long m782do(int i) {
        if (!(i == 429 || (i >= 500 && i < 600))) {
            return f1281if;
        }
        double pow = Math.pow(2.0d, this.f1282do);
        this.f1284do.getClass();
        return (long) Math.min(pow + ((long) (Math.random() * 1000.0d)), f1280for);
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized void m783for() {
        this.f1282do = 0;
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized boolean m784if() {
        boolean z;
        if (this.f1282do != 0) {
            this.f1284do.f4801do.getClass();
            z = System.currentTimeMillis() > this.f1283do;
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized void m785new(int i) {
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            m783for();
            return;
        }
        this.f1282do++;
        long m782do = m782do(i);
        this.f1284do.f4801do.getClass();
        this.f1283do = System.currentTimeMillis() + m782do;
    }
}
