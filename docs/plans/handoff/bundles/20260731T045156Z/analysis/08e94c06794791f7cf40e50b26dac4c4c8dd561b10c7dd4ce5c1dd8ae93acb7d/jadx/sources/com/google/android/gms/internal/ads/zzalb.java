package com.google.android.gms.internal.ads;

import android.graphics.Color;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzalb {
    public final String zza;
    public final int zzb;
    public final Integer zzc;
    public final Integer zzd;
    public final float zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final int zzj;

    private zzalb(String str, int i, Integer num, Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = num;
        this.zzd = num2;
        this.zze = f;
        this.zzf = z;
        this.zzg = z2;
        this.zzh = z3;
        this.zzi = z4;
        this.zzj = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0105 A[Catch: RuntimeException -> 0x0138, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0138, blocks: (B:7:0x003c, B:9:0x004b, B:10:0x0058, B:12:0x005c, B:13:0x0069, B:15:0x006d, B:16:0x007a, B:18:0x007e, B:20:0x0086, B:22:0x00b0, B:24:0x00b5, B:27:0x00c4, B:29:0x00c8, B:32:0x00d7, B:34:0x00db, B:37:0x00ec, B:39:0x00f0, B:42:0x0101, B:44:0x0105, B:46:0x010d, B:52:0x012c, B:50:0x011d, B:65:0x008e), top: B:6:0x003c, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzalb zza(java.lang.String r19, com.google.android.gms.internal.ads.zzakz r20) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalb.zza(java.lang.String, com.google.android.gms.internal.ads.zzakz):com.google.android.gms.internal.ads.zzalb");
    }

    public static Integer zzb(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            zzgmd.zza(parseLong <= BodyPartID.bodyIdMax);
            return Integer.valueOf(Color.argb(zzgst.zza(((parseLong >> 24) & 255) ^ 255), zzgst.zza(parseLong & 255), zzgst.zza((parseLong >> 8) & 255), zzgst.zza((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36);
            sb.append("Failed to parse color expression: '");
            sb.append(str);
            sb.append("'");
            zzdt.zzd("SsaStyle", sb.toString(), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(String str) {
        int parseInt;
        try {
            parseInt = Integer.parseInt(str.trim());
        } catch (NumberFormatException unused) {
        }
        switch (parseInt) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return parseInt;
            default:
                String.valueOf(str);
                zzdt.zzc("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
                return -1;
        }
    }

    private static boolean zze(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
            sb.append("Failed to parse boolean value: '");
            sb.append(str);
            sb.append("'");
            zzdt.zzd("SsaStyle", sb.toString(), e);
            return false;
        }
    }
}
