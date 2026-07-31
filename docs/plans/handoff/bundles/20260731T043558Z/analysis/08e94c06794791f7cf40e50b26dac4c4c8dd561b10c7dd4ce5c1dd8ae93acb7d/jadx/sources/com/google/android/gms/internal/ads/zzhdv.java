package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.StringReader;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhdv {
    public static boolean zza(String str) {
        int length = str.length();
        int i = 0;
        while (i != length) {
            char charAt = str.charAt(i);
            int i2 = i + 1;
            if (!Character.isSurrogate(charAt)) {
                i = i2;
            } else {
                if (Character.isLowSurrogate(charAt) || i2 == length || !Character.isLowSurrogate(str.charAt(i2))) {
                    return false;
                }
                i += 2;
            }
        }
        return true;
    }

    public static zzhtg zzb(String str) throws IOException {
        try {
            zzhul zzhulVar = new zzhul(new StringReader(str));
            zzhulVar.zza(zzhtl.LEGACY_STRICT);
            return zzhdt.zzb(zzhulVar);
        } catch (NumberFormatException e) {
            throw new IOException(e);
        }
    }

    public static long zzc(Number number) {
        if (number instanceof zzhdu) {
            return Long.parseLong(number.toString());
        }
        throw new IllegalArgumentException("does not contain a parsed number.");
    }
}
