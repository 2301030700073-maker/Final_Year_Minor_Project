package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.Scopes;
import io.sentry.protocol.SentryThread;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaak extends zzte implements zzaaz {
    private static final int[] zzb = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private int zzA;
    private int zzB;
    private int zzC;
    private zzlu zzD;
    private boolean zzE;
    private long zzF;
    private int zzG;
    private long zzH;
    private zzbv zzI;
    private zzbv zzJ;
    private int zzK;
    private int zzL;
    private zzaax zzM;
    private long zzN;
    private long zzO;
    private boolean zzP;
    private final Context zze;
    private final boolean zzf;
    private final zzabr zzg;
    private final boolean zzh;
    private final zzaba zzi;
    private final zzaay zzj;
    private final long zzk;
    private final PriorityQueue zzl;
    private zzaaj zzm;
    private boolean zzn;
    private boolean zzo;
    private zzabx zzp;
    private boolean zzq;
    private int zzr;
    private List zzs;
    private Surface zzt;
    private zzaam zzu;
    private zzeh zzv;
    private boolean zzw;
    private int zzx;
    private int zzy;
    private long zzz;

    protected zzaak(zzaai zzaaiVar) {
        super(2, zzaaiVar.zzg(), zzaaiVar.zzf(), false, 30.0f);
        Context applicationContext = zzaaiVar.zze().getApplicationContext();
        this.zze = applicationContext;
        this.zzp = null;
        this.zzg = new zzabr(zzaaiVar.zzh(), zzaaiVar.zzi());
        this.zzf = this.zzp == null;
        this.zzi = new zzaba(applicationContext, this, 0L);
        this.zzj = new zzaay();
        this.zzh = "NVIDIA".equals(Build.MANUFACTURER);
        this.zzv = zzeh.zza;
        this.zzx = 1;
        this.zzy = 0;
        this.zzI = zzbv.zza;
        this.zzL = 0;
        this.zzJ = null;
        this.zzK = -1000;
        this.zzN = C.TIME_UNSET;
        this.zzO = C.TIME_UNSET;
        this.zzl = new PriorityQueue();
        this.zzk = C.TIME_UNSET;
        this.zzD = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0081, code lost:
    
        if (r3.equals(androidx.media3.common.MimeTypes.VIDEO_AV1) != false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzat(com.google.android.gms.internal.ads.zzsy r11, com.google.android.gms.internal.ads.zzv r12) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaak.zzat(com.google.android.gms.internal.ads.zzsy, com.google.android.gms.internal.ads.zzv):int");
    }

    protected static int zzbg(zzsy zzsyVar, zzv zzvVar) {
        int i = zzvVar.zzp;
        if (i == -1) {
            return zzat(zzsyVar, zzvVar);
        }
        List list = zzvVar.zzr;
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += ((byte[]) list.get(i3)).length;
        }
        return i + i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x04c1, code lost:
    
        if (r1.equals("deb") != false) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x079e, code lost:
    
        if (r1.equals("JSN-L21") == false) goto L514;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static final boolean zzbk(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 2926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaak.zzbk(java.lang.String):boolean");
    }

    protected static final boolean zzbl(zzsy zzsyVar) {
        return Build.VERSION.SDK_INT >= 35 && zzsyVar.zzh;
    }

    private static List zzbm(Context context, zztg zztgVar, zzv zzvVar, boolean z, boolean z2) throws zzti {
        String str = zzvVar.zzo;
        if (str == null) {
            return zzgpe.zzi();
        }
        if (Build.VERSION.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(str) && !zzaah.zza(context)) {
            List zzd2 = zztq.zzd(zztgVar, zzvVar, z, z2);
            if (!zzd2.isEmpty()) {
                return zzd2;
            }
        }
        return zztq.zzc(zztgVar, zzvVar, z, z2);
    }

    private final void zzbn(Object obj) throws zzib {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (this.zzt == surface) {
            if (surface != null) {
                zzbv();
                Surface surface2 = this.zzt;
                if (surface2 == null || !this.zzw) {
                    return;
                }
                this.zzg.zzg(surface2);
                return;
            }
            return;
        }
        this.zzt = surface;
        if (this.zzp == null) {
            this.zzi.zzd(surface);
        }
        this.zzw = false;
        int zze = zze();
        zzsv zzaE = zzaE();
        if (zzaE != null && this.zzp == null) {
            zzsy zzaH = zzaH();
            zzaH.getClass();
            if (!zzbr(zzaH) || this.zzn) {
                zzaI();
                zzaA();
            } else {
                Surface zzbs = zzbs(zzaH);
                if (zzbs != null) {
                    zzaE.zzm(zzbs);
                } else {
                    if (Build.VERSION.SDK_INT < 35) {
                        throw new IllegalStateException();
                    }
                    zzaE.zzn();
                }
            }
        }
        if (surface != null) {
            zzbv();
        } else {
            this.zzJ = null;
            zzabx zzabxVar = this.zzp;
            if (zzabxVar != null) {
                zzabxVar.zzq();
            }
        }
        if (zze == 2) {
            zzabx zzabxVar2 = this.zzp;
            if (zzabxVar2 != null) {
                zzabxVar2.zzw(true);
            } else {
                this.zzi.zzj(true);
            }
        }
    }

    private final boolean zzbo(zzhh zzhhVar) {
        if (zzdb() || zzhhVar.zzd() || this.zzO == C.TIME_UNSET) {
            return true;
        }
        return this.zzO - (zzhhVar.zze - zzbb()) <= SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
    }

    private final boolean zzbp(zzhh zzhhVar) {
        return zzhhVar.zze < zzG();
    }

    private final void zzbq(long j, long j2, zzv zzvVar) {
        zzaax zzaaxVar = this.zzM;
        if (zzaaxVar != null) {
            zzaaxVar.zzcS(j, j2, zzvVar, zzaG());
        }
    }

    private final boolean zzbr(zzsy zzsyVar) {
        if (this.zzp != null) {
            return true;
        }
        Surface surface = this.zzt;
        return (surface != null && surface.isValid()) || zzbl(zzsyVar) || zzbf(zzsyVar);
    }

    private final Surface zzbs(zzsy zzsyVar) {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            return zzabxVar.zzk();
        }
        Surface surface = this.zzt;
        if (surface != null) {
            return surface;
        }
        if (zzbl(zzsyVar)) {
            return null;
        }
        zzgmd.zzh(zzbf(zzsyVar));
        zzaam zzaamVar = this.zzu;
        if (zzaamVar != null) {
            if (zzaamVar.zza != zzsyVar.zzf) {
                zzbt();
            }
        }
        if (this.zzu == null) {
            this.zzu = zzaam.zzb(this.zze, zzsyVar.zzf);
        }
        return this.zzu;
    }

    private final void zzbt() {
        zzaam zzaamVar = this.zzu;
        if (zzaamVar != null) {
            zzaamVar.release();
            this.zzu = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresNonNull({"displaySurface"})
    /* renamed from: zzbu, reason: merged with bridge method [inline-methods] */
    public final void zzbi() {
        this.zzg.zzg(this.zzt);
        this.zzw = true;
    }

    private final void zzbv() {
        zzbv zzbvVar = this.zzJ;
        if (zzbvVar != null) {
            this.zzg.zzf(zzbvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzA(long j, boolean z, boolean z2) throws zzib {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null && !z) {
            zzabxVar.zzg(true);
        }
        super.zzA(j, z, z2);
        if (this.zzp == null) {
            this.zzi.zzl();
        }
        if (z) {
            zzabx zzabxVar2 = this.zzp;
            if (zzabxVar2 != null) {
                zzabxVar2.zzw(false);
            } else {
                this.zzi.zzj(false);
            }
        }
        this.zzB = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzB() {
        this.zzA = 0;
        this.zzz = zzL().zzb();
        this.zzF = 0L;
        this.zzG = 0;
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            zzabxVar.zza();
        } else {
            this.zzi.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzC() {
        if (this.zzA > 0) {
            long zzb2 = zzL().zzb();
            this.zzg.zzd(this.zzA, zzb2 - this.zzz);
            this.zzA = 0;
            this.zzz = zzb2;
        }
        int i = this.zzG;
        if (i != 0) {
            this.zzg.zze(this.zzF, i);
            this.zzF = 0L;
            this.zzG = 0;
        }
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            zzabxVar.zzb();
        } else {
            this.zzi.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzD() {
        this.zzJ = null;
        this.zzO = C.TIME_UNSET;
        this.zzw = false;
        this.zzE = true;
        try {
            super.zzD();
        } finally {
            zzabr zzabrVar = this.zzg;
            zzabrVar.zzi(this.zza);
            zzabrVar.zzf(zzbv.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzE() {
        try {
            super.zzE();
        } finally {
            this.zzq = false;
            this.zzN = C.TIME_UNSET;
            zzbt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzF() {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar == null || !this.zzf) {
            return;
        }
        zzabxVar.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzln, com.google.android.gms.internal.ads.zzlp
    public final String zzS() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final boolean zzU(long j) {
        long zzaU = zzaU();
        return zzaU == C.TIME_UNSET || j > zzaU - zzbb();
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzln
    public final void zzV(float f, float f2) throws zzib {
        super.zzV(f, f2);
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            zzabxVar.zzm(f);
        } else {
            this.zzi.zzn(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final void zzW() {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar == null) {
            this.zzi.zzh();
            return;
        }
        int i = this.zzr;
        if (i == 0 || i == 1) {
            this.zzr = 0;
        } else {
            zzabxVar.zzt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzln
    public final void zzX(long j, long j2) throws zzib {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            try {
                zzabxVar.zzv(j, j2);
            } catch (zzabw e) {
                throw zzN(e, e.zza, false, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED);
            }
        }
        super.zzX(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzln
    public final boolean zzY() {
        boolean zzaW = zzaW();
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            return zzabxVar.zzh(zzaW);
        }
        if (zzaW && zzaE() == null) {
            return true;
        }
        return this.zzi.zzi(zzaW);
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzln
    public final boolean zzZ() {
        if (!super.zzZ()) {
            return false;
        }
        zzabx zzabxVar = this.zzp;
        return zzabxVar == null || zzabxVar.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaC(zzsy zzsyVar) {
        return zzbr(zzsyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaK() {
        zzsy zzaH = zzaH();
        if (this.zzp != null && zzaH != null) {
            String str = zzaH.zza;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.zzaK();
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaL() {
        boolean z;
        zzv zzaF = zzaF();
        long j = this.zzO;
        if (j != C.TIME_UNSET) {
            if (zzaM() + j + 1 <= Long.MAX_VALUE - (zzbb() + this.zzO)) {
                z = false;
                return this.zzD == null || this.zzE || (zzaF != null && zzaF.zzq > 0) || z || zzba() != C.TIME_UNSET;
            }
        }
        z = true;
        if (this.zzD == null) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzaN() {
        super.zzaN();
        this.zzl.clear();
        this.zzC = 0;
        this.zzE = false;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzsx zzaP(Throwable th, zzsy zzsyVar) {
        return new zzaae(th, zzsyVar, this.zzt);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaQ(zzv zzvVar) throws zzib {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar == null || zzabxVar.zze()) {
            return true;
        }
        try {
            zzabxVar.zzd(zzvVar);
            return true;
        } catch (zzabw e) {
            throw zzN(e, zzvVar, false, 7000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzaR(zzhh zzhhVar) throws zzib {
        int zzaS = zzaS(zzhhVar);
        if (Build.VERSION.SDK_INT < 34 || (zzaS & 32) == 0) {
            this.zzC++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final int zzaS(zzhh zzhhVar) {
        return (Build.VERSION.SDK_INT < 34 || this.zzD == null || !zzbp(zzhhVar) || zzbo(zzhhVar)) ? 0 : 32;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaT(zzhh zzhhVar) {
        boolean z = false;
        if (zzbo(zzhhVar)) {
            return false;
        }
        if (zzbp(zzhhVar)) {
            if (zzhhVar.zze()) {
                return false;
            }
            if (zzhhVar.zzf()) {
                zzhhVar.zza();
                z = true;
            }
            if (z) {
                this.zza.zzd++;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzaV(long j) {
        super.zzaV(j);
        this.zzC--;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final int zzac(zztg zztgVar, zzv zzvVar) throws zzti {
        boolean z;
        String str = zzvVar.zzo;
        if (!zzas.zzb(str)) {
            return 128;
        }
        Context context = this.zze;
        int i = 0;
        boolean z2 = zzvVar.zzs != null;
        List zzbm = zzbm(context, zztgVar, zzvVar, z2, false);
        if (z2 && zzbm.isEmpty()) {
            zzbm = zzbm(context, zztgVar, zzvVar, false, false);
        }
        if (zzbm.isEmpty()) {
            return TsExtractor.TS_STREAM_TYPE_AC3;
        }
        if (!zzbd(zzvVar)) {
            return TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
        }
        zzsy zzsyVar = (zzsy) zzbm.get(0);
        boolean zzc2 = zzsyVar.zzc(zzvVar);
        if (!zzc2) {
            for (int i2 = 1; i2 < zzbm.size(); i2++) {
                zzsy zzsyVar2 = (zzsy) zzbm.get(i2);
                if (zzsyVar2.zzc(zzvVar)) {
                    zzc2 = true;
                    z = false;
                    zzsyVar = zzsyVar2;
                    break;
                }
            }
        }
        z = true;
        int i3 = true != zzc2 ? 3 : 4;
        int i4 = true != zzsyVar.zze(zzvVar) ? 8 : 16;
        int i5 = true != zzsyVar.zzg ? 0 : 64;
        int i6 = true != z ? 0 : 128;
        if (Build.VERSION.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(str) && !zzaah.zza(context)) {
            i6 = 256;
        }
        if (zzc2) {
            List zzbm2 = zzbm(context, zztgVar, zzvVar, z2, true);
            if (!zzbm2.isEmpty()) {
                zzsy zzsyVar3 = (zzsy) zztq.zze(zzbm2, zzvVar).get(0);
                if (zzsyVar3.zzc(zzvVar) && zzsyVar3.zze(zzvVar)) {
                    i = 32;
                }
            }
        }
        return i6 | i3 | i4 | i | i5;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final List zzad(zztg zztgVar, zzv zzvVar, boolean z) throws zzti {
        return zztq.zze(zzbm(this.zze, zztgVar, zzvVar, false, false), zzvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzss zzaf(zzsy zzsyVar, zzv zzvVar, MediaCrypto mediaCrypto, float f) {
        int i;
        int i2;
        zzaaj zzaajVar;
        Point point;
        int i3;
        boolean z;
        zzv[] zzvVarArr;
        char c;
        boolean z2;
        int zzat;
        zzv[] zzI = zzI();
        int length = zzI.length;
        int zzbg = zzbg(zzsyVar, zzvVar);
        int i4 = zzvVar.zzw;
        int i5 = zzvVar.zzv;
        if (length == 1) {
            if (zzbg != -1 && (zzat = zzat(zzsyVar, zzvVar)) != -1) {
                zzbg = Math.min((int) (zzbg * 1.5f), zzat);
            }
            zzaajVar = new zzaaj(i5, i4, zzbg);
            i = i4;
            i2 = i5;
        } else {
            int i6 = i4;
            int i7 = i5;
            int i8 = 0;
            boolean z3 = false;
            while (i8 < length) {
                zzv zzvVar2 = zzI[i8];
                zzi zziVar = zzvVar.zzE;
                if (zziVar != null && zzvVar2.zzE == null) {
                    zzt zza = zzvVar2.zza();
                    zza.zzC(zziVar);
                    zzvVar2 = zza.zzM();
                }
                if (zzsyVar.zzf(zzvVar, zzvVar2).zzd != 0) {
                    int i9 = zzvVar2.zzv;
                    c = 65535;
                    if (i9 != -1) {
                        zzvVarArr = zzI;
                        if (zzvVar2.zzw != -1) {
                            z2 = false;
                            z3 |= z2;
                            i7 = Math.max(i7, i9);
                            i6 = Math.max(i6, zzvVar2.zzw);
                            zzbg = Math.max(zzbg, zzbg(zzsyVar, zzvVar2));
                        }
                    } else {
                        zzvVarArr = zzI;
                    }
                    z2 = true;
                    z3 |= z2;
                    i7 = Math.max(i7, i9);
                    i6 = Math.max(i6, zzvVar2.zzw);
                    zzbg = Math.max(zzbg, zzbg(zzsyVar, zzvVar2));
                } else {
                    zzvVarArr = zzI;
                    c = 65535;
                }
                i8++;
                zzI = zzvVarArr;
            }
            if (z3) {
                StringBuilder sb = new StringBuilder(String.valueOf(i7).length() + 44 + String.valueOf(i6).length());
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i7);
                sb.append("x");
                sb.append(i6);
                zzdt.zzc("MediaCodecVideoRenderer", sb.toString());
                boolean z4 = i4 > i5;
                int i10 = z4 ? i4 : i5;
                int i11 = true != z4 ? i4 : i5;
                int[] iArr = zzb;
                int i12 = 0;
                while (true) {
                    if (i12 >= 9) {
                        i = i4;
                        i2 = i5;
                        break;
                    }
                    float f2 = i11;
                    i = i4;
                    float f3 = i10;
                    i2 = i5;
                    int i13 = iArr[i12];
                    int[] iArr2 = iArr;
                    float f4 = i13;
                    if (i13 <= i10 || (i3 = (int) (f4 * (f2 / f3))) <= i11) {
                        break;
                    }
                    int i14 = true != z4 ? i13 : i3;
                    if (true != z4) {
                        i13 = i3;
                    }
                    point = zzsyVar.zzi(i14, i13);
                    float f5 = zzvVar.zzz;
                    if (point != null) {
                        z = z4;
                        if (zzsyVar.zzg(point.x, point.y, f5)) {
                            break;
                        }
                    } else {
                        z = z4;
                    }
                    i12++;
                    i4 = i;
                    i5 = i2;
                    iArr = iArr2;
                    z4 = z;
                }
                point = null;
                if (point != null) {
                    i7 = Math.max(i7, point.x);
                    i6 = Math.max(i6, point.y);
                    zzt zza2 = zzvVar.zza();
                    zza2.zzt(i7);
                    zza2.zzu(i6);
                    zzbg = Math.max(zzbg, zzat(zzsyVar, zza2.zzM()));
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i7).length() + 35 + String.valueOf(i6).length());
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i7);
                    sb2.append("x");
                    sb2.append(i6);
                    zzdt.zzc("MediaCodecVideoRenderer", sb2.toString());
                }
            } else {
                i = i4;
                i2 = i5;
            }
            zzaajVar = new zzaaj(i7, i6, zzbg);
        }
        String str = zzsyVar.zzc;
        this.zzm = zzaajVar;
        boolean z5 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i2);
        mediaFormat.setInteger("height", i);
        zzdw.zza(mediaFormat, zzvVar.zzr);
        float f6 = zzvVar.zzz;
        if (f6 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f6);
        }
        zzdw.zzb(mediaFormat, "rotation-degrees", zzvVar.zzA);
        zzi zziVar2 = zzvVar.zzE;
        if (zziVar2 != null) {
            zzdw.zzb(mediaFormat, "color-transfer", zziVar2.zzd);
            zzdw.zzb(mediaFormat, "color-standard", zziVar2.zzb);
            zzdw.zzb(mediaFormat, "color-range", zziVar2.zzc);
            byte[] bArr = zziVar2.zze;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(zzvVar.zzo)) {
            int i15 = zztq.zza;
            Pair zzd2 = zzdd.zzd(zzvVar);
            if (zzd2 != null) {
                zzdw.zzb(mediaFormat, Scopes.PROFILE, ((Integer) zzd2.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", zzaajVar.zza);
        mediaFormat.setInteger("max-height", zzaajVar.zzb);
        zzdw.zzb(mediaFormat, "max-input-size", zzaajVar.zzc);
        mediaFormat.setInteger(SentryThread.JsonKeys.PRIORITY, 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if (z5) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.zzK));
        }
        Surface zzbs = zzbs(zzsyVar);
        if (this.zzp != null && !zzep.zzS(this.zze)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return zzss.zzb(zzsyVar, mediaFormat, zzvVar, zzbs, null);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzht zzag(zzsy zzsyVar, zzv zzvVar, zzv zzvVar2) {
        int i;
        int i2;
        zzht zzf = zzsyVar.zzf(zzvVar, zzvVar2);
        int i3 = zzf.zze;
        zzaaj zzaajVar = this.zzm;
        zzaajVar.getClass();
        if (zzvVar2.zzv > zzaajVar.zza || zzvVar2.zzw > zzaajVar.zzb) {
            i3 |= 256;
        }
        if (zzbg(zzsyVar, zzvVar2) > zzaajVar.zzc) {
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
    protected final float zzai(float f, zzv zzvVar, zzv[] zzvVarArr) {
        zzsy zzaH;
        float f2 = -1.0f;
        for (zzv zzvVar2 : zzvVarArr) {
            float f3 = zzvVar2.zzz;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        float f4 = f2 == -1.0f ? -1.0f : f2 * f;
        if (this.zzD == null || (zzaH = zzaH()) == null) {
            return f4;
        }
        float zzh = zzaH.zzh(zzvVar.zzv, zzvVar.zzw);
        return f4 != -1.0f ? Math.max(f4, zzh) : zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzaj(String str, zzss zzssVar, long j, long j2) {
        this.zzg.zzb(str, j, j2);
        this.zzn = zzbk(str);
        zzsy zzaH = zzaH();
        zzaH.getClass();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29 && MimeTypes.VIDEO_VP9.equals(zzaH.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] zzb2 = zzaH.zzb();
            int length = zzb2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (zzb2[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.zzo = z;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzak(String str) {
        this.zzg.zzh(str);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzal(Exception exc) {
        zzdt.zzf("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzj(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final zzht zzam(zzkj zzkjVar) throws zzib {
        zzht zzam = super.zzam(zzkjVar);
        zzv zzvVar = zzkjVar.zzb;
        zzvVar.getClass();
        this.zzg.zzc(zzvVar, zzam);
        return zzam;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzan(zzv zzvVar, MediaFormat mediaFormat) {
        zzsv zzaE = zzaE();
        if (zzaE != null) {
            zzaE.zzp(this.zzx);
        }
        mediaFormat.getClass();
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        float f = zzvVar.zzB;
        int i = zzvVar.zzA;
        if (i == 90 || i == 270) {
            f = 1.0f / f;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.zzI = new zzbv(integer, integer2, f);
        zzabx zzabxVar = this.zzp;
        if (zzabxVar == null || !this.zzP) {
            this.zzi.zze(zzvVar.zzz);
        } else {
            zzt zza = zzvVar.zza();
            zza.zzt(integer);
            zza.zzu(integer2);
            zza.zzz(f);
            zzv zzM = zza.zzM();
            int i3 = this.zzr;
            List list = this.zzs;
            if (list == null) {
                list = zzgpe.zzi();
            }
            zzabxVar.zzs(1, zzM, zzbc(), i3, list);
            this.zzr = 2;
        }
        this.zzP = false;
    }

    @Override // com.google.android.gms.internal.ads.zzaaz
    public final boolean zzao(long j, long j2, long j3, boolean z, boolean z2) throws zzib {
        int zzP;
        if (this.zzp != null && this.zzf) {
            j2 -= -this.zzN;
        }
        if (j >= -500000 || z || (zzP = zzP(j2)) == 0) {
            return false;
        }
        if (z2) {
            zzhs zzhsVar = this.zza;
            int i = zzhsVar.zzd + zzP;
            zzhsVar.zzd = i;
            zzhsVar.zzf += this.zzC;
            zzhsVar.zzd = i + this.zzl.size();
        } else {
            this.zza.zzj++;
            zzaw(zzP + this.zzl.size(), this.zzC);
        }
        zzaJ();
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            zzabxVar.zzg(false);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzap() {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            zzabxVar.zzi();
            long j = this.zzN;
            if (j == C.TIME_UNSET) {
                j = zzbc();
                this.zzN = j;
            }
            this.zzp.zzo(-j);
        } else {
            this.zzi.zza(2);
        }
        this.zzP = true;
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzar() {
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            zzabxVar.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final void zzas(zzhh zzhhVar) throws zzib {
        if (this.zzo) {
            ByteBuffer byteBuffer = zzhhVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsv zzaE = zzaE();
                        zzaE.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzaE.zzo(bundle);
                    }
                }
            }
        }
    }

    protected final void zzau(zzsv zzsvVar, int i, long j) {
        Trace.beginSection("skipVideoBuffer");
        zzsvVar.zzc(i, false);
        Trace.endSection();
        this.zza.zzf++;
    }

    protected final void zzav(zzsv zzsvVar, int i, long j) {
        Trace.beginSection("dropVideoBuffer");
        zzsvVar.zzc(i, false);
        Trace.endSection();
        zzaw(0, 1);
    }

    protected final void zzaw(int i, int i2) {
        zzhs zzhsVar = this.zza;
        zzhsVar.zzh += i;
        int i3 = i + i2;
        zzhsVar.zzg += i3;
        this.zzA += i3;
        int i4 = this.zzB + i3;
        this.zzB = i4;
        zzhsVar.zzi = Math.max(i4, zzhsVar.zzi);
    }

    protected final void zzax(long j) {
        zzhs zzhsVar = this.zza;
        zzhsVar.zzk += j;
        zzhsVar.zzl++;
        this.zzF += j;
        this.zzG++;
    }

    protected final void zzay(zzsv zzsvVar, int i, long j, long j2) {
        Trace.beginSection("releaseOutputBuffer");
        zzsvVar.zzd(i, j2);
        Trace.endSection();
        this.zza.zze++;
        this.zzB = 0;
        if (this.zzp == null) {
            zzbv zzbvVar = this.zzI;
            if (!zzbvVar.equals(zzbv.zza) && !zzbvVar.equals(this.zzJ)) {
                this.zzJ = zzbvVar;
                this.zzg.zzf(zzbvVar);
            }
            if (!this.zzi.zzf() || this.zzt == null) {
                return;
            }
            zzbi();
        }
    }

    protected final boolean zzbf(zzsy zzsyVar) {
        if (zzbk(zzsyVar.zza)) {
            return false;
        }
        return !zzsyVar.zzf || zzaam.zza(this.zze);
    }

    final /* synthetic */ Surface zzbj() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzy(boolean z, boolean z2) throws zzib {
        super.zzy(z, z2);
        zzJ();
        this.zzg.zza(this.zza);
        if (!this.zzq) {
            if (this.zzs != null && this.zzp == null) {
                zzaao zzaaoVar = new zzaao(this.zze, this.zzi);
                zzaaoVar.zza(true);
                long j = this.zzk;
                long j2 = C.TIME_UNSET;
                if (j != C.TIME_UNSET) {
                    j2 = -j;
                }
                zzaaoVar.zzc(j2);
                zzaaoVar.zzb(zzL());
                zzaaw zzd2 = zzaaoVar.zzd();
                zzd2.zza(1);
                this.zzp = zzd2.zzb(0);
            }
            this.zzq = true;
        }
        int i = !z2 ? 1 : 0;
        zzabx zzabxVar = this.zzp;
        if (zzabxVar == null) {
            zzaba zzabaVar = this.zzi;
            zzabaVar.zzg(zzL());
            zzabaVar.zza(i);
            return;
        }
        zzabxVar.zzc(new zzaaf(this), zzguz.zza());
        zzaax zzaaxVar = this.zzM;
        if (zzaaxVar != null) {
            this.zzp.zzl(zzaaxVar);
        }
        if (this.zzt != null && !this.zzv.equals(zzeh.zza)) {
            this.zzp.zzp(this.zzt, this.zzv);
        }
        this.zzp.zzr(this.zzy);
        this.zzp.zzm(zzaX());
        List list = this.zzs;
        if (list != null) {
            this.zzp.zzn(list);
        }
        this.zzr = i;
        zzaz();
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr
    protected final void zzz(zzv[] zzvVarArr, long j, long j2, zzuu zzuuVar) throws zzib {
        super.zzz(zzvVarArr, j, j2, zzuuVar);
        zzbf zzM = zzM();
        if (zzM.zzg()) {
            this.zzO = C.TIME_UNSET;
        } else {
            this.zzO = zzM.zzo(zzuuVar.zza, new zzbd()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzte
    protected final boolean zzaq(long j, long j2, zzsv zzsvVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzv zzvVar) throws zzib {
        zzsvVar.getClass();
        long zzbb = j3 - zzbb();
        int i4 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.zzl;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j3) {
                break;
            }
            priorityQueue.poll();
            i4++;
        }
        zzaw(i4, 0);
        zzabx zzabxVar = this.zzp;
        if (zzabxVar != null) {
            if (!z || z2) {
                return zzabxVar.zzu(j3, new zzaag(this, zzsvVar, i, zzbb));
            }
            zzau(zzsvVar, i, zzbb);
            return true;
        }
        zzaba zzabaVar = this.zzi;
        long zzbc = zzbc();
        zzaay zzaayVar = this.zzj;
        int zzk = zzabaVar.zzk(j3, j, j2, zzbc, z, z2, zzaayVar);
        if (zzk == 0) {
            long zzc2 = zzL().zzc();
            zzbq(zzbb, zzc2, zzvVar);
            zzay(zzsvVar, i, zzbb, zzc2);
            zzax(zzaayVar.zza());
            return true;
        }
        if (zzk != 1) {
            if (zzk == 2) {
                zzav(zzsvVar, i, zzbb);
                zzax(zzaayVar.zza());
                return true;
            }
            if (zzk != 3) {
                return false;
            }
            zzau(zzsvVar, i, zzbb);
            zzax(zzaayVar.zza());
            return true;
        }
        long zzb2 = zzaayVar.zzb();
        long zza = zzaayVar.zza();
        if (zzb2 == this.zzH) {
            zzau(zzsvVar, i, zzbb);
        } else {
            zzbq(zzbb, zzb2, zzvVar);
            zzay(zzsvVar, i, zzbb, zzb2);
        }
        zzax(zza);
        this.zzH = zzb2;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzte, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzli
    public final void zzx(int i, Object obj) throws zzib {
        if (i == 1) {
            zzbn(obj);
            return;
        }
        if (i == 7) {
            obj.getClass();
            zzaax zzaaxVar = (zzaax) obj;
            this.zzM = zzaaxVar;
            zzabx zzabxVar = this.zzp;
            if (zzabxVar != null) {
                zzabxVar.zzl(zzaaxVar);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            if (this.zzL != intValue) {
                this.zzL = intValue;
                return;
            }
            return;
        }
        if (i == 4) {
            obj.getClass();
            int intValue2 = ((Integer) obj).intValue();
            this.zzx = intValue2;
            zzsv zzaE = zzaE();
            if (zzaE != null) {
                zzaE.zzp(intValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int intValue3 = ((Integer) obj).intValue();
            this.zzy = intValue3;
            zzabx zzabxVar2 = this.zzp;
            if (zzabxVar2 != null) {
                zzabxVar2.zzr(intValue3);
                return;
            } else {
                this.zzi.zzm(intValue3);
                return;
            }
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(zzbr.zza)) {
                zzabx zzabxVar3 = this.zzp;
                if (zzabxVar3 == null || !zzabxVar3.zze()) {
                    return;
                }
                zzabxVar3.zzf();
                return;
            }
            this.zzs = list;
            zzabx zzabxVar4 = this.zzp;
            if (zzabxVar4 != null) {
                zzabxVar4.zzn(list);
                return;
            }
            return;
        }
        if (i == 14) {
            obj.getClass();
            zzeh zzehVar = (zzeh) obj;
            if (zzehVar.zza() == 0 || zzehVar.zzb() == 0) {
                return;
            }
            this.zzv = zzehVar;
            zzabx zzabxVar5 = this.zzp;
            if (zzabxVar5 != null) {
                Surface surface = this.zzt;
                surface.getClass();
                zzabxVar5.zzp(surface, zzehVar);
                return;
            }
            return;
        }
        switch (i) {
            case 16:
                obj.getClass();
                this.zzK = ((Integer) obj).intValue();
                zzsv zzaE2 = zzaE();
                if (zzaE2 != null && Build.VERSION.SDK_INT >= 35) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("importance", Math.max(0, -this.zzK));
                    zzaE2.zzo(bundle);
                    break;
                }
                break;
            case 17:
                Surface surface2 = this.zzt;
                zzbn(null);
                obj.getClass();
                ((zzaak) obj).zzx(1, surface2);
                break;
            case 18:
                boolean z = this.zzD != null;
                zzlu zzluVar = (zzlu) obj;
                this.zzD = zzluVar;
                if (z != (zzluVar != null)) {
                    zzaZ();
                    break;
                }
                break;
            default:
                super.zzx(i, obj);
                break;
        }
    }
}
