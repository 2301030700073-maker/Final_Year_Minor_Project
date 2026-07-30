package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.wearable.WearableStatusCodes;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzsn extends zzhr {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private int zzA;
    private boolean zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private int zzJ;
    private int zzK;
    private ByteBuffer zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private boolean zzV;
    private boolean zzW;
    private boolean zzX;
    private long zzY;
    private long zzZ;
    protected zzhs zza;
    private boolean zzaa;
    private boolean zzab;
    private boolean zzac;
    private zzsl zzad;
    private long zzae;
    private boolean zzaf;
    private zzrg zzag;
    private zzrg zzah;
    private final zzsb zzc;
    private final zzsp zzd;
    private final float zze;
    private final zzhh zzf;
    private final zzhh zzg;
    private final zzhh zzh;
    private final zzru zzi;
    private final MediaCodec.BufferInfo zzj;
    private final ArrayDeque zzk;
    private final zzqt zzl;
    private zzab zzm;
    private zzab zzn;
    private zzli zzo;
    private MediaCrypto zzp;
    private float zzq;
    private float zzr;
    private zzsd zzs;
    private zzab zzt;
    private MediaFormat zzu;
    private boolean zzv;
    private float zzw;
    private ArrayDeque zzx;
    private zzsj zzy;
    private zzsg zzz;

    public zzsn(int i, zzsb zzsbVar, zzsp zzspVar, boolean z, float f) {
        super(i);
        this.zzc = zzsbVar;
        this.zzd = zzspVar;
        this.zze = f;
        this.zzf = new zzhh(0, 0);
        this.zzg = new zzhh(0, 0);
        this.zzh = new zzhh(2, 0);
        zzru zzruVar = new zzru();
        this.zzi = zzruVar;
        this.zzj = new MediaCodec.BufferInfo();
        this.zzq = 1.0f;
        this.zzr = 1.0f;
        this.zzk = new ArrayDeque();
        this.zzad = zzsl.zza;
        zzruVar.zzj(0);
        zzruVar.zzc.order(ByteOrder.nativeOrder());
        this.zzl = new zzqt();
        this.zzw = -1.0f;
        this.zzA = 0;
        this.zzS = 0;
        this.zzJ = -1;
        this.zzK = -1;
        this.zzI = -9223372036854775807L;
        this.zzY = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzae = -9223372036854775807L;
        this.zzH = -9223372036854775807L;
        this.zzT = 0;
        this.zzU = 0;
        this.zza = new zzhs();
    }

    public static boolean zzaP(zzab zzabVar) {
        return zzabVar.zzK == 0;
    }

    private final void zzaQ() {
        this.zzK = -1;
        this.zzL = null;
    }

    private final void zzaR(zzsl zzslVar) {
        this.zzad = zzslVar;
        if (zzslVar.zzd != -9223372036854775807L) {
            this.zzaf = true;
        }
    }

    private final void zzaS() {
        zzrg zzrgVar = this.zzah;
        zzrgVar.getClass();
        this.zzag = zzrgVar;
        this.zzT = 0;
        this.zzU = 0;
    }

    @TargetApi(ConnectionResult.API_DISABLED)
    private final boolean zzaT() {
        if (this.zzV) {
            this.zzT = 1;
            if (this.zzC) {
                this.zzU = 3;
                return false;
            }
            this.zzU = 2;
        } else {
            zzaS();
        }
        return true;
    }

    private final boolean zzaU() {
        return this.zzK >= 0;
    }

    private final boolean zzaV(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzab zzabVar = this.zzn;
        return (zzabVar != null && Objects.equals(zzabVar.zzo, "audio/opus") && zzadi.zzf(j, j2)) ? false : true;
    }

    private final boolean zzaW(int i) {
        zzhh zzhhVar = this.zzf;
        zzke zzk = zzk();
        zzhhVar.zzb();
        int zzcU = zzcU(zzk, this.zzf, i | 4);
        if (zzcU == -5) {
            zzac(zzk);
            return true;
        }
        if (zzcU != -4 || !this.zzf.zzf()) {
            return false;
        }
        this.zzaa = true;
        zzai();
        return false;
    }

    private final boolean zzaX(zzab zzabVar) {
        if (zzei.zza >= 23 && this.zzs != null && this.zzU != 3 && zzcT() != 0) {
            float f = this.zzr;
            zzabVar.getClass();
            float zzZ = zzZ(f, zzabVar, zzT());
            float f2 = this.zzw;
            if (f2 != zzZ) {
                if (zzZ == -1.0f) {
                    zzae();
                    return false;
                }
                if (f2 != -1.0f || zzZ > this.zze) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", zzZ);
                    zzsd zzsdVar = this.zzs;
                    zzsdVar.getClass();
                    zzsdVar.zzq(bundle);
                    this.zzw = zzZ;
                }
            }
        }
        return true;
    }

    private final void zzad() {
        this.zzQ = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzP = false;
        this.zzO = false;
        this.zzl.zzb();
    }

    private final void zzae() {
        if (this.zzV) {
            this.zzT = 1;
            this.zzU = 3;
        } else {
            zzaG();
            zzaC();
        }
    }

    private final void zzah() {
        try {
            zzsd zzsdVar = this.zzs;
            zzcw.zzb(zzsdVar);
            zzsdVar.zzj();
        } finally {
            zzaH();
        }
    }

    @TargetApi(ConnectionResult.API_DISABLED)
    private final void zzai() {
        int i = this.zzU;
        if (i == 1) {
            zzah();
            return;
        }
        if (i == 2) {
            zzah();
            zzaS();
        } else if (i != 3) {
            this.zzab = true;
            zzaq();
        } else {
            zzaG();
            zzaC();
        }
    }

    private final void zzao() {
        this.zzJ = -1;
        this.zzg.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public void zzC() {
        try {
            zzad();
            zzaG();
        } finally {
            this.zzah = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        if (r5 >= r1) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.zzhr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzF(com.google.android.gms.internal.ads.zzab[] r16, long r17, long r19, com.google.android.gms.internal.ads.zzug r21) {
        /*
            r15 = this;
            r0 = r15
            com.google.android.gms.internal.ads.zzsl r1 = r0.zzad
            long r1 = r1.zzd
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L21
            com.google.android.gms.internal.ads.zzsl r1 = new com.google.android.gms.internal.ads.zzsl
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r1
            r9 = r17
            r11 = r19
            r6.<init>(r7, r9, r11)
            r15.zzaR(r1)
            return
        L21:
            java.util.ArrayDeque r1 = r0.zzk
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L57
            long r1 = r0.zzY
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L39
            long r5 = r0.zzae
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 == 0) goto L57
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 < 0) goto L57
        L39:
            com.google.android.gms.internal.ads.zzsl r1 = new com.google.android.gms.internal.ads.zzsl
            r9 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r1
            r11 = r17
            r13 = r19
            r8.<init>(r9, r11, r13)
            r15.zzaR(r1)
            com.google.android.gms.internal.ads.zzsl r1 = r0.zzad
            long r1 = r1.zzd
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L56
            r15.zzap()
        L56:
            return
        L57:
            java.util.ArrayDeque r1 = r0.zzk
            com.google.android.gms.internal.ads.zzsl r9 = new com.google.android.gms.internal.ads.zzsl
            long r3 = r0.zzY
            r2 = r9
            r5 = r17
            r7 = r19
            r2.<init>(r3, r5, r7)
            r1.add(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.zzF(com.google.android.gms.internal.ads.zzab[], long, long, com.google.android.gms.internal.ads.zzug):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public void zzM(float f, float f2) {
        this.zzq = f;
        this.zzr = f2;
        zzaX(this.zzt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x0422, code lost:
    
        if (r1.zzG != false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0424, code lost:
    
        r1.zzW = true;
        r4.zzk(r1.zzJ, 0, 0, 0, 4);
        zzao();
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0433, code lost:
    
        r1.zzT = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0435, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0323, code lost:
    
        if (r15.zzn != null) goto L190;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0420 A[EDGE_INSN: B:206:0x0420->B:207:0x0420 BREAK  A[LOOP:1: B:46:0x03f3->B:157:0x03f3], EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05d6 A[ADDED_TO_REGION, EDGE_INSN: B:223:0x05d6->B:59:0x05d6 BREAK  A[LOOP:1: B:46:0x03f3->B:157:0x03f3], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x03f7 A[Catch: IllegalStateException -> 0x05dc, CryptoException -> 0x05de, TryCatch #7 {IllegalStateException -> 0x05dc, blocks: (B:47:0x03f3, B:49:0x03f7, B:51:0x03fc, B:53:0x0402, B:90:0x041b), top: B:46:0x03f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0406 A[Catch: IllegalStateException -> 0x03e9, CryptoException -> 0x03ed, TRY_ENTER, TryCatch #3 {CryptoException -> 0x03ed, blocks: (B:55:0x0406, B:57:0x040e, B:207:0x0420, B:209:0x0424, B:210:0x0433, B:266:0x03b3, B:270:0x03c7, B:272:0x03cb, B:274:0x03cf, B:275:0x03d9, B:281:0x03de), top: B:265:0x03b3 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x060c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0634  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0643  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x043d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r15v6, types: [com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzsn] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v115 */
    /* JADX WARN: Type inference failed for: r1v116 */
    /* JADX WARN: Type inference failed for: r1v117 */
    /* JADX WARN: Type inference failed for: r1v125 */
    /* JADX WARN: Type inference failed for: r1v126 */
    /* JADX WARN: Type inference failed for: r1v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v49, types: [com.google.android.gms.internal.ads.zzsn] */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v61 */
    /* JADX WARN: Type inference failed for: r1v62, types: [com.google.android.gms.internal.ads.zzsn] */
    /* JADX WARN: Type inference failed for: r1v68 */
    /* JADX WARN: Type inference failed for: r1v69 */
    /* JADX WARN: Type inference failed for: r1v70, types: [com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzsn] */
    /* JADX WARN: Type inference failed for: r1v71 */
    /* JADX WARN: Type inference failed for: r2v103 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v45, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v75 */
    @Override // com.google.android.gms.internal.ads.zzlj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzV(long r23, long r25) {
        /*
            Method dump skipped, instructions count: 1635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.zzV(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public boolean zzW() {
        return this.zzab;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public boolean zzX() {
        if (this.zzm == null) {
            return false;
        }
        if (zzS() || zzaU()) {
            return true;
        }
        return this.zzI != -9223372036854775807L && zzi().zzb() < this.zzI;
    }

    @Override // com.google.android.gms.internal.ads.zzlm
    public final int zzY(zzab zzabVar) {
        try {
            return zzaa(this.zzd, zzabVar);
        } catch (zzsu e) {
            throw zzcW(e, zzabVar, false, WearableStatusCodes.UNKNOWN_LISTENER);
        }
    }

    public float zzZ(float f, zzab zzabVar, zzab[] zzabVarArr) {
        throw null;
    }

    public zzsf zzaA(Throwable th, zzsg zzsgVar) {
        return new zzsf(th, zzsgVar);
    }

    public final zzsg zzaB() {
        return this.zzz;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(32:(15:41|42|43|44|(1:46)(1:330)|47|(1:49)|50|(2:52|(1:54))|55|56|57|58|(32:164|165|(1:167)|168|169|(1:171)|172|(1:174)|175|(4:177|178|(6:179|180|181|182|183|(6:185|(2:212|213)(2:187|(1:189)(2:198|(1:200)(2:201|(1:203)(2:204|(1:206)(7:207|208|209|210|211|192|197)))))|190|191|192|197)(1:217))|218)(1:319)|219|(1:223)|224|(1:230)|231|(1:233)|234|(1:236)|237|(1:239)|240|(1:242)|243|244|(1:246)|247|(5:249|(1:251)|252|(1:254)|255)|256|(33:258|(1:260)|261|(1:263)|264|(1:266)|267|(1:269)|270|(1:272)|273|(1:275)|276|(1:278)|279|(1:281)|282|(1:284)|285|(1:287)|288|(1:290)|291|(1:293)|294|(1:296)|297|(1:299)|300|(1:302)|303|(1:305)|306)|307|(1:309)|310)(1:60)|61)|(2:65|(24:73|74|(1:147)(1:78)|79|(1:146)(1:83)|84|(1:145)(1:88)|89|(16:91|(1:93)|94|95|96|97|(1:99)|100|101|102|103|104|105|106|107|108)|(14:144|95|96|97|(0)|100|101|102|103|104|105|106|107|108)|94|95|96|97|(0)|100|101|102|103|104|105|106|107|108))|148|(2:154|(28:162|74|(1:76)|147|79|(1:81)|146|84|(1:86)|145|89|(0)|(6:125|127|129|131|133|135)|137|144|95|96|97|(0)|100|101|102|103|104|105|106|107|108))|163|74|(0)|147|79|(0)|146|84|(0)|145|89|(0)|(0)|137|144|95|96|97|(0)|100|101|102|103|104|105|106|107|108) */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x04fd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x051a, code lost:
    
        r13 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0538, code lost:
    
        r23.zzy = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0547, code lost:
    
        r13 = r2;
        r10 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0553, code lost:
    
        throw r23.zzy;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x053b, code lost:
    
        r23.zzy = com.google.android.gms.internal.ads.zzsj.zza(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0510, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0538 A[Catch: zzsj -> 0x0568, TryCatch #7 {zzsj -> 0x0568, blocks: (B:113:0x051b, B:115:0x0538, B:116:0x0541, B:121:0x0551, B:122:0x0553, B:123:0x053b, B:337:0x0554, B:339:0x055a, B:340:0x0567), top: B:31:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0551 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x053b A[Catch: zzsj -> 0x0568, TryCatch #7 {zzsj -> 0x0568, blocks: (B:113:0x051b, B:115:0x0538, B:116:0x0541, B:121:0x0551, B:122:0x0553, B:123:0x053b, B:337:0x0554, B:339:0x055a, B:340:0x0567), top: B:31:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x047f A[Catch: Exception -> 0x04ff, TryCatch #1 {Exception -> 0x04ff, blocks: (B:192:0x0209, B:210:0x01f5, B:218:0x0211, B:219:0x022d, B:221:0x0232, B:223:0x0236, B:224:0x024a, B:226:0x024e, B:228:0x0254, B:230:0x025a, B:231:0x0268, B:233:0x0270, B:234:0x027a, B:236:0x027f, B:237:0x0289, B:239:0x028e, B:240:0x0298, B:242:0x029c, B:243:0x02a6, B:246:0x02b0, B:247:0x02c6, B:249:0x02ca, B:251:0x02da, B:252:0x02df, B:254:0x02e3, B:255:0x02e8, B:256:0x02ee, B:258:0x02f5, B:260:0x0305, B:261:0x030a, B:263:0x030e, B:264:0x0313, B:266:0x0317, B:267:0x031c, B:269:0x0320, B:270:0x0325, B:272:0x0329, B:273:0x032e, B:275:0x0332, B:276:0x0337, B:278:0x033b, B:279:0x0340, B:281:0x0344, B:282:0x0349, B:284:0x034d, B:285:0x0352, B:287:0x0356, B:288:0x035b, B:290:0x035f, B:291:0x0364, B:293:0x0368, B:294:0x036d, B:296:0x0371, B:297:0x0376, B:299:0x037a, B:300:0x037f, B:302:0x0383, B:303:0x0388, B:305:0x038b, B:306:0x0390, B:307:0x0396, B:309:0x039b, B:310:0x03a5, B:61:0x03c8, B:63:0x03d4, B:65:0x03dc, B:67:0x03e6, B:69:0x03ee, B:71:0x03f6, B:74:0x0439, B:76:0x043f, B:79:0x044a, B:81:0x0450, B:84:0x045b, B:86:0x0461, B:89:0x046c, B:91:0x0472, B:95:0x04c9, B:97:0x04d0, B:99:0x04d7, B:100:0x04e4, B:125:0x047f, B:127:0x0487, B:129:0x048f, B:131:0x0497, B:133:0x049f, B:135:0x04a7, B:137:0x04af, B:139:0x04b9, B:141:0x04c3, B:150:0x0404, B:152:0x040c, B:154:0x0414, B:156:0x041e, B:158:0x0426, B:160:0x042e), top: B:209:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x043f A[Catch: Exception -> 0x04ff, TryCatch #1 {Exception -> 0x04ff, blocks: (B:192:0x0209, B:210:0x01f5, B:218:0x0211, B:219:0x022d, B:221:0x0232, B:223:0x0236, B:224:0x024a, B:226:0x024e, B:228:0x0254, B:230:0x025a, B:231:0x0268, B:233:0x0270, B:234:0x027a, B:236:0x027f, B:237:0x0289, B:239:0x028e, B:240:0x0298, B:242:0x029c, B:243:0x02a6, B:246:0x02b0, B:247:0x02c6, B:249:0x02ca, B:251:0x02da, B:252:0x02df, B:254:0x02e3, B:255:0x02e8, B:256:0x02ee, B:258:0x02f5, B:260:0x0305, B:261:0x030a, B:263:0x030e, B:264:0x0313, B:266:0x0317, B:267:0x031c, B:269:0x0320, B:270:0x0325, B:272:0x0329, B:273:0x032e, B:275:0x0332, B:276:0x0337, B:278:0x033b, B:279:0x0340, B:281:0x0344, B:282:0x0349, B:284:0x034d, B:285:0x0352, B:287:0x0356, B:288:0x035b, B:290:0x035f, B:291:0x0364, B:293:0x0368, B:294:0x036d, B:296:0x0371, B:297:0x0376, B:299:0x037a, B:300:0x037f, B:302:0x0383, B:303:0x0388, B:305:0x038b, B:306:0x0390, B:307:0x0396, B:309:0x039b, B:310:0x03a5, B:61:0x03c8, B:63:0x03d4, B:65:0x03dc, B:67:0x03e6, B:69:0x03ee, B:71:0x03f6, B:74:0x0439, B:76:0x043f, B:79:0x044a, B:81:0x0450, B:84:0x045b, B:86:0x0461, B:89:0x046c, B:91:0x0472, B:95:0x04c9, B:97:0x04d0, B:99:0x04d7, B:100:0x04e4, B:125:0x047f, B:127:0x0487, B:129:0x048f, B:131:0x0497, B:133:0x049f, B:135:0x04a7, B:137:0x04af, B:139:0x04b9, B:141:0x04c3, B:150:0x0404, B:152:0x040c, B:154:0x0414, B:156:0x041e, B:158:0x0426, B:160:0x042e), top: B:209:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0450 A[Catch: Exception -> 0x04ff, TryCatch #1 {Exception -> 0x04ff, blocks: (B:192:0x0209, B:210:0x01f5, B:218:0x0211, B:219:0x022d, B:221:0x0232, B:223:0x0236, B:224:0x024a, B:226:0x024e, B:228:0x0254, B:230:0x025a, B:231:0x0268, B:233:0x0270, B:234:0x027a, B:236:0x027f, B:237:0x0289, B:239:0x028e, B:240:0x0298, B:242:0x029c, B:243:0x02a6, B:246:0x02b0, B:247:0x02c6, B:249:0x02ca, B:251:0x02da, B:252:0x02df, B:254:0x02e3, B:255:0x02e8, B:256:0x02ee, B:258:0x02f5, B:260:0x0305, B:261:0x030a, B:263:0x030e, B:264:0x0313, B:266:0x0317, B:267:0x031c, B:269:0x0320, B:270:0x0325, B:272:0x0329, B:273:0x032e, B:275:0x0332, B:276:0x0337, B:278:0x033b, B:279:0x0340, B:281:0x0344, B:282:0x0349, B:284:0x034d, B:285:0x0352, B:287:0x0356, B:288:0x035b, B:290:0x035f, B:291:0x0364, B:293:0x0368, B:294:0x036d, B:296:0x0371, B:297:0x0376, B:299:0x037a, B:300:0x037f, B:302:0x0383, B:303:0x0388, B:305:0x038b, B:306:0x0390, B:307:0x0396, B:309:0x039b, B:310:0x03a5, B:61:0x03c8, B:63:0x03d4, B:65:0x03dc, B:67:0x03e6, B:69:0x03ee, B:71:0x03f6, B:74:0x0439, B:76:0x043f, B:79:0x044a, B:81:0x0450, B:84:0x045b, B:86:0x0461, B:89:0x046c, B:91:0x0472, B:95:0x04c9, B:97:0x04d0, B:99:0x04d7, B:100:0x04e4, B:125:0x047f, B:127:0x0487, B:129:0x048f, B:131:0x0497, B:133:0x049f, B:135:0x04a7, B:137:0x04af, B:139:0x04b9, B:141:0x04c3, B:150:0x0404, B:152:0x040c, B:154:0x0414, B:156:0x041e, B:158:0x0426, B:160:0x042e), top: B:209:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0461 A[Catch: Exception -> 0x04ff, TryCatch #1 {Exception -> 0x04ff, blocks: (B:192:0x0209, B:210:0x01f5, B:218:0x0211, B:219:0x022d, B:221:0x0232, B:223:0x0236, B:224:0x024a, B:226:0x024e, B:228:0x0254, B:230:0x025a, B:231:0x0268, B:233:0x0270, B:234:0x027a, B:236:0x027f, B:237:0x0289, B:239:0x028e, B:240:0x0298, B:242:0x029c, B:243:0x02a6, B:246:0x02b0, B:247:0x02c6, B:249:0x02ca, B:251:0x02da, B:252:0x02df, B:254:0x02e3, B:255:0x02e8, B:256:0x02ee, B:258:0x02f5, B:260:0x0305, B:261:0x030a, B:263:0x030e, B:264:0x0313, B:266:0x0317, B:267:0x031c, B:269:0x0320, B:270:0x0325, B:272:0x0329, B:273:0x032e, B:275:0x0332, B:276:0x0337, B:278:0x033b, B:279:0x0340, B:281:0x0344, B:282:0x0349, B:284:0x034d, B:285:0x0352, B:287:0x0356, B:288:0x035b, B:290:0x035f, B:291:0x0364, B:293:0x0368, B:294:0x036d, B:296:0x0371, B:297:0x0376, B:299:0x037a, B:300:0x037f, B:302:0x0383, B:303:0x0388, B:305:0x038b, B:306:0x0390, B:307:0x0396, B:309:0x039b, B:310:0x03a5, B:61:0x03c8, B:63:0x03d4, B:65:0x03dc, B:67:0x03e6, B:69:0x03ee, B:71:0x03f6, B:74:0x0439, B:76:0x043f, B:79:0x044a, B:81:0x0450, B:84:0x045b, B:86:0x0461, B:89:0x046c, B:91:0x0472, B:95:0x04c9, B:97:0x04d0, B:99:0x04d7, B:100:0x04e4, B:125:0x047f, B:127:0x0487, B:129:0x048f, B:131:0x0497, B:133:0x049f, B:135:0x04a7, B:137:0x04af, B:139:0x04b9, B:141:0x04c3, B:150:0x0404, B:152:0x040c, B:154:0x0414, B:156:0x041e, B:158:0x0426, B:160:0x042e), top: B:209:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0472 A[Catch: Exception -> 0x04ff, TryCatch #1 {Exception -> 0x04ff, blocks: (B:192:0x0209, B:210:0x01f5, B:218:0x0211, B:219:0x022d, B:221:0x0232, B:223:0x0236, B:224:0x024a, B:226:0x024e, B:228:0x0254, B:230:0x025a, B:231:0x0268, B:233:0x0270, B:234:0x027a, B:236:0x027f, B:237:0x0289, B:239:0x028e, B:240:0x0298, B:242:0x029c, B:243:0x02a6, B:246:0x02b0, B:247:0x02c6, B:249:0x02ca, B:251:0x02da, B:252:0x02df, B:254:0x02e3, B:255:0x02e8, B:256:0x02ee, B:258:0x02f5, B:260:0x0305, B:261:0x030a, B:263:0x030e, B:264:0x0313, B:266:0x0317, B:267:0x031c, B:269:0x0320, B:270:0x0325, B:272:0x0329, B:273:0x032e, B:275:0x0332, B:276:0x0337, B:278:0x033b, B:279:0x0340, B:281:0x0344, B:282:0x0349, B:284:0x034d, B:285:0x0352, B:287:0x0356, B:288:0x035b, B:290:0x035f, B:291:0x0364, B:293:0x0368, B:294:0x036d, B:296:0x0371, B:297:0x0376, B:299:0x037a, B:300:0x037f, B:302:0x0383, B:303:0x0388, B:305:0x038b, B:306:0x0390, B:307:0x0396, B:309:0x039b, B:310:0x03a5, B:61:0x03c8, B:63:0x03d4, B:65:0x03dc, B:67:0x03e6, B:69:0x03ee, B:71:0x03f6, B:74:0x0439, B:76:0x043f, B:79:0x044a, B:81:0x0450, B:84:0x045b, B:86:0x0461, B:89:0x046c, B:91:0x0472, B:95:0x04c9, B:97:0x04d0, B:99:0x04d7, B:100:0x04e4, B:125:0x047f, B:127:0x0487, B:129:0x048f, B:131:0x0497, B:133:0x049f, B:135:0x04a7, B:137:0x04af, B:139:0x04b9, B:141:0x04c3, B:150:0x0404, B:152:0x040c, B:154:0x0414, B:156:0x041e, B:158:0x0426, B:160:0x042e), top: B:209:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x04d7 A[Catch: Exception -> 0x04ff, TryCatch #1 {Exception -> 0x04ff, blocks: (B:192:0x0209, B:210:0x01f5, B:218:0x0211, B:219:0x022d, B:221:0x0232, B:223:0x0236, B:224:0x024a, B:226:0x024e, B:228:0x0254, B:230:0x025a, B:231:0x0268, B:233:0x0270, B:234:0x027a, B:236:0x027f, B:237:0x0289, B:239:0x028e, B:240:0x0298, B:242:0x029c, B:243:0x02a6, B:246:0x02b0, B:247:0x02c6, B:249:0x02ca, B:251:0x02da, B:252:0x02df, B:254:0x02e3, B:255:0x02e8, B:256:0x02ee, B:258:0x02f5, B:260:0x0305, B:261:0x030a, B:263:0x030e, B:264:0x0313, B:266:0x0317, B:267:0x031c, B:269:0x0320, B:270:0x0325, B:272:0x0329, B:273:0x032e, B:275:0x0332, B:276:0x0337, B:278:0x033b, B:279:0x0340, B:281:0x0344, B:282:0x0349, B:284:0x034d, B:285:0x0352, B:287:0x0356, B:288:0x035b, B:290:0x035f, B:291:0x0364, B:293:0x0368, B:294:0x036d, B:296:0x0371, B:297:0x0376, B:299:0x037a, B:300:0x037f, B:302:0x0383, B:303:0x0388, B:305:0x038b, B:306:0x0390, B:307:0x0396, B:309:0x039b, B:310:0x03a5, B:61:0x03c8, B:63:0x03d4, B:65:0x03dc, B:67:0x03e6, B:69:0x03ee, B:71:0x03f6, B:74:0x0439, B:76:0x043f, B:79:0x044a, B:81:0x0450, B:84:0x045b, B:86:0x0461, B:89:0x046c, B:91:0x0472, B:95:0x04c9, B:97:0x04d0, B:99:0x04d7, B:100:0x04e4, B:125:0x047f, B:127:0x0487, B:129:0x048f, B:131:0x0497, B:133:0x049f, B:135:0x04a7, B:137:0x04af, B:139:0x04b9, B:141:0x04c3, B:150:0x0404, B:152:0x040c, B:154:0x0414, B:156:0x041e, B:158:0x0426, B:160:0x042e), top: B:209:0x01f5 }] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.google.android.gms.internal.ads.zzsg] */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [android.media.MediaCrypto, com.google.android.gms.internal.ads.zzsm] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzsn] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzaC() {
        /*
            Method dump skipped, instructions count: 1400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.zzaC():void");
    }

    public void zzaD(long j) {
        this.zzae = j;
        while (!this.zzk.isEmpty() && j >= ((zzsl) this.zzk.peek()).zzb) {
            zzsl zzslVar = (zzsl) this.zzk.poll();
            zzslVar.getClass();
            zzaR(zzslVar);
            zzap();
        }
    }

    public void zzaE(zzhh zzhhVar) {
    }

    public void zzaF(zzab zzabVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzaG() {
        try {
            zzsd zzsdVar = this.zzs;
            if (zzsdVar != null) {
                zzsdVar.zzm();
                this.zza.zzb++;
                zzsg zzsgVar = this.zzz;
                zzsgVar.getClass();
                zzam(zzsgVar.zza);
            }
        } finally {
            this.zzs = null;
            this.zzp = null;
            this.zzag = null;
            zzaI();
        }
    }

    public void zzaH() {
        zzao();
        zzaQ();
        this.zzI = -9223372036854775807L;
        this.zzW = false;
        this.zzH = -9223372036854775807L;
        this.zzV = false;
        this.zzE = false;
        this.zzF = false;
        this.zzM = false;
        this.zzN = false;
        this.zzY = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzae = -9223372036854775807L;
        this.zzT = 0;
        this.zzU = 0;
        this.zzS = this.zzR ? 1 : 0;
    }

    public final void zzaI() {
        zzaH();
        this.zzx = null;
        this.zzz = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = false;
        this.zzX = false;
        this.zzw = -1.0f;
        this.zzA = 0;
        this.zzB = false;
        this.zzC = false;
        this.zzD = false;
        this.zzG = false;
        this.zzR = false;
        this.zzS = 0;
    }

    public final boolean zzaJ() {
        boolean zzaK = zzaK();
        if (zzaK) {
            zzaC();
        }
        return zzaK;
    }

    public final boolean zzaK() {
        if (this.zzs == null) {
            return false;
        }
        int i = this.zzU;
        if (i == 3 || ((this.zzB && !this.zzX) || (this.zzC && this.zzW))) {
            zzaG();
            return true;
        }
        if (i == 2) {
            int i2 = zzei.zza;
            zzcw.zzf(i2 >= 23);
            if (i2 >= 23) {
                try {
                    zzaS();
                } catch (zzib e) {
                    zzdo.zzg("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                    zzaG();
                    return true;
                }
            }
        }
        zzah();
        return false;
    }

    public final boolean zzaL() {
        return this.zzO;
    }

    public final boolean zzaM(zzab zzabVar) {
        return this.zzah == null && zzas(zzabVar);
    }

    public boolean zzaN(zzsg zzsgVar) {
        return true;
    }

    public boolean zzaO(zzhh zzhhVar) {
        return false;
    }

    public abstract int zzaa(zzsp zzspVar, zzab zzabVar);

    public zzht zzab(zzsg zzsgVar, zzab zzabVar, zzab zzabVar2) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0082, code lost:
    
        if (zzaT() == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ae, code lost:
    
        if (zzaT() == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c2, code lost:
    
        if (zzaT() == false) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzht zzac(com.google.android.gms.internal.ads.zzke r12) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.zzac(com.google.android.gms.internal.ads.zzke):com.google.android.gms.internal.ads.zzht");
    }

    public abstract zzsa zzaf(zzsg zzsgVar, zzab zzabVar, MediaCrypto mediaCrypto, float f);

    public abstract List zzag(zzsp zzspVar, zzab zzabVar, boolean z);

    public void zzaj(zzhh zzhhVar) {
        throw null;
    }

    public void zzak(Exception exc) {
        throw null;
    }

    public void zzal(String str, zzsa zzsaVar, long j, long j2) {
        throw null;
    }

    public void zzam(String str) {
        throw null;
    }

    public void zzan(zzab zzabVar, MediaFormat mediaFormat) {
        throw null;
    }

    public void zzap() {
    }

    public void zzaq() {
    }

    public abstract boolean zzar(long j, long j2, zzsd zzsdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar);

    public boolean zzas(zzab zzabVar) {
        return false;
    }

    public final float zzat() {
        return this.zzq;
    }

    public int zzau(zzhh zzhhVar) {
        return 0;
    }

    public final long zzav() {
        return this.zzad.zzd;
    }

    public final long zzaw() {
        return this.zzad.zzc;
    }

    public final zzli zzay() {
        return this.zzo;
    }

    public final zzsd zzaz() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlm
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzle
    public void zzu(int i, Object obj) {
        if (i == 11) {
            this.zzo = (zzli) obj;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public void zzx() {
        this.zzm = null;
        zzaR(zzsl.zza);
        this.zzk.clear();
        zzaK();
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public void zzy(boolean z, boolean z2) {
        this.zza = new zzhs();
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public void zzz(long j, boolean z) {
        this.zzaa = false;
        this.zzab = false;
        if (this.zzO) {
            this.zzi.zzb();
            this.zzh.zzb();
            this.zzP = false;
            this.zzl.zzb();
        } else {
            zzaJ();
        }
        zzee zzeeVar = this.zzad.zze;
        if (zzeeVar.zza() > 0) {
            this.zzac = true;
        }
        zzeeVar.zze();
        this.zzk.clear();
    }
}
