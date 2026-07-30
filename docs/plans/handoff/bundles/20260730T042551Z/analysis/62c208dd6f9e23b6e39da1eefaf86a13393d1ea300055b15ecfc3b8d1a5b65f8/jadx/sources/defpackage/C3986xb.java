package defpackage;

import android.annotation.SuppressLint;
import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import com.google.firebase.perf.util.Timer;
import defpackage.C4045yb;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* renamed from: xb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3986xb {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f16580do = Q0.m1818new();

    /* renamed from: for, reason: not valid java name */
    public static final long f16581for = TimeUnit.SECONDS.toMicros(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ScheduledFuture f16586do = null;

    /* renamed from: if, reason: not valid java name */
    public long f16587if = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentLinkedQueue<C4045yb> f16584do = new ConcurrentLinkedQueue<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f16585do = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16583do = "/proc/" + Integer.toString(Process.myPid()) + "/stat";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f16582do = Os.sysconf(OsConstants._SC_CLK_TCK);

    @SuppressLint({"ThreadPoolCreation"})
    public C3986xb() {
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m8652do(long j, Timer timer) {
        this.f16587if = j;
        try {
            this.f16586do = this.f16585do.scheduleAtFixedRate(new RunnableC2668e2(4, this, timer), 0L, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            Q0 q0 = f16580do;
            e.getMessage();
            q0.m1819case();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final C4045yb m8653if(Timer timer) {
        long parseLong;
        long parseLong2;
        C4045yb.Cdo m8759protected;
        double d;
        long j;
        long j2 = this.f16582do;
        Q0 q0 = f16580do;
        if (timer == null) {
            return null;
        }
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f16583do));
                try {
                    long m6126do = timer.m6126do() + timer.f11971do;
                    String[] split = bufferedReader.readLine().split(" ");
                    parseLong = Long.parseLong(split[13]);
                    parseLong2 = Long.parseLong(split[15]);
                    long parseLong3 = Long.parseLong(split[14]);
                    long parseLong4 = Long.parseLong(split[16]);
                    m8759protected = C4045yb.m8759protected();
                    m8759protected.m6307super();
                    C4045yb.m8760strictfp((C4045yb) m8759protected.f12107if, m6126do);
                    d = (parseLong3 + parseLong4) / j2;
                    j = f16581for;
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    long round = Math.round(d * j);
                    m8759protected.m6307super();
                    C4045yb.m8758interface((C4045yb) m8759protected.f12107if, round);
                    long round2 = Math.round(((parseLong + parseLong2) / j2) * j);
                    m8759protected.m6307super();
                    C4045yb.m8761volatile((C4045yb) m8759protected.f12107if, round2);
                    C4045yb m6305const = m8759protected.m6305const();
                    bufferedReader.close();
                    return m6305const;
                } catch (Throwable th2) {
                    th = th2;
                    Throwable th3 = th;
                    try {
                        bufferedReader.close();
                        throw th3;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                        throw th3;
                    }
                }
            } catch (IOException e) {
                e = e;
                e.getMessage();
                q0.m1819case();
                return null;
            } catch (ArrayIndexOutOfBoundsException e2) {
                e = e2;
                e.getMessage();
                q0.m1819case();
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                e.getMessage();
                q0.m1819case();
                return null;
            } catch (NumberFormatException e4) {
                e = e4;
                e.getMessage();
                q0.m1819case();
                return null;
            }
        } catch (IOException e5) {
            e = e5;
            e.getMessage();
            q0.m1819case();
            return null;
        } catch (ArrayIndexOutOfBoundsException e6) {
            e = e6;
            e.getMessage();
            q0.m1819case();
            return null;
        } catch (NullPointerException e7) {
            e = e7;
            e.getMessage();
            q0.m1819case();
            return null;
        } catch (NumberFormatException e8) {
            e = e8;
            e.getMessage();
            q0.m1819case();
            return null;
        }
    }
}
