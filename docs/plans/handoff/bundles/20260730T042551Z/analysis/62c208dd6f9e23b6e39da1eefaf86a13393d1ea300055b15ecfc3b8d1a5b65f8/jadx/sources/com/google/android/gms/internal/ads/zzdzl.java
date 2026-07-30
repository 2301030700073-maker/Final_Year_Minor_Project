package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.IOUtils;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdzl extends zzbux {
    private final Context zza;
    private final zzgcs zzb;
    private final zzdzt zzc;
    private final zzckx zzd;
    private final ArrayDeque zze;
    private final zzfhk zzf;
    private final zzbvs zzg;

    public zzdzl(Context context, zzgcs zzgcsVar, zzbvs zzbvsVar, zzckx zzckxVar, zzdzt zzdztVar, ArrayDeque arrayDeque, zzdzq zzdzqVar, zzfhk zzfhkVar) {
        zzbcl.zza(context);
        this.zza = context;
        this.zzb = zzgcsVar;
        this.zzg = zzbvsVar;
        this.zzc = zzdztVar;
        this.zzd = zzckxVar;
        this.zze = arrayDeque;
        this.zzf = zzfhkVar;
    }

    private final synchronized zzdzi zzl(String str) {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            zzdzi zzdziVar = (zzdzi) it.next();
            if (zzdziVar.zzc.equals(str)) {
                it.remove();
                return zzdziVar;
            }
        }
        return null;
    }

    private static InterfaceFutureC3942wq zzm(InterfaceFutureC3942wq interfaceFutureC3942wq, zzfgn zzfgnVar, zzbog zzbogVar, zzfhh zzfhhVar, zzfgw zzfgwVar) {
        zzbnw zza = zzbogVar.zza("AFMA_getAdDictionary", zzbod.zza, new zzbny() { // from class: com.google.android.gms.internal.ads.zzdzc
            @Override // com.google.android.gms.internal.ads.zzbny
            public final Object zza(JSONObject jSONObject) {
                return new zzbvm(jSONObject);
            }
        });
        zzfhg.zzd(interfaceFutureC3942wq, zzfgwVar);
        zzfft zza2 = zzfgnVar.zzb(zzfgh.BUILD_URL, interfaceFutureC3942wq).zzf(zza).zza();
        zzfhg.zzc(zza2, zzfhhVar, zzfgwVar);
        return zza2;
    }

    private static InterfaceFutureC3942wq zzn(final zzbvk zzbvkVar, zzfgn zzfgnVar, final zzeuu zzeuuVar) {
        zzgbo zzgboVar = new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdyw
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzeuu.this.zzb().zza(com.google.android.gms.ads.internal.client.zzbc.zzb().zzi((Bundle) obj), zzbvkVar.zzm, false);
            }
        };
        return zzfgnVar.zzb(zzfgh.GMS_SIGNALS, zzgch.zzh(zzbvkVar.zza)).zzf(zzgboVar).zze(new zzffr() { // from class: com.google.android.gms.internal.ads.zzdyx
            @Override // com.google.android.gms.internal.ads.zzffr
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza("Ad request signals:");
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zza();
    }

    private final synchronized void zzo(zzdzi zzdziVar) {
        zzp();
        this.zze.addLast(zzdziVar);
    }

    private final synchronized void zzp() {
        int intValue = ((Long) zzbes.zzb.zze()).intValue();
        while (this.zze.size() >= intValue) {
            this.zze.removeFirst();
        }
    }

    private final void zzq(InterfaceFutureC3942wq interfaceFutureC3942wq, zzbvc zzbvcVar, zzbvk zzbvkVar) {
        zzgch.zzr(zzgch.zzn(interfaceFutureC3942wq, new zzgbo(this) { // from class: com.google.android.gms.internal.ads.zzdzd
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                final InputStream inputStream = (InputStream) obj;
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
                final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
                zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdj
                    @Override // java.lang.Runnable
                    public final void run() {
                        InputStream inputStream2 = inputStream;
                        try {
                            try {
                                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor2);
                                try {
                                    IOUtils.copyStream(inputStream2, autoCloseOutputStream);
                                    autoCloseOutputStream.close();
                                    if (inputStream2 != null) {
                                        inputStream2.close();
                                    }
                                } finally {
                                }
                            } finally {
                            }
                        } catch (IOException unused) {
                        }
                    }
                });
                return zzgch.zzh(parcelFileDescriptor);
            }
        }, zzbzw.zza), new zzdzh(this, zzbvkVar, zzbvcVar), zzbzw.zzg);
    }

    public final InterfaceFutureC3942wq zzb(final zzbvk zzbvkVar, int i) {
        if (!((Boolean) zzbes.zza.zze()).booleanValue()) {
            return zzgch.zzg(new Exception("Split request is disabled."));
        }
        zzfed zzfedVar = zzbvkVar.zzi;
        if (zzfedVar == null) {
            return zzgch.zzg(new Exception("Pool configuration missing from request."));
        }
        if (zzfedVar.zzc == 0 || zzfedVar.zzd == 0) {
            return zzgch.zzg(new Exception("Caching is disabled."));
        }
        zzbog zzb = com.google.android.gms.ads.internal.zzv.zzg().zzb(this.zza, VersionInfoParcel.forPackage(), this.zzf);
        zzeuu zzr = this.zzd.zzr(zzbvkVar, i);
        zzfgn zzc = zzr.zzc();
        final InterfaceFutureC3942wq zzn = zzn(zzbvkVar, zzc, zzr);
        zzfhh zzd = zzr.zzd();
        final zzfgw zza = zzfgv.zza(this.zza, 9);
        final InterfaceFutureC3942wq zzm = zzm(zzn, zzc, zzb, zzd, zza);
        return zzc.zza(zzfgh.GET_URL_AND_CACHE_KEY, zzn, zzm).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdza
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdzl.this.zzk(zzm, zzn, zzbvkVar, zza);
            }
        }).zza();
    }

    public final InterfaceFutureC3942wq zzc(final zzbvk zzbvkVar, int i) {
        zzdzi zzl;
        zzfft zza;
        zzbog zzb = com.google.android.gms.ads.internal.zzv.zzg().zzb(this.zza, VersionInfoParcel.forPackage(), this.zzf);
        zzeuu zzr = this.zzd.zzr(zzbvkVar, i);
        zzbnw zza2 = zzb.zza("google.afma.response.normalize", zzdzk.zza, zzbod.zzb);
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            zzl = zzl(zzbvkVar.zzh);
            if (zzl == null) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = zzbvkVar.zzj;
            zzl = null;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza("Request contained a PoolKey but split request is disabled.");
            }
        }
        zzfgw zza3 = zzl == null ? zzfgv.zza(this.zza, 9) : zzl.zzd;
        zzfhh zzd = zzr.zzd();
        zzd.zzd(zzbvkVar.zza.getStringArrayList("ad_types"));
        zzdzs zzdzsVar = new zzdzs(zzbvkVar.zzg, zzd, zza3);
        zzdzp zzdzpVar = new zzdzp(this.zza, zzbvkVar.zzb.afmaVersion, this.zzg, i);
        zzfgn zzc = zzr.zzc();
        zzfgw zza4 = zzfgv.zza(this.zza, 11);
        if (zzl == null) {
            final InterfaceFutureC3942wq zzn = zzn(zzbvkVar, zzc, zzr);
            final InterfaceFutureC3942wq zzm = zzm(zzn, zzc, zzb, zzd, zza3);
            zzfgw zza5 = zzfgv.zza(this.zza, 10);
            final zzfft zza6 = zzc.zza(zzfgh.HTTP, zzm, zzn).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdyy
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzbvk zzbvkVar2;
                    Bundle bundle;
                    zzbvm zzbvmVar = (zzbvm) InterfaceFutureC3942wq.this.get();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() && (bundle = (zzbvkVar2 = zzbvkVar).zzm) != null) {
                        bundle.putLong(zzdre.GET_AD_DICTIONARY_SDKCORE_START.zza(), zzbvmVar.zzc());
                        zzbvkVar2.zzm.putLong(zzdre.GET_AD_DICTIONARY_SDKCORE_END.zza(), zzbvmVar.zzb());
                    }
                    return new zzdzr((JSONObject) zzn.get(), zzbvmVar);
                }
            }).zze(zzdzsVar).zze(new zzfhc(zza5)).zze(zzdzpVar).zza();
            zzfhg.zza(zza6, zzd, zza5);
            zzfhg.zzd(zza6, zza4);
            zza = zzc.zza(zzfgh.PRE_PROCESS, zzn, zzm, zza6).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdyz
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() && (bundle = zzbvk.this.zzm) != null) {
                        V1.m2496class(bundle, zzdre.HTTP_RESPONSE_READY.zza());
                    }
                    return new zzdzk((zzdzo) zza6.get(), (JSONObject) zzn.get(), (zzbvm) zzm.get());
                }
            }).zzf(zza2).zza();
        } else {
            zzdzr zzdzrVar = new zzdzr(zzl.zzb, zzl.zza);
            zzfgw zza7 = zzfgv.zza(this.zza, 10);
            final zzfft zza8 = zzc.zzb(zzfgh.HTTP, zzgch.zzh(zzdzrVar)).zze(zzdzsVar).zze(new zzfhc(zza7)).zze(zzdzpVar).zza();
            zzfhg.zza(zza8, zzd, zza7);
            final InterfaceFutureC3942wq zzh = zzgch.zzh(zzl);
            zzfhg.zzd(zza8, zza4);
            zza = zzc.zza(zzfgh.PRE_PROCESS, zza8, zzh).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdyv
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzdzo zzdzoVar = (zzdzo) InterfaceFutureC3942wq.this.get();
                    InterfaceFutureC3942wq interfaceFutureC3942wq = zzh;
                    return new zzdzk(zzdzoVar, ((zzdzi) interfaceFutureC3942wq.get()).zzb, ((zzdzi) interfaceFutureC3942wq.get()).zza);
                }
            }).zzf(zza2).zza();
        }
        zzfhg.zza(zza, zzd, zza4);
        return zza;
    }

    public final InterfaceFutureC3942wq zzd(final zzbvk zzbvkVar, int i) {
        zzbog zzb = com.google.android.gms.ads.internal.zzv.zzg().zzb(this.zza, VersionInfoParcel.forPackage(), this.zzf);
        if (!((Boolean) zzbex.zza.zze()).booleanValue()) {
            return zzgch.zzg(new Exception("Signal collection disabled."));
        }
        zzeuu zzr = this.zzd.zzr(zzbvkVar, i);
        final zzetu zza = zzr.zza();
        zzbnw zza2 = zzb.zza("google.afma.request.getSignals", zzbod.zza, zzbod.zzb);
        zzfgw zza3 = zzfgv.zza(this.zza, 22);
        zzfft zza4 = zzr.zzc().zzb(zzfgh.GET_SIGNALS, zzgch.zzh(zzbvkVar.zza)).zze(new zzfhc(zza3)).zzf(new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdze
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzetu.this.zza(com.google.android.gms.ads.internal.client.zzbc.zzb().zzi((Bundle) obj), zzbvkVar.zzm, false);
            }
        }).zzb(zzfgh.JS_SIGNALS).zzf(zza2).zza();
        zzfhh zzd = zzr.zzd();
        zzd.zzd(zzbvkVar.zza.getStringArrayList("ad_types"));
        zzd.zzf(zzbvkVar.zza.getBundle("extras"));
        zzfhg.zzb(zza4, zzd, zza3);
        if (((Boolean) zzbel.zzf.zze()).booleanValue()) {
            zzdzt zzdztVar = this.zzc;
            Objects.requireNonNull(zzdztVar);
            zza4.addListener(new zzdzb(zzdztVar), this.zzb);
        }
        return zza4;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void zze(zzbvk zzbvkVar, zzbvc zzbvcVar) {
        zzq(zzb(zzbvkVar, Binder.getCallingUid()), zzbvcVar, zzbvkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void zzf(zzbvk zzbvkVar, zzbvc zzbvcVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() && (bundle = zzbvkVar.zzm) != null) {
            V1.m2496class(bundle, zzdre.SERVICE_CONNECTED.zza());
        }
        zzq(zzd(zzbvkVar, Binder.getCallingUid()), zzbvcVar, zzbvkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void zzg(zzbvk zzbvkVar, zzbvc zzbvcVar) {
        Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() && (bundle = zzbvkVar.zzm) != null) {
            V1.m2496class(bundle, zzdre.SERVICE_CONNECTED.zza());
        }
        InterfaceFutureC3942wq zzc = zzc(zzbvkVar, Binder.getCallingUid());
        zzq(zzc, zzbvcVar, zzbvkVar);
        if (((Boolean) zzbel.zze.zze()).booleanValue()) {
            zzdzt zzdztVar = this.zzc;
            Objects.requireNonNull(zzdztVar);
            zzc.addListener(new zzdzb(zzdztVar), this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void zzh(String str, zzbvc zzbvcVar) {
        zzq(zzj(str), zzbvcVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void zzi(zzbuu zzbuuVar, zzbvd zzbvdVar) {
        if (((Boolean) zzbez.zza.zze()).booleanValue()) {
            this.zzd.zzF();
            String str = zzbuuVar.zza;
            zzgch.zzr(zzgch.zzh(null), new zzdzf(this, zzbvdVar, zzbuuVar), zzbzw.zzg);
        } else {
            try {
                zzbvdVar.zzf(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, zzbuuVar);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
            }
        }
    }

    public final InterfaceFutureC3942wq zzj(String str) {
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            return zzl(str) == null ? zzgch.zzg(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str)))) : zzgch.zzh(new zzdzg(this));
        }
        return zzgch.zzg(new Exception("Split request is disabled."));
    }

    public final /* synthetic */ InputStream zzk(InterfaceFutureC3942wq interfaceFutureC3942wq, InterfaceFutureC3942wq interfaceFutureC3942wq2, zzbvk zzbvkVar, zzfgw zzfgwVar) {
        String zze = ((zzbvm) interfaceFutureC3942wq.get()).zze();
        zzo(new zzdzi((zzbvm) interfaceFutureC3942wq.get(), (JSONObject) interfaceFutureC3942wq2.get(), zzbvkVar.zzh, zze, zzfgwVar));
        return new ByteArrayInputStream(zze.getBytes(StandardCharsets.UTF_8));
    }
}
