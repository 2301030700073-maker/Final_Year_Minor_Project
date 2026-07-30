package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.InterfaceC0456Qm;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfm extends zzcy {

    /* renamed from: do, reason: not valid java name */
    public zzblu f9669do;

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final float zze() {
        return 1.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final String zzf() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final List zzg() {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzh(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzi() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzj(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzk() {
        com.google.android.gms.ads.internal.util.client.zzo.zzg("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzfl
            @Override // java.lang.Runnable
            public final void run() {
                zzblu zzbluVar = zzfm.this.f9669do;
                if (zzbluVar != null) {
                    try {
                        zzbluVar.zzb(Collections.emptyList());
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not notify onComplete event.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzl(String str, InterfaceC0456Qm interfaceC0456Qm) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzm(zzdl zzdlVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzn(InterfaceC0456Qm interfaceC0456Qm, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzo(zzbpe zzbpeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzp(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzq(float f) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzr(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzs(zzblu zzbluVar) {
        this.f9669do = zzbluVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzt(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzu(zzfv zzfvVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final boolean zzv() {
        return false;
    }
}
