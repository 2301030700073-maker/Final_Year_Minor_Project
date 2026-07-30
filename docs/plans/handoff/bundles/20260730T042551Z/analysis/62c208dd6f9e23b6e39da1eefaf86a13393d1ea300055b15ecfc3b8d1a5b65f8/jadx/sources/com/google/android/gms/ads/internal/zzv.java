package com.google.android.gms.ads.internal;

import android.os.Build;
import com.google.android.gms.ads.internal.overlay.zzad;
import com.google.android.gms.ads.internal.overlay.zzae;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.ads.internal.util.zzaa;
import com.google.android.gms.ads.internal.util.zzab;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzbt;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zzci;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.util.zzx;
import com.google.android.gms.ads.internal.util.zzy;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbcr;
import com.google.android.gms.internal.ads.zzbdk;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzboz;
import com.google.android.gms.internal.ads.zzbvr;
import com.google.android.gms.internal.ads.zzbyi;
import com.google.android.gms.internal.ads.zzbzm;
import com.google.android.gms.internal.ads.zzcac;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzccx;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzecl;
import com.google.android.gms.internal.ads.zzecm;

/* loaded from: classes.dex */
public final class zzv {

    /* renamed from: do, reason: not valid java name */
    public static final zzv f9885do = new zzv();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.gms.ads.internal.overlay.zza f9886do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzad f9887do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzae f9888do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.gms.ads.internal.overlay.zzn f9889do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzz f9890do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzab f9891do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzay f9892do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbt f9893do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbu f9894do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzci f9895do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzs f9896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.gms.ads.internal.util.zzt f9897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzf f9898do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Clock f9899do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzaze f9900do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbar f9901do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbbg f9902do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbcr f9903do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbdk f9904do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbnx f9905do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzboz f9906do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbvr f9907do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbyi f9908do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbzm f9909do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzcac f9910do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzcaj f9911do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzccx f9912do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzcfk f9913do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzecl f9914do;

    public zzv() {
        com.google.android.gms.ads.internal.overlay.zza zzaVar = new com.google.android.gms.ads.internal.overlay.zza();
        com.google.android.gms.ads.internal.overlay.zzn zznVar = new com.google.android.gms.ads.internal.overlay.zzn();
        zzs zzsVar = new zzs();
        zzcfk zzcfkVar = new zzcfk();
        int i = Build.VERSION.SDK_INT;
        com.google.android.gms.ads.internal.util.zzt zzyVar = i >= 30 ? new zzy() : i >= 28 ? new zzx() : i >= 26 ? new com.google.android.gms.ads.internal.util.zzv() : i >= 24 ? new com.google.android.gms.ads.internal.util.zzu() : new com.google.android.gms.ads.internal.util.zzt();
        zzaze zzazeVar = new zzaze();
        zzbzm zzbzmVar = new zzbzm();
        zzab zzabVar = new zzab();
        zzbar zzbarVar = new zzbar();
        Clock defaultClock = DefaultClock.getInstance();
        zzf zzfVar = new zzf();
        zzbcr zzbcrVar = new zzbcr();
        zzbdk zzbdkVar = new zzbdk();
        zzay zzayVar = new zzay();
        zzbvr zzbvrVar = new zzbvr();
        zzcac zzcacVar = new zzcac();
        zzbnx zzbnxVar = new zzbnx();
        zzz zzzVar = new zzz();
        zzbt zzbtVar = new zzbt();
        zzad zzadVar = new zzad();
        zzae zzaeVar = new zzae();
        zzboz zzbozVar = new zzboz();
        zzbu zzbuVar = new zzbu();
        zzecl zzeclVar = new zzecl();
        zzbbg zzbbgVar = new zzbbg();
        zzbyi zzbyiVar = new zzbyi();
        zzci zzciVar = new zzci();
        zzccx zzccxVar = new zzccx();
        zzcaj zzcajVar = new zzcaj();
        this.f9886do = zzaVar;
        this.f9889do = zznVar;
        this.f9896do = zzsVar;
        this.f9913do = zzcfkVar;
        this.f9897do = zzyVar;
        this.f9900do = zzazeVar;
        this.f9909do = zzbzmVar;
        this.f9891do = zzabVar;
        this.f9901do = zzbarVar;
        this.f9899do = defaultClock;
        this.f9898do = zzfVar;
        this.f9903do = zzbcrVar;
        this.f9904do = zzbdkVar;
        this.f9892do = zzayVar;
        this.f9907do = zzbvrVar;
        this.f9910do = zzcacVar;
        this.f9905do = zzbnxVar;
        this.f9893do = zzbtVar;
        this.f9890do = zzzVar;
        this.f9887do = zzadVar;
        this.f9888do = zzaeVar;
        this.f9906do = zzbozVar;
        this.f9894do = zzbuVar;
        this.f9914do = zzeclVar;
        this.f9902do = zzbbgVar;
        this.f9908do = zzbyiVar;
        this.f9895do = zzciVar;
        this.f9912do = zzccxVar;
        this.f9911do = zzcajVar;
    }

    public static zzcfk zzA() {
        return f9885do.f9913do;
    }

    public static zzecm zzB() {
        return f9885do.f9914do;
    }

    public static Clock zzC() {
        return f9885do.f9899do;
    }

    public static zzf zza() {
        return f9885do.f9898do;
    }

    public static zzaze zzb() {
        return f9885do.f9900do;
    }

    public static zzbar zzc() {
        return f9885do.f9901do;
    }

    public static zzbbg zzd() {
        return f9885do.f9902do;
    }

    public static zzbcr zze() {
        return f9885do.f9903do;
    }

    public static zzbdk zzf() {
        return f9885do.f9904do;
    }

    public static zzbnx zzg() {
        return f9885do.f9905do;
    }

    public static zzboz zzh() {
        return f9885do.f9906do;
    }

    public static com.google.android.gms.ads.internal.overlay.zza zzi() {
        return f9885do.f9886do;
    }

    public static com.google.android.gms.ads.internal.overlay.zzn zzj() {
        return f9885do.f9889do;
    }

    public static zzz zzk() {
        return f9885do.f9890do;
    }

    public static zzad zzl() {
        return f9885do.f9887do;
    }

    public static zzae zzm() {
        return f9885do.f9888do;
    }

    public static zzbvr zzn() {
        return f9885do.f9907do;
    }

    public static zzbyi zzo() {
        return f9885do.f9908do;
    }

    public static zzbzm zzp() {
        return f9885do.f9909do;
    }

    public static zzs zzq() {
        return f9885do.f9896do;
    }

    public static zzaa zzr() {
        return f9885do.f9897do;
    }

    public static zzab zzs() {
        return f9885do.f9891do;
    }

    public static zzay zzt() {
        return f9885do.f9892do;
    }

    public static zzbt zzu() {
        return f9885do.f9893do;
    }

    public static zzbu zzv() {
        return f9885do.f9894do;
    }

    public static zzci zzw() {
        return f9885do.f9895do;
    }

    public static zzcac zzx() {
        return f9885do.f9910do;
    }

    public static zzcaj zzy() {
        return f9885do.f9911do;
    }

    public static zzccx zzz() {
        return f9885do.f9912do;
    }
}
