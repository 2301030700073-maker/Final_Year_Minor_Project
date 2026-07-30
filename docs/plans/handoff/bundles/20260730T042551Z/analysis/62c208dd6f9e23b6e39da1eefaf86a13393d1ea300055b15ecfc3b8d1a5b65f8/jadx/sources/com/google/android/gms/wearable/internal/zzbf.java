package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.ChannelApi;
import defpackage.Cif;

@SafeParcelable.Class(creator = "ChannelEventParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbg();

    @SafeParcelable.Field(id = 2)
    final zzbq zza;

    @SafeParcelable.Field(id = 3)
    final int zzb;

    @SafeParcelable.Field(id = 4)
    final int zzc;

    @SafeParcelable.Field(id = 5)
    final int zzd;

    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param(id = 2) zzbq zzbqVar, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) int i3) {
        this.zza = zzbqVar;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        int i = this.zzb;
        String num = i != 1 ? i != 2 ? i != 3 ? i != 4 ? Integer.toString(i) : "OUTPUT_CLOSED" : "INPUT_CLOSED" : "CHANNEL_CLOSED" : "CHANNEL_OPENED";
        int i2 = this.zzc;
        String num2 = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? Integer.toString(i2) : "CLOSE_REASON_LOCAL_CLOSE" : "CLOSE_REASON_REMOTE_CLOSE" : "CLOSE_REASON_DISCONNECTED" : "CLOSE_REASON_NORMAL";
        int i3 = this.zzd;
        StringBuilder m6919this = Cif.m6919this("ChannelEventParcelable[, channel=", valueOf, ", type=", num, ", closeReason=");
        m6919this.append(num2);
        m6919this.append(", appErrorCode=");
        m6919this.append(i3);
        m6919this.append("]");
        return m6919this.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeInt(parcel, 5, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zza(ChannelApi.ChannelListener channelListener) {
        int i = this.zzb;
        if (i == 1) {
            channelListener.onChannelOpened(this.zza);
            return;
        }
        if (i == 2) {
            channelListener.onChannelClosed(this.zza, this.zzc, this.zzd);
        } else if (i == 3) {
            channelListener.onInputClosed(this.zza, this.zzc, this.zzd);
        } else {
            if (i != 4) {
                return;
            }
            channelListener.onOutputClosed(this.zza, this.zzc, this.zzd);
        }
    }
}
