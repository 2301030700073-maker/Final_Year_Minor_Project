package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzbzw {
    public static final zzgcs zza;
    public static final zzgcs zzb;
    public static final zzgcs zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzgct zze;
    public static final zzgcs zzf;
    public static final zzgcs zzg;

    static {
        Executor threadPoolExecutor;
        Executor executor;
        Executor executor2;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfqv.zza();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzbzs("Default")));
        } else {
            zzbcc zzbccVar = zzbcl.zzlf;
            if (com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar) != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar)).booleanValue()) {
                zzbcc zzbccVar2 = zzbcl.zzlg;
                if (com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar2) != null) {
                    zzbcc zzbccVar3 = zzbcl.zzlh;
                    if (com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar3) != null) {
                        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar2)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar2)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzs("Default"));
                        threadPoolExecutor2.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zzb(zzbccVar3)).booleanValue());
                        threadPoolExecutor = threadPoolExecutor2;
                    }
                }
            }
            threadPoolExecutor = new ThreadPoolExecutor(2, Api.BaseClientBuilder.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzbzs("Default"));
        }
        zza = new zzbzu(threadPoolExecutor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            executor = zzfqv.zza().zzc(5, new zzbzs("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzs("Loader"));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executor = threadPoolExecutor3;
        }
        zzb = new zzbzu(executor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            executor2 = zzfqv.zza().zzb(new zzbzs("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzbzs("Activeview"));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            executor2 = threadPoolExecutor4;
        }
        zzc = new zzbzu(executor2, null);
        zzbzr zzbzrVar = new zzbzr(3, new zzbzs(AppEventsConstants.EVENT_NAME_SCHEDULE));
        zzd = zzbzrVar;
        zze = zzgcz.zzb(zzbzrVar);
        zzf = new zzbzu(new zzbzt(), null);
        zzg = new zzbzu(zzgcz.zzc(), null);
    }
}
