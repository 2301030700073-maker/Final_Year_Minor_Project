package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.MessageEvent;
import defpackage.Creturn;

@SafeParcelable.Class(creator = "MessageEventParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzfx extends AbstractSafeParcelable implements MessageEvent {
    public static final Parcelable.Creator<zzfx> CREATOR = new zzfy();

    @SafeParcelable.Field(getter = "getRequestId", id = 2)
    private final int zza;

    @SafeParcelable.Field(getter = "getPath", id = 3)
    private final String zzb;

    @SafeParcelable.Field(getter = "getData", id = 4)
    private final byte[] zzc;

    @SafeParcelable.Field(getter = "getSourceNodeId", id = 5)
    private final String zzd;

    @SafeParcelable.Constructor
    public zzfx(@SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) String str2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = bArr;
        this.zzd = str2;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final byte[] getData() {
        return this.zzc;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final String getPath() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final int getRequestId() {
        return this.zza;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final String getSourceNodeId() {
        return this.zzd;
    }

    public final String toString() {
        int i = this.zza;
        String str = this.zzb;
        byte[] bArr = this.zzc;
        String obj = (bArr == null ? "null" : Integer.valueOf(bArr.length)).toString();
        StringBuilder sb = new StringBuilder("MessageEventParcelable[");
        sb.append(i);
        sb.append(",");
        sb.append(str);
        sb.append(", size=");
        return Creturn.m7984try(sb, obj, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
