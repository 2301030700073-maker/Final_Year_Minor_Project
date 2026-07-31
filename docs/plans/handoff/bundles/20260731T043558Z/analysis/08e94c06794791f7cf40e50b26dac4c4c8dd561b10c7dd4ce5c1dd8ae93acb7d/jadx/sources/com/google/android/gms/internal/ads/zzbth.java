package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbth extends zzbam implements zzbti {
    public zzbth() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbti zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzbti ? (zzbti) queryLocalInterface : new zzbtg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbtl zzbtlVar = null;
        zzbst zzbsrVar = null;
        zzbtc zzbtaVar = null;
        zzbsw zzbsuVar = null;
        zzbtf zzbtdVar = null;
        zzbtc zzbtaVar2 = null;
        zzbtf zzbtdVar2 = null;
        zzbsz zzbsxVar = null;
        zzbsw zzbsuVar2 = null;
        if (i == 1) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) zzban.zzb(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) zzban.zzb(parcel, Bundle.CREATOR);
            com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbtlVar = queryLocalInterface instanceof zzbtl ? (zzbtl) queryLocalInterface : new zzbtj(readStrongBinder);
            }
            zzbtl zzbtlVar2 = zzbtlVar;
            zzban.zzh(parcel);
            zze(asInterface, readString, bundle, bundle2, zzrVar, zzbtlVar2);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzbtx zzf = zzf();
            parcel2.writeNoException();
            zzban.zzd(parcel2, zzf);
        } else if (i == 3) {
            zzbtx zzg = zzg();
            parcel2.writeNoException();
            zzban.zzd(parcel2, zzg);
        } else if (i == 5) {
            com.google.android.gms.ads.internal.client.zzed zzh = zzh();
            parcel2.writeNoException();
            zzban.zze(parcel2, zzh);
        } else if (i == 10) {
            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzban.zzh(parcel);
            parcel2.writeNoException();
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbsuVar2 = queryLocalInterface2 instanceof zzbsw ? (zzbsw) queryLocalInterface2 : new zzbsu(readStrongBinder2);
                    }
                    zzbsw zzbswVar = zzbsuVar2;
                    zzbrp zzb = zzbro.zzb(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzr zzrVar2 = (com.google.android.gms.ads.internal.client.zzr) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                    zzban.zzh(parcel);
                    zzi(readString2, readString3, zzmVar, asInterface2, zzbswVar, zzb, zzrVar2);
                    parcel2.writeNoException();
                    break;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbsxVar = queryLocalInterface3 instanceof zzbsz ? (zzbsz) queryLocalInterface3 : new zzbsx(readStrongBinder3);
                    }
                    zzbsz zzbszVar = zzbsxVar;
                    zzbrp zzb2 = zzbro.zzb(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    zzj(readString4, readString5, zzmVar2, asInterface3, zzbszVar, zzb2);
                    parcel2.writeNoException();
                    break;
                case 15:
                    IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    boolean zzk = zzk(asInterface4);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzk ? 1 : 0);
                    break;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbtdVar2 = queryLocalInterface4 instanceof zzbtf ? (zzbtf) queryLocalInterface4 : new zzbtd(readStrongBinder4);
                    }
                    zzbtf zzbtfVar = zzbtdVar2;
                    zzbrp zzb3 = zzbro.zzb(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    zzl(readString6, readString7, zzmVar3, asInterface5, zzbtfVar, zzb3);
                    parcel2.writeNoException();
                    break;
                case 17:
                    IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    boolean zzm = zzm(asInterface6);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzm ? 1 : 0);
                    break;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbtaVar2 = queryLocalInterface5 instanceof zzbtc ? (zzbtc) queryLocalInterface5 : new zzbta(readStrongBinder5);
                    }
                    zzbtc zzbtcVar = zzbtaVar2;
                    zzbrp zzb4 = zzbro.zzb(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    zzn(readString8, readString9, zzmVar4, asInterface7, zzbtcVar, zzb4);
                    parcel2.writeNoException();
                    break;
                case 19:
                    String readString10 = parcel.readString();
                    zzban.zzh(parcel);
                    zzo(readString10);
                    parcel2.writeNoException();
                    break;
                case 20:
                    String readString11 = parcel.readString();
                    String readString12 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbtdVar = queryLocalInterface6 instanceof zzbtf ? (zzbtf) queryLocalInterface6 : new zzbtd(readStrongBinder6);
                    }
                    zzbtf zzbtfVar2 = zzbtdVar;
                    zzbrp zzb5 = zzbro.zzb(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    zzp(readString11, readString12, zzmVar5, asInterface8, zzbtfVar2, zzb5);
                    parcel2.writeNoException();
                    break;
                case 21:
                    String readString13 = parcel.readString();
                    String readString14 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 != null) {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbsuVar = queryLocalInterface7 instanceof zzbsw ? (zzbsw) queryLocalInterface7 : new zzbsu(readStrongBinder7);
                    }
                    zzbsw zzbswVar2 = zzbsuVar;
                    zzbrp zzb6 = zzbro.zzb(parcel.readStrongBinder());
                    com.google.android.gms.ads.internal.client.zzr zzrVar3 = (com.google.android.gms.ads.internal.client.zzr) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                    zzban.zzh(parcel);
                    zzq(readString13, readString14, zzmVar6, asInterface9, zzbswVar2, zzb6, zzrVar3);
                    parcel2.writeNoException();
                    break;
                case 22:
                    String readString15 = parcel.readString();
                    String readString16 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbtaVar = queryLocalInterface8 instanceof zzbtc ? (zzbtc) queryLocalInterface8 : new zzbta(readStrongBinder8);
                    }
                    zzbtc zzbtcVar2 = zzbtaVar;
                    zzbrp zzb7 = zzbro.zzb(parcel.readStrongBinder());
                    zzbhx zzbhxVar = (zzbhx) zzban.zzb(parcel, zzbhx.CREATOR);
                    zzban.zzh(parcel);
                    zzr(readString15, readString16, zzmVar7, asInterface10, zzbtcVar2, zzb7, zzbhxVar);
                    parcel2.writeNoException();
                    break;
                case 23:
                    String readString17 = parcel.readString();
                    String readString18 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                    IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder9 = parcel.readStrongBinder();
                    if (readStrongBinder9 != null) {
                        IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                        zzbsrVar = queryLocalInterface9 instanceof zzbst ? (zzbst) queryLocalInterface9 : new zzbsr(readStrongBinder9);
                    }
                    zzbst zzbstVar = zzbsrVar;
                    zzbrp zzb8 = zzbro.zzb(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    zzs(readString17, readString18, zzmVar8, asInterface11, zzbstVar, zzb8);
                    parcel2.writeNoException();
                    break;
                case 24:
                    IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzban.zzh(parcel);
                    boolean zzt = zzt(asInterface12);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzt ? 1 : 0);
                    break;
                default:
                    return false;
            }
        } else {
            parcel.createStringArray();
            zzban.zzh(parcel);
            parcel2.writeNoException();
        }
        return true;
    }
}
