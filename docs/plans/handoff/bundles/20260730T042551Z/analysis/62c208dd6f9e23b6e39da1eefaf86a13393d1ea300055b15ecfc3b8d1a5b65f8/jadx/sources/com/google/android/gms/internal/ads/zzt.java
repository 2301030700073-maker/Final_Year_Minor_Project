package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.Cif;
import j$.util.Objects;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzt implements Parcelable {
    public static final Parcelable.Creator<zzt> CREATOR = new zzs();
    public final UUID zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;
    private int zze;

    public zzt(Parcel parcel) {
        this.zza = new UUID(parcel.readLong(), parcel.readLong());
        this.zzb = parcel.readString();
        String readString = parcel.readString();
        int i = zzei.zza;
        this.zzc = readString;
        this.zzd = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzt)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzt zztVar = (zzt) obj;
        return Objects.equals(this.zzb, zztVar.zzb) && Objects.equals(this.zzc, zztVar.zzc) && Objects.equals(this.zza, zztVar.zza) && Arrays.equals(this.zzd, zztVar.zzd);
    }

    public final int hashCode() {
        int i = this.zze;
        if (i != 0) {
            return i;
        }
        int hashCode = this.zza.hashCode() * 31;
        String str = this.zzb;
        int m6915for = Cif.m6915for(this.zzc, (hashCode + (str == null ? 0 : str.hashCode())) * 31, 31) + Arrays.hashCode(this.zzd);
        this.zze = m6915for;
        return m6915for;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zza.getMostSignificantBits());
        parcel.writeLong(this.zza.getLeastSignificantBits());
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    public zzt(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.zza = uuid;
        this.zzb = null;
        this.zzc = zzbb.zze(str2);
        this.zzd = bArr;
    }
}
