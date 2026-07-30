package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzbus;
import com.google.android.gms.internal.ads.zzbxu;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: do, reason: not valid java name */
    public final Context f9855do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbus f9856do = new zzbus(false, Collections.emptyList());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbxu f9857do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9858do;

    public zzb(Context context, zzbxu zzbxuVar, zzbus zzbusVar) {
        this.f9855do = context;
        this.f9857do = zzbxuVar;
    }

    public final void zza() {
        this.f9858do = true;
    }

    public final void zzb(String str) {
        List<String> list;
        zzbus zzbusVar = this.f9856do;
        zzbxu zzbxuVar = this.f9857do;
        if ((zzbxuVar != null && zzbxuVar.zza().zzf) || zzbusVar.zza) {
            if (str == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (zzbxuVar != null) {
                zzbxuVar.zzd(str, null, 3);
                return;
            }
            if (!zzbusVar.zza || (list = zzbusVar.zzb) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzv.zzq();
                    zzs.zzM(this.f9855do, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, replace);
                }
            }
        }
    }

    public final boolean zzc() {
        zzbxu zzbxuVar = this.f9857do;
        return !((zzbxuVar != null && zzbxuVar.zza().zzf) || this.f9856do.zza) || this.f9858do;
    }
}
