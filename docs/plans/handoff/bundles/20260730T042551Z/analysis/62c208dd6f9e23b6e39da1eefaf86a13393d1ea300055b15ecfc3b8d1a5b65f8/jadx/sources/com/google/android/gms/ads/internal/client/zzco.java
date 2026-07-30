package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbga;
import com.google.android.gms.internal.ads.zzbgg;
import com.google.android.gms.internal.ads.zzbkn;
import com.google.android.gms.internal.ads.zzbko;
import com.google.android.gms.internal.ads.zzbkr;
import com.google.android.gms.internal.ads.zzbpd;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbvz;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbyu;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzco extends zzayb implements zzcp {
    public zzco() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzs zzsVar = (zzs) zzayc.zza(parcel, zzs.CREATOR);
                String readString = parcel.readString();
                zzbpe zzf = zzbpd.zzf(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzayc.zzc(parcel);
                zzby zzd = zzd(n, zzsVar, readString, zzf, readInt);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzd);
                return true;
            case 2:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzs zzsVar2 = (zzs) zzayc.zza(parcel, zzs.CREATOR);
                String readString2 = parcel.readString();
                zzbpe zzf2 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzayc.zzc(parcel);
                zzby zze = zze(n2, zzsVar2, readString2, zzf2, readInt2);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zze);
                return true;
            case 3:
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                String readString3 = parcel.readString();
                zzbpe zzf3 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt3 = parcel.readInt();
                zzayc.zzc(parcel);
                zzbu zzb = zzb(n3, readString3, zzf3, readInt3);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzb);
                return true;
            case 4:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 5:
                InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzbga zzj = zzj(n4, n5);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzj);
                return true;
            case 6:
                InterfaceC0456Qm n6 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbpe zzf4 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt4 = parcel.readInt();
                zzayc.zzc(parcel);
                zzbvz zzo = zzo(n6, zzf4, readInt4);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzo);
                return true;
            case 7:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 8:
                InterfaceC0456Qm n7 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzbte zzn = zzn(n7);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzn);
                return true;
            case 9:
                InterfaceC0456Qm n8 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                int readInt5 = parcel.readInt();
                zzayc.zzc(parcel);
                zzcz zzh = zzh(n8, readInt5);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzh);
                return true;
            case 10:
                InterfaceC0456Qm n9 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzs zzsVar3 = (zzs) zzayc.zza(parcel, zzs.CREATOR);
                String readString4 = parcel.readString();
                int readInt6 = parcel.readInt();
                zzayc.zzc(parcel);
                zzby zzf5 = zzf(n9, zzsVar3, readString4, readInt6);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzf5);
                return true;
            case 11:
                InterfaceC0456Qm n10 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm n11 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm n12 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzbgg zzk = zzk(n10, n11, n12);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzk);
                return true;
            case 12:
                InterfaceC0456Qm n13 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                String readString5 = parcel.readString();
                zzbpe zzf6 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt7 = parcel.readInt();
                zzayc.zzc(parcel);
                zzbwp zzp = zzp(n13, readString5, zzf6, readInt7);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzp);
                return true;
            case 13:
                InterfaceC0456Qm n14 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzs zzsVar4 = (zzs) zzayc.zza(parcel, zzs.CREATOR);
                String readString6 = parcel.readString();
                zzbpe zzf7 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt8 = parcel.readInt();
                zzayc.zzc(parcel);
                zzby zzc = zzc(n14, zzsVar4, readString6, zzf7, readInt8);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzc);
                return true;
            case 14:
                InterfaceC0456Qm n15 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbpe zzf8 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt9 = parcel.readInt();
                zzayc.zzc(parcel);
                zzbyu zzq = zzq(n15, zzf8, readInt9);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzq);
                return true;
            case 15:
                InterfaceC0456Qm n16 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbpe zzf9 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt10 = parcel.readInt();
                zzayc.zzc(parcel);
                zzbsx zzm = zzm(n16, zzf9, readInt10);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzm);
                return true;
            case 16:
                InterfaceC0456Qm n17 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbpe zzf10 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt11 = parcel.readInt();
                zzbko zzc2 = zzbkn.zzc(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzbkr zzl = zzl(n17, zzf10, readInt11, zzc2);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzl);
                return true;
            case 17:
                InterfaceC0456Qm n18 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbpe zzf11 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt12 = parcel.readInt();
                zzayc.zzc(parcel);
                zzdu zzi = zzi(n18, zzf11, readInt12);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzi);
                return true;
            case 18:
                InterfaceC0456Qm n19 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbpe zzf12 = zzbpd.zzf(parcel.readStrongBinder());
                int readInt13 = parcel.readInt();
                zzayc.zzc(parcel);
                zzci zzg = zzg(n19, zzf12, readInt13);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzg);
                return true;
            default:
                return false;
        }
    }
}
