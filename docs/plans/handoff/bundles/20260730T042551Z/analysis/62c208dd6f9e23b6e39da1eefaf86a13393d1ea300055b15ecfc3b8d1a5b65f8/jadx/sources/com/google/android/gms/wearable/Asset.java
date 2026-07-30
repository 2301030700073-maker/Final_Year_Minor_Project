package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Arrays;

@VisibleForTesting
@SafeParcelable.Class(creator = "AssetCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public class Asset extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Asset> CREATOR = new zzc();

    @SafeParcelable.Field(id = 4)
    public ParcelFileDescriptor zza;

    @SafeParcelable.Field(id = 5)
    public Uri zzb;

    @SafeParcelable.Field(getter = "getData", id = 2)
    private byte[] zzc;

    @SafeParcelable.Field(getter = "getDigest", id = 3)
    private String zzd;

    @SafeParcelable.Constructor
    public Asset(@SafeParcelable.Param(id = 2) byte[] bArr, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 5) Uri uri) {
        this.zzc = bArr;
        this.zzd = str;
        this.zza = parcelFileDescriptor;
        this.zzb = uri;
    }

    @VisibleForTesting
    public static Asset createFromBytes(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        return new Asset(bArr, null, null, null);
    }

    @VisibleForTesting
    public static Asset createFromFd(ParcelFileDescriptor parcelFileDescriptor) {
        Preconditions.checkNotNull(parcelFileDescriptor);
        return new Asset(null, null, parcelFileDescriptor, null);
    }

    public static Asset createFromRef(String str) {
        Preconditions.checkNotNull(str);
        return new Asset(null, str, null, null);
    }

    @VisibleForTesting
    public static Asset createFromUri(Uri uri) {
        Preconditions.checkNotNull(uri);
        return new Asset(null, null, null, uri);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Asset)) {
            return false;
        }
        Asset asset = (Asset) obj;
        return Arrays.equals(this.zzc, asset.zzc) && Objects.equal(this.zzd, asset.zzd) && Objects.equal(this.zza, asset.zza) && Objects.equal(this.zzb, asset.zzb);
    }

    public String getDigest() {
        return this.zzd;
    }

    public ParcelFileDescriptor getFd() {
        return this.zza;
    }

    public Uri getUri() {
        return this.zzb;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{this.zzc, this.zzd, this.zza, this.zzb});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Asset[@");
        sb.append(Integer.toHexString(hashCode()));
        if (this.zzd == null) {
            sb.append(", nodigest");
        } else {
            sb.append(", ");
            sb.append(this.zzd);
        }
        if (this.zzc != null) {
            sb.append(", size=");
            sb.append(((byte[]) Preconditions.checkNotNull(this.zzc)).length);
        }
        if (this.zza != null) {
            sb.append(", fd=");
            sb.append(this.zza);
        }
        if (this.zzb != null) {
            sb.append(", uri=");
            sb.append(this.zzb);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int i2 = i | 1;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 3, getDigest(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zza, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzb, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final byte[] zza() {
        return this.zzc;
    }
}
