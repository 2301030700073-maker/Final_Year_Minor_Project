package com.google.android.gms.internal.ads;

import androidx.media3.container.MdtaMetadataEntry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzes implements zzao {
    public final String zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzes(String str, byte[] bArr, int i, int i2) {
        char c;
        byte b;
        switch (str.hashCode()) {
            case -1949883051:
                if (str.equals(MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -269399509:
                if (str.equals("auxiliary.tracks.interleaved")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1011693540:
                if (str.equals("auxiliary.tracks.length")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1098277265:
                if (str.equals("auxiliary.tracks.offset")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2002123038:
                if (str.equals("auxiliary.tracks.map")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            if (i2 == 23) {
                if (bArr.length == 4) {
                    i2 = 23;
                    zzgmd.zza(r4);
                } else {
                    i2 = 23;
                }
            }
            r4 = false;
            zzgmd.zza(r4);
        } else if (c == 1 || c == 2) {
            if (i2 == 78) {
                if (bArr.length == 8) {
                    i2 = 78;
                    zzgmd.zza(r4);
                } else {
                    i2 = 78;
                }
            }
            r4 = false;
            zzgmd.zza(r4);
        } else if (c == 3) {
            zzgmd.zza(i2 == 0);
        } else if (c == 4) {
            if (i2 == 75) {
                if (bArr.length == 1 && ((b = bArr[0]) == 0 || b == 1)) {
                    i2 = 75;
                    zzgmd.zza(r4);
                } else {
                    i2 = 75;
                }
            }
            r4 = false;
            zzgmd.zza(r4);
        }
        this.zza = str;
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzes zzesVar = (zzes) obj;
            if (this.zza.equals(zzesVar.zza) && Arrays.equals(this.zzb, zzesVar.zzb) && this.zzc == zzesVar.zzc && this.zzd == zzesVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.zza.hashCode() + 527) * 31) + Arrays.hashCode(this.zzb)) * 31) + this.zzc) * 31) + this.zzd;
    }

    public final List zzb() {
        zzgmd.zzi(this.zza.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte[] bArr = this.zzb;
        byte b = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            arrayList.add(Integer.valueOf(bArr[i + 2]));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008c A[LOOP:0: B:18:0x0089->B:20:0x008c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r5 = this;
            int r0 = r5.zzd
            r1 = 0
            if (r0 == 0) goto L59
            r2 = 1
            if (r0 == r2) goto L52
            r2 = 23
            if (r0 == r2) goto L43
            r2 = 67
            if (r0 == r2) goto L38
            r2 = 75
            if (r0 == r2) goto L2a
            r2 = 78
            if (r0 == r2) goto L19
            goto L7e
        L19:
            byte[] r0 = r5.zzb
            com.google.android.gms.internal.ads.zzeg r1 = new com.google.android.gms.internal.ads.zzeg
            r1.<init>(r0)
            long r0 = r1.zzJ()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lad
        L2a:
            byte[] r0 = r5.zzb
            r0 = r0[r1]
            int r0 = com.google.android.gms.internal.ads.zzeg$$ExternalSyntheticBackport0.m(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lad
        L38:
            byte[] r0 = r5.zzb
            int r0 = com.google.android.gms.internal.ads.zzgst.zzd(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lad
        L43:
            byte[] r0 = r5.zzb
            int r0 = com.google.android.gms.internal.ads.zzgst.zzd(r0)
            float r0 = java.lang.Float.intBitsToFloat(r0)
            java.lang.String r0 = java.lang.String.valueOf(r0)
            goto Lad
        L52:
            byte[] r0 = r5.zzb
            java.lang.String r0 = com.google.android.gms.internal.ads.zzep.zzi(r0)
            goto Lad
        L59:
            java.lang.String r0 = r5.zza
            java.lang.String r2 = "auxiliary.tracks.map"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L7e
            java.util.List r0 = r5.zzb()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "track types = "
            r1.append(r2)
            java.lang.String r2 = ","
            r3 = r2
            java.lang.String r3 = (java.lang.String) r3
            com.google.android.gms.internal.ads.zzglx.zzb(r1, r0, r2)
            java.lang.String r0 = r1.toString()
            goto Lad
        L7e:
            byte[] r0 = r5.zzb
            java.lang.String r2 = com.google.android.gms.internal.ads.zzep.zza
            int r2 = r0.length
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = r2 + r2
            r3.<init>(r2)
        L89:
            int r2 = r0.length
            if (r1 >= r2) goto La9
            r2 = r0[r1]
            int r2 = r2 >> 4
            r2 = r2 & 15
            r4 = 16
            char r2 = java.lang.Character.forDigit(r2, r4)
            r3.append(r2)
            r2 = r0[r1]
            r2 = r2 & 15
            char r2 = java.lang.Character.forDigit(r2, r4)
            r3.append(r2)
            int r1 = r1 + 1
            goto L89
        La9:
            java.lang.String r0 = r3.toString()
        Lad:
            java.lang.String r1 = r5.zza
            java.lang.String r2 = java.lang.String.valueOf(r1)
            int r2 = r2.length()
            java.lang.String r3 = java.lang.String.valueOf(r0)
            int r2 = r2 + 18
            int r3 = r3.length()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r2 = r2 + r3
            r4.<init>(r2)
            java.lang.String r2 = "mdta: key="
            r4.append(r2)
            r4.append(r1)
            java.lang.String r1 = ", value="
            r4.append(r1)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzes.toString():java.lang.String");
    }
}
