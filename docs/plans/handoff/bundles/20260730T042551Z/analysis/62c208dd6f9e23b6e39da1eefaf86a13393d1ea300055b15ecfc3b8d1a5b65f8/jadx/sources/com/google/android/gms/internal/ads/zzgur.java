package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzgur implements zzguu {
    private final zzgve zza;

    @Override // com.google.android.gms.internal.ads.zzguu
    public final Object zza(String str) {
        Iterator it = zzguw.zzb("GmsCore_OpenSSL", "AndroidOpenSSL").iterator();
        while (it.hasNext()) {
            try {
                return this.zza.zza(str, (Provider) it.next());
            } catch (Exception unused) {
            }
        }
        return this.zza.zza(str, null);
    }
}
