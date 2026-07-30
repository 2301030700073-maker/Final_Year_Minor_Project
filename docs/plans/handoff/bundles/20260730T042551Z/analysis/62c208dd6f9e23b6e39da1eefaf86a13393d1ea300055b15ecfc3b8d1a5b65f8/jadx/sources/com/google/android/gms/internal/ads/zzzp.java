package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import com.facebook.ads.AdError;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.common.Scopes;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes.dex */
public final class zzzp extends zzsn implements zzaak {
    private static final int[] zzb = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private long zzA;
    private int zzB;
    private long zzC;
    private zzcd zzD;
    private zzcd zzE;
    private int zzF;
    private int zzG;
    private zzaai zzH;
    private long zzI;
    private long zzJ;
    private boolean zzK;
    private final Context zze;
    private final boolean zzf;
    private final zzabb zzg;
    private final boolean zzh;
    private final zzaal zzi;
    private final zzaaj zzj;
    private zzzo zzk;
    private boolean zzl;
    private boolean zzm;
    private zzabh zzn;
    private boolean zzo;
    private List zzp;
    private Surface zzq;
    private zzzs zzr;
    private zzdz zzs;
    private boolean zzt;
    private int zzu;
    private int zzv;
    private long zzw;
    private int zzx;
    private int zzy;
    private int zzz;

