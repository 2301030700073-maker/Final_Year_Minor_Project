package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import expo.modules.updates.codesigning.SignatureHeaderInfoKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeyd {
    private final Context zza;
    private final Set zzb;
    private final Executor zzc;
    private final zzflm zzd;
    private final zzdvi zze;
    private long zzf = 0;
    private int zzg = 0;

    public zzeyd(Context context, Executor executor, Set set, zzflm zzflmVar, zzdvi zzdviVar) {
        this.zza = context;
        this.zzc = executor;
        this.zzb = set;
        this.zzd = zzflmVar;
        this.zze = zzdviVar;
    }

    public final ListenableFuture zza(final Object obj, final Bundle bundle, final boolean z) {
        zzflc zzn = zzflc.zzn(this.zza, 8);
        zzn.zza();
        Set<zzeya> set = this.zzb;
        final ArrayList arrayList = new ArrayList(set.size());
        List arrayList2 = new ArrayList();
        zzbel zzbelVar = zzbeu.zzmK;
        if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).split(","));
        }
        List list = arrayList2;
        this.zzf = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
        final Bundle bundle2 = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() && bundle != null) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            if (obj instanceof zzcxq) {
                bundle.putLong(zzduq.CLIENT_SIGNALS_START.zza(), currentTimeMillis);
            } else {
                bundle.putLong(zzduq.GMS_SIGNALS_START.zza(), currentTimeMillis);
            }
        }
        for (final zzeya zzeyaVar : set) {
            if (!list.contains(String.valueOf(zzeyaVar.zzb()))) {
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                ListenableFuture zza = zzeyaVar.zza();
                zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyb
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzeyd.this.zzb(elapsedRealtime, zzeyaVar, bundle2);
                    }
                }, zzcbv.zzg);
                arrayList.add(zza);
            }
        }
        ListenableFuture zza2 = zzgui.zzp(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyc
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                Object obj2;
                Bundle bundle3;
                Iterator it = arrayList.iterator();
                while (true) {
                    obj2 = obj;
                    if (!it.hasNext()) {
                        break;
                    }
                    zzexy zzexyVar = (zzexy) ((ListenableFuture) it.next()).get();
                    if (zzexyVar != null) {
                        boolean z2 = z;
                        zzexyVar.zza(obj2);
                        if (z2) {
                            zzexyVar.zzb(obj2);
                        }
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() && (bundle3 = bundle) != null) {
                    Bundle bundle4 = bundle2;
                    long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                    if (obj2 instanceof zzcxq) {
                        bundle3.putLong(zzduq.CLIENT_SIGNALS_END.zza(), currentTimeMillis2);
                        bundle3.putBundle("client_sig_latency_key", bundle4);
                    } else {
                        bundle3.putLong(zzduq.GMS_SIGNALS_END.zza(), currentTimeMillis2);
                        bundle3.putBundle("gms_sig_latency_key", bundle4);
                    }
                }
                return obj2;
            }
        }, this.zzc);
        if (zzflp.zza()) {
            zzfll.zzd(zza2, this.zzd, zzn);
        }
        return zza2;
    }

    final /* synthetic */ void zzb(long j, zzeya zzeyaVar, Bundle bundle) {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - j;
        if (((Boolean) zzbgw.zza.zze()).booleanValue()) {
            String zza = zzgmu.zza(zzeyaVar.getClass().getCanonicalName());
            StringBuilder sb = new StringBuilder(zza.length() + 25 + String.valueOf(elapsedRealtime).length());
            sb.append("Signal runtime (ms) : ");
            sb.append(zza);
            sb.append(" = ");
            sb.append(elapsedRealtime);
            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcB)).booleanValue()) {
                synchronized (this) {
                    int zzb = zzeyaVar.zzb();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(zzb).length() + 3);
                    sb2.append(SignatureHeaderInfoKt.CODE_SIGNING_SIGNATURE_STRUCTURED_FIELD_KEY_SIGNATURE);
                    sb2.append(zzb);
                    bundle.putLong(sb2.toString(), elapsedRealtime);
                }
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzct)).booleanValue()) {
            zzdvh zza2 = this.zze.zza();
            zza2.zzc("action", "lat_ms");
            zza2.zzc("lat_grp", "sig_lat_grp");
            zza2.zzc("lat_id", String.valueOf(zzeyaVar.zzb()));
            zza2.zzc("clat_ms", String.valueOf(elapsedRealtime));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcu)).booleanValue()) {
                synchronized (this) {
                    this.zzg++;
                }
                zza2.zzc("seq_num", com.google.android.gms.ads.internal.zzt.zzh().zzr().zzm());
                synchronized (this) {
                    if (this.zzg == this.zzb.size() && this.zzf != 0) {
                        this.zzg = 0;
                        String valueOf = String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.zzf);
                        if (zzeyaVar.zzb() <= 39 || zzeyaVar.zzb() >= 52) {
                            zza2.zzc("lat_clsg", valueOf);
                        } else {
                            zza2.zzc("lat_gmssg", valueOf);
                        }
                    }
                }
            }
            zza2.zzh();
        }
    }
}
