package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzghn {
    private zzghp zza;
    private String zzb;
    private zzgho zzc;
    private zzgeu zzd;

    private zzghn() {
        throw null;
    }

    public /* synthetic */ zzghn(zzghq zzghqVar) {
    }

    public final zzghn zza(zzgeu zzgeuVar) {
        this.zzd = zzgeuVar;
        return this;
    }

    public final zzghn zzb(zzgho zzghoVar) {
        this.zzc = zzghoVar;
        return this;
    }

    public final zzghn zzc(String str) {
        this.zzb = str;
        return this;
    }

    public final zzghn zzd(zzghp zzghpVar) {
        this.zza = zzghpVar;
        return this;
    }

    public final zzghr zze() {
        if (this.zza == null) {
            this.zza = zzghp.zzb;
        }
        if (this.zzb == null) {
            throw new GeneralSecurityException("kekUri must be set");
        }
        zzgho zzghoVar = this.zzc;
        if (zzghoVar == null) {
            throw new GeneralSecurityException("dekParsingStrategy must be set");
        }
        zzgeu zzgeuVar = this.zzd;
        if (zzgeuVar == null) {
            throw new GeneralSecurityException("dekParametersForNewKeys must be set");
        }
        if (zzgeuVar.zza()) {
            throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
        }
        if ((zzghoVar.equals(zzgho.zza) && (zzgeuVar instanceof zzggf)) || ((zzghoVar.equals(zzgho.zzc) && (zzgeuVar instanceof zzggw)) || ((zzghoVar.equals(zzgho.zzb) && (zzgeuVar instanceof zzgir)) || ((zzghoVar.equals(zzgho.zzd) && (zzgeuVar instanceof zzgfk)) || ((zzghoVar.equals(zzgho.zze) && (zzgeuVar instanceof zzgfu)) || (zzghoVar.equals(zzgho.zzf) && (zzgeuVar instanceof zzggq))))))) {
            return new zzghr(this.zza, this.zzb, this.zzc, this.zzd, null);
        }
        throw new GeneralSecurityException(V1.m2499else("Cannot use parsing strategy ", this.zzc.toString(), " when new keys are picked according to ", String.valueOf(this.zzd), "."));
    }
}
