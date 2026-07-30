package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import androidx.emoji2.text.Cnew;
import defpackage.C2884hj;
import defpackage.C2942ij;
import defpackage.C3523pj;
import defpackage.C3582qj;
import defpackage.Creturn;
import defpackage.RunnableC3137j9;
import defpackage.ThreadFactoryC3903w9;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: androidx.emoji2.text.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse extends Cnew.Cfor {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f6758do = new Cdo();

    /* renamed from: androidx.emoji2.text.else$do, reason: invalid class name */
    public static class Cdo {
    }

    /* renamed from: androidx.emoji2.text.else$if, reason: invalid class name */
    public static class Cif implements Cnew.Celse {

        /* renamed from: do, reason: not valid java name */
        public final Context f6759do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Handler f6760do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f6761do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cnew.Cgoto f6762do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C2942ij f6763do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f6764do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Executor f6765do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ThreadPoolExecutor f6766do;

        public Cif(Context context, C2942ij c2942ij) {
            Cdo cdo = Celse.f6758do;
            this.f6764do = new Object();
            if (context == null) {
                throw new NullPointerException("Context cannot be null");
            }
            this.f6759do = context.getApplicationContext();
            this.f6763do = c2942ij;
            this.f6761do = cdo;
        }

        @Override // androidx.emoji2.text.Cnew.Celse
        /* renamed from: do */
        public final void mo4090do(Cnew.Cgoto cgoto) {
            synchronized (this.f6764do) {
                this.f6762do = cgoto;
            }
            m4098for();
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4098for() {
            synchronized (this.f6764do) {
                if (this.f6762do == null) {
                    return;
                }
                if (this.f6765do == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC3903w9("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f6766do = threadPoolExecutor;
                    this.f6765do = threadPoolExecutor;
                }
                this.f6765do.execute(new RunnableC3137j9(this, 2));
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4099if() {
            synchronized (this.f6764do) {
                this.f6762do = null;
                Handler handler = this.f6760do;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f6760do = null;
                ThreadPoolExecutor threadPoolExecutor = this.f6766do;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f6765do = null;
                this.f6766do = null;
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final C3582qj m4100new() {
            try {
                Cdo cdo = this.f6761do;
                Context context = this.f6759do;
                C2942ij c2942ij = this.f6763do;
                cdo.getClass();
                C3523pj m6833do = C2884hj.m6833do(context, c2942ij);
                int i = m6833do.f14976do;
                if (i != 0) {
                    throw new RuntimeException(Creturn.m7981if("fetchFonts failed (", i, ")"));
                }
                C3582qj[] c3582qjArr = m6833do.f14977do;
                if (c3582qjArr == null || c3582qjArr.length == 0) {
                    throw new RuntimeException("fetchFonts failed (empty result)");
                }
                return c3582qjArr[0];
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }
    }

    public Celse(Context context, C2942ij c2942ij) {
        super(new Cif(context, c2942ij));
    }
}
