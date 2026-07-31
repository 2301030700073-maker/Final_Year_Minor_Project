package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgfg {
    private final File zza;
    private final zzfrn zzb;
    private final zzgjd zzc;

    public zzgfg(File file, zzfrn zzfrnVar, zzgjd zzgjdVar) {
        this.zza = file;
        this.zzb = zzfrnVar;
        this.zzc = zzgjdVar;
    }

    public final boolean zza(byte[] bArr) {
        boolean z;
        try {
            File file = this.zza;
            zzgsg.zzb(file);
            zzgsg.zza(bArr, file);
            z = this.zzb.zza(file);
        } catch (IOException | GeneralSecurityException e) {
            this.zzc.zzd(2027, e);
            z = false;
        }
        try {
            this.zza.delete();
        } catch (SecurityException unused) {
        }
        return z;
    }
}
