package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes.dex */
final class zzgjo extends ThreadLocal {
    public static final Cipher zza() {
        boolean zzf;
        try {
            Cipher cipher = (Cipher) zzguw.zza.zza("ChaCha20-Poly1305");
            zzf = zzgjp.zzf(cipher);
            if (zzf) {
                return cipher;
            }
            return null;
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
