package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.Provider;

/* loaded from: classes.dex */
public final class zzgvc implements zzgve {
    @Override // com.google.android.gms.internal.ads.zzgve
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
