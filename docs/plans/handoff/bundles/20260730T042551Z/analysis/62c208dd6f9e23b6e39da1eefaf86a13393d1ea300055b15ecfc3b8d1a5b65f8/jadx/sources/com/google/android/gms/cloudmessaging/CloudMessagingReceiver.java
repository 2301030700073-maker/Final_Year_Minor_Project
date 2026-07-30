package com.google.android.gms.cloudmessaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zze;
import defpackage.RunnableC3804uS;
import java.lang.ref.SoftReference;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public static SoftReference f10173do;

    /* renamed from: if, reason: not valid java name */
    public static SoftReference f10174if;

    /* renamed from: do, reason: not valid java name */
    public abstract int mo5601do(Context context, CloudMessage cloudMessage);

    /* renamed from: if, reason: not valid java name */
    public void mo5602if(Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ExecutorService executorService;
        if (intent == null) {
            return;
        }
        boolean isOrderedBroadcast = isOrderedBroadcast();
        BroadcastReceiver.PendingResult goAsync = goAsync();
        synchronized (CloudMessagingReceiver.class) {
            SoftReference softReference = f10173do;
            ExecutorService executorService2 = softReference != null ? (ExecutorService) softReference.get() : null;
            if (executorService2 == null) {
                zze.zza();
                executorService2 = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new NamedThreadFactory("firebase-iid-executor")));
                f10173do = new SoftReference(executorService2);
            }
            executorService = executorService2;
        }
        executorService.execute(new RunnableC3804uS(this, intent, context, isOrderedBroadcast, goAsync));
    }
}
