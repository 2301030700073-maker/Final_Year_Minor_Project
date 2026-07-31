package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import java.util.Objects;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbpe implements zzbow, zzbou {
    private final zzcgy zza;

    public zzbpe(Context context, VersionInfoParcel versionInfoParcel, zzaxa zzaxaVar, com.google.android.gms.ads.internal.zza zzaVar) throws zzchn {
        com.google.android.gms.ads.internal.zzt.zzd();
        zzcgy zza = zzcho.zza(context, zzcji.zzb(), "", false, false, null, null, versionInfoParcel, null, null, null, zzbdt.zza(), null, null, null, null, null);
        this.zza = zza;
        zza.zzE().setWillNotDraw(true);
    }

    private static final void zzs(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzbb.zza();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzz()) {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
            if (com.google.android.gms.ads.internal.util.zzs.zza.post(runnable)) {
                return;
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzi("runOnUiThread > the runnable could not be placed to the message queue");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpf
    public final void zza(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("invokeJavascript on adWebView from js");
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbpd
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbpe.this.zzo(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void zzf(String str) {
        String.valueOf(str);
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascript on adWebView from path: ".concat(String.valueOf(str)));
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzboz
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbpe.this.zzp(format);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void zzg(final String str) {
        String.valueOf(str);
        com.google.android.gms.ads.internal.util.zze.zza("loadHtmlWrapper on adWebView from path: ".concat(String.valueOf(str)));
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbpb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbpe.this.zzr(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void zzh(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("loadHtml on adWebView from html");
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbpa
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbpe.this.zzq(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void zzi(final zzbov zzbovVar) {
        zzciw zzP = this.zza.zzP();
        Objects.requireNonNull(zzbovVar);
        zzP.zzH(new zzciv() { // from class: com.google.android.gms.internal.ads.zzboy
            @Override // com.google.android.gms.internal.ads.zzciv
            public final /* synthetic */ void zza() {
                zzbov.this.zza();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void zzj() {
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final boolean zzk() {
        return this.zza.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final zzbqd zzl() {
        return new zzbqd(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzm(String str, zzblx zzblxVar) {
        this.zza.zzab(str, new zzbox(this, zzblxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzn(String str, final zzblx zzblxVar) {
        this.zza.zzad(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbpc
            @Override // com.google.android.gms.common.util.Predicate
            public final /* synthetic */ boolean apply(Object obj) {
                zzblx zzblxVar2 = (zzblx) obj;
                if (zzblxVar2 instanceof zzbox) {
                    return ((zzbox) zzblxVar2).zzb().equals(zzblx.this);
                }
                return false;
            }
        });
    }

    final /* synthetic */ void zzo(String str) {
        this.zza.zza(str);
    }

    final /* synthetic */ void zzp(String str) {
        this.zza.loadData(str, "text/html", "UTF-8");
    }

    final /* synthetic */ void zzq(String str) {
        this.zza.loadData(str, "text/html", "UTF-8");
    }

    final /* synthetic */ void zzr(String str) {
        this.zza.loadUrl(str);
    }
}
