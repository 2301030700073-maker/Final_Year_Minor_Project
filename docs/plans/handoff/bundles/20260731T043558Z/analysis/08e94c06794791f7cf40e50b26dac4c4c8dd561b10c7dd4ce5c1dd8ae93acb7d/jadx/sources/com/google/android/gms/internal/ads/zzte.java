package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import com.google.common.base.Ascii;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzte extends zzhr {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, Ascii.VT, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, Ascii.CR, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    private ArrayDeque zzA;
    private zztb zzB;
    private zzsy zzC;
    private int zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    private boolean zzI;
    private long zzJ;
    private boolean zzK;
    private long zzL;
    private int zzM;
    private int zzN;
    private ByteBuffer zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private boolean zzS;
    private boolean zzT;
    private boolean zzU;
    private int zzV;
    private int zzW;
    private int zzX;
    private boolean zzY;
    private boolean zzZ;
    protected zzhs zza;
    private boolean zzaa;
    private long zzab;
    private boolean zzac;
    private boolean zzad;
    private boolean zzae;
    private zztd zzaf;
    private long zzag;
    private boolean zzah;
    private boolean zzai;
    private boolean zzaj;
    private long zzak;
    private final zzst zzc;
    private final zztg zzd;
    private final float zze;
    private final zzhh zzf;
    private final zzhh zzg;
    private final zzhh zzh;
    private final zzsm zzi;
    private final MediaCodec.BufferInfo zzj;
    private final ArrayDeque zzk;
    private final zzrm zzl;
    private zzv zzm;
    private zzv zzn;
    private zzrs zzo;
    private zzrs zzp;
    private zzlm zzq;
    private MediaCrypto zzr;
    private long zzs;
    private float zzt;
    private float zzu;
    private zzsv zzv;
    private zzv zzw;
    private MediaFormat zzx;
    private boolean zzy;
    private float zzz;

    public zzte(int i, zzst zzstVar, zztg zztgVar, boolean z, float f) {
        super(i);
        this.zzc = zzstVar;
        zztgVar.getClass();
        this.zzd = zztgVar;
        this.zze = f;
        this.zzf = new zzhh(0, 0);
        this.zzg = new zzhh(0, 0);
        this.zzh = new zzhh(2, 0);
        zzsm zzsmVar = new zzsm();
        this.zzi = zzsmVar;
        this.zzj = new MediaCodec.BufferInfo();
        this.zzt = 1.0f;
        this.zzu = 1.0f;
        this.zzs = C.TIME_UNSET;
        this.zzk = new ArrayDeque();
        this.zzaf = zztd.zza;
        zzsmVar.zzj(0);
        zzsmVar.zzc.order(ByteOrder.nativeOrder());
        this.zzl = new zzrm();
        this.zzz = -1.0f;
        this.zzD = 0;
        this.zzV = 0;
        this.zzM = -1;
        this.zzN = -1;
        this.zzL = C.TIME_UNSET;
        this.zzab = C.TIME_UNSET;
        this.zzag = C.TIME_UNSET;
        this.zzJ = C.TIME_UNSET;
        this.zzW = 0;
        this.zzX = 0;
        this.zza = new zzhs();
        this.zzaj = false;
        this.zzak = 0L;
    }

    private final void zzao() {
        this.zzR = false;
        zzat();
    }

    private final void zzat() {
        zzaw();
        this.zzT = false;
        this.zzi.zza();
        this.zzh.zza();
        this.zzS = false;
        this.zzl.zzb();
    }

    private final boolean zzau() {
        if (this.zzv == null) {
            return false;
        }
        if (zzaK()) {
            zzaI();
            return true;
        }
        if (zzaL()) {
            zzav();
            return false;
        }
        this.zzaj = true;
        return false;
    }

    private final void zzav() {
        try {
            zzsv zzsvVar = this.zzv;
            if (zzsvVar == null) {
                throw null;
            }
            zzsv zzsvVar2 = zzsvVar;
            zzsvVar.zzj();
        } finally {
            zzaN();
        }
    }

    private final void zzaw() {
        this.zzab = C.TIME_UNSET;
        this.zzaf.zzf = C.TIME_UNSET;
        this.zzag = C.TIME_UNSET;
    }

    private final boolean zzax(int i) throws zzib {
        zzkj zzH = zzH();
        zzhh zzhhVar = this.zzf;
        zzhhVar.zza();
        int zzO = zzO(zzH, zzhhVar, i | 4);
        if (zzO == -5) {
            zzam(zzH);
            return true;
        }
        if (zzO != -4 || !zzhhVar.zzb()) {
            return false;
        }
        this.zzac = true;
        zzbl();
        return false;
    }

    private final boolean zzay(long j) {
        return this.zzs == C.TIME_UNSET || zzL().zzb() - j < this.zzs;
    }

    protected static boolean zzbd(zzv zzvVar) {
        return zzvVar.zzN == 0;
    }

    private final boolean zzbf() {
        return this.zzN >= 0;
    }

    private final void zzbg() {
        this.zzM = -1;
        this.zzg.zzc = null;
    }

    private final void zzbh() {
        this.zzN = -1;
        this.zzO = null;
    }

    private final boolean zzbi(zzv zzvVar) throws zzib {
        if (this.zzv != null && this.zzX != 3 && zze() != 0) {
            float f = this.zzu;
            zzvVar.getClass();
            float zzai = zzai(f, zzvVar, zzI());
            float f2 = this.zzz;
            if (f2 != zzai) {
                if (zzai == -1.0f) {
                    zzbk();
                    return false;
                }
                if (f2 != -1.0f || zzai > this.zze) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", zzai);
                    zzsv zzsvVar = this.zzv;
                    zzsvVar.getClass();
                    zzsvVar.zzo(bundle);
                    this.zzz = zzai;
                }
            }
        }
        return true;
    }

    private final boolean zzbj() throws zzib {
        if (this.zzY) {
            this.zzW = 1;
            if (this.zzF) {
                this.zzX = 3;
                return false;
            }
            this.zzX = 2;
        } else {
            zzbo();
        }
        return true;
    }

    private final void zzbk() throws zzib {
        if (this.zzY) {
            this.zzW = 1;
            this.zzX = 3;
        } else {
            zzaI();
            zzaA();
        }
    }

    private final void zzbm(zztd zztdVar) {
        this.zzaf = zztdVar;
        if (zztdVar.zzd != C.TIME_UNSET) {
            this.zzah = true;
        }
    }

    private final zztd zzbn() {
        ArrayDeque arrayDeque = this.zzk;
        return !arrayDeque.isEmpty() ? (zztd) arrayDeque.getLast() : this.zzaf;
    }

    private final boolean zzbp(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzv zzvVar = this.zzn;
        if (zzvVar == null || !Objects.equals(zzvVar.zzo, MimeTypes.AUDIO_OPUS)) {
            return true;
        }
        return !zzadz.zzf(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzA(long j, boolean z, boolean z2) throws zzib {
        if (z2) {
            this.zzac = false;
            this.zzad = false;
            if (this.zzR) {
                zzat();
            } else {
                zzaJ();
            }
            zzel zzelVar = this.zzaf.zze;
            if (zzelVar.zzc() > 0) {
                this.zzae = true;
            }
            zzelVar.zzb();
            this.zzk.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzD() {
        this.zzm = null;
        zzbm(zztd.zza);
        this.zzk.clear();
        if (this.zzR) {
            zzao();
        } else {
            zzau();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzE() {
        try {
            zzao();
            zzaI();
        } finally {
            this.zzp = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public final long zzT(long j, long j2) {
        return zzah(j, j2, this.zzK);
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public void zzV(float f, float f2) throws zzib {
        this.zzt = f;
        this.zzu = f2;
        zzbi(this.zzw);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // com.google.android.gms.internal.ads.zzln
    public void zzX(long r27, long r29) throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instructions count: 1687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzte.zzX(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public boolean zzY() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzln
    public boolean zzZ() {
        return this.zzad;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x027f A[Catch: zztb -> 0x02ac, TryCatch #0 {zztb -> 0x02ac, blocks: (B:25:0x0057, B:27:0x005e, B:164:0x0065, B:166:0x007b, B:167:0x0086, B:29:0x0093, B:31:0x009b, B:33:0x009f, B:34:0x00a2, B:36:0x00a6, B:38:0x00af, B:122:0x0266, B:124:0x027f, B:125:0x0288, B:128:0x0294, B:129:0x0296, B:131:0x0282, B:155:0x0298, B:157:0x0299, B:160:0x029e, B:161:0x029f, B:162:0x02a9, B:170:0x008a, B:171:0x0092, B:173:0x02ab), top: B:24:0x0057, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0294 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x028e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0282 A[Catch: zztb -> 0x02ac, TryCatch #0 {zztb -> 0x02ac, blocks: (B:25:0x0057, B:27:0x005e, B:164:0x0065, B:166:0x007b, B:167:0x0086, B:29:0x0093, B:31:0x009b, B:33:0x009f, B:34:0x00a2, B:36:0x00a6, B:38:0x00af, B:122:0x0266, B:124:0x027f, B:125:0x0288, B:128:0x0294, B:129:0x0296, B:131:0x0282, B:155:0x0298, B:157:0x0299, B:160:0x029e, B:161:0x029f, B:162:0x02a9, B:170:0x008a, B:171:0x0092, B:173:0x02ab), top: B:24:0x0057, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0153 A[Catch: Exception -> 0x010a, TryCatch #4 {Exception -> 0x010a, blocks: (B:138:0x0100, B:52:0x0142, B:54:0x0153, B:55:0x0168, B:57:0x0173, B:59:0x017b, B:61:0x0185, B:63:0x018f, B:65:0x0199, B:68:0x01a6, B:70:0x01ae, B:73:0x01b9, B:75:0x01c4, B:79:0x021d, B:81:0x0223, B:83:0x022b, B:84:0x0239, B:93:0x01cf, B:95:0x01d3, B:97:0x01db, B:99:0x01e3, B:101:0x01eb, B:103:0x01f3, B:105:0x01fb, B:107:0x0203, B:109:0x020d, B:111:0x0217), top: B:137:0x0100 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c4 A[Catch: Exception -> 0x010a, TryCatch #4 {Exception -> 0x010a, blocks: (B:138:0x0100, B:52:0x0142, B:54:0x0153, B:55:0x0168, B:57:0x0173, B:59:0x017b, B:61:0x0185, B:63:0x018f, B:65:0x0199, B:68:0x01a6, B:70:0x01ae, B:73:0x01b9, B:75:0x01c4, B:79:0x021d, B:81:0x0223, B:83:0x022b, B:84:0x0239, B:93:0x01cf, B:95:0x01d3, B:97:0x01db, B:99:0x01e3, B:101:0x01eb, B:103:0x01f3, B:105:0x01fb, B:107:0x0203, B:109:0x020d, B:111:0x0217), top: B:137:0x0100 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0223 A[Catch: Exception -> 0x010a, TryCatch #4 {Exception -> 0x010a, blocks: (B:138:0x0100, B:52:0x0142, B:54:0x0153, B:55:0x0168, B:57:0x0173, B:59:0x017b, B:61:0x0185, B:63:0x018f, B:65:0x0199, B:68:0x01a6, B:70:0x01ae, B:73:0x01b9, B:75:0x01c4, B:79:0x021d, B:81:0x0223, B:83:0x022b, B:84:0x0239, B:93:0x01cf, B:95:0x01d3, B:97:0x01db, B:99:0x01e3, B:101:0x01eb, B:103:0x01f3, B:105:0x01fb, B:107:0x0203, B:109:0x020d, B:111:0x0217), top: B:137:0x0100 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0250 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.zzst] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.ArrayDeque] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6, types: [com.google.android.gms.internal.ads.zzss] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    /* JADX WARN: Type inference failed for: r12v8, types: [android.media.metrics.LogSessionId] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r15v6, types: [android.media.MediaFormat] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.ArrayDeque] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzte] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzaA() throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzte.zzaA():void");
    }

    protected final boolean zzaB(zzv zzvVar) {
        return this.zzp == null && zzae(zzvVar);
    }

    protected boolean zzaC(zzsy zzsyVar) {
        return true;
    }

    protected final boolean zzaD() {
        return this.zzR;
    }

    protected final zzsv zzaE() {
        return this.zzv;
    }

    protected final zzv zzaF() {
        return this.zzw;
    }

    protected final MediaFormat zzaG() {
        return this.zzx;
    }

    protected final zzsy zzaH() {
        return this.zzC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final void zzaI() {
        try {
            zzsv zzsvVar = this.zzv;
            if (zzsvVar != null) {
                zzsvVar.zzk();
                this.zza.zzb++;
                zzsy zzsyVar = this.zzC;
                if (zzsyVar == null) {
                    throw null;
                }
                zzsy zzsyVar2 = zzsyVar;
                zzak(zzsyVar.zza);
            }
        } finally {
            this.zzv = null;
            this.zzr = null;
            this.zzo = null;
            zzaO();
        }
    }

    protected final boolean zzaJ() throws zzib {
        boolean zzau = zzau();
        if (zzau) {
            zzaA();
        }
        return zzau;
    }

    protected boolean zzaK() {
        int i = this.zzX;
        if (i == 3 || ((this.zzE && !this.zzaa) || (this.zzF && this.zzZ))) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        try {
            zzbo();
            return false;
        } catch (zzib e) {
            zzdt.zzd("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
            return true;
        }
    }

    protected boolean zzaL() {
        return true;
    }

    protected final long zzaM() {
        return this.zzak;
    }

    protected void zzaN() {
        zzbg();
        zzbh();
        zzaw();
        this.zzL = C.TIME_UNSET;
        this.zzZ = false;
        this.zzJ = C.TIME_UNSET;
        this.zzY = false;
        this.zzG = false;
        this.zzH = false;
        this.zzP = false;
        this.zzQ = false;
        this.zzW = 0;
        this.zzX = 0;
        this.zzV = this.zzU ? 1 : 0;
        this.zzaj = false;
        this.zzak = 0L;
    }

    protected final void zzaO() {
        zzaN();
        this.zzA = null;
        this.zzC = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = false;
        this.zzaa = false;
        this.zzz = -1.0f;
        this.zzD = 0;
        this.zzE = false;
        this.zzF = false;
        this.zzI = false;
        this.zzK = false;
        this.zzU = false;
        this.zzV = 0;
    }

    protected zzsx zzaP(Throwable th, zzsy zzsyVar) {
        return new zzsx(th, zzsyVar);
    }

    protected boolean zzaQ(zzv zzvVar) throws zzib {
        return true;
    }

    protected void zzaR(zzhh zzhhVar) throws zzib {
    }

    protected int zzaS(zzhh zzhhVar) {
        return 0;
    }

    protected boolean zzaT(zzhh zzhhVar) {
        return false;
    }

    protected final long zzaU() {
        return this.zzag;
    }

    protected void zzaV(long j) {
        this.zzag = j;
        while (true) {
            ArrayDeque arrayDeque = this.zzk;
            if (arrayDeque.isEmpty() || j < ((zztd) arrayDeque.peek()).zzb) {
                return;
            }
            zztd zztdVar = (zztd) arrayDeque.poll();
            zztdVar.getClass();
            zzbm(zztdVar);
            zzap();
        }
    }

    protected final boolean zzaW() {
        if (this.zzm == null) {
            return false;
        }
        if (zzQ() || zzbf()) {
            return true;
        }
        return this.zzL != C.TIME_UNSET && zzL().zzb() < this.zzL;
    }

    protected final float zzaX() {
        return this.zzt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzlm zzaY() {
        return this.zzq;
    }

    protected final boolean zzaZ() throws zzib {
        return zzbi(this.zzw);
    }

    @Override // com.google.android.gms.internal.ads.zzlp
    public final int zzab(zzv zzvVar) throws zzib {
        try {
            return zzac(this.zzd, zzvVar);
        } catch (zzti e) {
            throw zzN(e, zzvVar, false, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    protected abstract int zzac(zztg zztgVar, zzv zzvVar) throws zzti;

    protected abstract List zzad(zztg zztgVar, zzv zzvVar, boolean z) throws zzti;

    protected boolean zzae(zzv zzvVar) {
        return false;
    }

    protected abstract zzss zzaf(zzsy zzsyVar, zzv zzvVar, MediaCrypto mediaCrypto, float f);

    protected zzht zzag(zzsy zzsyVar, zzv zzvVar, zzv zzvVar2) {
        throw null;
    }

    protected long zzah(long j, long j2, boolean z) {
        return super.zzT(j, j2);
    }

    protected float zzai(float f, zzv zzvVar, zzv[] zzvVarArr) {
        throw null;
    }

    protected void zzaj(String str, zzss zzssVar, long j, long j2) {
        throw null;
    }

    protected void zzak(String str) {
        throw null;
    }

    protected void zzal(Exception exc) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        if (zzbj() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ad, code lost:
    
        if (zzbj() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c0, code lost:
    
        if (zzbj() == false) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.google.android.gms.internal.ads.zzht zzam(com.google.android.gms.internal.ads.zzkj r14) throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzte.zzam(com.google.android.gms.internal.ads.zzkj):com.google.android.gms.internal.ads.zzht");
    }

    protected void zzan(zzv zzvVar, MediaFormat mediaFormat) throws zzib {
        throw null;
    }

    protected void zzap() {
    }

    protected abstract boolean zzaq(long j, long j2, zzsv zzsvVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzv zzvVar) throws zzib;

    protected void zzar() throws zzib {
        throw null;
    }

    protected void zzas(zzhh zzhhVar) throws zzib {
        throw null;
    }

    public final void zzaz() {
        this.zzai = true;
    }

    protected final long zzba() {
        return this.zzaf.zzf;
    }

    protected final long zzbb() {
        return this.zzaf.zzd;
    }

    protected final long zzbc() {
        return this.zzaf.zzc;
    }

    final /* synthetic */ zzlm zzbe() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlp
    public final int zzu() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzli
    public void zzx(int i, Object obj) throws zzib {
        if (i == 11) {
            zzlm zzlmVar = (zzlm) obj;
            zzlmVar.getClass();
            this.zzq = zzlmVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzy(boolean z, boolean z2) throws zzib {
        this.zza = new zzhs();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        if (r7 >= r5) goto L16;
     */
    @Override // com.google.android.gms.internal.ads.zzhr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void zzz(com.google.android.gms.internal.ads.zzv[] r13, long r14, long r16, com.google.android.gms.internal.ads.zzuu r18) throws com.google.android.gms.internal.ads.zzib {
        /*
            r12 = this;
            r0 = r12
            com.google.android.gms.internal.ads.zztd r1 = r0.zzaf
            long r1 = r1.zzd
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L27
            com.google.android.gms.internal.ads.zztd r1 = new com.google.android.gms.internal.ads.zztd
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.zzbm(r1)
            boolean r1 = r0.zzai
            if (r1 == 0) goto L5b
            r12.zzap()
            return
        L27:
            java.util.ArrayDeque r1 = r0.zzk
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L5c
            long r5 = r0.zzab
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 == 0) goto L3f
            long r7 = r0.zzag
            int r2 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r2 == 0) goto L5c
            int r2 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r2 < 0) goto L5c
        L3f:
            com.google.android.gms.internal.ads.zztd r1 = new com.google.android.gms.internal.ads.zztd
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.zzbm(r1)
            com.google.android.gms.internal.ads.zztd r1 = r0.zzaf
            long r1 = r1.zzd
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L5b
            r12.zzap()
        L5b:
            return
        L5c:
            com.google.android.gms.internal.ads.zztd r9 = new com.google.android.gms.internal.ads.zztd
            long r3 = r0.zzab
            r2 = r9
            r5 = r14
            r7 = r16
            r2.<init>(r3, r5, r7)
            r1.add(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzte.zzz(com.google.android.gms.internal.ads.zzv[], long, long, com.google.android.gms.internal.ads.zzuu):void");
    }

    private final void zzbo() throws zzib {
        zzrs zzrsVar = this.zzp;
        zzrsVar.getClass();
        this.zzo = zzrsVar;
        this.zzW = 0;
        this.zzX = 0;
    }

    private final void zzbl() throws zzib {
        int i = this.zzX;
        if (i == 1) {
            zzav();
            return;
        }
        if (i == 2) {
            zzav();
            zzbo();
        } else if (i != 3) {
            this.zzad = true;
            zzar();
        } else {
            zzaI();
            zzaA();
        }
    }
}
