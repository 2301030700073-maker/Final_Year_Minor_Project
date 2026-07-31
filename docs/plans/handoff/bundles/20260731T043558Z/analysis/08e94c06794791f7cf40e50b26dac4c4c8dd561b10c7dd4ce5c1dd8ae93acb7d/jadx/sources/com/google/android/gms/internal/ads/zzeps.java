package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeps implements zzexy {
    private final boolean zza;

    public zzeps(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ((zzcxq) obj).zza.putString("adid_p", true != this.zza ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1");
    }
}
