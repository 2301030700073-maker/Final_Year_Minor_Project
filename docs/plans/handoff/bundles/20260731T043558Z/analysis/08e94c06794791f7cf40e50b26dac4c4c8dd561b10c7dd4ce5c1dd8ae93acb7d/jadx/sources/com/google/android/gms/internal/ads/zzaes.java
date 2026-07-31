package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaes {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    public static zzaep zzb(zzeg zzegVar, boolean z, boolean z2) throws zzat {
        if (z) {
            zzd(3, zzegVar, false);
        }
        String zzK = zzegVar.zzK((int) zzegVar.zzA(), StandardCharsets.UTF_8);
        int length = zzK.length();
        long zzA = zzegVar.zzA();
        String[] strArr = new String[(int) zzA];
        int i = length + 15;
        for (int i2 = 0; i2 < zzA; i2++) {
            String zzK2 = zzegVar.zzK((int) zzegVar.zzA(), StandardCharsets.UTF_8);
            strArr[i2] = zzK2;
            i = i + 4 + zzK2.length();
        }
        if (z2 && (zzegVar.zzs() & 1) == 0) {
            throw zzat.zzb("framing bit expected to be set", null);
        }
        return new zzaep(zzK, strArr, i + 1);
    }

    public static zzap zzc(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            String str2 = zzep.zza;
            String[] split = str.split("=", 2);
            if (split.length != 2) {
                String.valueOf(str);
                zzdt.zzc("VorbisUtil", "Failed to parse Vorbis comment: ".concat(String.valueOf(str)));
            } else if (split[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzagd.zzb(new zzeg(Base64.decode(split[1], 0))));
                } catch (RuntimeException e) {
                    zzdt.zzd("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new zzahb(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzap(arrayList);
    }

    public static boolean zzd(int i, zzeg zzegVar, boolean z) throws zzat {
        if (zzegVar.zzd() < 7) {
            if (z) {
                return false;
            }
            int zzd = zzegVar.zzd();
            StringBuilder sb = new StringBuilder(String.valueOf(zzd).length() + 18);
            sb.append("too short header: ");
            sb.append(zzd);
            throw zzat.zzb(sb.toString(), null);
        }
        if (zzegVar.zzs() != i) {
            if (z) {
                return false;
            }
            String hexString = Integer.toHexString(i);
            String.valueOf(hexString);
            throw zzat.zzb("expected header type ".concat(String.valueOf(hexString)), null);
        }
        if (zzegVar.zzs() == 118 && zzegVar.zzs() == 111 && zzegVar.zzs() == 114 && zzegVar.zzs() == 98 && zzegVar.zzs() == 105 && zzegVar.zzs() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw zzat.zzb("expected characters 'vorbis'", null);
    }
}