    public zzzp(Context context, zzsb zzsbVar, zzsp zzspVar, long j, boolean z, Handler handler, zzabc zzabcVar, int i, float f) {
        super(2, zzsbVar, zzspVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzn = null;
        this.zzg = new zzabb(handler, zzabcVar);
        this.zzf = true;
        this.zzi = new zzaal(applicationContext, this, 0L);
        this.zzj = new zzaaj();
        this.zzh = "NVIDIA".equals(zzei.zzc);
        this.zzs = zzdz.zza;
        this.zzu = 1;
        this.zzv = 0;
        this.zzD = zzcd.zza;
        this.zzG = 0;
        this.zzE = null;
        this.zzF = -1000;
        this.zzI = -9223372036854775807L;
        this.zzJ = -9223372036854775807L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x04c0, code lost:
    
        if (r0.equals("deb") != false) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x07a0, code lost:
    
        if (r10 != 0) goto L515;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzaU(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 2926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzp.zzaU(java.lang.String):boolean");
    }

    public static final boolean zzaV(zzsg zzsgVar) {
        return zzei.zza >= 35 && zzsgVar.zzh;
    }

    private final Surface zzaW(zzsg zzsgVar) {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            return zzabhVar.zza();
        }
        Surface surface = this.zzq;
        if (surface != null) {
            return surface;
        }
        if (zzaV(zzsgVar)) {
            return null;
        }
        zzcw.zzf(zzbc(zzsgVar));
        zzzs zzzsVar = this.zzr;
        if (zzzsVar != null) {
            if (zzzsVar.zza != zzsgVar.zzf) {
                zzba();
            }
        }
        if (this.zzr == null) {
            this.zzr = zzzs.zza(this.zze, zzsgVar.zzf);
        }
        return this.zzr;
    }

    private static List zzaX(Context context, zzsp zzspVar, zzab zzabVar, boolean z, boolean z2) {
        String str = zzabVar.zzo;
        if (str == null) {
            return zzfxn.zzn();
        }
        if (zzei.zza >= 26 && "video/dolby-vision".equals(str) && !zzzn.zza(context)) {
            List zzc2 = zzta.zzc(zzspVar, zzabVar, z, z2);
            if (!zzc2.isEmpty()) {
                return zzc2;
            }
        }
        return zzta.zze(zzspVar, zzabVar, z, z2);
    }

    private final void zzaY() {
        zzcd zzcdVar = this.zzE;
        if (zzcdVar != null) {
            this.zzg.zzt(zzcdVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaZ() {
        this.zzg.zzq(this.zzq);
        this.zzt = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0077, code lost:
    
        if (r3.equals("video/av01") != false) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzad(com.google.android.gms.internal.ads.zzsg r10, com.google.android.gms.internal.ads.zzab r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzp.zzad(com.google.android.gms.internal.ads.zzsg, com.google.android.gms.internal.ads.zzab):int");
    }

    public static int zzae(zzsg zzsgVar, zzab zzabVar) {
        if (zzabVar.zzp == -1) {
            return zzad(zzsgVar, zzabVar);
        }
        int size = zzabVar.zzr.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((byte[]) zzabVar.zzr.get(i2)).length;
        }
        return zzabVar.zzp + i;
    }

    private final void zzba() {
        zzzs zzzsVar = this.zzr;
        if (zzzsVar != null) {
            zzzsVar.release();
            this.zzr = null;
        }
    }

    private final boolean zzbb(zzsg zzsgVar) {
        Surface surface = this.zzq;
        return (surface != null && surface.isValid()) || zzaV(zzsgVar) || zzbc(zzsgVar);
    }

    private final boolean zzbc(zzsg zzsgVar) {
        if (zzei.zza < 23 || zzaU(zzsgVar.zza)) {
            return false;
        }
        return !zzsgVar.zzf || zzzs.zzb(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public final void zzA() {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null || !this.zzf) {
            return;
        }
        zzabhVar.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzC() {
        try {
            super.zzC();
        } finally {
            this.zzo = false;
            this.zzI = -9223372036854775807L;
            zzba();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public final void zzD() {
        this.zzx = 0;
        this.zzw = zzi().zzb();
        this.zzA = 0L;
        this.zzB = 0;
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzj();
        } else {
            this.zzi.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    public final void zzE() {
        if (this.zzx > 0) {
            long zzb2 = zzi().zzb();
            this.zzg.zzd(this.zzx, zzb2 - this.zzw);
            this.zzx = 0;
            this.zzw = zzb2;
        }
        int i = this.zzB;
        if (i != 0) {
            this.zzg.zzr(this.zzA, i);
            this.zzA = 0L;
            this.zzB = 0;
        }
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzk();
        } else {
            this.zzi.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzF(zzab[] zzabVarArr, long j, long j2, zzug zzugVar) {
        super.zzF(zzabVarArr, j, j2, zzugVar);
        if (this.zzI == -9223372036854775807L) {
            this.zzI = j;
        }
        zzbq zzh = zzh();
        if (zzh.zzo()) {
            this.zzJ = -9223372036854775807L;
        } else {
            this.zzJ = zzh.zzn(zzugVar.zza, new zzbo()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public final void zzM(float f, float f2) {
        super.zzM(f, f2);
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzq(f);
        } else {
            this.zzi.zzn(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlj, com.google.android.gms.internal.ads.zzlm
    public final String zzU() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final void zzV(long j, long j2) {
        super.zzV(j, j2);
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            try {
                zzabhVar.zzm(j, j2);
            } catch (zzabg e) {
                throw zzcW(e, e.zza, false, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzW() {
        if (!super.zzW()) {
            return false;
        }
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null) {
            return true;
        }
        zzabhVar.zzv();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzX() {
        boolean zzX = super.zzX();
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            return zzabhVar.zzx(zzX);
        }
        if (zzX && (zzaz() == null || this.zzq == null)) {
            return true;
        }
        return this.zzi.zzo(zzX);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final float zzZ(float f, zzab zzabVar, zzab[] zzabVarArr) {
        float f2 = -1.0f;
        for (zzab zzabVar2 : zzabVarArr) {
            float f3 = zzabVar2.zzx;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final zzsf zzaA(Throwable th, zzsg zzsgVar) {
        return new zzzk(th, zzsgVar, this.zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzaD(long j) {
        super.zzaD(j);
        this.zzz--;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzaE(zzhh zzhhVar) {
        this.zzz++;
        int i = zzei.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzaF(zzab zzabVar) {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null || zzabhVar.zzw()) {
            return;
        }
        try {
            zzabhVar.zze(zzabVar);
        } catch (zzabg e) {
            throw zzcW(e, zzabVar, false, 7000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzaH() {
        super.zzaH();
        this.zzz = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final boolean zzaN(zzsg zzsgVar) {
        return zzbb(zzsgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final boolean zzaO(zzhh zzhhVar) {
        if (zzhhVar.zzi() && !zzQ() && !zzhhVar.zzh() && this.zzJ != -9223372036854775807L) {
            if (this.zzJ - (zzhhVar.zze - zzav()) > 100000 && !zzhhVar.zzl() && zzhhVar.zze < zzf()) {
                return true;
            }
        }
        return false;
    }

    public final void zzaQ(zzsd zzsdVar, int i, long j) {
        Trace.beginSection("skipVideoBuffer");
        zzsdVar.zzo(i, false);
        Trace.endSection();
        ((zzsn) this).zza.zzf++;
    }

    public final void zzaR(int i, int i2) {
        zzhs zzhsVar = ((zzsn) this).zza;
        zzhsVar.zzh += i;
        int i3 = i + i2;
        zzhsVar.zzg += i3;
        this.zzx += i3;
        int i4 = this.zzy + i3;
        this.zzy = i4;
        zzhsVar.zzi = Math.max(i4, zzhsVar.zzi);
    }

    public final void zzaS(long j) {
        zzhs zzhsVar = ((zzsn) this).zza;
        zzhsVar.zzk += j;
        zzhsVar.zzl++;
        this.zzA += j;
        this.zzB++;
    }

    public final boolean zzaT(long j, boolean z) {
        int zzd2 = zzd(j);
        if (zzd2 == 0) {
            return false;
        }
        if (z) {
            zzhs zzhsVar = ((zzsn) this).zza;
            zzhsVar.zzd += zzd2;
            zzhsVar.zzf += this.zzz;
        } else {
            ((zzsn) this).zza.zzj++;
            zzaR(zzd2, this.zzz);
        }
        zzaJ();
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzd(false);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final int zzaa(zzsp zzspVar, zzab zzabVar) {
        boolean z;
        if (!zzbb.zzi(zzabVar.zzo)) {
            return 128;
        }
        Context context = this.zze;
        int i = 0;
        boolean z2 = zzabVar.zzs != null;
        List zzaX = zzaX(context, zzspVar, zzabVar, z2, false);
        if (z2 && zzaX.isEmpty()) {
            zzaX = zzaX(context, zzspVar, zzabVar, false, false);
        }
        if (zzaX.isEmpty()) {
            return 129;
        }
        if (!zzsn.zzaP(zzabVar)) {
            return 130;
        }
        zzsg zzsgVar = (zzsg) zzaX.get(0);
        boolean zze = zzsgVar.zze(zzabVar);
        if (!zze) {
            for (int i2 = 1; i2 < zzaX.size(); i2++) {
                zzsg zzsgVar2 = (zzsg) zzaX.get(i2);
                if (zzsgVar2.zze(zzabVar)) {
                    zzsgVar = zzsgVar2;
                    z = false;
                    zze = true;
                    break;
                }
            }
        }
        z = true;
        int i3 = true != zze ? 3 : 4;
        int i4 = true != zzsgVar.zzf(zzabVar) ? 8 : 16;
        int i5 = true != zzsgVar.zzg ? 0 : 64;
        int i6 = true != z ? 0 : 128;
        if (zzei.zza >= 26 && "video/dolby-vision".equals(zzabVar.zzo) && !zzzn.zza(context)) {
            i6 = 256;
        }
        if (zze) {
            List zzaX2 = zzaX(context, zzspVar, zzabVar, z2, true);
            if (!zzaX2.isEmpty()) {
                zzsg zzsgVar3 = (zzsg) zzta.zzf(zzaX2, zzabVar).get(0);
                if (zzsgVar3.zze(zzabVar) && zzsgVar3.zzf(zzabVar)) {
                    i = 32;
                }
            }
        }
        return i6 | i3 | i4 | i | i5;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final zzht zzab(zzsg zzsgVar, zzab zzabVar, zzab zzabVar2) {
        int i;
        int i2;
        zzht zzb2 = zzsgVar.zzb(zzabVar, zzabVar2);
        int i3 = zzb2.zze;
        zzzo zzzoVar = this.zzk;
        zzzoVar.getClass();
        if (zzabVar2.zzv > zzzoVar.zza || zzabVar2.zzw > zzzoVar.zzb) {
            i3 |= 256;
        }
        if (zzae(zzsgVar, zzabVar2) > zzzoVar.zzc) {
            i3 |= 64;
        }
        String str = zzsgVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzb2.zzd;
            i2 = 0;
        }
        return new zzht(str, zzabVar, zzabVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final zzht zzac(zzke zzkeVar) {
        zzht zzac = super.zzac(zzkeVar);
        zzab zzabVar = zzkeVar.zza;
        zzabVar.getClass();
        this.zzg.zzf(zzabVar, zzac);
        return zzac;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final zzsa zzaf(zzsg zzsgVar, zzab zzabVar, MediaCrypto mediaCrypto, float f) {
        Point point;
        int i;
        int i2;
        boolean z;
        int i3;
        int zzad;
        zzab[] zzT = zzT();
        int length = zzT.length;
        int zzae = zzae(zzsgVar, zzabVar);
        int i4 = zzabVar.zzv;
        int i5 = zzabVar.zzw;
        if (length != 1) {
            boolean z2 = false;
            for (int i6 = 0; i6 < length; i6++) {
                zzab zzabVar2 = zzT[i6];
                if (zzabVar.zzC != null && zzabVar2.zzC == null) {
                    zzz zzb2 = zzabVar2.zzb();
                    zzb2.zzB(zzabVar.zzC);
                    zzabVar2 = zzb2.zzag();
                }
                if (zzsgVar.zzb(zzabVar, zzabVar2).zzd != 0) {
                    int i7 = zzabVar2.zzv;
                    z2 |= i7 == -1 || zzabVar2.zzw == -1;
                    i4 = Math.max(i4, i7);
                    i5 = Math.max(i5, zzabVar2.zzw);
                    zzae = Math.max(zzae, zzae(zzsgVar, zzabVar2));
                }
            }
            if (z2) {
                zzdo.zzf("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i4 + "x" + i5);
                int i8 = zzabVar.zzw;
                int i9 = zzabVar.zzv;
                boolean z3 = i8 > i9;
                int i10 = z3 ? i8 : i9;
                if (true == z3) {
                    i8 = i9;
                }
                int[] iArr = zzb;
                int i11 = 0;
                while (i11 < 9) {
                    float f2 = i8;
                    float f3 = i10;
                    int i12 = iArr[i11];
                    int[] iArr2 = iArr;
                    float f4 = i12;
                    if (i12 <= i10 || (i = (int) ((f2 / f3) * f4)) <= i8) {
                        break;
                    }
                    int i13 = true != z3 ? i12 : i;
                    if (true != z3) {
                        i12 = i;
                    }
                    point = zzsgVar.zza(i13, i12);
                    float f5 = zzabVar.zzx;
                    if (point != null) {
                        z = z3;
                        i2 = i8;
                        if (zzsgVar.zzg(point.x, point.y, f5)) {
                            break;
                        }
                    } else {
                        i2 = i8;
                        z = z3;
                    }
                    i11++;
                    z3 = z;
                    iArr = iArr2;
                    i8 = i2;
                }
                point = null;
                if (point != null) {
                    i4 = Math.max(i4, point.x);
                    i5 = Math.max(i5, point.y);
                    zzz zzb3 = zzabVar.zzb();
                    zzb3.zzaf(i4);
                    zzb3.zzK(i5);
                    zzae = Math.max(zzae, zzad(zzsgVar, zzb3.zzag()));
                    zzdo.zzf("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i4 + "x" + i5);
                }
            }
        } else if (zzae != -1 && (zzad = zzad(zzsgVar, zzabVar)) != -1) {
            zzae = Math.min((int) (zzae * 1.5f), zzad);
        }
        String str = zzsgVar.zzc;
        zzzo zzzoVar = new zzzo(i4, i5, zzae);
        this.zzk = zzzoVar;
        boolean z4 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, zzabVar.zzv);
        mediaFormat.setInteger(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, zzabVar.zzw);
        zzdr.zzb(mediaFormat, zzabVar.zzr);
        float f6 = zzabVar.zzx;
        if (f6 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f6);
        }
        zzdr.zza(mediaFormat, "rotation-degrees", zzabVar.zzy);
        zzk zzkVar = zzabVar.zzC;
        if (zzkVar != null) {
            zzdr.zza(mediaFormat, "color-transfer", zzkVar.zzd);
            zzdr.zza(mediaFormat, "color-standard", zzkVar.zzb);
            zzdr.zza(mediaFormat, "color-range", zzkVar.zzc);
            byte[] bArr = zzkVar.zze;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzabVar.zzo)) {
            int i14 = zzta.zza;
            Pair zza = zzcy.zza(zzabVar);
            if (zza != null) {
                zzdr.zza(mediaFormat, Scopes.PROFILE, ((Integer) zza.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", zzzoVar.zza);
        mediaFormat.setInteger("max-height", zzzoVar.zzb);
        zzdr.zza(mediaFormat, "max-input-size", zzzoVar.zzc);
        int i15 = zzei.zza;
        if (i15 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z4) {
            mediaFormat.setInteger("no-post-process", 1);
            i3 = 0;
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            i3 = 0;
        }
        if (i15 >= 35) {
            mediaFormat.setInteger("importance", Math.max(i3, -this.zzF));
        }
        Surface zzaW = zzaW(zzsgVar);
        if (this.zzn != null && !zzei.zzK(this.zze)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return zzsa.zzb(zzsgVar, mediaFormat, zzabVar, zzaW, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final List zzag(zzsp zzspVar, zzab zzabVar, boolean z) {
        return zzta.zzf(zzaX(this.zze, zzspVar, zzabVar, false, false), zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    @TargetApi(29)
    public final void zzaj(zzhh zzhhVar) {
        if (this.zzm) {
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
                        zzsd zzaz = zzaz();
                        zzaz.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzaz.zzq(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzak(Exception exc) {
        zzdo.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzal(String str, zzsa zzsaVar, long j, long j2) {
        this.zzg.zza(str, j, j2);
        this.zzl = zzaU(str);
        zzsg zzaB = zzaB();
        zzaB.getClass();
        boolean z = false;
        if (zzei.zza >= 29 && "video/x-vnd.on2.vp9".equals(zzaB.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] zzh = zzaB.zzh();
            int length = zzh.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (zzh[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.zzm = z;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzam(String str) {
        this.zzg.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzan(zzab zzabVar, MediaFormat mediaFormat) {
        zzsd zzaz = zzaz();
        if (zzaz != null) {
            zzaz.zzr(this.zzu);
        }
        mediaFormat.getClass();
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
        float f = zzabVar.zzz;
        if (zzei.zza >= 30 && mediaFormat.containsKey("sar-width") && mediaFormat.containsKey("sar-height")) {
            f = mediaFormat.getInteger("sar-width") / mediaFormat.getInteger("sar-height");
        }
        int i = zzabVar.zzy;
        if (i == 90 || i == 270) {
            f = 1.0f / f;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.zzD = new zzcd(integer, integer2, f);
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null || !this.zzK) {
            this.zzi.zzl(zzabVar.zzx);
        } else {
            zzz zzb2 = zzabVar.zzb();
            zzb2.zzaf(integer);
            zzb2.zzK(integer2);
            zzb2.zzW(f);
            zzabhVar.zzg(1, zzb2.zzag());
        }
        this.zzK = false;
    }

    public final void zzao(zzsd zzsdVar, int i, long j, long j2) {
        Trace.beginSection("releaseOutputBuffer");
        zzsdVar.zzn(i, j2);
        Trace.endSection();
        ((zzsn) this).zza.zze++;
        this.zzy = 0;
        if (this.zzn == null) {
            zzcd zzcdVar = this.zzD;
            if (!zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzE)) {
                this.zzE = zzcdVar;
                this.zzg.zzt(zzcdVar);
            }
            if (!this.zzi.zzp() || this.zzq == null) {
                return;
            }
            zzaZ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzap() {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzr(zzaw(), zzav(), -this.zzI, zzf());
        } else {
            this.zzi.zzf();
        }
        this.zzK = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final boolean zzar(long j, long j2, zzsd zzsdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) {
        boolean z3;
        zzsdVar.getClass();
        long zzav = j3 - zzav();
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null) {
            int zza = this.zzi.zza(j3, j, j2, zzaw(), z2, this.zzj);
            if (zza == 4) {
                return false;
            }
            if (z && !z2) {
                zzaQ(zzsdVar, i, zzav);
                return true;
            }
            if (this.zzq == null) {
                if (this.zzj.zzc() >= 30000) {
                    return false;
                }
                zzaQ(zzsdVar, i, zzav);
                zzaS(this.zzj.zzc());
                return true;
            }
            if (zza == 0) {
                zzao(zzsdVar, i, zzav, zzi().zzc());
                zzaS(this.zzj.zzc());
                return true;
            }
            if (zza == 1) {
                zzaaj zzaajVar = this.zzj;
                long zzd2 = zzaajVar.zzd();
                long zzc2 = zzaajVar.zzc();
                if (zzd2 == this.zzC) {
                    zzaQ(zzsdVar, i, zzav);
                } else {
                    zzao(zzsdVar, i, zzav, zzd2);
                }
                zzaS(zzc2);
                this.zzC = zzd2;
                return true;
            }
            if (zza == 2) {
                Trace.beginSection("dropVideoBuffer");
                zzsdVar.zzo(i, false);
                Trace.endSection();
                zzaR(0, 1);
                zzaS(this.zzj.zzc());
                return true;
            }
            if (zza != 3) {
                if (zza == 5) {
                    return false;
                }
                throw new IllegalStateException(String.valueOf(zza));
            }
            zzaQ(zzsdVar, i, zzav);
            zzaS(this.zzj.zzc());
            return true;
        }
        try {
            z3 = false;
            try {
                return zzabhVar.zzu(j3 + (-this.zzI), z2, j, j2, new zzzm(this, zzsdVar, i, zzav));
            } catch (zzabg e) {
                e = e;
                throw zzcW(e, e.zza, z3, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
            }
        } catch (zzabg e2) {
            e = e2;
            z3 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final int zzau(zzhh zzhhVar) {
        int i = zzei.zza;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public final void zzt() {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzc();
        } else {
            this.zzi.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzle
    public final void zzu(int i, Object obj) {
        if (i == 1) {
            Surface surface = obj instanceof Surface ? (Surface) obj : null;
            if (this.zzq == surface) {
                if (surface != null) {
                    zzaY();
                    Surface surface2 = this.zzq;
                    if (surface2 == null || !this.zzt) {
                        return;
                    }
                    this.zzg.zzq(surface2);
                    return;
                }
                return;
            }
            this.zzq = surface;
            if (this.zzn == null) {
                this.zzi.zzm(surface);
            }
            this.zzt = false;
            int zzcT = zzcT();
            zzsd zzaz = zzaz();
            if (zzaz != null && this.zzn == null) {
                zzsg zzaB = zzaB();
                zzaB.getClass();
                boolean zzbb = zzbb(zzaB);
                int i2 = zzei.zza;
                if (i2 < 23 || !zzbb || this.zzl) {
                    zzaG();
                    zzaC();
                } else {
                    Surface zzaW = zzaW(zzaB);
                    if (i2 >= 23 && zzaW != null) {
                        zzaz.zzp(zzaW);
                    } else {
                        if (i2 < 35) {
                            throw new IllegalStateException();
                        }
                        zzaz.zzi();
                    }
                }
            }
            if (surface == null) {
                this.zzE = null;
                zzabh zzabhVar = this.zzn;
                if (zzabhVar != null) {
                    zzabhVar.zzb();
                    return;
                }
                return;
            }
            zzaY();
            if (zzcT == 2) {
                zzabh zzabhVar2 = this.zzn;
                if (zzabhVar2 != null) {
                    zzabhVar2.zzf(true);
                    return;
                } else {
                    this.zzi.zzc(true);
                    return;
                }
            }
            return;
        }
        if (i == 7) {
            obj.getClass();
            zzaai zzaaiVar = (zzaai) obj;
            this.zzH = zzaaiVar;
            zzabh zzabhVar3 = this.zzn;
            if (zzabhVar3 != null) {
                zzabhVar3.zzt(zzaaiVar);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            if (this.zzG != intValue) {
                this.zzG = intValue;
                return;
            }
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.zzF = ((Integer) obj).intValue();
            zzsd zzaz2 = zzaz();
            if (zzaz2 == null || zzei.zza < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.zzF));
            zzaz2.zzq(bundle);
            return;
        }
        if (i == 4) {
            obj.getClass();
            int intValue2 = ((Integer) obj).intValue();
            this.zzu = intValue2;
            zzsd zzaz3 = zzaz();
            if (zzaz3 != null) {
                zzaz3.zzr(intValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int intValue3 = ((Integer) obj).intValue();
            this.zzv = intValue3;
            zzabh zzabhVar4 = this.zzn;
            if (zzabhVar4 != null) {
                zzabhVar4.zzn(intValue3);
                return;
            } else {
                this.zzi.zzj(intValue3);
                return;
            }
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            this.zzp = list;
            zzabh zzabhVar5 = this.zzn;
            if (zzabhVar5 != null) {
                zzabhVar5.zzs(list);
                return;
            }
            return;
        }
        if (i != 14) {
            super.zzu(i, obj);
            return;
        }
        obj.getClass();
        zzdz zzdzVar = (zzdz) obj;
        if (zzdzVar.zzb() == 0 || zzdzVar.zza() == 0) {
            return;
        }
        this.zzs = zzdzVar;
        zzabh zzabhVar6 = this.zzn;
        if (zzabhVar6 != null) {
            Surface surface3 = this.zzq;
            zzcw.zzb(surface3);
            zzabhVar6.zzp(surface3, zzdzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzx() {
        this.zzE = null;
        this.zzJ = -9223372036854775807L;
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzh();
        } else {
            this.zzi.zzd();
        }
        this.zzt = false;
        try {
            super.zzx();
        } finally {
            this.zzg.zzc(((zzsn) this).zza);
            this.zzg.zzt(zzcd.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzy(boolean z, boolean z2) {
        super.zzy(z, z2);
        zzn();
        this.zzg.zze(((zzsn) this).zza);
        if (!this.zzo) {
            if (this.zzp != null && this.zzn == null) {
                zzzw zzzwVar = new zzzw(this.zze, this.zzi);
                zzzwVar.zzd(zzi());
                this.zzn = zzzwVar.zze().zzh();
            }
            this.zzo = true;
        }
        zzabh zzabhVar = this.zzn;
        if (zzabhVar == null) {
            this.zzi.zzk(zzi());
            this.zzi.zze(z2);
            return;
        }
        zzabhVar.zzo(new zzzl(this), zzgcz.zzc());
        zzaai zzaaiVar = this.zzH;
        if (zzaaiVar != null) {
            this.zzn.zzt(zzaaiVar);
        }
        if (this.zzq != null && !this.zzs.equals(zzdz.zza)) {
            this.zzn.zzp(this.zzq, this.zzs);
        }
        this.zzn.zzn(this.zzv);
        this.zzn.zzq(zzat());
        List list = this.zzp;
        if (list != null) {
            this.zzn.zzs(list);
        }
        this.zzn.zzi(z2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    public final void zzz(long j, boolean z) {
        zzabh zzabhVar = this.zzn;
        if (zzabhVar != null) {
            zzabhVar.zzd(true);
            this.zzn.zzr(zzaw(), zzav(), -this.zzI, zzf());
            this.zzK = true;
        }
        super.zzz(j, z);
        if (this.zzn == null) {
            this.zzi.zzi();
        }
        if (z) {
            zzabh zzabhVar2 = this.zzn;
            if (zzabhVar2 != null) {
                zzabhVar2.zzf(false);
            } else {
                this.zzi.zzc(false);
            }
        }
        this.zzy = 0;
    }
}
