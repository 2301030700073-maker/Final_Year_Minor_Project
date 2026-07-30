package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.security.OidcSecurityUtil;
import defpackage.Creturn;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzhy implements zzkg {
    private final zzyk zza;
    private final long zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;
    private final HashMap zzg;
    private long zzh;

    public zzhy() {
        zzyk zzykVar = new zzyk(true, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        zzl(2500, 0, "bufferForPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzl(5000, 0, "bufferForPlaybackAfterRebufferMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zzl(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        zzl(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzl(50000, 50000, "maxBufferMs", "minBufferMs");
        zzl(0, 0, "backBufferDurationMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.zza = zzykVar;
        this.zzb = zzei.zzs(50000L);
        this.zzc = zzei.zzs(50000L);
        this.zzd = zzei.zzs(2500L);
        this.zze = zzei.zzs(OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS);
        this.zzf = zzei.zzs(0L);
        this.zzg = new HashMap();
        this.zzh = -1L;
    }

    private static void zzl(int i, int i2, String str, String str2) {
        zzcw.zze(i >= i2, Creturn.m7982new(str, " cannot be less than ", str2));
    }

    private final void zzm(zzog zzogVar) {
        if (this.zzg.remove(zzogVar) != null) {
            zzn();
        }
    }

    private final void zzn() {
        if (this.zzg.isEmpty()) {
            this.zza.zze();
        } else {
            this.zza.zzf(zza());
        }
    }

    public final int zza() {
        Iterator it = this.zzg.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((zzhw) it.next()).zzb;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final long zzb(zzog zzogVar) {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final void zzc(zzog zzogVar) {
        long id = Thread.currentThread().getId();
        long j = this.zzh;
        boolean z = true;
        if (j != -1 && j != id) {
            z = false;
        }
        zzcw.zzg(z, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.zzh = id;
        if (!this.zzg.containsKey(zzogVar)) {
            this.zzg.put(zzogVar, new zzhw(null));
        }
        zzhw zzhwVar = (zzhw) this.zzg.get(zzogVar);
        zzhwVar.getClass();
        zzhwVar.zzb = 13107200;
        zzhwVar.zza = false;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final void zzd(zzog zzogVar) {
        zzm(zzogVar);
        if (this.zzg.isEmpty()) {
            this.zzh = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final void zze(zzog zzogVar) {
        zzm(zzogVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final void zzf(zzkf zzkfVar, zzwj zzwjVar, zzxv[] zzxvVarArr) {
        zzhw zzhwVar = (zzhw) this.zzg.get(zzkfVar.zza);
        zzhwVar.getClass();
        int length = zzxvVarArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 13107200;
            if (i >= length) {
                zzhwVar.zzb = Math.max(13107200, i2);
                zzn();
                return;
            }
            zzxv zzxvVar = zzxvVarArr[i];
            if (zzxvVar != null) {
                switch (zzxvVar.zzg().zzc) {
                    case -1:
                    case 1:
                        break;
                    case 0:
                        i3 = 144310272;
                        break;
                    case 2:
                        i3 = 131072000;
                        break;
                    case 3:
                    case 4:
                    case 5:
                    default:
                        i3 = 131072;
                        break;
                }
                i2 += i3;
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final boolean zzg(zzog zzogVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final boolean zzh(zzkf zzkfVar) {
        zzhw zzhwVar = (zzhw) this.zzg.get(zzkfVar.zza);
        zzhwVar.getClass();
        int zza = this.zza.zza();
        int zza2 = zza();
        long j = this.zzb;
        float f = zzkfVar.zzc;
        if (f > 1.0f) {
            j = Math.min(zzei.zzq(j, f), this.zzc);
        }
        long j2 = zzkfVar.zzb;
        if (j2 < Math.max(j, 500000L)) {
            boolean z = zza < zza2;
            zzhwVar.zza = z;
            if (!z && j2 < 500000) {
                zzdo.zzf("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.zzc || zza >= zza2) {
            zzhwVar.zza = false;
        }
        return zzhwVar.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final boolean zzi(zzbq zzbqVar, zzug zzugVar, long j) {
        Iterator it = this.zzg.values().iterator();
        while (it.hasNext()) {
            if (((zzhw) it.next()).zza) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final boolean zzj(zzkf zzkfVar) {
        boolean z = zzkfVar.zzd;
        long zzr = zzei.zzr(zzkfVar.zzb, zzkfVar.zzc);
        long j = z ? this.zze : this.zzd;
        long j2 = zzkfVar.zze;
        if (j2 != -9223372036854775807L) {
            j = Math.min(j2 / 2, j);
        }
        return j <= 0 || zzr >= j || this.zza.zza() >= zza();
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    public final zzyk zzk() {
        return this.zza;
    }
}
