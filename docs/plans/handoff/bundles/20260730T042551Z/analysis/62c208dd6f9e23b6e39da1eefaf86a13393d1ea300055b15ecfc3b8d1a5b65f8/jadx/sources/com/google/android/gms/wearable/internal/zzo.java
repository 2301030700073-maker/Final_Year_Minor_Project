package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.Cif;
import defpackage.Creturn;
import java.util.Arrays;

@SafeParcelable.Class(creator = "AppParcelableCreator")
/* loaded from: classes3.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();

    @SafeParcelable.Field(id = 1)
    public final String zza;

    @SafeParcelable.Field(id = 2)
    public final String zzb;

    @SafeParcelable.Field(id = 3)
    public final zziv zzc;

    @SafeParcelable.Field(id = 4)
    public final String zzd;

    @SafeParcelable.Field(id = 5)
    public final String zze;

    @SafeParcelable.Field(id = 6)
    public final Float zzf;

    @SafeParcelable.Field(id = 7)
    public final zzs zzg;

    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) zziv zzivVar, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) Float f, @SafeParcelable.Param(id = 7) zzs zzsVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzivVar;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = f;
        this.zzg = zzsVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzo.class == obj.getClass()) {
            zzo zzoVar = (zzo) obj;
            if (zzn.zza(this.zza, zzoVar.zza) && zzn.zza(this.zzb, zzoVar.zzb) && zzn.zza(this.zzc, zzoVar.zzc) && zzn.zza(this.zzd, zzoVar.zzd) && zzn.zza(this.zze, zzoVar.zze) && zzn.zza(this.zzf, zzoVar.zzf) && zzn.zza(this.zzg, zzoVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg});
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zzd;
        String str3 = this.zze;
        Float f = this.zzf;
        String valueOf = String.valueOf(this.zzg);
        String str4 = this.zza;
        String valueOf2 = String.valueOf(this.zzc);
        StringBuilder m6919this = Cif.m6919this("AppParcelable{title='", str, "', developerName='", str2, "', formattedPrice='");
        m6919this.append(str3);
        m6919this.append("', starRating=");
        m6919this.append(f);
        m6919this.append(", wearDetails=");
        Creturn.m7980goto(m6919this, valueOf, ", deepLinkUri='", str4, "', icon=");
        return Creturn.m7984try(m6919this, valueOf2, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeFloatObject(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzg, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
