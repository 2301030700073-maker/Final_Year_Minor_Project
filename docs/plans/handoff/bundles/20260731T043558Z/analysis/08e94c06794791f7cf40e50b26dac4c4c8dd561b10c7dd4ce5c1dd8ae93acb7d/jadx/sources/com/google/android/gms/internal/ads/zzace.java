package com.google.android.gms.internal.ads;

import androidx.media3.common.PlaybackException;
import com.google.common.primitives.SignedBytes;
import com.google.logging.type.LogSeverity;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzace {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, 2000, 1920, 1601, 1600, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, 400, 400, 2048};

    /* JADX WARN: Removed duplicated region for block: B:109:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0387  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzv zza(com.google.android.gms.internal.ads.zzeg r19, java.lang.String r20, java.lang.String r21, com.google.android.gms.internal.ads.zzq r22) throws com.google.android.gms.internal.ads.zzat {
        /*
            Method dump skipped, instructions count: 978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzace.zza(com.google.android.gms.internal.ads.zzeg, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.zzq):com.google.android.gms.internal.ads.zzv");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        if (r12 != 11) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0095, code lost:
    
        if (r12 != 11) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009a, code lost:
    
        if (r12 != 8) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzacd zzb(com.google.android.gms.internal.ads.zzef r12) {
        /*
            r0 = 16
            int r1 = r12.zzj(r0)
            int r0 = r12.zzj(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r12.zzj(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r8 = r0
            r0 = 2
            int r1 = r12.zzj(r0)
            r2 = 0
            r4 = 3
            if (r1 != r4) goto L3d
            r1 = r2
        L2c:
            int r5 = r12.zzj(r0)
            int r1 = r1 + r5
            boolean r5 = r12.zzi()
            if (r5 != 0) goto L39
            int r1 = r1 + r4
            goto L3d
        L39:
            int r1 = r1 + 1
            int r1 = r1 << r0
            goto L2c
        L3d:
            r5 = r1
            r1 = 10
            int r1 = r12.zzj(r1)
            boolean r6 = r12.zzi()
            if (r6 == 0) goto L53
            int r6 = r12.zzj(r4)
            if (r6 <= 0) goto L53
            r12.zzh(r0)
        L53:
            boolean r6 = r12.zzi()
            r7 = 44100(0xac44, float:6.1797E-41)
            r9 = 48000(0xbb80, float:6.7262E-41)
            r10 = 1
            if (r10 == r6) goto L62
            r11 = r7
            goto L63
        L62:
            r11 = r9
        L63:
            int r12 = r12.zzj(r3)
            if (r11 != r7) goto L73
            r6 = 13
            if (r12 != r6) goto L73
            int[] r12 = com.google.android.gms.internal.ads.zzace.zzb
            r12 = r12[r6]
            r9 = r12
            goto L9f
        L73:
            if (r11 != r9) goto L9e
            r6 = 14
            if (r12 >= r6) goto L9e
            int[] r2 = com.google.android.gms.internal.ads.zzace.zzb
            r2 = r2[r12]
            int r1 = r1 % 5
            r6 = 8
            if (r1 == r10) goto L98
            r7 = 11
            if (r1 == r0) goto L93
            if (r1 == r4) goto L98
            if (r1 == r3) goto L8c
            goto L9e
        L8c:
            if (r12 == r4) goto L9c
            if (r12 == r6) goto L9c
            if (r12 != r7) goto L9e
            goto L9c
        L93:
            if (r12 == r6) goto L9c
            if (r12 != r7) goto L9e
            goto L9c
        L98:
            if (r12 == r4) goto L9c
            if (r12 != r6) goto L9e
        L9c:
            int r2 = r2 + 1
        L9e:
            r9 = r2
        L9f:
            com.google.android.gms.internal.ads.zzacd r12 = new com.google.android.gms.internal.ads.zzacd
            r6 = 2
            r10 = 0
            r4 = r12
            r7 = r11
            r4.<init>(r5, r6, r7, r8, r9, r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzace.zzb(com.google.android.gms.internal.ads.zzef):com.google.android.gms.internal.ads.zzacd");
    }

    public static void zzc(int i, zzeg zzegVar) {
        zzegVar.zza(7);
        byte[] zzi = zzegVar.zzi();
        zzi[0] = -84;
        zzi[1] = SignedBytes.MAX_POWER_OF_TWO;
        zzi[2] = -1;
        zzi[3] = -1;
        zzi[4] = (byte) ((i >> 16) & 255);
        zzi[5] = (byte) ((i >> 8) & 255);
        zzi[6] = (byte) (i & 255);
    }

    private static void zzd(zzef zzefVar, zzacc zzaccVar) throws zzat {
        int zzj = zzefVar.zzj(5);
        zzefVar.zzh(2);
        if (zzefVar.zzi()) {
            zzefVar.zzh(5);
        }
        if (zzj >= 7 && zzj <= 10) {
            zzefVar.zzg();
        }
        if (zzefVar.zzi()) {
            int zzj2 = zzefVar.zzj(3);
            if (zzaccVar.zzb == -1 && zzj >= 0 && zzj <= 15 && (zzj2 == 0 || zzj2 == 1)) {
                zzaccVar.zzb = zzj;
            }
            if (zzefVar.zzi()) {
                zzf(zzefVar);
            }
        }
    }

    private static void zze(zzef zzefVar, zzacc zzaccVar) throws zzat {
        zzefVar.zzh(2);
        boolean zzi = zzefVar.zzi();
        int zzj = zzefVar.zzj(8);
        for (int i = 0; i < zzj; i++) {
            zzefVar.zzh(2);
            if (zzefVar.zzi()) {
                zzefVar.zzh(5);
            }
            if (zzi) {
                zzefVar.zzh(24);
            } else {
                if (zzefVar.zzi()) {
                    if (!zzefVar.zzi()) {
                        zzefVar.zzh(4);
                    }
                    zzaccVar.zzc = zzefVar.zzj(6) + 1;
                }
                zzefVar.zzh(4);
            }
        }
        if (zzefVar.zzi()) {
            zzefVar.zzh(3);
            if (zzefVar.zzi()) {
                zzf(zzefVar);
            }
        }
    }

    private static void zzf(zzef zzefVar) throws zzat {
        int zzj = zzefVar.zzj(6);
        if (zzj < 2 || zzj > 42) {
            throw zzat.zzc(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(zzj)));
        }
        zzefVar.zzh(zzj * 8);
    }

    private static boolean zzg(zzef zzefVar) {
        if (zzefVar.zzc() < 66) {
            return false;
        }
        zzefVar.zzh(66);
        return true;
    }
}
