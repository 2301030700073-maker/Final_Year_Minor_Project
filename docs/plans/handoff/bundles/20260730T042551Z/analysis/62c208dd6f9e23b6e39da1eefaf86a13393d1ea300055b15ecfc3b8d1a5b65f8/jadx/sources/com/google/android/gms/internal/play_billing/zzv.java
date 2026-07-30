package com.google.android.gms.internal.play_billing;

import defpackage.NQ;

/* loaded from: classes3.dex */
public final class zzv {
    public static zzeu zza(NQ nq) {
        zzr zzrVar = new zzr();
        zzu zzuVar = new zzu(zzrVar);
        zzrVar.zzb = zzuVar;
        zzrVar.zza = nq.getClass();
        try {
            nq.m1529do(zzrVar);
            zzrVar.zza = "billingOverrideService.getBillingOverride";
        } catch (Exception e) {
            zzuVar.zzc(e);
        }
        return zzuVar;
    }
}
