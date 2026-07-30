package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import androidx.emoji2.text.Cnew;
import androidx.lifecycle.Ctry;
import androidx.lifecycle.ProcessLifecycleInitializer;
import defpackage.C2626dI;
import defpackage.C2727f2;
import defpackage.C3962x9;
import defpackage.InterfaceC0260Hn;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC3458od;
import defpackage.RunnableC0120Bf;
import defpackage.ThreadFactoryC3903w9;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements InterfaceC0260Hn<Boolean> {

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$do, reason: invalid class name */
    public static class Cdo extends Cnew.Cfor {
        public Cdo(Context context) {
            super(new Cif(context));
            ((Cnew.Cfor) this).f6790do = 1;
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$for, reason: invalid class name */
    public static class Cfor implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            try {
                int i = C2626dI.f12469do;
                Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (Cnew.f6776do != null) {
                    Cnew.m4104do().m4107for();
                }
                Trace.endSection();
            } catch (Throwable th) {
                int i2 = C2626dI.f12469do;
                Trace.endSection();
                throw th;
            }
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$if, reason: invalid class name */
    public static class Cif implements Cnew.Celse {

        /* renamed from: do, reason: not valid java name */
        public final Context f6748do;

        public Cif(Context context) {
            this.f6748do = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.Cnew.Celse
        /* renamed from: do, reason: not valid java name */
        public final void mo4090do(Cnew.Cgoto cgoto) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC3903w9("EmojiCompatInitializer"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.execute(new RunnableC0120Bf(this, cgoto, threadPoolExecutor, 0));
        }
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Boolean mo883do(Context context) {
        Cdo cdo = new Cdo(context);
        if (Cnew.f6776do == null) {
            synchronized (Cnew.f6777do) {
                if (Cnew.f6776do == null) {
                    Cnew.f6776do = new Cnew(cdo);
                }
            }
        }
        m4084new(context);
        return Boolean.TRUE;
    }

    @Override // defpackage.InterfaceC0260Hn
    /* renamed from: if */
    public final List<Class<? extends InterfaceC0260Hn<?>>> mo884if() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4084new(Context context) {
        Object obj;
        C2727f2 m6630for = C2727f2.m6630for(context);
        m6630for.getClass();
        synchronized (C2727f2.f12796do) {
            try {
                obj = m6630for.f12798do.get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = m6630for.m6632if(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        final Ctry lifecycle = ((InterfaceC2714eq) obj).getLifecycle();
        lifecycle.mo4259do(new InterfaceC3458od() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // defpackage.InterfaceC3458od
            /* renamed from: break, reason: not valid java name */
            public final void mo4085break(InterfaceC2714eq interfaceC2714eq) {
            }

            @Override // defpackage.InterfaceC3458od
            /* renamed from: do, reason: not valid java name */
            public final void mo4086do(InterfaceC2714eq interfaceC2714eq) {
            }

            @Override // defpackage.InterfaceC3458od
            /* renamed from: else, reason: not valid java name */
            public final void mo4087else(InterfaceC2714eq interfaceC2714eq) {
            }

            @Override // defpackage.InterfaceC3458od
            /* renamed from: if, reason: not valid java name */
            public final void mo4088if(InterfaceC2714eq interfaceC2714eq) {
            }

            @Override // defpackage.InterfaceC3458od
            public final void onResume() {
                EmojiCompatInitializer.this.getClass();
                (Build.VERSION.SDK_INT >= 28 ? C3962x9.m8619do(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new Cfor(), 500L);
                lifecycle.mo4261for(this);
            }

            @Override // defpackage.InterfaceC3458od
            /* renamed from: this, reason: not valid java name */
            public final void mo4089this(InterfaceC2714eq interfaceC2714eq) {
            }
        });
    }
}
