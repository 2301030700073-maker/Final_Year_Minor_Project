package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import defpackage.C3817uj;
import defpackage.HJ;
import defpackage.IJ;
import defpackage.InterfaceC3690sa;
import defpackage.InterfaceC3749ta;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzbk {
    private final zzdp zza;
    private final Executor zzb;
    private final AtomicReference zzc = new AtomicReference();
    private final AtomicReference zzd = new AtomicReference();

    public zzbk(zzdp zzdpVar, Executor executor) {
        this.zza = zzdpVar;
        this.zzb = executor;
    }

    public final /* synthetic */ void zza(zzay zzayVar) {
        final AtomicReference atomicReference = this.zzd;
        Objects.requireNonNull(atomicReference);
        zzayVar.zzf(new IJ() { // from class: com.google.android.gms.internal.consent_sdk.zzbb
            @Override // defpackage.IJ
            public final void onConsentFormLoadSuccess(InterfaceC3690sa interfaceC3690sa) {
                atomicReference.set(interfaceC3690sa);
            }
        }, new HJ() { // from class: com.google.android.gms.internal.consent_sdk.zzbc
            @Override // defpackage.HJ
            public final void onConsentFormLoadFailure(C3817uj c3817uj) {
                "Failed to load and cache a form, error=".concat(String.valueOf(c3817uj.f15946do));
            }
        });
    }

    public final void zzb(IJ ij, HJ hj) {
        zzco.zza();
        zzbm zzbmVar = (zzbm) this.zzc.get();
        if (zzbmVar == null) {
            hj.onConsentFormLoadFailure(new zzg(3, "No available form can be built.").zza());
        } else {
            ((zzas) this.zza.zza()).zza(zzbmVar).zzb().zza().zzf(ij, hj);
        }
    }

    public final void zzc() {
        zzbm zzbmVar = (zzbm) this.zzc.get();
        if (zzbmVar == null) {
            return;
        }
        final zzay zza = ((zzas) this.zza.zza()).zza(zzbmVar).zzb().zza();
        zza.zza = true;
        zzco.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzba
            @Override // java.lang.Runnable
            public final void run() {
                zzbk.this.zza(zza);
            }
        });
    }

    public final void zzd(zzbm zzbmVar) {
        this.zzc.set(zzbmVar);
    }

    public final void zze(Activity activity, final InterfaceC3690sa.Cdo cdo) {
        zzco.zza();
        zzj zzb = zza.zza(activity).zzb();
        if (zzb == null) {
            zzco.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbd
                @Override // java.lang.Runnable
                public final void run() {
                    new zzg(1, "No consentInformation.").zza();
                    InterfaceC3690sa.Cdo.this.mo503do();
                }
            });
            return;
        }
        boolean isConsentFormAvailable = zzb.isConsentFormAvailable();
        InterfaceC3749ta.Cfor cfor = InterfaceC3749ta.Cfor.NOT_REQUIRED;
        if (!isConsentFormAvailable && zzb.getPrivacyOptionsRequirementStatus() != cfor) {
            zzco.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbe
                @Override // java.lang.Runnable
                public final void run() {
                    new zzg(3, "No valid response received yet.").zza();
                    InterfaceC3690sa.Cdo.this.mo503do();
                }
            });
            zzb.zza(activity);
        } else {
            if (zzb.getPrivacyOptionsRequirementStatus() == cfor) {
                zzco.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbf
                    @Override // java.lang.Runnable
                    public final void run() {
                        new zzg(3, "Privacy options form is not required.").zza();
                        InterfaceC3690sa.Cdo.this.mo503do();
                    }
                });
                return;
            }
            InterfaceC3690sa interfaceC3690sa = (InterfaceC3690sa) this.zzd.get();
            if (interfaceC3690sa == null) {
                zzco.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbg
                    @Override // java.lang.Runnable
                    public final void run() {
                        new zzg(3, "Privacy options form is being loading. Please try again later.").zza();
                        InterfaceC3690sa.Cdo.this.mo503do();
                    }
                });
            } else {
                interfaceC3690sa.show(activity, cdo);
                this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbh
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbk.this.zzc();
                    }
                });
            }
        }
    }

    public final boolean zzf() {
        return this.zzc.get() != null;
    }
}
