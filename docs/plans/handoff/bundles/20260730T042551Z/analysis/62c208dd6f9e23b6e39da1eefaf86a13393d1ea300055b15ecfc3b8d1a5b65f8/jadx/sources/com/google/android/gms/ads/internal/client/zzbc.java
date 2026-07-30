package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzbtb;
import com.google.android.gms.internal.ads.zzbxb;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzbc {

    /* renamed from: do, reason: not valid java name */
    public static final zzbc f9584do = new zzbc();
    public static final /* synthetic */ int zza = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzba f9585do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VersionInfoParcel f9586do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.gms.ads.internal.util.client.zzf f9587do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9588do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Random f9589do;

    public zzbc() {
        com.google.android.gms.ads.internal.util.client.zzf zzfVar = new com.google.android.gms.ads.internal.util.client.zzf();
        zzba zzbaVar = new zzba(new zzk(), new zzi(), new zzfe(), new zzbhv(), new zzbxb(), new zzbtb(), new zzbhw(), new zzl());
        String zze = com.google.android.gms.ads.internal.util.client.zzf.zze();
        VersionInfoParcel versionInfoParcel = new VersionInfoParcel(0, 244410000, true);
        Random random = new Random();
        this.f9587do = zzfVar;
        this.f9585do = zzbaVar;
        this.f9588do = zze;
        this.f9586do = versionInfoParcel;
        this.f9589do = random;
    }

    public static zzba zza() {
        return f9584do.f9585do;
    }

    public static com.google.android.gms.ads.internal.util.client.zzf zzb() {
        return f9584do.f9587do;
    }

    public static VersionInfoParcel zzc() {
        return f9584do.f9586do;
    }

    public static String zzd() {
        return f9584do.f9588do;
    }

    public static Random zze() {
        return f9584do.f9589do;
    }
}
