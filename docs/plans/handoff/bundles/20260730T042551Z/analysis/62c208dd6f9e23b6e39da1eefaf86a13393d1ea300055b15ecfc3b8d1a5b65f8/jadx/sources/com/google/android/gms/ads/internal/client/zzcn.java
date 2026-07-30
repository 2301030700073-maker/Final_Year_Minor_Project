package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbfz;
import com.google.android.gms.internal.ads.zzbga;
import com.google.android.gms.internal.ads.zzbgf;
import com.google.android.gms.internal.ads.zzbgg;
import com.google.android.gms.internal.ads.zzbko;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbkr;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbsw;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbvz;
import com.google.android.gms.internal.ads.zzbwo;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbyu;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzcn extends zzaya implements zzcp {
    public zzcn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbu zzb(InterfaceC0456Qm interfaceC0456Qm, String str, zzbpe zzbpeVar, int i) {
        zzbu zzbsVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(3, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzbsVar = queryLocalInterface instanceof zzbu ? (zzbu) queryLocalInterface : new zzbs(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zzc(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        zzby zzbwVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(13, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbwVar = queryLocalInterface instanceof zzby ? (zzby) queryLocalInterface : new zzbw(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zzd(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        zzby zzbwVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(1, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbwVar = queryLocalInterface instanceof zzby ? (zzby) queryLocalInterface : new zzbw(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zze(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, zzbpe zzbpeVar, int i) {
        zzby zzbwVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(2, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbwVar = queryLocalInterface instanceof zzby ? (zzby) queryLocalInterface : new zzbw(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzby zzf(InterfaceC0456Qm interfaceC0456Qm, zzs zzsVar, String str, int i) {
        zzby zzbwVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzd(zza, zzsVar);
        zza.writeString(str);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(10, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbwVar = queryLocalInterface instanceof zzby ? (zzby) queryLocalInterface : new zzbw(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzci zzg(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        zzci zzcgVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(18, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzcgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
            zzcgVar = queryLocalInterface instanceof zzci ? (zzci) queryLocalInterface : new zzcg(readStrongBinder);
        }
        zzcZ.recycle();
        return zzcgVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzcz zzh(InterfaceC0456Qm interfaceC0456Qm, int i) {
        zzcz zzcxVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(9, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzcxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzcxVar = queryLocalInterface instanceof zzcz ? (zzcz) queryLocalInterface : new zzcx(readStrongBinder);
        }
        zzcZ.recycle();
        return zzcxVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzdu zzi(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        zzdu zzdsVar;
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(17, zza);
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzdsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            zzdsVar = queryLocalInterface instanceof zzdu ? (zzdu) queryLocalInterface : new zzds(readStrongBinder);
        }
        zzcZ.recycle();
        return zzdsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbga zzj(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, interfaceC0456Qm2);
        Parcel zzcZ = zzcZ(5, zza);
        zzbga zzdy = zzbfz.zzdy(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzdy;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbgg zzk(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, interfaceC0456Qm2);
        zzayc.zzf(zza, interfaceC0456Qm3);
        Parcel zzcZ = zzcZ(11, zza);
        zzbgg zze = zzbgf.zze(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbkr zzl(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i, zzbko zzbkoVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        zzayc.zzf(zza, zzbkoVar);
        Parcel zzcZ = zzcZ(16, zza);
        zzbkr zzb = zzbkq.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbsx zzm(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(15, zza);
        zzbsx zzb = zzbsw.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbte zzn(InterfaceC0456Qm interfaceC0456Qm) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        Parcel zzcZ = zzcZ(8, zza);
        zzbte zzI = zzbtd.zzI(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzI;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbvz zzo(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbwp zzp(InterfaceC0456Qm interfaceC0456Qm, String str, zzbpe zzbpeVar, int i) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zza.writeString(str);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(12, zza);
        zzbwp zzq = zzbwo.zzq(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzq;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcp
    public final zzbyu zzq(InterfaceC0456Qm interfaceC0456Qm, zzbpe zzbpeVar, int i) {
        Parcel zza = zza();
        zzayc.zzf(zza, interfaceC0456Qm);
        zzayc.zzf(zza, zzbpeVar);
        zza.writeInt(244410000);
        Parcel zzcZ = zzcZ(14, zza);
        zzbyu zzb = zzbyt.zzb(zzcZ.readStrongBinder());
        zzcZ.recycle();
        return zzb;
    }
}
