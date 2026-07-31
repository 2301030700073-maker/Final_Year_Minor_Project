package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
import javax.crypto.Cipher;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhbq extends ThreadLocal {
    zzhbq() {
    }

    @Nullable
    protected static final Cipher zza() {
        boolean zzf;
        try {
            Cipher cipher = (Cipher) zzhrz.zza.zzb("ChaCha20-Poly1305");
            zzf = zzhbr.zzf(cipher);
            if (zzf) {
                return cipher;
            }
            return null;
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    @Override // java.lang.ThreadLocal
    @Nullable
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
