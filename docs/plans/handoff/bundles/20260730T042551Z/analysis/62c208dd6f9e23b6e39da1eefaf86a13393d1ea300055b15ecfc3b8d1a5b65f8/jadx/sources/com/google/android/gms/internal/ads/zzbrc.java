package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbrc extends zzayb implements zzbrd {
    public zzbrc() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbrd zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzbrd ? (zzbrd) queryLocalInterface : new zzbrb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbrg zzbrgVar = null;
        zzbqo zzbqmVar = null;
        zzbqx zzbqvVar = null;
        zzbqr zzbqpVar = null;
        zzbra zzbqyVar = null;
        zzbqx zzbqvVar2 = null;
        zzbra zzbqyVar2 = null;
        zzbqu zzbqsVar = null;
        zzbqr zzbqpVar2 = null;
        if (i == 1) {
            InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            String readString = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzayc.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzayc.zza(parcel, creator);
            com.google.android.gms.ads.internal.client.zzs zzsVar = (com.google.android.gms.ads.internal.client.zzs) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzs.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbrgVar = queryLocalInterface instanceof zzbrg ? (zzbrg) queryLocalInterface : new zzbre(readStrongBinder);
            }
            zzbrg zzbrgVar2 = zzbrgVar;
            zzayc.zzc(parcel);
            zzh(n, readString, bundle, bundle2, zzsVar, zzbrgVar2);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzbrs zzf = zzf();
            parcel2.writeNoException();
            zzayc.zze(parcel2, zzf);
        } else if (i == 3) {
            zzbrs zzg = zzg();
            parcel2.writeNoException();
            zzayc.zze(parcel2, zzg);
        } else if (i == 5) {
            com.google.android.gms.ads.internal.client.zzeb zze = zze();
            parcel2.writeNoException();
            zzayc.zzf(parcel2, zze);
        } else if (i == 10) {
            InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
            zzayc.zzc(parcel);
            parcel2.writeNoException();
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbqpVar2 = queryLocalInterface2 instanceof zzbqr ? (zzbqr) queryLocalInterface2 : new zzbqp(readStrongBinder2);
                    }
                    zzbqr zzbqrVar = zzbqpVar2;
                    zzbpk zzb = zzbpj.zzb(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzs zzsVar2 = (com.google.android.gms.ads.internal.client.zzs) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzs.CREATOR);
                    zzayc.zzc(parcel);
                    zzj(readString2, readString3, zzmVar, n2, zzbqrVar, zzb, zzsVar2);
                    parcel2.writeNoException();
                    break;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbqsVar = queryLocalInterface3 instanceof zzbqu ? (zzbqu) queryLocalInterface3 : new zzbqs(readStrongBinder3);
                    }
                    zzbqu zzbquVar = zzbqsVar;
                    zzbpk zzb2 = zzbpj.zzb(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    zzl(readString4, readString5, zzmVar2, n3, zzbquVar, zzb2);
                    parcel2.writeNoException();
                    break;
                case 15:
                    InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    boolean zzs = zzs(n4);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzs ? 1 : 0);
                    break;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbqyVar2 = queryLocalInterface4 instanceof zzbra ? (zzbra) queryLocalInterface4 : new zzbqy(readStrongBinder4);
                    }
                    zzbra zzbraVar = zzbqyVar2;
                    zzbpk zzb3 = zzbpj.zzb(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    zzp(readString6, readString7, zzmVar3, n5, zzbraVar, zzb3);
                    parcel2.writeNoException();
                    break;
                case 17:
                    InterfaceC0456Qm n6 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    boolean zzt = zzt(n6);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzt ? 1 : 0);
                    break;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n7 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbqvVar2 = queryLocalInterface5 instanceof zzbqx ? (zzbqx) queryLocalInterface5 : new zzbqv(readStrongBinder5);
                    }
                    zzbqx zzbqxVar = zzbqvVar2;
                    zzbpk zzb4 = zzbpj.zzb(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    zzm(readString8, readString9, zzmVar4, n7, zzbqxVar, zzb4);
                    parcel2.writeNoException();
                    break;
                case 19:
                    String readString10 = parcel.readString();
                    zzayc.zzc(parcel);
                    zzq(readString10);
                    parcel2.writeNoException();
                    break;
                case 20:
                    String readString11 = parcel.readString();
                    String readString12 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n8 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbqyVar = queryLocalInterface6 instanceof zzbra ? (zzbra) queryLocalInterface6 : new zzbqy(readStrongBinder6);
                    }
                    zzbra zzbraVar2 = zzbqyVar;
                    zzbpk zzb5 = zzbpj.zzb(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    zzo(readString11, readString12, zzmVar5, n8, zzbraVar2, zzb5);
                    parcel2.writeNoException();
                    break;
                case 21:
                    String readString13 = parcel.readString();
                    String readString14 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n9 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 != null) {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbqpVar = queryLocalInterface7 instanceof zzbqr ? (zzbqr) queryLocalInterface7 : new zzbqp(readStrongBinder7);
                    }
                    zzbqr zzbqrVar2 = zzbqpVar;
                    zzbpk zzb6 = zzbpj.zzb(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzs zzsVar3 = (com.google.android.gms.ads.internal.client.zzs) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzs.CREATOR);
                    zzayc.zzc(parcel);
                    zzk(readString13, readString14, zzmVar6, n9, zzbqrVar2, zzb6, zzsVar3);
                    parcel2.writeNoException();
                    break;
                case 22:
                    String readString15 = parcel.readString();
                    String readString16 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n10 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbqvVar = queryLocalInterface8 instanceof zzbqx ? (zzbqx) queryLocalInterface8 : new zzbqv(readStrongBinder8);
                    }
                    zzbqx zzbqxVar2 = zzbqvVar;
                    zzbpk zzb7 = zzbpj.zzb(parcel.readStrongBinder());
                    zzbfl zzbflVar = (zzbfl) zzayc.zza(parcel, zzbfl.CREATOR);
                    zzayc.zzc(parcel);
                    zzn(readString15, readString16, zzmVar7, n10, zzbqxVar2, zzb7, zzbflVar);
                    parcel2.writeNoException();
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    String readString17 = parcel.readString();
                    String readString18 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    InterfaceC0456Qm n11 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    IBinder readStrongBinder9 = parcel.readStrongBinder();
                    if (readStrongBinder9 != null) {
                        IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                        zzbqmVar = queryLocalInterface9 instanceof zzbqo ? (zzbqo) queryLocalInterface9 : new zzbqm(readStrongBinder9);
                    }
                    zzbqo zzbqoVar = zzbqmVar;
                    zzbpk zzb8 = zzbpj.zzb(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    zzi(readString17, readString18, zzmVar8, n11, zzbqoVar, zzb8);
                    parcel2.writeNoException();
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    InterfaceC0456Qm n12 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                    zzayc.zzc(parcel);
                    boolean zzr = zzr(n12);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzr ? 1 : 0);
                    break;
                default:
                    return false;
            }
        } else {
            parcel.createStringArray();
            zzayc.zzc(parcel);
            parcel2.writeNoException();
        }
        return true;
    }
}
