package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcv {
    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static String zza(String str) {
        zzgmd.zza(!TextUtils.isEmpty(str));
        return str;
    }
}
