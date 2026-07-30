package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbmv implements zzbmn, zzbmm {
    private final zzcex zza;

    public zzbmv(Context context, VersionInfoParcel versionInfoParcel, zzava zzavaVar, com.google.android.gms.ads.internal.zza zzaVar) {
        com.google.android.gms.ads.internal.zzv.zzA();
        zzcex zza = zzcfk.zza(context, zzcgr.zza(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false, false, null, null, versionInfoParcel, null, null, null, zzbbj.zza(), null, null, null, null);
        this.zza = zza;
        zza.zzF().setWillNotDraw(true);
    }

    private static final void zzs(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzu()) {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
            if (com.google.android.gms.ads.internal.util.zzs.zza.post(runnable)) {
                return;
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzj("runOnUiThread > the runnable could not be placed to the message queue");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final void zza(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("invokeJavascript on adWebView from js");
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmr
            @Override // java.lang.Runnable
            public final void run() {
                zzbmv.this.zzm(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbml.zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zzc() {
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbml.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbml.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zzf(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadHtml on adWebView from html");
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbms
            @Override // java.lang.Runnable
            public final void run() {
                zzbmv.this.zzn(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zzg(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadHtmlWrapper on adWebView from path: ".concat(String.valueOf(str)));
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmp
            @Override // java.lang.Runnable
            public final void run() {
                zzbmv.this.zzo(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zzh(String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascript on adWebView from path: ".concat(String.valueOf(str)));
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmt
            @Override // java.lang.Runnable
            public final void run() {
                zzbmv.this.zzp(format);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final boolean zzi() {
        return this.zza.zzaE();
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final zzbnu zzj() {
        return new zzbnu(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zzk(final zzbmy zzbmyVar) {
        zzcgp zzN = this.zza.zzN();
        Objects.requireNonNull(zzbmyVar);
        zzN.zzJ(new zzcgo() { // from class: com.google.android.gms.internal.ads.zzbmq
            @Override // com.google.android.gms.internal.ads.zzcgo
            public final void zza() {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
                zzbmy zzbmyVar2 = zzbmy.this;
                final long j = zzbmyVar2.zzc;
                final ArrayList arrayList = zzbmyVar2.zzb;
                arrayList.add(Long.valueOf(currentTimeMillis - j));
                com.google.android.gms.ads.internal.util.zze.zza("LoadNewJavascriptEngine(onEngLoaded) latency is " + String.valueOf(arrayList.get(0)) + " ms.");
                zzfqw zzfqwVar = com.google.android.gms.ads.internal.util.zzs.zza;
                final zzbns zzbnsVar = zzbmyVar2.zza;
                final zzbnr zzbnrVar = zzbmyVar2.zzd;
                final zzbmn zzbmnVar = zzbmyVar2.zze;
                zzfqwVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbmz
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbns.this.zzj(zzbnrVar, zzbmnVar, arrayList, j);
                    }
                }, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzb)).intValue());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbmw
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbml.zzd(this, str, jSONObject);
    }

    public final /* synthetic */ void zzm(String str) {
        this.zza.zza(str);
    }

    public final /* synthetic */ void zzn(String str) {
        this.zza.loadData(str, "text/html", "UTF-8");
    }

    public final /* synthetic */ void zzo(String str) {
        this.zza.loadUrl(str);
    }

    public final /* synthetic */ void zzp(String str) {
        this.zza.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void zzq(String str, zzbjp zzbjpVar) {
        this.zza.zzag(str, new zzbmu(this, zzbjpVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void zzr(String str, final zzbjp zzbjpVar) {
        this.zza.zzaA(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbmo
            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzbjp zzbjpVar2;
                zzbjp zzbjpVar3 = (zzbjp) obj;
                if (!(zzbjpVar3 instanceof zzbmu)) {
                    return false;
                }
                zzbjp zzbjpVar4 = zzbjp.this;
                zzbjpVar2 = ((zzbmu) zzbjpVar3).zzb;
                return zzbjpVar2.equals(zzbjpVar4);
            }
        });
    }
}
