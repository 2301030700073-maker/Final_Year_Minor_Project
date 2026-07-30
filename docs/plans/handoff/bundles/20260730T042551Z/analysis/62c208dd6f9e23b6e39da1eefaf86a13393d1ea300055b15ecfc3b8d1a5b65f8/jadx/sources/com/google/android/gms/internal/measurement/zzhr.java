package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceC3406nk;

/* loaded from: classes.dex */
public final class zzhr {
    final String zza;
    final Uri zzb;
    final String zzc;
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final InterfaceC3406nk<Context, Boolean> zzh;
    private final boolean zzi;

    public zzhr(Uri uri) {
        this(null, uri, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false, false, false, false, null);
    }

    public final zzhr zza() {
        return new zzhr(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, true, this.zzg, this.zzh);
    }

    public final zzhr zzb() {
        if (!this.zzc.isEmpty()) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        InterfaceC3406nk<Context, Boolean> interfaceC3406nk = this.zzh;
        if (interfaceC3406nk == null) {
            return new zzhr(this.zza, this.zzb, this.zzc, this.zzd, true, this.zzf, this.zzi, this.zzg, interfaceC3406nk);
        }
        throw new IllegalStateException("Cannot skip gservices both always and conditionally");
    }

    private zzhr(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, InterfaceC3406nk<Context, Boolean> interfaceC3406nk) {
        this.zza = str;
        this.zzb = uri;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z;
        this.zzf = z2;
        this.zzi = z3;
        this.zzg = z4;
        this.zzh = interfaceC3406nk;
    }

    public final zzhj<Double> zza(String str, double d) {
        return zzhj.zza(this, str, Double.valueOf(-3.0d), true);
    }

    public final zzhj<Long> zza(String str, long j) {
        return zzhj.zza(this, str, Long.valueOf(j), true);
    }

    public final zzhj<String> zza(String str, String str2) {
        return zzhj.zza(this, str, str2, true);
    }

    public final zzhj<Boolean> zza(String str, boolean z) {
        return zzhj.zza(this, str, Boolean.valueOf(z), true);
    }
}
