package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import defpackage.V1;

/* loaded from: classes.dex */
final class zzfzw extends zzfzz {
    final char[] zza;

    private zzfzw(zzfzv zzfzvVar) {
        super(zzfzvVar, null);
        char[] cArr;
        this.zza = new char[AdRequest.MAX_CONTENT_URL_LENGTH];
        cArr = zzfzvVar.zzf;
        zzfun.zze(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            this.zza[i] = zzfzvVar.zza(i >>> 4);
            this.zza[i | 256] = zzfzvVar.zza(i & 15);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfzz, com.google.android.gms.internal.ads.zzgaa
    public final int zza(byte[] bArr, CharSequence charSequence) {
        if (charSequence.length() % 2 == 1) {
            throw new zzfzy(V1.m2494case("Invalid input length ", charSequence.length()));
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            bArr[i2] = (byte) ((this.zzb.zzb(charSequence.charAt(i)) << 4) | this.zzb.zzb(charSequence.charAt(i + 1)));
            i += 2;
            i2++;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfzz
    public final zzgaa zzb(zzfzv zzfzvVar, Character ch) {
        return new zzfzw(zzfzvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfzz, com.google.android.gms.internal.ads.zzgaa
    public final void zzc(Appendable appendable, byte[] bArr, int i, int i2) {
        zzfun.zzk(0, i2, bArr.length);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i3] & 255;
            appendable.append(this.zza[i4]);
            appendable.append(this.zza[i4 | 256]);
        }
    }

    public zzfzw(String str, String str2) {
        this(new zzfzv("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
