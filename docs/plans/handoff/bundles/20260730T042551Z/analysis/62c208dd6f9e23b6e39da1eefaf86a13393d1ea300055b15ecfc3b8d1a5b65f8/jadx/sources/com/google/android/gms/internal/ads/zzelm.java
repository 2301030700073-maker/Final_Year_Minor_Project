package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;

/* loaded from: classes.dex */
public final class zzelm implements zzetq {
    private final boolean zza;

    public zzelm(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ((zzcuv) obj).zza.putString("adid_p", true != this.zza ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }
}
