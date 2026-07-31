package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.Scopes;
import io.sentry.protocol.SentryThread;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzrl extends zzte implements zzko {
    private final Context zzb;
    private final zzpz zzc;
    private final zzqh zzd;
    private final zzsr zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private zzv zzi;
    private zzv zzj;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;
    private boolean zzp;
    private long zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzrl(Context context, zzst zzstVar, zztg zztgVar, boolean z, Handler handler, zzqa zzqaVar, zzqh zzqhVar) {
        super(1, zzstVar, zztgVar, false, 44100.0f);
        byte[] bArr = null;
        zzsr zzsrVar = Build.VERSION.SDK_INT >= 35 ? new zzsr(zzsq.zzb) : null;
        this.zzb = context.getApplicationContext();
        this.zzd = zzqhVar;
        this.zze = zzsrVar;
        this.zzo = -1000;
        this.zzc = new zzpz(handler, zzqaVar);
        this.zzq = C.TIME_UNSET;
        zzqhVar.zza(new zzrk(this, bArr));
    }

    private static List zzbf(zztg zztgVar, zzv zzvVar, boolean z, zzqh zzqhVar) throws zzti {
        zzsy zza;
        return zzvVar.zzo == null ? zzgpe.zzi() : (!zzqhVar.zzd(zzvVar) || (zza = zztq.zza()) == null) ? zztq.zzc(zztgVar, zzvVar, false, false) : zzgpe.zzj(zza);
    }

    private final int zzbg(zzsy zzsyVar, zzv zzvVar) {
        "OMX.google.raw.decoder".equals(zzsyVar.zza);
        return zzvVar.zzp;
    }

    private final void zzbh() {
        long zzg = this.zzd.zzg(zzZ());
        if (zzg != Long.MIN_VALUE) {
            if (!this.zzl) {
                zzg = Math.max(this.zzk, zzg);
            }
            this.zzk = zzg;
            this.zzl = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzA(long j, boolean z, boolean z2) throws zzib {
        super.zzA(j, z, z2);
        this.zzd.zzz();
        this.zzk = j;
        this.zzq = C.TIME_UNSET;
        this.zzn = false;
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzB() {
        this.zzd.zzi();
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzC() {
        zzbh();
        this.zzp = false;
        this.zzd.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzD() {
        this.zzm = true;
        this.zzi = null;
        this.zzq = C.TIME_UNSET;
        try {
            this.zzd.zzz();
            super.zzD();
        } catch (Throwable th) {
            super.zzD();
            throw th;
        } finally {
            this.zzc.zzg(this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzE() {
        this.zzn = false;
        this.zzq = C.TIME_UNSET;
        try {
            super.zzE();
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzA();
            }
        } catch (Throwable th) {
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzA();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzF() {
        zzsr zzsrVar;
        this.zzd.zzB();
        if (Build.VERSION.SDK_INT < 35 || (zzsrVar = this.zze) == null) {
            return;
        }
        zzsrVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzln, com.google.android.gms.internal.ads.zzlp
    public final String zzS() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzln
    public final boolean zzY() {
        return this.zzd.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzln
    public final boolean zzZ() {
        return super.zzZ() && this.zzd.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final int zzac(zztg zztgVar, zzv zzvVar) throws zzti {
        int i;
        boolean z;
        String str = zzvVar.zzo;
        if (!zzas.zza(str)) {
            return 128;
        }
        int i2 = zzvVar.zzN;
        boolean zzbd = zzbd(zzvVar);
        int i3 = 1;
        if (!zzbd || (i2 != 0 && zztq.zza() == null)) {
            i = 0;
        } else {
            zzqh zzqhVar = this.zzd;
            zzpl zzf = zzqhVar.zzf(zzvVar);
            if (zzf.zzb) {
                i = true != zzf.zzc ? 512 : 1536;
                if (zzf.zzd) {
                    i |= 2048;
                }
            } else {
                i = 0;
            }
            if (zzqhVar.zzd(zzvVar)) {
                return i | TsExtractor.TS_STREAM_TYPE_AC4;
            }
        }
        if (!MimeTypes.AUDIO_RAW.equals(str) || this.zzd.zzd(zzvVar)) {
            zzqh zzqhVar2 = this.zzd;
            if (zzqhVar2.zzd(zzep.zzy(2, zzvVar.zzG, zzvVar.zzH))) {
                List zzbf = zzbf(zztgVar, zzvVar, false, zzqhVar2);
                if (!zzbf.isEmpty()) {
                    if (zzbd) {
                        zzsy zzsyVar = (zzsy) zzbf.get(0);
                        boolean zzc = zzsyVar.zzc(zzvVar);
                        if (!zzc) {
                            for (int i4 = 1; i4 < zzbf.size(); i4++) {
                                zzsy zzsyVar2 = (zzsy) zzbf.get(i4);
                                if (zzsyVar2.zzc(zzvVar)) {
                                    z = false;
                                    zzc = true;
                                    zzsyVar = zzsyVar2;
                                    break;
                                }
                            }
                        }
                        z = true;
                        int i5 = true != zzc ? 3 : 4;
                        int i6 = 8;
                        if (zzc && zzsyVar.zze(zzvVar)) {
                            i6 = 16;
                        }
                        return i5 | i6 | 32 | (true != zzsyVar.zzg ? 0 : 64) | (true != z ? 0 : 128) | i;
                    }
                    i3 = 2;
                }
            }
        }
        return i3 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final List zzad(zztg zztgVar, zzv zzvVar, boolean z) throws zzti {
        return zztq.zze(zzbf(zztgVar, zzvVar, false, this.zzd), zzvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzae(zzv zzvVar) {
        zzJ();
        return this.zzd.zzd(zzvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzss zzaf(zzsy zzsyVar, zzv zzvVar, MediaCrypto mediaCrypto, float f) {
        zzv[] zzI = zzI();
        int length = zzI.length;
        int zzbg = zzbg(zzsyVar, zzvVar);
        if (length != 1) {
            for (zzv zzvVar2 : zzI) {
                if (zzsyVar.zzf(zzvVar, zzvVar2).zzd != 0) {
                    zzbg = Math.max(zzbg, zzbg(zzsyVar, zzvVar2));
                }
            }
        }
        this.zzf = zzbg;
        String str = zzsyVar.zza;
        this.zzg = false;
        this.zzh = str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
        String str2 = zzsyVar.zzc;
        int i = this.zzf;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str2);
        int i2 = zzvVar.zzG;
        mediaFormat.setInteger("channel-count", i2);
        int i3 = zzvVar.zzH;
        mediaFormat.setInteger("sample-rate", i3);
        zzdw.zza(mediaFormat, zzvVar.zzr);
        zzdw.zzb(mediaFormat, "max-input-size", i);
        mediaFormat.setInteger(SentryThread.JsonKeys.PRIORITY, 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        String str3 = zzvVar.zzo;
        if (MimeTypes.AUDIO_AC4.equals(str3)) {
            Pair zzd = zzdd.zzd(zzvVar);
            if (zzd != null) {
                zzdw.zzb(mediaFormat, Scopes.PROFILE, ((Integer) zzd.first).intValue());
                zzdw.zzb(mediaFormat, "level", ((Integer) zzd.second).intValue());
            }
            if (Build.VERSION.SDK_INT <= 28) {
                mediaFormat.setInteger("ac4-is-sync", 1);
            }
        }
        if (this.zzd.zze(zzep.zzy(4, i2, i3)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (Build.VERSION.SDK_INT >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.zzo));
        }
        this.zzj = (!MimeTypes.AUDIO_RAW.equals(zzsyVar.zzb) || MimeTypes.AUDIO_RAW.equals(str3)) ? null : zzvVar;
        return zzss.zza(zzsyVar, mediaFormat, zzvVar, null, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzht zzag(zzsy zzsyVar, zzv zzvVar, zzv zzvVar2) {
        int i;
        int i2;
        zzht zzf = zzsyVar.zzf(zzvVar, zzvVar2);
        int i3 = zzf.zze;
        if (zzaB(zzvVar2)) {
            i3 |= 32768;
        }
        if (zzbg(zzsyVar, zzvVar2) > this.zzf) {
            i3 |= 64;
        }
        String str = zzsyVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzf.zzd;
            i2 = 0;
        }
        return new zzht(str, zzvVar, zzvVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final long zzah(long j, long j2, boolean z) {
        zzqh zzqhVar = this.zzd;
        boolean z2 = false;
        if (zzqhVar.zzn() && this.zzq != C.TIME_UNSET) {
            z2 = true;
        }
        if (!this.zzp) {
            return (z2 || super.zzZ()) ? 1000000L : 10000L;
        }
        long zzv = zzqhVar.zzv();
        if (!z2 || zzv == C.TIME_UNSET) {
            return 10000L;
        }
        return Math.max(10000L, ((long) ((Math.min(zzv, this.zzq - j) / (zzj() != null ? zzj().zzb : 1.0f)) / 2.0f)) - (zzep.zzq(zzL().zzb()) - j2));
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final float zzai(float f, zzv zzvVar, zzv[] zzvVarArr) {
        int i = -1;
        for (zzv zzvVar2 : zzvVarArr) {
            int i2 = zzvVar2.zzH;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzaj(String str, zzss zzssVar, long j, long j2) {
        this.zzc.zzb(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzak(String str) {
        this.zzc.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzal(Exception exc) {
        zzdt.zzf("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zzj(exc);
    }

    protected final void zzao() {
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzap() {
        this.zzd.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzar() throws zzib {
        try {
            this.zzd.zzl();
            if (zzba() != C.TIME_UNSET) {
                this.zzq = zzba();
            }
        } catch (zzqg e) {
            throw zzN(e, e.zzc, e.zzb, true != zzaD() ? PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED : PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzas(zzhh zzhhVar) {
        zzv zzvVar;
        if (Build.VERSION.SDK_INT < 29 || (zzvVar = zzhhVar.zza) == null || !Objects.equals(zzvVar.zzo, MimeTypes.AUDIO_OPUS) || !zzaD()) {
            return;
        }
        ByteBuffer byteBuffer = zzhhVar.zzf;
        byteBuffer.getClass();
        zzv zzvVar2 = zzhhVar.zza;
        zzvVar2.getClass();
        int i = zzvVar2.zzJ;
        if (byteBuffer.remaining() == 8) {
            this.zzd.zzw(i, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / C.NANOS_PER_SECOND));
        }
    }

    final /* synthetic */ zzpz zzaw() {
        return this.zzc;
    }

    final /* synthetic */ zzsr zzax() {
        return this.zze;
    }

    final /* synthetic */ void zzay(boolean z) {
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzln
    public final zzko zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final long zzg() {
        if (zze() == 2) {
            zzbh();
        }
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final boolean zzh() {
        boolean z = this.zzn;
        this.zzn = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final void zzi(zzav zzavVar) {
        this.zzd.zzo(zzavVar);
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final zzav zzj() {
        return this.zzd.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzy(boolean z, boolean z2) throws zzib {
        super.zzy(z, z2);
        this.zzc.zza(this.zza);
        zzJ();
        zzqh zzqhVar = this.zzd;
        zzqhVar.zzb(zzK());
        zzqhVar.zzc(zzL());
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzht zzam(zzkj zzkjVar) throws zzib {
        zzv zzvVar = zzkjVar.zzb;
        zzvVar.getClass();
        this.zzi = zzvVar;
        zzht zzam = super.zzam(zzkjVar);
        this.zzc.zzc(zzvVar, zzam);
        return zzam;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaq(long j, long j2, zzsv zzsvVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzv zzvVar) throws zzib {
        byteBuffer.getClass();
        this.zzq = C.TIME_UNSET;
        if (this.zzj != null && (i2 & 2) != 0) {
            zzsvVar.getClass();
            zzsvVar.zzc(i, false);
            return true;
        }
        if (z) {
            if (zzsvVar != null) {
                zzsvVar.zzc(i, false);
            }
            this.zza.zzf += i3;
            this.zzd.zzj();
            return true;
        }
        try {
            if (!this.zzd.zzk(byteBuffer, j3, i3)) {
                this.zzq = j3;
                return false;
            }
            if (zzsvVar != null) {
                zzsvVar.zzc(i, false);
            }
            this.zza.zze += i3;
            return true;
        } catch (zzqd e) {
            zzv zzvVar2 = this.zzi;
            if (zzaD()) {
                zzJ();
            }
            throw zzN(e, zzvVar2, e.zzb, PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
        } catch (zzqg e2) {
            if (zzaD()) {
                zzJ();
            }
            throw zzN(e2, zzvVar, e2.zzb, PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzli
    public final void zzx(int i, Object obj) throws zzib {
        zzsr zzsrVar;
        if (i == 2) {
            zzqh zzqhVar = this.zzd;
            obj.getClass();
            zzqhVar.zzx(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            zzd zzdVar = (zzd) obj;
            zzqh zzqhVar2 = this.zzd;
            zzdVar.getClass();
            zzqhVar2.zzr(zzdVar);
            return;
        }
        if (i == 6) {
            zze zzeVar = (zze) obj;
            zzqh zzqhVar3 = this.zzd;
            zzeVar.getClass();
            zzqhVar3.zzt(zzeVar);
            return;
        }
        if (i == 12) {
            this.zzd.zzu((AudioDeviceInfo) obj);
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.zzo = ((Integer) obj).intValue();
            zzsv zzaE = zzaE();
            if (zzaE == null || Build.VERSION.SDK_INT < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.zzo));
            zzaE.zzo(bundle);
            return;
        }
        if (i == 9) {
            zzqh zzqhVar4 = this.zzd;
            obj.getClass();
            zzqhVar4.zzq(((Boolean) obj).booleanValue());
        } else {
            if (i != 10) {
                super.zzx(i, obj);
                return;
            }
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            this.zzd.zzs(intValue);
            if (Build.VERSION.SDK_INT < 35 || (zzsrVar = this.zze) == null) {
                return;
            }
            zzsrVar.zza(intValue);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzan(zzv zzvVar, MediaFormat mediaFormat) throws zzib {
        int[] iArr;
        int i;
        zzv zzvVar2 = this.zzj;
        int[] iArr2 = null;
        boolean z = true;
        if (zzvVar2 != null) {
            zzvVar = zzvVar2;
        } else if (zzaE() != null) {
            mediaFormat.getClass();
            int integer = MimeTypes.AUDIO_RAW.equals(zzvVar.zzo) ? zzvVar.zzI : mediaFormat.containsKey("pcm-encoding") ? mediaFormat.getInteger("pcm-encoding") : mediaFormat.containsKey("v-bits-per-sample") ? zzep.zzz(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN) : 2;
            zzt zztVar = new zzt();
            zztVar.zzm(MimeTypes.AUDIO_RAW);
            zztVar.zzG(integer);
            zztVar.zzH(zzvVar.zzJ);
            zztVar.zzI(zzvVar.zzK);
            zztVar.zzk(zzvVar.zzl);
            Object obj = zzvVar.zzm;
            zztVar.zza(zzvVar.zza);
            zztVar.zzc(zzvVar.zzb);
            zztVar.zzd(zzvVar.zzc);
            zztVar.zze(zzvVar.zzd);
            zztVar.zzf(zzvVar.zze);
            zztVar.zzg(zzvVar.zzf);
            zztVar.zzE(mediaFormat.getInteger("channel-count"));
            zztVar.zzF(mediaFormat.getInteger("sample-rate"));
            zzv zzM = zztVar.zzM();
            if (this.zzg && zzM.zzG == 6 && (i = zzvVar.zzG) < 6) {
                iArr2 = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    iArr2[i2] = i2;
                }
            } else if (this.zzh) {
                int i3 = zzM.zzG;
                if (i3 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i3 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i3 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i3 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i3 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
                iArr2 = iArr;
            }
            zzvVar = zzM;
        }
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                if (zzaD()) {
                    zzJ();
                }
                if (Build.VERSION.SDK_INT < 29) {
                    z = false;
                }
                zzgmd.zzh(z);
            }
            this.zzd.zzh(zzvVar, 0, iArr2);
        } catch (zzqc e) {
            throw zzN(e, e.zza, false, PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
        }
    }
}
