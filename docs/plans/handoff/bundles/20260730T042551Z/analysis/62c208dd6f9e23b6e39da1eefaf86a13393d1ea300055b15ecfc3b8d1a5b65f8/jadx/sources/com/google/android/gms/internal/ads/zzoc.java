package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import com.facebook.ads.AdError;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzoc implements zzlw, zzod {
    private final Context zza;
    private final zzoe zzb;
    private final PlaybackSession zzc;
    private String zzi;
    private PlaybackMetrics.Builder zzj;
    private int zzk;
    private zzbd zzn;
    private zzob zzo;
    private zzob zzp;
    private zzob zzq;
    private zzab zzr;
    private zzab zzs;
    private zzab zzt;
    private boolean zzu;
    private boolean zzv;
    private int zzw;
    private int zzx;
    private int zzy;
    private boolean zzz;
    private final zzbp zze = new zzbp();
    private final zzbo zzf = new zzbo();
    private final HashMap zzh = new HashMap();
    private final HashMap zzg = new HashMap();
    private final long zzd = SystemClock.elapsedRealtime();
    private int zzl = 0;
    private int zzm = 0;

    private zzoc(Context context, PlaybackSession playbackSession) {
        this.zza = context.getApplicationContext();
        this.zzc = playbackSession;
        zzoa zzoaVar = new zzoa(zzoa.zza);
        this.zzb = zzoaVar;
        zzoaVar.zzh(this);
    }

    public static zzoc zzb(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        createPlaybackSession = mediaMetricsManager.createPlaybackSession();
        return new zzoc(context, createPlaybackSession);
    }

    @SuppressLint({"SwitchIntDef"})
    private static int zzr(int i) {
        switch (zzei.zzl(i)) {
            case AdError.ICONVIEW_MISSING_ERROR_CODE /* 6002 */:
                return 24;
            case AdError.AD_ASSETS_UNSUPPORTED_TYPE_ERROR_CODE /* 6003 */:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private final void zzs() {
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.zzj;
        if (builder != null && this.zzz) {
            builder.setAudioUnderrunCount(this.zzy);
            this.zzj.setVideoFramesDropped(this.zzw);
            this.zzj.setVideoFramesPlayed(this.zzx);
            Long l = (Long) this.zzg.get(this.zzi);
            this.zzj.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.zzh.get(this.zzi);
            this.zzj.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.zzj.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            PlaybackSession playbackSession = this.zzc;
            build = this.zzj.build();
            playbackSession.reportPlaybackMetrics(build);
        }
        this.zzj = null;
        this.zzi = null;
        this.zzy = 0;
        this.zzw = 0;
        this.zzx = 0;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzz = false;
    }

    private final void zzt(long j, zzab zzabVar, int i) {
        if (Objects.equals(this.zzs, zzabVar)) {
            return;
        }
        int i2 = this.zzs == null ? 1 : 0;
        this.zzs = zzabVar;
        zzx(0, j, zzabVar, i2);
    }

    private final void zzu(long j, zzab zzabVar, int i) {
        if (Objects.equals(this.zzt, zzabVar)) {
            return;
        }
        int i2 = this.zzt == null ? 1 : 0;
        this.zzt = zzabVar;
        zzx(2, j, zzabVar, i2);
    }

    private final void zzv(zzbq zzbqVar, zzug zzugVar) {
        int zza;
        PlaybackMetrics.Builder builder = this.zzj;
        if (zzugVar == null || (zza = zzbqVar.zza(zzugVar.zza)) == -1) {
            return;
        }
        int i = 0;
        zzbqVar.zzd(zza, this.zzf, false);
        zzbqVar.zze(this.zzf.zzc, this.zze, 0L);
        zzam zzamVar = this.zze.zzd.zzb;
        if (zzamVar != null) {
            int zzo = zzei.zzo(zzamVar.zza);
            i = zzo != 0 ? zzo != 1 ? zzo != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i);
        zzbp zzbpVar = this.zze;
        long j = zzbpVar.zzm;
        if (j != -9223372036854775807L && !zzbpVar.zzk && !zzbpVar.zzi && !zzbpVar.zzb()) {
            builder.setMediaDurationMillis(zzei.zzv(j));
        }
        builder.setPlaybackType(true != this.zze.zzb() ? 1 : 2);
        this.zzz = true;
    }

    private final void zzw(long j, zzab zzabVar, int i) {
        if (Objects.equals(this.zzr, zzabVar)) {
            return;
        }
        int i2 = this.zzr == null ? 1 : 0;
        this.zzr = zzabVar;
        zzx(1, j, zzabVar, i2);
    }

    private final void zzx(int i, long j, zzab zzabVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i).setTimeSinceCreatedMillis(j - this.zzd);
        if (zzabVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i2 != 1 ? 1 : 2);
            String str = zzabVar.zzn;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = zzabVar.zzo;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = zzabVar.zzk;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = zzabVar.zzj;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = zzabVar.zzv;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = zzabVar.zzw;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = zzabVar.zzD;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = zzabVar.zzE;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = zzabVar.zzd;
            if (str4 != null) {
                int i8 = zzei.zza;
                String[] split = str4.split("-", -1);
                Pair create = Pair.create(split[0], split.length >= 2 ? split[1] : null);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = zzabVar.zzx;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.zzz = true;
        this.zzc.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private final boolean zzy(zzob zzobVar) {
        if (zzobVar != null) {
            return zzobVar.zzc.equals(this.zzb.zze());
        }
        return false;
    }

    public final LogSessionId zza() {
        LogSessionId sessionId;
        sessionId = this.zzc.getSessionId();
        return sessionId;
    }

    @Override // com.google.android.gms.internal.ads.zzod
    public final void zzc(zzlu zzluVar, String str) {
        zzug zzugVar = zzluVar.zzd;
        if (zzugVar == null || !zzugVar.zzb()) {
            zzs();
            this.zzi = str;
            this.zzj = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.5.0-beta01");
            zzv(zzluVar.zzb, zzluVar.zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzod
    public final void zzd(zzlu zzluVar, String str, boolean z) {
        zzug zzugVar = zzluVar.zzd;
        if ((zzugVar == null || !zzugVar.zzb()) && str.equals(this.zzi)) {
            zzs();
        }
        this.zzg.remove(str);
        this.zzh.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final /* synthetic */ void zze(zzlu zzluVar, zzab zzabVar, zzht zzhtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzf(zzlu zzluVar, int i, long j, long j2) {
        zzug zzugVar = zzluVar.zzd;
        if (zzugVar != null) {
            String zzf = this.zzb.zzf(zzluVar.zzb, zzugVar);
            Long l = (Long) this.zzh.get(zzf);
            Long l2 = (Long) this.zzg.get(zzf);
            this.zzh.put(zzf, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            this.zzg.put(zzf, Long.valueOf((l2 != null ? l2.longValue() : 0L) + i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzg(zzlu zzluVar, zzuc zzucVar) {
        zzug zzugVar = zzluVar.zzd;
        if (zzugVar == null) {
            return;
        }
        zzab zzabVar = zzucVar.zzb;
        zzabVar.getClass();
        zzob zzobVar = new zzob(zzabVar, 0, this.zzb.zzf(zzluVar.zzb, zzugVar));
        int i = zzucVar.zza;
        if (i != 0) {
            if (i == 1) {
                this.zzp = zzobVar;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.zzq = zzobVar;
                return;
            }
        }
        this.zzo = zzobVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final /* synthetic */ void zzh(zzlu zzluVar, int i, long j) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x01e0, code lost:
    
        if (r8 != 1) goto L139;
     */
    @Override // com.google.android.gms.internal.ads.zzlw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(com.google.android.gms.internal.ads.zzbk r19, com.google.android.gms.internal.ads.zzlv r20) {
        /*
            Method dump skipped, instructions count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoc.zzi(com.google.android.gms.internal.ads.zzbk, com.google.android.gms.internal.ads.zzlv):void");
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzj(zzlu zzluVar, zztx zztxVar, zzuc zzucVar, IOException iOException, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final /* synthetic */ void zzk(zzlu zzluVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzl(zzlu zzluVar, zzbd zzbdVar) {
        this.zzn = zzbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzm(zzlu zzluVar, zzbi zzbiVar, zzbi zzbiVar2, int i) {
        if (i == 1) {
            this.zzu = true;
            i = 1;
        }
        this.zzk = i;
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final /* synthetic */ void zzn(zzlu zzluVar, Object obj, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzo(zzlu zzluVar, zzhs zzhsVar) {
        this.zzw += zzhsVar.zzg;
        this.zzx += zzhsVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final /* synthetic */ void zzp(zzlu zzluVar, zzab zzabVar, zzht zzhtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzq(zzlu zzluVar, zzcd zzcdVar) {
        zzob zzobVar = this.zzo;
        if (zzobVar != null) {
            zzab zzabVar = zzobVar.zza;
            if (zzabVar.zzw == -1) {
                zzz zzb = zzabVar.zzb();
                zzb.zzaf(zzcdVar.zzb);
                zzb.zzK(zzcdVar.zzc);
                this.zzo = new zzob(zzb.zzag(), 0, zzobVar.zzc);
            }
        }
    }
}
