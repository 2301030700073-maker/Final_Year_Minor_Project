package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.ads.AdRequest;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

/* loaded from: classes.dex */
public final class zzqs extends zzsn implements zzkk {
    private final Context zzb;
    private final zzpe zzc;
    private final zzpm zzd;
    private final zzrz zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private zzab zzi;
    private zzab zzj;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzqs(Context context, zzsb zzsbVar, zzsp zzspVar, boolean z, Handler handler, zzpf zzpfVar, zzpm zzpmVar) {
        super(1, zzsbVar, zzspVar, false, 44100.0f);
        zzqr zzqrVar = null;
        zzrz zzrzVar = zzei.zza >= 35 ? new zzrz(zzry.zza) : null;
        this.zzb = context.getApplicationContext();
        this.zzd = zzpmVar;
        this.zze = zzrzVar;
        this.zzo = -1000;
        this.zzc = new zzpe(handler, zzpfVar);
        zzpmVar.zzq(new zzqq(this, zzqrVar));
    }

    private final int zzaQ(zzsg zzsgVar, zzab zzabVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(zzsgVar.zza) || (i = zzei.zza) >= 24 || (i == 23 && zzei.zzM(this.zzb))) {
            return zzabVar.zzp;
        }
        return -1;
    }

    private static List zzaR(zzsp zzspVar, zzab zzabVar, boolean z, zzpm zzpmVar) {
        zzsg zza;
        return zzabVar.zzo == null ? zzfxn.zzn() : (!zzpmVar.zzA(zzabVar) || (zza = zzta.zza()) == null) ? zzta.zze(zzspVar, zzabVar, false, false) : zzfxn.zzo(zza);
    }

    private final void zzaS() {
        long zzb = this.zzd.zzb(zzW());
        if (zzb != Long.MIN_VALUE) {
            if (!this.zzl) {
                zzb = Math.max(this.zzk, zzb);
            }
            this.zzk = zzb;
            this.zzl = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public final void zzA() {
        zzrz zzrzVar;
        this.zzd.zzk();
        if (zzei.zza < 35 || (zzrzVar = this.zze) == null) {
            return;
        }
        zzrzVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzC() {
        this.zzn = false;
        try {
            super.zzC();
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzl();
            }
        } catch (Throwable th) {
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzl();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public final void zzD() {
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public final void zzE() {
        zzaS();
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzlj, com.google.android.gms.internal.ads.zzlm
    public final String zzU() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzW() {
        return super.zzW() && this.zzd.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzX() {
        return this.zzd.zzy() || super.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final float zzZ(float f, zzab zzabVar, zzab[] zzabVarArr) {
        int i = -1;
        for (zzab zzabVar2 : zzabVarArr) {
            int i2 = zzabVar2.zzE;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final long zza() {
        if (zzcT() == 2) {
            zzaS();
        }
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final int zzaa(zzsp zzspVar, zzab zzabVar) {
        int i;
        boolean z;
        if (!zzbb.zzg(zzabVar.zzo)) {
            return 128;
        }
        int i2 = zzabVar.zzK;
        boolean zzaP = zzsn.zzaP(zzabVar);
        int i3 = 1;
        if (!zzaP || (i2 != 0 && zzta.zza() == null)) {
            i = 0;
        } else {
            zzor zzd = this.zzd.zzd(zzabVar);
            if (zzd.zzb) {
                i = true != zzd.zzc ? AdRequest.MAX_CONTENT_URL_LENGTH : 1536;
                if (zzd.zzd) {
                    i |= 2048;
                }
            } else {
                i = 0;
            }
            if (this.zzd.zzA(zzabVar)) {
                return i | 172;
            }
        }
        if ((!"audio/raw".equals(zzabVar.zzo) || this.zzd.zzA(zzabVar)) && this.zzd.zzA(zzei.zzA(2, zzabVar.zzD, zzabVar.zzE))) {
            List zzaR = zzaR(zzspVar, zzabVar, false, this.zzd);
            if (!zzaR.isEmpty()) {
                if (zzaP) {
                    zzsg zzsgVar = (zzsg) zzaR.get(0);
                    boolean zze = zzsgVar.zze(zzabVar);
                    if (!zze) {
                        for (int i4 = 1; i4 < zzaR.size(); i4++) {
                            zzsg zzsgVar2 = (zzsg) zzaR.get(i4);
                            if (zzsgVar2.zze(zzabVar)) {
                                zzsgVar = zzsgVar2;
                                z = false;
                                zze = true;
                                break;
                            }
                        }
                    }
                    z = true;
                    int i5 = true != zze ? 3 : 4;
                    int i6 = 8;
                    if (zze && zzsgVar.zzf(zzabVar)) {
                        i6 = 16;
                    }
                    return i5 | i6 | 32 | (true != zzsgVar.zzg ? 0 : 64) | (true != z ? 0 : 128) | i;
                }
                i3 = 2;
            }
        }
        return i3 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final zzht zzab(zzsg zzsgVar, zzab zzabVar, zzab zzabVar2) {
        int i;
        int i2;
        zzht zzb = zzsgVar.zzb(zzabVar, zzabVar2);
        int i3 = zzb.zze;
        if (zzaM(zzabVar2)) {
            i3 |= 32768;
        }
        if (zzaQ(zzsgVar, zzabVar2) > this.zzf) {
            i3 |= 64;
        }
        String str = zzsgVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzb.zzd;
            i2 = 0;
        }
        return new zzht(str, zzabVar, zzabVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final zzht zzac(zzke zzkeVar) {
        zzab zzabVar = zzkeVar.zza;
        zzabVar.getClass();
        this.zzi = zzabVar;
        zzht zzac = super.zzac(zzkeVar);
        this.zzc.zzi(zzabVar, zzac);
        return zzac;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d0, code lost:
    
        if ("AXON 7 mini".equals(r10) == false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0112  */
    @Override // com.google.android.gms.internal.ads.zzsn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzsa zzaf(com.google.android.gms.internal.ads.zzsg r8, com.google.android.gms.internal.ads.zzab r9, android.media.MediaCrypto r10, float r11) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqs.zzaf(com.google.android.gms.internal.ads.zzsg, com.google.android.gms.internal.ads.zzab, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzsa");
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final List zzag(zzsp zzspVar, zzab zzabVar, boolean z) {
        return zzta.zzf(zzaR(zzspVar, zzabVar, false, this.zzd), zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzaj(zzhh zzhhVar) {
        zzab zzabVar;
        if (zzei.zza < 29 || (zzabVar = zzhhVar.zza) == null || !Objects.equals(zzabVar.zzo, "audio/opus") || !zzaL()) {
            return;
        }
        ByteBuffer byteBuffer = zzhhVar.zzf;
        byteBuffer.getClass();
        zzab zzabVar2 = zzhhVar.zza;
        zzabVar2.getClass();
        int i = zzabVar2.zzG;
        if (byteBuffer.remaining() == 8) {
            this.zzd.zzr(i, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzak(Exception exc) {
        zzdo.zzd("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzal(String str, zzsa zzsaVar, long j, long j2) {
        this.zzc.zze(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzam(String str) {
        this.zzc.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzan(zzab zzabVar, MediaFormat mediaFormat) {
        int[] iArr;
        int i;
        zzab zzabVar2 = this.zzj;
        int[] iArr2 = null;
        if (zzabVar2 != null) {
            zzabVar = zzabVar2;
        } else if (zzaz() != null) {
            mediaFormat.getClass();
            int zzn = "audio/raw".equals(zzabVar.zzo) ? zzabVar.zzF : (zzei.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? zzei.zzn(mediaFormat.getInteger("v-bits-per-sample")) : 2 : mediaFormat.getInteger("pcm-encoding");
            zzz zzzVar = new zzz();
            zzzVar.zzaa("audio/raw");
            zzzVar.zzU(zzn);
            zzzVar.zzG(zzabVar.zzG);
            zzzVar.zzH(zzabVar.zzH);
            zzzVar.zzT(zzabVar.zzl);
            zzzVar.zzM(zzabVar.zza);
            zzzVar.zzO(zzabVar.zzb);
            zzzVar.zzP(zzabVar.zzc);
            zzzVar.zzQ(zzabVar.zzd);
            zzzVar.zzac(zzabVar.zze);
            zzzVar.zzY(zzabVar.zzf);
            zzzVar.zzz(mediaFormat.getInteger("channel-count"));
            zzzVar.zzab(mediaFormat.getInteger("sample-rate"));
            zzab zzag = zzzVar.zzag();
            if (this.zzg && zzag.zzD == 6 && (i = zzabVar.zzD) < 6) {
                iArr2 = new int[i];
                for (int i2 = 0; i2 < zzabVar.zzD; i2++) {
                    iArr2[i2] = i2;
                }
            } else if (this.zzh) {
                int i3 = zzag.zzD;
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
            zzabVar = zzag;
        }
        try {
            int i4 = zzei.zza;
            if (i4 >= 29) {
                if (zzaL()) {
                    zzn();
                }
                zzcw.zzf(i4 >= 29);
            }
            this.zzd.zze(zzabVar, 0, iArr2);
        } catch (zzph e) {
            throw zzcW(e, e.zza, false, 5001);
        }
    }

    public final void zzao() {
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzap() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzaq() {
        try {
            this.zzd.zzj();
        } catch (zzpl e) {
            throw zzcW(e, e.zzc, e.zzb, true != zzaL() ? 5002 : 5003);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final boolean zzar(long j, long j2, zzsd zzsdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) {
        byteBuffer.getClass();
        if (this.zzj != null && (i2 & 2) != 0) {
            zzsdVar.getClass();
            zzsdVar.zzo(i, false);
            return true;
        }
        if (z) {
            if (zzsdVar != null) {
                zzsdVar.zzo(i, false);
            }
            ((zzsn) this).zza.zzf += i3;
            this.zzd.zzg();
            return true;
        }
        try {
            if (!this.zzd.zzx(byteBuffer, j3, i3)) {
                return false;
            }
            if (zzsdVar != null) {
                zzsdVar.zzo(i, false);
            }
            ((zzsn) this).zza.zze += i3;
            return true;
        } catch (zzpi e) {
            zzab zzabVar2 = this.zzi;
            if (zzaL()) {
                zzn();
            }
            throw zzcW(e, zzabVar2, e.zzb, 5001);
        } catch (zzpl e2) {
            if (zzaL()) {
                zzn();
            }
            throw zzcW(e2, zzabVar, e2.zzb, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final boolean zzas(zzab zzabVar) {
        zzn();
        return this.zzd.zzA(zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final zzbe zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final void zzg(zzbe zzbeVar) {
        this.zzd.zzs(zzbeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final boolean zzj() {
        boolean z = this.zzn;
        this.zzn = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public final zzkk zzl() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzle
    public final void zzu(int i, Object obj) {
        zzrz zzrzVar;
        if (i == 2) {
            zzpm zzpmVar = this.zzd;
            obj.getClass();
            zzpmVar.zzw(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            zze zzeVar = (zze) obj;
            zzpm zzpmVar2 = this.zzd;
            zzeVar.getClass();
            zzpmVar2.zzm(zzeVar);
            return;
        }
        if (i == 6) {
            zzf zzfVar = (zzf) obj;
            zzpm zzpmVar3 = this.zzd;
            zzfVar.getClass();
            zzpmVar3.zzo(zzfVar);
            return;
        }
        if (i == 12) {
            if (zzei.zza >= 23) {
                this.zzd.zzu((AudioDeviceInfo) obj);
                return;
            }
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.zzo = ((Integer) obj).intValue();
            zzsd zzaz = zzaz();
            if (zzaz == null || zzei.zza < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.zzo));
            zzaz.zzq(bundle);
            return;
        }
        if (i == 9) {
            zzpm zzpmVar4 = this.zzd;
            obj.getClass();
            zzpmVar4.zzv(((Boolean) obj).booleanValue());
        } else {
            if (i != 10) {
                super.zzu(i, obj);
                return;
            }
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            this.zzd.zzn(intValue);
            if (zzei.zza < 35 || (zzrzVar = this.zze) == null) {
                return;
            }
            zzrzVar.zzd(intValue);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzx() {
        this.zzm = true;
        this.zzi = null;
        try {
            this.zzd.zzf();
            super.zzx();
        } catch (Throwable th) {
            super.zzx();
            throw th;
        } finally {
            this.zzc.zzg(((zzsn) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzy(boolean z, boolean z2) {
        super.zzy(z, z2);
        this.zzc.zzh(((zzsn) this).zza);
        zzn();
        this.zzd.zzt(zzo());
        this.zzd.zzp(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzz(long j, boolean z) {
        super.zzz(j, z);
        this.zzd.zzf();
        this.zzk = j;
        this.zzn = false;
        this.zzl = true;
    }
}
