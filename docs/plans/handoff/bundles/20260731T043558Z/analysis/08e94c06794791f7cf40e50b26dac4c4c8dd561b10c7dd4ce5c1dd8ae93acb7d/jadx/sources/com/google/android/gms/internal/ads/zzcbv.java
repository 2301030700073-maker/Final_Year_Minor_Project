package com.google.android.gms.internal.ads;

import androidx.webkit.Profile;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcbv {
    public static final zzgus zza;
    public static final zzgus zzb;
    public static final zzgus zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzgut zze;
    public static final zzgus zzf;
    public static final zzgus zzg;

    static {
        Executor executor;
        Executor executor2;
        Executor executor3;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfuy.zza();
            executor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzcbs(Profile.DEFAULT_PROFILE_NAME)));
        } else {
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmn) != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmn)).booleanValue()) {
                    if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmo) != null) {
                        if (com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmp) != null) {
                            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmo)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmo)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcbs(Profile.DEFAULT_PROFILE_NAME));
                            threadPoolExecutor.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zze(zzbeu.zzmp)).booleanValue());
                            executor = threadPoolExecutor;
                        }
                    }
                }
            }
            executor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcbs(Profile.DEFAULT_PROFILE_NAME));
        }
        zza = new zzcbu(executor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            executor2 = zzfuy.zza().zza(5, new zzcbs("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcbs("Loader"));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
            executor2 = threadPoolExecutor2;
        }
        zzb = new zzcbu(executor2, null);
        if (ClientLibraryUtils.isPackageSide()) {
            executor3 = zzfuy.zza().zzc(new zzcbs("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcbs("Activeview"));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executor3 = threadPoolExecutor3;
        }
        zzc = new zzcbu(executor3, null);
        zzcbr zzcbrVar = new zzcbr(3, new zzcbs(AppEventsConstants.EVENT_NAME_SCHEDULE));
        zzd = zzcbrVar;
        zze = zzguz.zzc(zzcbrVar);
        zzf = new zzcbu(new zzcbt(), null);
        zzg = new zzcbu(zzguz.zza(), null);
    }
}
