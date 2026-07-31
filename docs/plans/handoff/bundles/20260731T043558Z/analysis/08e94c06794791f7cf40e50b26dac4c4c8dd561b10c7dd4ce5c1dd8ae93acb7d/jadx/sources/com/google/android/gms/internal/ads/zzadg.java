package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzadg {
    static {
        int i = zzadf.zza;
    }

    zzada[] zza();

    default zzada[] zzb(Uri uri, Map map) {
        return zza();
    }
}
