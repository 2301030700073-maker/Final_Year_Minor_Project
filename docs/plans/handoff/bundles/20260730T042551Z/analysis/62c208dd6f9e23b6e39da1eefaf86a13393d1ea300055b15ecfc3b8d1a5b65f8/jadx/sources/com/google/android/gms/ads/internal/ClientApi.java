package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.ads.internal.client.zzby;
import com.google.android.gms.ads.internal.client.zzci;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.ads.internal.client.zzcz;
import com.google.android.gms.ads.internal.client.zzdu;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzaf;
import com.google.android.gms.ads.internal.overlay.zzah;
import com.google.android.gms.ads.internal.overlay.zzai;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbga;
import com.google.android.gms.internal.ads.zzbgg;
import com.google.android.gms.internal.ads.zzbko;
import com.google.android.gms.internal.ads.zzbkr;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbvz;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbyu;
import com.google.android.gms.internal.ads.zzcgx;
import com.google.android.gms.internal.ads.zzdiz;
import com.google.android.gms.internal.ads.zzdjb;
import com.google.android.gms.internal.ads.zzdtg;
import com.google.android.gms.internal.ads.zzejq;
import com.google.android.gms.internal.ads.zzewo;
import com.google.android.gms.internal.ads.zzeyc;
import com.google.android.gms.internal.ads.zzezt;
import com.google.android.gms.internal.ads.zzfbh;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ClientApi extends zzco {
    @KeepForSdk
    public ClientApi() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbu zzb(InterfaceC0456Qm interfaceC0456Qm, String str, zzbpe zzbpeVar, int i) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        return new zzejq(zzcgx.zzb(context, zzbpeVar, i), context, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zzc(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        zzewo zzt = zzcgx.zzb(context, zzbpeVar, i).zzt();
        zzt.zza(str);
        zzt.zzb(context);
        return zzt.zzc().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zzd(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        zzeyc zzu = zzcgx.zzb(context, zzbpeVar, i).zzu();
        zzu.zzc(context);
        zzu.zza(zzsVar);
        zzu.zzb(str);
        return zzu.zzd().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zze(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        zzezt zzv = zzcgx.zzb(context, zzbpeVar, i).zzv();
        zzv.zzc(context);
        zzv.zza(zzsVar);
        zzv.zzb(str);
        return zzv.zzd().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zzf(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, int i) {
        return new zzu((Context) BinderC3652rv.o(interfaceC0456Qm), zzsVar, str, new VersionInfoParcel(244410000, i, true, false));
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzci zzg(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        return zzcgx.zzb((Context) BinderC3652rv.o(interfaceC0456Qm), zzbpeVar, i).zzA();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzcz zzh(InterfaceC0456Qm interfaceC0456Qm, int i) {
        return zzcgx.zzb((Context) BinderC3652rv.o(interfaceC0456Qm), null, i).zzc();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzdu zzi(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        return zzcgx.zzb((Context) BinderC3652rv.o(interfaceC0456Qm), zzbpeVar, i).zzm();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbga zzj(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2) {
        return new zzdjb((FrameLayout) BinderC3652rv.o(interfaceC0456Qm), (FrameLayout) BinderC3652rv.o(interfaceC0456Qm2), 244410000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbgg zzk(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        return new zzdiz((View) BinderC3652rv.o(interfaceC0456Qm), (HashMap) BinderC3652rv.o(interfaceC0456Qm2), (HashMap) BinderC3652rv.o(interfaceC0456Qm3));
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbkr zzl(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i, zzbko zzbkoVar) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        zzdtg zzk = zzcgx.zzb(context, zzbpeVar, i).zzk();
        zzk.zzb(context);
        zzk.zza(zzbkoVar);
        return zzk.zzc().zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbsx zzm(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        return zzcgx.zzb((Context) BinderC3652rv.o(interfaceC0456Qm), zzbpeVar, i).zzn();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbte zzn(InterfaceC0456Qm interfaceC0456Qm) {
        Activity activity = (Activity) BinderC3652rv.o(interfaceC0456Qm);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            return new zzw(activity);
        }
        int i = zza.zzk;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new zzw(activity) : new zzaf(activity) : new zzab(activity, zza) : new zzai(activity) : new zzah(activity) : new com.google.android.gms.ads.internal.overlay.zzv(activity);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbvz zzo(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        zzfbh zzw = zzcgx.zzb(context, zzbpeVar, i).zzw();
        zzw.zzb(context);
        return zzw.zzc().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbwp zzp(InterfaceC0456Qm interfaceC0456Qm, String str, zzbpe zzbpeVar, int i) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        zzfbh zzw = zzcgx.zzb(context, zzbpeVar, i).zzw();
        zzw.zzb(context);
        zzw.zza(str);
        return zzw.zzc().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbyu zzq(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        return zzcgx.zzb((Context) BinderC3652rv.o(interfaceC0456Qm), zzbpeVar, i).zzq();
    }
}
