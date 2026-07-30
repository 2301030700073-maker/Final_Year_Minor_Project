package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.dash.DashMediaSource;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzqj {
    private final zzqi zza;
    private final int zzb;
    private final zzqk zzc;
    private int zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    public zzqj(AudioTrack audioTrack, zzqk zzqkVar) {
        this.zza = new zzqi(audioTrack);
        this.zzb = audioTrack.getSampleRate();
        this.zzc = zzqkVar;
        zzf(0);
    }

    private final void zzf(int i) {
        this.zzd = i;
        long j = 10000;
        if (i == 0) {
            this.zzg = 0L;
            this.zzh = -1L;
            this.zzi = C.TIME_UNSET;
            this.zze = System.nanoTime() / 1000;
        } else {
            if (i == 1) {
                this.zzf = 10000L;
                return;
            }
            j = (i == 2 || i == 3) ? 10000000L : 500000L;
        }
        this.zzf = j;
    }

    private final long zzg(long j, float f) {
        zzqi zzqiVar = this.zza;
        return zzh(zzqiVar.zzc(), zzqiVar.zzb(), j, f);
    }

    private final long zzh(long j, long j2, long j3, float f) {
        return zzep.zzr(j, this.zzb) + zzep.zzv(j3 - j2, f);
    }

    public final void zza(long j, float f, long j2) {
        zzqi zzqiVar;
        if (j - this.zzg < this.zzf) {
            return;
        }
        this.zzg = j;
        zzqi zzqiVar2 = this.zza;
        boolean zza = zzqiVar2.zza();
        if (zza) {
            long zzb = zzqiVar2.zzb();
            long zzg = zzg(j, f);
            if (Math.abs(zzb - j) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.zzc.zzc(zzqiVar2.zzc(), zzb, j, j2);
                zzf(4);
            } else if (Math.abs(zzg - j2) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.zzc.zzb(zzqiVar2.zzc(), zzb, j, j2);
                zzf(4);
            } else if (this.zzd == 4) {
                zzf(0);
            }
        }
        int i = this.zzd;
        if (i == 0) {
            if (!zza) {
                if (j - this.zze > 500000) {
                    zzf(3);
                    return;
                }
                return;
            } else {
                if (zzqiVar2.zzb() >= this.zze) {
                    this.zzh = zzqiVar2.zzc();
                    this.zzi = zzqiVar2.zzb();
                    zzf(1);
                    return;
                }
                return;
            }
        }
        if (i != 1) {
            if (i == 2) {
                if (zza) {
                    return;
                }
                zzf(0);
                return;
            } else {
                if (i == 3 && zza) {
                    zzf(0);
                    return;
                }
                return;
            }
        }
        if (!zza) {
            zzf(0);
            return;
        }
        long zzc = zzqiVar2.zzc();
        long j3 = this.zzh;
        if (zzc <= j3) {
            zzqiVar = zzqiVar2;
        } else {
            zzqiVar = zzqiVar2;
            if (Math.abs(zzg(j, f) - zzh(j3, this.zzi, j, f)) < 1000) {
                zzf(2);
                return;
            }
        }
        if (j - this.zze > SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US) {
            zzf(3);
        } else {
            this.zzh = zzqiVar.zzc();
            this.zzi = zzqiVar.zzb();
        }
    }

    public final boolean zzb() {
        return this.zzd == 2;
    }

    public final boolean zzc() {
        int i = this.zzd;
        return i == 0 || i == 1;
    }

    public final void zzd() {
        zzf(0);
    }

    public final long zze(long j, float f) {
        return zzg(j, f);
    }
}
