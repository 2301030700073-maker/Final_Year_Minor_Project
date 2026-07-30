package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzcm;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbhm;
import com.google.android.gms.internal.ads.zzbhn;

@SafeParcelable.Class(creator = "PublisherAdViewOptionsCreator")
@Deprecated
/* loaded from: classes.dex */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzh();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", id = 3)
    public final IBinder f9557do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getAppEventListenerBinder", id = 2, type = "android.os.IBinder")
    public final zzcm f9558do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", id = 1)
    public final boolean f9559do;

    @Deprecated
    public static final class Builder {
        @KeepForSdk
        public Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            return this;
        }
    }

    @SafeParcelable.Constructor
    public PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        this.f9559do = z;
        this.f9558do = iBinder != null ? zzcl.zzd(iBinder) : null;
        this.f9557do = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f9559do);
        zzcm zzcmVar = this.f9558do;
        SafeParcelWriter.writeIBinder(parcel, 2, zzcmVar == null ? null : zzcmVar.asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.f9557do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzcm zza() {
        return this.f9558do;
    }

    public final zzbhn zzb() {
        IBinder iBinder = this.f9557do;
        if (iBinder == null) {
            return null;
        }
        return zzbhm.zzb(iBinder);
    }

    public final boolean zzc() {
        return this.f9559do;
    }
}
