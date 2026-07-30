package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.firebase.messaging.Cif;
import com.google.firebase.messaging.EnhancedIntentService;
import defpackage.GG;
import defpackage.InterfaceC0399Nv;
import defpackage.KL;
import defpackage.RunnableC0718au;
import defpackage.XV;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes3.dex */
public abstract class EnhancedIntentService extends Service {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ int f11881try = 0;

    /* renamed from: do, reason: not valid java name */
    public Cif f11882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f11883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f11884do;

    /* renamed from: for, reason: not valid java name */
    public int f11885for;

    /* renamed from: new, reason: not valid java name */
    public int f11886new;

    /* renamed from: com.google.firebase.messaging.EnhancedIntentService$do, reason: invalid class name */
    public class Cdo implements Cif.Cdo {
        public Cdo() {
        }
    }

    public EnhancedIntentService() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f11884do = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f11883do = new Object();
        this.f11886new = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6079do(Intent intent) {
        if (intent != null) {
            KL.m1148if(intent);
        }
        synchronized (this.f11883do) {
            int i = this.f11886new - 1;
            this.f11886new = i;
            if (i == 0) {
                stopSelfResult(this.f11885for);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo6080for(Intent intent);

    /* renamed from: if, reason: not valid java name */
    public Intent mo6081if(Intent intent) {
        return intent;
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (this.f11882do == null) {
            this.f11882do = new Cif(new Cdo());
        }
        return this.f11882do;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f11884do.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.f11883do) {
            this.f11885for = i2;
            this.f11886new++;
        }
        Intent mo6081if = mo6081if(intent);
        if (mo6081if == null) {
            m6079do(intent);
            return 2;
        }
        GG gg = new GG();
        this.f11884do.execute(new RunnableC0718au(this, mo6081if, gg, 2));
        XV xv = gg.f1160do;
        if (xv.mo602super()) {
            m6079do(intent);
            return 2;
        }
        xv.mo597for(new Executor() { // from class: t2
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        }, new InterfaceC0399Nv() { // from class: fg
            @Override // defpackage.InterfaceC0399Nv
            public final void onComplete(FG fg) {
                int i3 = EnhancedIntentService.f11881try;
                EnhancedIntentService.this.m6079do(intent);
            }
        });
        return 3;
    }
}
