package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import defpackage.BinderC3652rv;
import defpackage.C2680eE;
import defpackage.F2;
import defpackage.InterfaceC0456Qm;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdmt extends zzbgp {
    private final Context zza;
    private final zzdif zzb;
    private zzdjf zzc;
    private zzdia zzd;

    public zzdmt(Context context, zzdif zzdifVar, zzdjf zzdjfVar, zzdia zzdiaVar) {
        this.zza = context;
        this.zzb = zzdifVar;
        this.zzc = zzdjfVar;
        this.zzd = zzdiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final com.google.android.gms.ads.internal.client.zzeb zze() {
        return this.zzb.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final zzbft zzf() {
        try {
            return this.zzd.zzc().zza();
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InternalNativeCustomTemplateAdShim.getMediaContent");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final zzbfw zzg(String str) {
        return (zzbfw) this.zzb.zzh().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final InterfaceC0456Qm zzh() {
        return new BinderC3652rv(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final String zzi() {
        return this.zzb.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final String zzj(String str) {
        return (String) this.zzb.zzi().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final List zzk() {
        try {
            C2680eE zzh = this.zzb.zzh();
            C2680eE zzi = this.zzb.zzi();
            String[] strArr = new String[zzh.f12632for + zzi.f12632for];
            int i = 0;
            for (int i2 = 0; i2 < zzh.f12632for; i2++) {
                strArr[i] = (String) zzh.m6527goto(i2);
                i++;
            }
            for (int i3 = 0; i3 < zzi.f12632for; i3++) {
                strArr[i] = (String) zzi.m6527goto(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames");
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzl() {
        zzdia zzdiaVar = this.zzd;
        if (zzdiaVar != null) {
            zzdiaVar.zzb();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzm() {
        try {
            String zzC = this.zzb.zzC();
            if (Objects.equals(zzC, "Google")) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Illegal argument specified for omid partner name.");
                return;
            }
            if (TextUtils.isEmpty(zzC)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not starting OMID session. OM partner name has not been configured.");
                return;
            }
            zzdia zzdiaVar = this.zzd;
            if (zzdiaVar != null) {
                zzdiaVar.zzf(zzC, false);
            }
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzn(String str) {
        zzdia zzdiaVar = this.zzd;
        if (zzdiaVar != null) {
            zzdiaVar.zzF(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzo() {
        zzdia zzdiaVar = this.zzd;
        if (zzdiaVar != null) {
            zzdiaVar.zzJ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final void zzp(InterfaceC0456Qm interfaceC0456Qm) {
        zzdia zzdiaVar;
        Object o = BinderC3652rv.o(interfaceC0456Qm);
        if (!(o instanceof View) || this.zzb.zzu() == null || (zzdiaVar = this.zzd) == null) {
            return;
        }
        zzdiaVar.zzK((View) o);
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzq() {
        zzdia zzdiaVar = this.zzd;
        return (zzdiaVar == null || zzdiaVar.zzX()) && this.zzb.zzr() != null && this.zzb.zzs() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzr(InterfaceC0456Qm interfaceC0456Qm) {
        zzdjf zzdjfVar;
        Object o = BinderC3652rv.o(interfaceC0456Qm);
        if (!(o instanceof ViewGroup) || (zzdjfVar = this.zzc) == null || !zzdjfVar.zzf((ViewGroup) o)) {
            return false;
        }
        this.zzb.zzq().zzar(new zzdms(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzs(InterfaceC0456Qm interfaceC0456Qm) {
        zzdjf zzdjfVar;
        Object o = BinderC3652rv.o(interfaceC0456Qm);
        if (!(o instanceof ViewGroup) || (zzdjfVar = this.zzc) == null || !zzdjfVar.zzg((ViewGroup) o)) {
            return false;
        }
        this.zzb.zzs().zzar(new zzdms(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbgq
    public final boolean zzt() {
        zzecr zzu = this.zzb.zzu();
        if (zzu == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Trying to start OMID session before creation.");
            return false;
        }
        com.google.android.gms.ads.internal.zzv.zzB().zzk(zzu.zza());
        if (this.zzb.zzr() == null) {
            return true;
        }
        this.zzb.zzr().zzd("onSdkLoaded", new F2());
        return true;
    }
}
