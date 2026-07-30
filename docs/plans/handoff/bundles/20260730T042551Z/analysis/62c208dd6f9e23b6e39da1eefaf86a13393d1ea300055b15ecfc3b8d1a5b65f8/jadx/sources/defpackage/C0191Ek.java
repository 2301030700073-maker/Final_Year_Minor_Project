package defpackage;

import com.google.android.gms.measurement.internal.zzno;
import defpackage.C3533pt;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* renamed from: Ek, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0191Ek extends FM {

    /* renamed from: Ek$do, reason: invalid class name */
    public static final class Cdo<V> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final IT f883do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Future<V> f884do;

        public Cdo(InterfaceFutureC3942wq interfaceFutureC3942wq, IT it) {
            this.f884do = interfaceFutureC3942wq;
            this.f883do = it;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            Throwable m8808do;
            Future<V> future = this.f884do;
            boolean z = future instanceof AbstractC4117zo;
            IT it = this.f883do;
            if (z && (m8808do = ((AbstractC4117zo) future).m8808do()) != null) {
                it.m955do(m8808do);
                return;
            }
            try {
                C0191Ek.m502for(future);
                C4041yT c4041yT = it.f1526do;
                c4041yT.mo1960catch();
                boolean m3012throws = c4041yT.m7572else().m3012throws(null, C3684sQ.Z);
                zzno zznoVar = it.f1525do;
                if (!m3012throws) {
                    c4041yT.f16781for = false;
                    c4041yT.b();
                    c4041yT.mo2249case().f13720goto.m7368for("registerTriggerAsync ran. uri", zznoVar.f10317break);
                    return;
                }
                it.m956if();
                c4041yT.f16781for = false;
                c4041yT.f16766do = 1;
                c4041yT.mo2249case().f13720goto.m7368for("Successfully registered trigger URI", zznoVar.f10317break);
                c4041yT.b();
            } catch (Error e) {
                e = e;
                it.m955do(e);
            } catch (RuntimeException e2) {
                e = e2;
                it.m955do(e);
            } catch (ExecutionException e3) {
                it.m955do(e3.getCause());
            }
        }

        public final String toString() {
            C3533pt c3533pt = new C3533pt(Cdo.class.getSimpleName());
            C3533pt.Cdo cdo = new C3533pt.Cdo();
            c3533pt.f15009if.f15011do = cdo;
            c3533pt.f15009if = cdo;
            cdo.f15010do = this.f883do;
            return c3533pt.toString();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m502for(Future future) {
        boolean z = false;
        if (!future.isDone()) {
            throw new IllegalStateException(O2.m1582class("Future was expected to be done: %s", future));
        }
        while (true) {
            try {
                future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }
}
