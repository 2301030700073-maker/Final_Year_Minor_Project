package com.google.android.gms.internal.ads;

import android.net.Uri;
import defpackage.V1;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgd {
    public static final /* synthetic */ int zzh = 0;
    public final Uri zza;
    public final int zzb;
    public final byte[] zzc;
    public final Map zzd;
    public final long zze;
    public final long zzf;
    public final int zzg;

    static {
        zzas.zzb("media3.datasource");
    }

    private zzgd(Uri uri, long j, int i, byte[] bArr, Map map, long j2, long j3, String str, int i2, Object obj) {
        boolean z = false;
        boolean z2 = j2 >= 0;
        zzcw.zzd(z2);
        zzcw.zzd(z2);
        if (j3 <= 0) {
            j3 = j3 == -1 ? -1L : j3;
            zzcw.zzd(z);
            uri.getClass();
            this.zza = uri;
            this.zzb = 1;
            this.zzc = null;
            this.zzd = DesugarCollections.unmodifiableMap(new HashMap(map));
            this.zze = j2;
            this.zzf = j3;
            this.zzg = i2;
        }
        z = true;
        zzcw.zzd(z);
        uri.getClass();
        this.zza = uri;
        this.zzb = 1;
        this.zzc = null;
        this.zzd = DesugarCollections.unmodifiableMap(new HashMap(map));
        this.zze = j2;
        this.zzf = j3;
        this.zzg = i2;
    }

    public final String toString() {
        StringBuilder m2493break = V1.m2493break("DataSpec[GET ", this.zza.toString(), ", ");
        m2493break.append(this.zze);
        m2493break.append(", ");
        m2493break.append(this.zzf);
        m2493break.append(", null, ");
        return V1.m2506this(m2493break, this.zzg, "]");
    }

    public final zzgb zza() {
        return new zzgb(this, null);
    }

    public final boolean zzb(int i) {
        return (this.zzg & i) == i;
    }

    @Deprecated
    public zzgd(Uri uri, long j, long j2, String str) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j, j2, null, 0, null);
    }
}
