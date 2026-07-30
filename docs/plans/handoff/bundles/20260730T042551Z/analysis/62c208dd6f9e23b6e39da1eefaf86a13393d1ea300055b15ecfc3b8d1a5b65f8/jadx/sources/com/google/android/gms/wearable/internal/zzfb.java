package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.MessageOptions;
import com.google.android.gms.wearable.PutDataRequest;

/* loaded from: classes3.dex */
public final class zzfb extends com.google.android.gms.internal.wearable.zza {
    public zzfb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableService");
    }

    public final void zzA(zzex zzexVar, String str, String str2, byte[] bArr, MessageOptions messageOptions) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeByteArray(bArr);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, messageOptions);
        zzJ(59, zza);
    }

    public final void zzB(zzex zzexVar, String str, String str2, byte[] bArr) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeByteArray(bArr);
        zzJ(58, zza);
    }

    public final void zzC(zzex zzexVar, String str, ParcelFileDescriptor parcelFileDescriptor) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, parcelFileDescriptor);
        zzJ(38, zza);
    }

    public final void zzd(zzex zzexVar, zzd zzdVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, zzdVar);
        zzJ(16, zza);
    }

    public final void zze(zzex zzexVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zzJ(46, zza);
    }

    public final void zzf(zzex zzexVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zzJ(32, zza);
    }

    public final void zzg(zzex zzexVar, String str, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zza.writeInt(i);
        zzJ(33, zza);
    }

    public final void zzh(zzex zzexVar, Uri uri, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, uri);
        zza.writeInt(i);
        zzJ(41, zza);
    }

    public final void zzi(zzex zzexVar, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeInt(i);
        zzJ(43, zza);
    }

    public final void zzj(zzex zzexVar, String str, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zza.writeInt(i);
        zzJ(42, zza);
    }

    public final void zzk(zzex zzexVar, zzeu zzeuVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzeuVar);
        zza.writeString(str);
        zzJ(34, zza);
    }

    public final void zzl(zzex zzexVar, zzeu zzeuVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzeuVar);
        zza.writeString(str);
        zzJ(35, zza);
    }

    public final void zzm(zzex zzexVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zzJ(63, zza);
    }

    public final void zzn(zzex zzexVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zzJ(15, zza);
    }

    public final void zzo(zzex zzexVar, Uri uri) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, uri);
        zzJ(7, zza);
    }

    public final void zzp(zzex zzexVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zzJ(8, zza);
    }

    public final void zzq(zzex zzexVar, Uri uri, int i) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, uri);
        zza.writeInt(i);
        zzJ(40, zza);
    }

    public final void zzr(zzex zzexVar, Asset asset) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, asset);
        zzJ(13, zza);
    }

    public final void zzs(zzex zzexVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zzJ(14, zza);
    }

    public final void zzt(zzex zzexVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zzJ(67, zza);
    }

    public final void zzu(zzex zzexVar, String str, String str2) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzJ(31, zza);
    }

    public final void zzv(zzex zzexVar, PutDataRequest putDataRequest) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, putDataRequest);
        zzJ(6, zza);
    }

    public final void zzw(zzex zzexVar, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, parcelFileDescriptor);
        zza.writeLong(j);
        zza.writeLong(j2);
        zzJ(39, zza);
    }

    public final void zzx(zzex zzexVar, zzgw zzgwVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        com.google.android.gms.internal.wearable.zzc.zzd(zza, zzgwVar);
        zzJ(17, zza);
    }

    public final void zzy(zzex zzexVar, String str) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zzJ(47, zza);
    }

    public final void zzz(zzex zzexVar, String str, String str2, byte[] bArr) {
        Parcel zza = zza();
        com.google.android.gms.internal.wearable.zzc.zze(zza, zzexVar);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeByteArray(bArr);
        zzJ(12, zza);
    }
}
