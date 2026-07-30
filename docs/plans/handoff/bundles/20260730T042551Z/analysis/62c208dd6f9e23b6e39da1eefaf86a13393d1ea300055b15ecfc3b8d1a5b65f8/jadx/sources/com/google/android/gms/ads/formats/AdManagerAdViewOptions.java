package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbhm;
import com.google.android.gms.internal.ads.zzbhn;

@SafeParcelable.Class(creator = "AdManagerAdViewOptionsCreator")
/* loaded from: classes.dex */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzc();

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", id = 2)
    public final IBinder f9540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", id = 1)
    public final boolean f9541do;

    public static final class Builder {

        /* renamed from: do, reason: not valid java name */
        public boolean f9542do = false;

        public AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this);
        }

        public Builder setManualImpressionsEnabled(boolean z) {
            this.f9542do = z;
            return this;
        }
    }

    public /* synthetic */ AdManagerAdViewOptions(Builder builder) {
        this.f9541do = builder.f9542do;
        this.f9540do = null;
    }

    public boolean getManualImpressionsEnabled() {
        return this.f9541do;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        SafeParcelWriter.writeIBinder(parcel, 2, this.f9540do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzbhn zza() {
        IBinder iBinder = this.f9540do;
        if (iBinder == null) {
            return null;
        }
        return zzbhm.zzb(iBinder);
    }

    @SafeParcelable.Constructor
    public AdManagerAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder) {
        this.f9541do = z;
        this.f9540do = iBinder;
    }
}
