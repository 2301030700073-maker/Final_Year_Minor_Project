package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import defpackage.GG;
import defpackage.InterfaceC0399Nv;
import defpackage.RunnableC0651Zj;
import defpackage.XV;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.google.firebase.messaging.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor implements ServiceConnection {

    /* renamed from: do, reason: not valid java name */
    public final Context f11916do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Intent f11917do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f11918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f11919do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f11920do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11921do;

    /* renamed from: com.google.firebase.messaging.for$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final GG<Void> f11922do = new GG<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Intent f11923do;

        public Cdo(Intent intent) {
            this.f11923do = intent;
        }
    }

    public Cfor(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f11919do = new ArrayDeque();
        this.f11921do = false;
        Context applicationContext = context.getApplicationContext();
        this.f11916do = applicationContext;
        this.f11917do = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f11920do = scheduledThreadPoolExecutor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0037, code lost:
    
        if (com.google.android.gms.common.stats.ConnectionTracker.getInstance().bindService(r4.f11916do, r4.f11917do, r4, 65) != false) goto L23;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void m6100do() {
        /*
            r4 = this;
            monitor-enter(r4)
        L1:
            java.util.ArrayDeque r0 = r4.f11919do     // Catch: java.lang.Throwable -> L56
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L56
            if (r0 != 0) goto L54
            com.google.firebase.messaging.if r0 = r4.f11918do     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L21
            boolean r0 = r0.isBinderAlive()     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L21
            java.util.ArrayDeque r0 = r4.f11919do     // Catch: java.lang.Throwable -> L56
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L56
            com.google.firebase.messaging.for$do r0 = (com.google.firebase.messaging.Cfor.Cdo) r0     // Catch: java.lang.Throwable -> L56
            com.google.firebase.messaging.if r1 = r4.f11918do     // Catch: java.lang.Throwable -> L56
            r1.m6102do(r0)     // Catch: java.lang.Throwable -> L56
            goto L1
        L21:
            boolean r0 = r4.f11921do     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L26
            goto L52
        L26:
            r0 = 1
            r4.f11921do = r0     // Catch: java.lang.Throwable -> L56
            com.google.android.gms.common.stats.ConnectionTracker r0 = com.google.android.gms.common.stats.ConnectionTracker.getInstance()     // Catch: java.lang.SecurityException -> L3a java.lang.Throwable -> L56
            android.content.Context r1 = r4.f11916do     // Catch: java.lang.SecurityException -> L3a java.lang.Throwable -> L56
            android.content.Intent r2 = r4.f11917do     // Catch: java.lang.SecurityException -> L3a java.lang.Throwable -> L56
            r3 = 65
            boolean r0 = r0.bindService(r1, r2, r4, r3)     // Catch: java.lang.SecurityException -> L3a java.lang.Throwable -> L56
            if (r0 == 0) goto L3a
            goto L52
        L3a:
            r0 = 0
            r4.f11921do = r0     // Catch: java.lang.Throwable -> L56
        L3d:
            java.util.ArrayDeque r0 = r4.f11919do     // Catch: java.lang.Throwable -> L56
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L56
            if (r1 != 0) goto L52
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L56
            com.google.firebase.messaging.for$do r0 = (com.google.firebase.messaging.Cfor.Cdo) r0     // Catch: java.lang.Throwable -> L56
            GG<java.lang.Void> r0 = r0.f11922do     // Catch: java.lang.Throwable -> L56
            r1 = 0
            r0.m722new(r1)     // Catch: java.lang.Throwable -> L56
            goto L3d
        L52:
            monitor-exit(r4)
            return
        L54:
            monitor-exit(r4)
            return
        L56:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.Cfor.m6100do():void");
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized XV m6101if(Intent intent) {
        Cdo cdo;
        cdo = new Cdo(intent);
        ScheduledExecutorService scheduledExecutorService = this.f11920do;
        final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new RunnableC0651Zj(cdo, 8), 20L, TimeUnit.SECONDS);
        cdo.f11922do.f1160do.mo597for(scheduledExecutorService, new InterfaceC0399Nv() { // from class: sM
            @Override // defpackage.InterfaceC0399Nv
            public final void onComplete(FG fg) {
                schedule.cancel(false);
            }
        });
        this.f11919do.add(cdo);
        m6100do();
        return cdo.f11922do.f1160do;
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Objects.toString(componentName);
        }
        this.f11921do = false;
        if (iBinder instanceof Cif) {
            this.f11918do = (Cif) iBinder;
            m6100do();
        } else {
            Objects.toString(iBinder);
            while (true) {
                ArrayDeque arrayDeque = this.f11919do;
                if (arrayDeque.isEmpty()) {
                    return;
                } else {
                    ((Cdo) arrayDeque.poll()).f11922do.m722new(null);
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Objects.toString(componentName);
        }
        m6100do();
    }
}
