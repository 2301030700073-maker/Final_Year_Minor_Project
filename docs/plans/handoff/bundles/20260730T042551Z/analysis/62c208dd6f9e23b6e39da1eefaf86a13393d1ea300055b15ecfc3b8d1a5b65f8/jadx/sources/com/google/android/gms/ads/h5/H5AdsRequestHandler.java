package com.google.android.gms.ads.h5;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbkv;

/* loaded from: classes.dex */
public final class H5AdsRequestHandler {

    /* renamed from: do, reason: not valid java name */
    public final zzbkv f9560do;

    public H5AdsRequestHandler(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        this.f9560do = new zzbkv(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        this.f9560do.zza();
    }

    public boolean handleH5AdsRequest(String str) {
        return this.f9560do.zzb(str);
    }

    public boolean shouldInterceptRequest(String str) {
        return zzbkv.zzc(str);
    }
}
