package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.net.HttpHeaders;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.perf.FirebasePerformance;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeea extends zzbww {
    private final Context zza;
    private final zzgus zzb;
    private final zzeei zzc;
    private final zzcnr zzd;
    private final ArrayDeque zze;
    private final zzflp zzf;
    private final zzbxr zzg;

    public zzeea(Context context, zzgus zzgusVar, zzbxr zzbxrVar, zzcnr zzcnrVar, zzeei zzeeiVar, ArrayDeque arrayDeque, zzeef zzeefVar, zzflp zzflpVar) {
        zzbeu.zza(context);
        this.zza = context;
        this.zzb = zzgusVar;
        this.zzg = zzbxrVar;
        this.zzc = zzeeiVar;
        this.zzd = zzcnrVar;
        this.zze = arrayDeque;
        this.zzf = zzflpVar;
    }

    private static ListenableFuture zzm(final zzbxj zzbxjVar, zzfks zzfksVar, final zzezc zzezcVar) {
        zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzedo
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzezc.this.zzc().zza(com.google.android.gms.ads.internal.client.zzbb.zza().zzm((Bundle) obj), zzbxjVar.zzm, false);
            }
        };
        return zzfksVar.zza(zzfkm.GMS_SIGNALS, zzgui.zza(zzbxjVar.zza)).zzc(zzgtqVar).zzb(zzedp.zza).zzi();
    }

    private static ListenableFuture zzn(ListenableFuture listenableFuture, zzfks zzfksVar, zzbqp zzbqpVar, zzflm zzflmVar, zzflc zzflcVar) {
        zzbqf zza = zzbqpVar.zza("AFMA_getAdDictionary", zzbqm.zza, zzedu.zza);
        zzfll.zzb(listenableFuture, zzflcVar);
        zzfjz zzi = zzfksVar.zza(zzfkm.BUILD_URL, listenableFuture).zzc(zza).zzi();
        zzfll.zzf(zzi, zzflmVar, zzflcVar);
        return zzi;
    }

    private final void zzo(ListenableFuture listenableFuture, zzbxb zzbxbVar, zzbxj zzbxjVar) {
        zzgui.zzr(zzgui.zzj(listenableFuture, new zzgtq(this) { // from class: com.google.android.gms.internal.ads.zzeds
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgui.zza(zzfho.zza((InputStream) obj));
            }
        }, zzcbv.zza), new zzedl(this, zzbxjVar, zzbxbVar), zzcbv.zzg);
    }

    private final synchronized void zzp() {
        int intValue = ((Long) zzbhb.zzb.zze()).intValue();
        while (true) {
            ArrayDeque arrayDeque = this.zze;
            if (arrayDeque.size() >= intValue) {
                arrayDeque.removeFirst();
            }
        }
    }

    private final synchronized void zzq(zzedv zzedvVar) {
        zzp();
        this.zze.addLast(zzedvVar);
    }

    private final synchronized zzedv zzr(String str) {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            zzedv zzedvVar = (zzedv) it.next();
            if (zzedvVar.zzc.equals(str)) {
                it.remove();
                return zzedvVar;
            }
        }
        return null;
    }

    public final ListenableFuture zzb(final zzbxj zzbxjVar, int i) {
        zzedv zzr;
        zzfjz zzi;
        zzbqg zzr2 = com.google.android.gms.ads.internal.zzt.zzr();
        Context context = this.zza;
        zzbqp zza = zzr2.zza(context, VersionInfoParcel.forPackage(), this.zzf);
        zzezc zzy = this.zzd.zzy(zzbxjVar, i);
        zzbqf zza2 = zza.zza("google.afma.response.normalize", zzedx.zzd, zzbqm.zzb);
        if (((Boolean) zzbhb.zza.zze()).booleanValue()) {
            zzr = zzr(zzbxjVar.zzh);
            if (zzr == null) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = zzbxjVar.zzj;
            zzr = null;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but split request is disabled.");
            }
        }
        zzedv zzedvVar = zzr;
        zzflc zzn = zzedvVar == null ? zzflc.zzn(context, 9) : zzedvVar.zzd;
        zzflm zzf = zzy.zzf();
        zzf.zzb(zzbxjVar.zza.getStringArrayList("ad_types"));
        zzeeh zzeehVar = new zzeeh(zzbxjVar.zzg, zzf, zzn);
        zzeee zzeeeVar = new zzeee(context, zzbxjVar.zzb.afmaVersion, this.zzg, i, null);
        zzfks zze = zzy.zze();
        zzflc zzn2 = zzflc.zzn(context, 11);
        if (zzedvVar == null) {
            final ListenableFuture zzm = zzm(zzbxjVar, zze, zzy);
            final ListenableFuture zzn3 = zzn(zzm, zze, zza, zzf, zzn);
            zzflc zzn4 = zzflc.zzn(context, 10);
            final zzfjz zzi2 = zze.zzb(zzfkm.HTTP, zzn3, zzm).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzedt
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    Bundle bundle;
                    zzbxl zzbxlVar = (zzbxl) ListenableFuture.this.get();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() && (bundle = zzbxjVar.zzm) != null) {
                        bundle.putLong(zzduq.GET_AD_DICTIONARY_SDKCORE_START.zza(), zzbxlVar.zzj());
                        bundle.putLong(zzduq.GET_AD_DICTIONARY_SDKCORE_END.zza(), zzbxlVar.zzk());
                    }
                    return new zzeeg((JSONObject) zzm.get(), zzbxlVar);
                }
            }).zzb(zzeehVar).zzb(zzfll.zzc(zzn4)).zzb(zzeeeVar).zzi();
            zzfll.zzd(zzi2, zzf, zzn4);
            zzfll.zzb(zzi2, zzn2);
            zzi = zze.zzb(zzfkm.PRE_PROCESS, zzm, zzn3, zzi2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzedm
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    Bundle bundle;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() && (bundle = zzbxj.this.zzm) != null) {
                        bundle.putLong(zzduq.HTTP_RESPONSE_READY.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                    }
                    return new zzedx((zzeed) zzi2.get(), (JSONObject) zzm.get(), (zzbxl) zzn3.get());
                }
            }).zzc(zza2).zzi();
        } else {
            zzeeg zzeegVar = new zzeeg(zzedvVar.zzb, zzedvVar.zza);
            zzflc zzn5 = zzflc.zzn(context, 10);
            final zzfjz zzi3 = zze.zza(zzfkm.HTTP, zzgui.zza(zzeegVar)).zzb(zzeehVar).zzb(zzfll.zzc(zzn5)).zzb(zzeeeVar).zzi();
            zzfll.zzd(zzi3, zzf, zzn5);
            final ListenableFuture zza3 = zzgui.zza(zzedvVar);
            zzfll.zzb(zzi3, zzn2);
            zzi = zze.zzb(zzfkm.PRE_PROCESS, zzi3, zza3).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzedn
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    zzeed zzeedVar = (zzeed) ListenableFuture.this.get();
                    ListenableFuture listenableFuture = zza3;
                    return new zzedx(zzeedVar, ((zzedv) listenableFuture.get()).zzb, ((zzedv) listenableFuture.get()).zza);
                }
            }).zzc(zza2).zzi();
        }
        zzfll.zzd(zzi, zzf, zzn2);
        return zzi;
    }

    public final ListenableFuture zzc(final zzbxj zzbxjVar, int i) {
        if (!((Boolean) zzbhb.zza.zze()).booleanValue()) {
            return zzgui.zzc(new Exception("Split request is disabled."));
        }
        zzfij zzfijVar = zzbxjVar.zzi;
        if (zzfijVar == null) {
            return zzgui.zzc(new Exception("Pool configuration missing from request."));
        }
        if (zzfijVar.zzc == 0 || zzfijVar.zzd == 0) {
            return zzgui.zzc(new Exception("Caching is disabled."));
        }
        Context context = this.zza;
        zzbqp zza = com.google.android.gms.ads.internal.zzt.zzr().zza(context, VersionInfoParcel.forPackage(), this.zzf);
        zzezc zzy = this.zzd.zzy(zzbxjVar, i);
        zzfks zze = zzy.zze();
        final ListenableFuture zzm = zzm(zzbxjVar, zze, zzy);
        zzflm zzf = zzy.zzf();
        final zzflc zzn = zzflc.zzn(context, 9);
        final ListenableFuture zzn2 = zzn(zzm, zze, zza, zzf, zzn);
        return zze.zzb(zzfkm.GET_URL_AND_CACHE_KEY, zzm, zzn2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzedq
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzeea.this.zzl(zzn2, zzm, zzbxjVar, zzn);
            }
        }).zzi();
    }

    public final ListenableFuture zzd(String str) {
        if (!((Boolean) zzbhb.zza.zze()).booleanValue()) {
            return zzgui.zzc(new Exception("Split request is disabled."));
        }
        zzedk zzedkVar = new zzedk(this);
        if (zzr(str) != null) {
            return zzgui.zza(zzedkVar);
        }
        String.valueOf(str);
        return zzgui.zzc(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str))));
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zze(zzbxj zzbxjVar, zzbxb zzbxbVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() && (bundle = zzbxjVar.zzm) != null) {
            bundle.putLong(zzduq.SERVICE_CONNECTED.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        ListenableFuture zzb = zzb(zzbxjVar, Binder.getCallingUid());
        zzo(zzb, zzbxbVar, zzbxjVar);
        if (((Boolean) zzbgu.zzg.zze()).booleanValue()) {
            final zzeei zzeeiVar = this.zzc;
            Objects.requireNonNull(zzeeiVar);
            zzb.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedz
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzeei.this.zza();
                }
            }, this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzf(zzbxj zzbxjVar, zzbxb zzbxbVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcv)).booleanValue() && (bundle = zzbxjVar.zzm) != null) {
            bundle.putLong(zzduq.SERVICE_CONNECTED.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzo(zzk(zzbxjVar, Binder.getCallingUid()), zzbxbVar, zzbxjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzg(zzbxj zzbxjVar, zzbxb zzbxbVar) {
        zzo(zzc(zzbxjVar, Binder.getCallingUid()), zzbxbVar, zzbxjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzh(String str, zzbxb zzbxbVar) {
        zzo(zzd(str), zzbxbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzi(String str) throws RemoteException {
        int callingUid = Binder.getCallingUid();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoQ)).booleanValue()) {
            String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoR);
            if (str2.isEmpty()) {
                return;
            }
            Iterable<String> zzd = zzgms.zza(zzglr.zzc(AbstractJsonLexerKt.COMMA)).zzd(str2);
            com.google.android.gms.ads.internal.util.zze.zza("AdRequestServiceImpl: Preconnecting");
            for (String str3 : zzd) {
                Context context = this.zza;
                zzeee zzeeeVar = new zzeee(context, str, this.zzg, callingUid, FirebasePerformance.HttpMethod.HEAD);
                HashMap hashMap = new HashMap();
                hashMap.put(HttpHeaders.USER_AGENT, com.google.android.gms.ads.internal.zzt.zzc().zze(context, str));
                zzeec zzeecVar = new zzeec(str3, HttpUrlConnectionNetworkFetcher.HTTP_DEFAULT_TIMEOUT, hashMap, new byte[0], "", false);
                try {
                    zzeec zzeecVar2 = zzeecVar;
                    zzeed zza = zzeeeVar.zza(zzeecVar);
                    zzeed zzeedVar = zza;
                    if (zza.zza != 200) {
                        int i = zza.zza;
                        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 32);
                        sb.append("Unexpected preconnect response: ");
                        sb.append(i);
                        throw new RemoteException(sb.toString());
                    }
                } catch (Exception e) {
                    throw new RemoteException(e.getMessage());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzj(zzbwt zzbwtVar, zzbxc zzbxcVar) {
        if (((Boolean) zzbhj.zza.zze()).booleanValue()) {
            this.zzd.zzF();
            String str = zzbwtVar.zza;
            zzgui.zzr(zzgui.zza(null), new zzedj(this, zzbxcVar, zzbwtVar), zzcbv.zzg);
        } else {
            try {
                zzbxcVar.zze("", zzbwtVar);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
            }
        }
    }

    public final ListenableFuture zzk(final zzbxj zzbxjVar, int i) {
        zzbqg zzr = com.google.android.gms.ads.internal.zzt.zzr();
        Context context = this.zza;
        zzbqp zza = zzr.zza(context, VersionInfoParcel.forPackage(), this.zzf);
        if (!((Boolean) zzbhh.zza.zze()).booleanValue()) {
            return zzgui.zzc(new Exception("Signal collection disabled."));
        }
        zzezc zzy = this.zzd.zzy(zzbxjVar, i);
        final zzeyd zzd = zzy.zzd();
        zzbqf zza2 = zza.zza("google.afma.request.getSignals", zzbqm.zza, zzbqm.zzb);
        zzflc zzn = zzflc.zzn(context, 22);
        zzfks zze = zzy.zze();
        zzfkm zzfkmVar = zzfkm.GET_SIGNALS;
        Bundle bundle = zzbxjVar.zza;
        zzfjz zzi = zze.zza(zzfkmVar, zzgui.zza(bundle)).zzb(zzfll.zzc(zzn)).zzc(new zzgtq() { // from class: com.google.android.gms.internal.ads.zzedr
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzeyd.this.zza(com.google.android.gms.ads.internal.client.zzbb.zza().zzm((Bundle) obj), zzbxjVar.zzm, false);
            }
        }).zzj(zzfkm.JS_SIGNALS).zzc(zza2).zzi();
        zzflm zzf = zzy.zzf();
        zzf.zzb(bundle.getStringArrayList("ad_types"));
        zzf.zzd(bundle.getBundle("extras"));
        zzfll.zze(zzi, zzf, zzn);
        if (((Boolean) zzbgu.zzh.zze()).booleanValue()) {
            final zzeei zzeeiVar = this.zzc;
            Objects.requireNonNull(zzeeiVar);
            zzi.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedy
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzeei.this.zza();
                }
            }, this.zzb);
        }
        return zzi;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ InputStream zzl(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzbxj zzbxjVar, zzflc zzflcVar) {
        String zzi = ((zzbxl) listenableFuture.get()).zzi();
        zzq(new zzedv((zzbxl) listenableFuture.get(), (JSONObject) listenableFuture2.get(), zzbxjVar.zzh, zzi, zzflcVar));
        return new ByteArrayInputStream(zzi.getBytes(StandardCharsets.UTF_8));
    }
}
