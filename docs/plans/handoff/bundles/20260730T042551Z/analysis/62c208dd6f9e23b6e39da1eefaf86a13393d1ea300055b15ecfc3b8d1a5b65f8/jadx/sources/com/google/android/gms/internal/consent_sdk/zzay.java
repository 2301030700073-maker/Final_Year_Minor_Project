package com.google.android.gms.internal.consent_sdk;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C2865hM;
import defpackage.HJ;
import defpackage.IJ;
import defpackage.InterfaceC3690sa;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzay implements InterfaceC3690sa {
    private final Application zzb;
    private final zzbt zzc;
    private final zzam zzd;
    private final zzbm zze;
    private final zzdp zzf;
    private Dialog zzg;
    private zzbr zzh;
    private final AtomicBoolean zzi = new AtomicBoolean();
    private final AtomicReference zzj = new AtomicReference();
    private final AtomicReference zzk = new AtomicReference();
    private final AtomicReference zzl = new AtomicReference();
    boolean zza = false;

    public zzay(Application application, zzab zzabVar, zzbt zzbtVar, zzam zzamVar, zzbm zzbmVar, zzdp zzdpVar) {
        this.zzb = application;
        this.zzc = zzbtVar;
        this.zzd = zzamVar;
        this.zze = zzbmVar;
        this.zzf = zzdpVar;
    }

    private final void zzk() {
        Dialog dialog = this.zzg;
        if (dialog != null) {
            dialog.dismiss();
            this.zzg = null;
        }
        this.zzc.zza(null);
        zzav zzavVar = (zzav) this.zzl.getAndSet(null);
        if (zzavVar != null) {
            zzavVar.zzb();
        }
    }

    @Override // defpackage.InterfaceC3690sa
    public final void show(Activity activity, InterfaceC3690sa.Cdo cdo) {
        zzco.zza();
        if (!this.zzi.compareAndSet(false, true)) {
            new zzg(3, true != this.zza ? "ConsentForm#show can only be invoked once." : "Privacy options form is being loading. Please try again later.").zza();
            cdo.mo503do();
            return;
        }
        this.zzh.zzc();
        zzav zzavVar = new zzav(this, activity);
        this.zzb.registerActivityLifecycleCallbacks(zzavVar);
        this.zzl.set(zzavVar);
        this.zzc.zza(activity);
        Dialog dialog = new Dialog(activity, R.style.Theme.Translucent.NoTitleBar);
        dialog.setContentView(this.zzh);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            new zzg(3, "Activity with null windows is passed in.").zza();
            cdo.mo503do();
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setFlags(16777216, 16777216);
        C2865hM.m6792do(window, false);
        this.zzk.set(cdo);
        dialog.show();
        this.zzg = dialog;
        this.zzh.zzd("UMP_messagePresented", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final zzbr zzc() {
        return this.zzh;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzf(IJ ij, HJ hj) {
        zzbr zza = ((zzbs) this.zzf).zza();
        this.zzh = zza;
        zza.setBackgroundColor(0);
        zza.getSettings().setJavaScriptEnabled(true);
        zza.setWebViewClient(new zzbp(zza, null));
        this.zzj.set(new zzaw(ij, hj, 0 == true ? 1 : 0));
        zzbr zzbrVar = this.zzh;
        zzbm zzbmVar = this.zze;
        zzbrVar.loadDataWithBaseURL(zzbmVar.zza(), zzbmVar.zzb(), "text/html", "UTF-8", null);
        zzco.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzau
            @Override // java.lang.Runnable
            public final void run() {
                zzay.this.zzj(new zzg(4, "Web view timed out."));
            }
        }, 10000L);
    }

    public final void zzg(int i) {
        zzk();
        InterfaceC3690sa.Cdo cdo = (InterfaceC3690sa.Cdo) this.zzk.getAndSet(null);
        if (cdo == null) {
            return;
        }
        this.zzd.zzg(3);
        cdo.mo503do();
    }

    public final void zzh(zzg zzgVar) {
        zzk();
        InterfaceC3690sa.Cdo cdo = (InterfaceC3690sa.Cdo) this.zzk.getAndSet(null);
        if (cdo == null) {
            return;
        }
        zzgVar.zza();
        cdo.mo503do();
    }

    public final void zzi() {
        zzaw zzawVar = (zzaw) this.zzj.getAndSet(null);
        if (zzawVar == null) {
            return;
        }
        zzawVar.onConsentFormLoadSuccess(this);
    }

    public final void zzj(zzg zzgVar) {
        zzaw zzawVar = (zzaw) this.zzj.getAndSet(null);
        if (zzawVar == null) {
            return;
        }
        zzawVar.onConsentFormLoadFailure(zzgVar.zza());
    }
}
