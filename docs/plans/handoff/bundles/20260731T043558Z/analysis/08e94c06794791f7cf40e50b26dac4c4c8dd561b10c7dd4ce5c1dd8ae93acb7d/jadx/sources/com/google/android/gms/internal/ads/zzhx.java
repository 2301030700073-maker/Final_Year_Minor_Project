package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.datasource.RawResourceDataSource;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.ExoPlayer;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.common.util.UriUtil;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhx implements zzkl {
    public static final zzgpe zza = zzgpe.zzn("file", "content", "data", UriUtil.QUALIFIED_RESOURCE_SCHEME, RawResourceDataSource.RAW_RESOURCE_SCHEME, UriUtil.LOCAL_ASSET_SCHEME);
    private final zzbe zzb;
    private final zzbd zzc;
    private final zzzb zzd;
    private final long zze;
    private final long zzf;
    private final long zzg;
    private final long zzh;
    private final long zzi;
    private final long zzj;
    private final long zzk;
    private final long zzl;
    private final long zzm;
    private final zzgph zzn;
    private final ConcurrentHashMap zzo;
    private long zzp;

    public zzhx() {
        zzzb zzzbVar = new zzzb(true, 65536);
        zzgph zza2 = zzgph.zza();
        zzq(1000, 0, "bufferForPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzq(1000, 0, "bufferForPlaybackForLocalPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzq(2000, 0, "bufferForPlaybackAfterRebufferMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzq(1000, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzq(50000, 1000, "minBufferMs", "bufferForPlaybackMs");
        zzq(1000, 1000, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        zzq(50000, 2000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzq(1000, 1000, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        zzq(50000, 50000, "maxBufferMs", "minBufferMs");
        zzq(50000, 1000, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        zzq(0, 0, "backBufferDurationMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.zzb = new zzbe();
        this.zzc = new zzbd();
        this.zzd = zzzbVar;
        this.zze = zzep.zzq(50000L);
        this.zzf = zzep.zzq(1000L);
        this.zzg = zzep.zzq(50000L);
        this.zzh = zzep.zzq(50000L);
        this.zzi = zzep.zzq(1000L);
        this.zzj = zzep.zzq(1000L);
        this.zzk = zzep.zzq(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        this.zzl = zzep.zzq(1000L);
        this.zzm = zzep.zzq(0L);
        this.zzo = new ConcurrentHashMap();
        this.zzn = zzgph.zzc(zza2);
        this.zzp = -1L;
    }

    private final int zzm(zzpc zzpcVar) {
        Integer num = (Integer) this.zzn.get(zzpcVar.zzb);
        if (num == null || num.intValue() == -1) {
            return -1;
        }
        return num.intValue();
    }

    private final void zzn(zzpc zzpcVar) {
        ConcurrentHashMap concurrentHashMap = this.zzo;
        zzhw zzhwVar = (zzhw) concurrentHashMap.get(zzpcVar);
        if (zzhwVar != null) {
            int i = zzhwVar.zza - 1;
            zzhwVar.zza = i;
            if (i == 0) {
                concurrentHashMap.remove(zzpcVar);
                zzo();
            }
        }
    }

    private final void zzo() {
        ConcurrentHashMap concurrentHashMap = this.zzo;
        if (concurrentHashMap.isEmpty()) {
            this.zzd.zze();
            return;
        }
        zzzb zzzbVar = this.zzd;
        Iterator it = concurrentHashMap.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((zzhw) it.next()).zzc;
        }
        zzzbVar.zzf(i);
    }

    private final boolean zzp(zzkk zzkkVar) {
        zzbf zzbfVar = zzkkVar.zzb;
        zzag zzagVar = zzbfVar.zzb(zzbfVar.zzo(zzkkVar.zzc.zza, this.zzc).zzc, this.zzb, 0L).zzd.zzb;
        if (zzagVar == null) {
            return false;
        }
        String scheme = zzagVar.zza.getScheme();
        return TextUtils.isEmpty(scheme) || zza.contains(scheme);
    }

    private static void zzq(int i, int i2, String str, String str2) {
        if (i < i2) {
            throw new IllegalArgumentException(zzgmu.zzd("%s cannot be less than %s", str, str2));
        }
    }

    private final int zzr(zzpc zzpcVar) {
        zzhw zzhwVar = (zzhw) this.zzo.get(zzpcVar);
        zzhwVar.getClass();
        return zzhwVar.zzc() * 65536;
    }

    private final int zzs(zzpc zzpcVar) {
        zzhw zzhwVar = (zzhw) this.zzo.get(zzpcVar);
        zzhwVar.getClass();
        return zzhwVar.zzc;
    }

    private static final boolean zzt(boolean z) {
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zza(zzpc zzpcVar) {
        long id = Thread.currentThread().getId();
        long j = this.zzp;
        zzgmd.zzi(j == -1 || j == id, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.zzp = id;
        ConcurrentHashMap concurrentHashMap = this.zzo;
        zzhw zzhwVar = (zzhw) concurrentHashMap.get(zzpcVar);
        if (zzhwVar == null) {
            concurrentHashMap.put(zzpcVar, new zzhw());
        } else {
            zzhwVar.zza++;
        }
        zzhw zzhwVar2 = (zzhw) concurrentHashMap.get(zzpcVar);
        zzhwVar2.getClass();
        int zzm = zzm(zzpcVar);
        if (zzm == -1) {
            zzm = 13107200;
        }
        zzhwVar2.zzc = zzm;
        zzhwVar2.zzb = false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzb(zzkk zzkkVar, zzwv zzwvVar, zzyk[] zzykVarArr) {
        ConcurrentHashMap concurrentHashMap = this.zzo;
        zzpc zzpcVar = zzkkVar.zza;
        int zzm = zzm(zzpcVar);
        zzhw zzhwVar = (zzhw) concurrentHashMap.get(zzpcVar);
        zzhwVar.getClass();
        if (zzm == -1) {
            boolean zzp = zzp(zzkkVar);
            int length = zzykVarArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = 13107200;
                if (i < length) {
                    zzyk zzykVar = zzykVarArr[i];
                    if (zzykVar != null) {
                        switch (zzykVar.zza().zzc) {
                            case -1:
                            case 1:
                                break;
                            case 0:
                                i3 = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                                break;
                            case 2:
                                if (!zzp) {
                                    i3 = 131072000;
                                    break;
                                } else {
                                    i3 = 19660800;
                                    break;
                                }
                            case 3:
                            case 5:
                            default:
                                i3 = 131072;
                                break;
                            case 4:
                                i3 = 26214400;
                                break;
                        }
                        i2 += i3;
                    }
                    i++;
                } else {
                    zzm = Math.max(13107200, i2);
                }
            }
        }
        zzhwVar.zzc = zzm;
        zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzc(zzpc zzpcVar) {
        zzn(zzpcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzd(zzpc zzpcVar) {
        zzn(zzpcVar);
        if (this.zzo.isEmpty()) {
            this.zzp = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final zzyv zze(zzpc zzpcVar) {
        return new zzhv(this, zzpcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final long zzf(zzpc zzpcVar) {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzg(zzpc zzpcVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzh(zzkk zzkkVar) {
        ConcurrentHashMap concurrentHashMap = this.zzo;
        zzpc zzpcVar = zzkkVar.zza;
        zzhw zzhwVar = (zzhw) concurrentHashMap.get(zzpcVar);
        zzhwVar.getClass();
        int zzr = zzr(zzpcVar);
        int zzs = zzs(zzpcVar);
        boolean z = true;
        if (zzpcVar.equals(zzpc.zza)) {
            return zzr < zzs;
        }
        boolean zzp = zzp(zzkkVar);
        long j = zzp ? this.zzf : this.zze;
        long j2 = zzp ? this.zzh : this.zzg;
        float f = zzkkVar.zzf;
        if (f > 1.0f) {
            j = Math.min(zzep.zzv(j, f), j2);
        }
        long j3 = zzkkVar.zze;
        if (j3 < Math.max(j, 500000L)) {
            if (!zzt(zzp) && zzr >= zzs) {
                z = false;
            }
            zzhwVar.zzb = z;
            if (!z && j3 < 500000) {
                zzdt.zzc("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j3 >= j2 || zzr >= zzs) {
            zzhwVar.zzb = false;
        }
        return zzhwVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzi(zzkk zzkkVar) {
        long j;
        boolean z;
        boolean z2 = zzkkVar.zzg;
        long j2 = zzkkVar.zze;
        float f = zzkkVar.zzf;
        boolean zzp = zzp(zzkkVar);
        long zzw = zzep.zzw(j2, f);
        if (z2) {
            if (zzp) {
                j = this.zzl;
                z = true;
            } else {
                j = this.zzk;
                z = false;
            }
        } else if (zzp) {
            j = this.zzj;
            z = true;
        } else {
            j = this.zzi;
            z = false;
        }
        long j3 = zzkkVar.zzh;
        if (j3 != C.TIME_UNSET) {
            j = Math.min(j3 / 2, j);
        }
        if (j > 0 && zzw < j) {
            if (zzt(z)) {
                return false;
            }
            zzpc zzpcVar = zzkkVar.zza;
            if (zzr(zzpcVar) < zzs(zzpcVar)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzj(zzpc zzpcVar, zzbf zzbfVar, zzuu zzuuVar, long j) {
        Iterator it = this.zzo.values().iterator();
        while (it.hasNext()) {
            if (((zzhw) it.next()).zzb) {
                return false;
            }
        }
        return true;
    }

    final /* synthetic */ zzzb zzk() {
        return this.zzd;
    }

    final /* synthetic */ ConcurrentHashMap zzl() {
        return this.zzo;
    }
}
