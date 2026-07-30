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
import defpackage.BinderC3652rv;

@KeepForSdk
/* loaded from: classes.dex */
public class OfflineNotificationPoster extends Worker {

    /* renamed from: do, reason: not valid java name */
    public final zzbsx f9690do;

    public OfflineNotificationPoster(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f9690do = zzbc.zza().zzo(context, new zzbpa());
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Cdo doWork() {
        try {
            this.f9690do.zzj(new BinderC3652rv(getApplicationContext()), new zza(getInputData().m4723if("uri"), getInputData().m4723if("gws_query_id"), getInputData().m4723if("image_url")));
            return new ListenableWorker.Cdo.Cfor();
        } catch (RemoteException unused) {
            return new ListenableWorker.Cdo.C0046do();
        }
    }
}
