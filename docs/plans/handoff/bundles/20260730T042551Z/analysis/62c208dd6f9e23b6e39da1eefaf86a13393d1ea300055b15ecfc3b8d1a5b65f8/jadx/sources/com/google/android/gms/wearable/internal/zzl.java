package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.Cif;

@SafeParcelable.Class(creator = "AncsNotificationParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzl extends AbstractSafeParcelable implements com.google.android.gms.wearable.zzb {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();

    @SafeParcelable.Field(getter = "getId", id = 2)
    private final int zza;

    @SafeParcelable.Field(getter = "getAppId", id = 3)
    private final String zzb;

    @SafeParcelable.Field(getter = "getDateTime", id = 4)
    private final String zzc;

    @SafeParcelable.Field(getter = "getNotificationText", id = 5)
    private final String zzd;

    @SafeParcelable.Field(getter = "getTitle", id = 6)
    private final String zze;

    @SafeParcelable.Field(getter = "getSubtitle", id = 7)
    private final String zzf;

    @SafeParcelable.Field(getter = "getDisplayName", id = 8)
    private final String zzg;

    @SafeParcelable.Field(getter = "getEventId", id = 9)
    private final byte zzh;

    @SafeParcelable.Field(getter = "getEventFlags", id = 10)
    private final byte zzi;

    @SafeParcelable.Field(getter = "getCategoryId", id = 11)
    private final byte zzj;

    @SafeParcelable.Field(getter = "getCategoryCount", id = 12)
    private final byte zzk;

    @SafeParcelable.Field(getter = "getPackageName", id = 13)
    private final String zzl;

    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4, @SafeParcelable.Param(id = 7) String str5, @SafeParcelable.Param(id = 8) String str6, @SafeParcelable.Param(id = 9) byte b, @SafeParcelable.Param(id = 10) byte b2, @SafeParcelable.Param(id = 11) byte b3, @SafeParcelable.Param(id = 12) byte b4, @SafeParcelable.Param(id = 13) String str7) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = str5;
        this.zzg = str6;
        this.zzh = b;
        this.zzi = b2;
        this.zzj = b3;
        this.zzk = b4;
        this.zzl = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzl.class != obj.getClass()) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        if (this.zza != zzlVar.zza || this.zzh != zzlVar.zzh || this.zzi != zzlVar.zzi || this.zzj != zzlVar.zzj || this.zzk != zzlVar.zzk || !this.zzb.equals(zzlVar.zzb)) {
            return false;
        }
        String str = this.zzc;
        if (str == null ? zzlVar.zzc != null : !str.equals(zzlVar.zzc)) {
            return false;
        }
        if (!this.zzd.equals(zzlVar.zzd) || !this.zze.equals(zzlVar.zze) || !this.zzf.equals(zzlVar.zzf)) {
            return false;
        }
        String str2 = this.zzg;
        if (str2 == null ? zzlVar.zzg != null : !str2.equals(zzlVar.zzg)) {
            return false;
        }
        String str3 = this.zzl;
        return str3 != null ? str3.equals(zzlVar.zzl) : zzlVar.zzl == null;
    }

    public final int hashCode() {
        int m6915for = Cif.m6915for(this.zzb, (this.zza + 31) * 31, 31);
        String str = this.zzc;
        int m6915for2 = Cif.m6915for(this.zzf, Cif.m6915for(this.zze, Cif.m6915for(this.zzd, (m6915for + (str != null ? str.hashCode() : 0)) * 31, 31), 31), 31);
        String str2 = this.zzg;
        int hashCode = (((((((((m6915for2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.zzh) * 31) + this.zzi) * 31) + this.zzj) * 31) + this.zzk) * 31;
        String str3 = this.zzl;
        return hashCode + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        byte b = this.zzh;
        byte b2 = this.zzi;
        byte b3 = this.zzj;
        byte b4 = this.zzk;
        return "AncsNotificationParcelable{, id=" + i + ", appId='" + str + "', dateTime='" + str2 + "', eventId=" + ((int) b) + ", eventFlags=" + ((int) b2) + ", categoryId=" + ((int) b3) + ", categoryCount=" + ((int) b4) + ", packageName='" + this.zzl + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        String str = this.zzg;
        if (str == null) {
            str = this.zzb;
        }
        SafeParcelWriter.writeString(parcel, 8, str, false);
        SafeParcelWriter.writeByte(parcel, 9, this.zzh);
        SafeParcelWriter.writeByte(parcel, 10, this.zzi);
        SafeParcelWriter.writeByte(parcel, 11, this.zzj);
        SafeParcelWriter.writeByte(parcel, 12, this.zzk);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
