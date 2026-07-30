package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class zzeul implements zzetr {
    private final com.google.android.gms.ads.internal.util.zzg zza;
    private final Context zzb;
    private final zzgcs zzc;
    private final ScheduledExecutorService zzd;
    private final zzecu zze;
    private final zzfcj zzf;
    private final VersionInfoParcel zzg;

    public zzeul(com.google.android.gms.ads.internal.util.zzg zzgVar, Context context, zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, zzecu zzecuVar, zzfcj zzfcjVar, VersionInfoParcel versionInfoParcel) {
        this.zza = zzgVar;
        this.zzb = context;
        this.zzc = zzgcsVar;
        this.zzd = scheduledExecutorService;
        this.zze = zzecuVar;
        this.zzf = zzfcjVar;
        this.zzg = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x009e, code lost:
    
        if (java.util.Arrays.asList(r0.split(",")).contains(r5.zzb.getPackageName()) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0038, code lost:
    
        if (r5.zzf.zzd.zzy != com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED.getValue()) goto L10;
     */
    @Override // com.google.android.gms.internal.ads.zzetr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.InterfaceFutureC3942wq zzb() {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeul.zzb():wq");
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(final Throwable th) {
        this.zzc.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeui
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkn)).booleanValue();
                Throwable th2 = th;
                if (booleanValue) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzx(th2, "TopicsSignalUnsampled.fetchTopicsSignal");
                } else {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "TopicsSignal.fetchTopicsSignal");
                }
            }
        });
        return zzgch.zzh(th instanceof SecurityException ? new zzeun(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 2, null) : th instanceof IllegalStateException ? new zzeun(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 3, null) : th instanceof IllegalArgumentException ? new zzeun(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 4, null) : th instanceof TimeoutException ? new zzeun(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 5, null) : new zzeun(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0, null));
    }
}
