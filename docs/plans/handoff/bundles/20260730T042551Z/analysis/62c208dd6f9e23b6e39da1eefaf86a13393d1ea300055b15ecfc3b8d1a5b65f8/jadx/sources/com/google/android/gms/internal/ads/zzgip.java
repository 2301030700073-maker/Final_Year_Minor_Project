package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzgip {
    public static final /* synthetic */ int zza = 0;
    private static final zzgmx zzb = zzgmx.zzb(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzgim
        @Override // com.google.android.gms.internal.ads.zzgmv
        public final Object zza(zzgdx zzgdxVar) {
            zzgil zzgilVar = (zzgil) zzgdxVar;
            int i = zzgip.zza;
            return zzgkk.zzc() ? zzgkk.zzb(zzgilVar) : zzgvn.zzb(zzgilVar);
        }
    }, zzgil.class, zzgdn.class);
    private static final zzgdy zzc = zzgli.zzd("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", zzgdn.class, zzgsj.SYMMETRIC, zzgue.zzg());
    private static final zzgmb zzd = new zzgmb() { // from class: com.google.android.gms.internal.ads.zzgin
    };
    private static final zzglz zze = new zzglz() { // from class: com.google.android.gms.internal.ads.zzgio
        @Override // com.google.android.gms.internal.ads.zzglz
        public final zzgdx zza(zzgek zzgekVar, Integer num) {
            int i = zzgip.zza;
            return zzgil.zza(((zzgir) zzgekVar).zzb(), zzgvp.zzc(32), num);
        }
    };

    public static void zza(boolean z) {
        if (!zzgks.zza(1)) {
            throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
        }
        int i = zzgkp.zza;
        zzgkp.zze(zzgmk.zzc());
        zzgmh.zza().zze(zzb);
        zzgmg zzb2 = zzgmg.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", zzgir.zzc(zzgiq.zza));
        hashMap.put("XCHACHA20_POLY1305_RAW", zzgir.zzc(zzgiq.zzc));
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzgma.zzb().zzc(zze, zzgir.class);
        zzgmc.zza().zzb(zzd, zzgir.class);
        zzgkz.zzc().zzd(zzc, true);
    }
}
