package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbpa;
import com.google.android.gms.internal.ads.zzbsx;

@KeepForSdk
/* loaded from: classes.dex */
public class OfflinePingSender extends Worker {

    /* renamed from: do, reason: not valid java name */
    public final zzbsx f9691do;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f9691do = zzbc.zza().zzo(context, new zzbpa());
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Cdo doWork() {
        try {
            this.f9691do.zzh();
            return new ListenableWorker.Cdo.Cfor();
        } catch (RemoteException unused) {
            return new ListenableWorker.Cdo.C0046do();
        }
    }
}
