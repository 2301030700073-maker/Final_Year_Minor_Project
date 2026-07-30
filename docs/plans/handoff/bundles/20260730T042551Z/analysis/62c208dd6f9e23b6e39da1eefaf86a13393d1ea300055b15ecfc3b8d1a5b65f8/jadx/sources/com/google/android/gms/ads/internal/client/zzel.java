package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.internal.ads.zzayy;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbpa;
import defpackage.BinderC3652rv;
import defpackage.C3212kP;
import defpackage.C3389nP;
import defpackage.DR;
import defpackage.InterfaceC0456Qm;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzel {

    /* renamed from: do, reason: not valid java name */
    public final int f9630do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DR f9631do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewGroup f9632do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AdListener f9633do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnPaidEventListener f9634do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VideoController f9635do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VideoOptions f9636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppEventListener f9637do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zza f9638do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzby f9639do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzr f9640do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbpa f9641do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9642do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f9643do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9644do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AdSize[] f9645do;

    public zzel(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzr.zza, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public static zzs m5545do(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return new zzs("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
            }
        }
        zzs zzsVar = new zzs(context, adSizeArr);
        zzsVar.zzj = i == 1;
        return zzsVar;
    }

    public final boolean zzA() {
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                return zzbyVar.zzY();
            }
            return false;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean zzB() {
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                return zzbyVar.zzZ();
            }
            return false;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final AdSize[] zzC() {
        return this.f9645do;
    }

    public final AdListener zza() {
        return this.f9633do;
    }

    public final AdSize zzb() {
        zzs zzg;
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null && (zzg = zzbyVar.zzg()) != null) {
                return com.google.android.gms.ads.zzc.zzc(zzg.zze, zzg.zzb, zzg.zza);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.f9645do;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final OnPaidEventListener zzc() {
        return this.f9634do;
    }

    public final ResponseInfo zzd() {
        zzdy zzdyVar = null;
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzdyVar = zzbyVar.zzk();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzdyVar);
    }

    public final VideoController zzf() {
        return this.f9635do;
    }

    public final VideoOptions zzg() {
        return this.f9636do;
    }

    public final AppEventListener zzh() {
        return this.f9637do;
    }

    public final zzeb zzi() {
        zzby zzbyVar = this.f9639do;
        if (zzbyVar != null) {
            try {
                return zzbyVar.zzl();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        return null;
    }

    public final String zzj() {
        zzby zzbyVar;
        if (this.f9642do == null && (zzbyVar = this.f9639do) != null) {
            try {
                this.f9642do = zzbyVar.zzr();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        return this.f9642do;
    }

    public final void zzk() {
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzx();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzm(zzei zzeiVar) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            zzby zzbyVar = this.f9639do;
            ViewGroup viewGroup = this.f9632do;
            if (zzbyVar == null) {
                if (this.f9645do == null || this.f9642do == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = viewGroup.getContext();
                zzs m5545do = m5545do(context, this.f9645do, this.f9630do);
                zzby zzbyVar2 = "search_v2".equals(m5545do.zza) ? (zzby) new C3389nP(zzbc.zza(), context, m5545do, this.f9642do).m7098new(context, false) : (zzby) new C3212kP(zzbc.zza(), context, m5545do, this.f9642do, this.f9641do).m7098new(context, false);
                this.f9639do = zzbyVar2;
                zzbyVar2.zzD(new zzg(this.f9631do));
                zza zzaVar = this.f9638do;
                if (zzaVar != null) {
                    this.f9639do.zzC(new zzb(zzaVar));
                }
                AppEventListener appEventListener = this.f9637do;
                if (appEventListener != null) {
                    this.f9639do.zzG(new zzayy(appEventListener));
                }
                if (this.f9636do != null) {
                    this.f9639do.zzU(new zzga(this.f9636do));
                }
                this.f9639do.zzP(new zzfs(this.f9634do));
                this.f9639do.zzN(this.f9644do);
                zzby zzbyVar3 = this.f9639do;
                if (zzbyVar3 != null) {
                    try {
                        final InterfaceC0456Qm zzn = zzbyVar3.zzn();
                        if (zzn != null) {
                            if (((Boolean) zzbej.zzf.zze()).booleanValue()) {
                                if (((Boolean) zzbe.zzc().zza(zzbcl.zzla)).booleanValue()) {
                                    com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzej
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            zzel zzelVar = zzel.this;
                                            InterfaceC0456Qm interfaceC0456Qm = zzn;
                                            zzelVar.getClass();
                                            zzelVar.f9632do.addView((View) BinderC3652rv.o(interfaceC0456Qm));
                                        }
                                    });
                                }
                            }
                            viewGroup.addView((View) BinderC3652rv.o(zzn));
                        }
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
            if (zzeiVar != null) {
                zzeiVar.zzq(currentTimeMillis);
            }
            zzby zzbyVar4 = this.f9639do;
            zzbyVar4.getClass();
            zzbyVar4.zzab(this.f9640do.zza(viewGroup.getContext(), zzeiVar));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzn() {
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzz();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzo() {
        if (this.f9643do.getAndSet(true)) {
            return;
        }
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzA();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzp() {
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzB();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzq(zza zzaVar) {
        try {
            this.f9638do = zzaVar;
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzC(zzaVar != null ? new zzb(zzaVar) : null);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzr(AdListener adListener) {
        this.f9633do = adListener;
        this.f9631do.zza(adListener);
    }

    public final void zzs(AdSize... adSizeArr) {
        if (this.f9645do != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zzt(adSizeArr);
    }

    public final void zzt(AdSize... adSizeArr) {
        ViewGroup viewGroup = this.f9632do;
        this.f9645do = adSizeArr;
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzF(m5545do(viewGroup.getContext(), this.f9645do, this.f9630do));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        viewGroup.requestLayout();
    }

    public final void zzu(String str) {
        if (this.f9642do != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.f9642do = str;
    }

    public final void zzv(AppEventListener appEventListener) {
        try {
            this.f9637do = appEventListener;
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzG(appEventListener != null ? new zzayy(appEventListener) : null);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzw(boolean z) {
        this.f9644do = z;
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzN(z);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzx(OnPaidEventListener onPaidEventListener) {
        try {
            this.f9634do = onPaidEventListener;
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzP(new zzfs(onPaidEventListener));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzy(VideoOptions videoOptions) {
        this.f9636do = videoOptions;
        try {
            zzby zzbyVar = this.f9639do;
            if (zzbyVar != null) {
                zzbyVar.zzU(videoOptions == null ? null : new zzga(videoOptions));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final boolean zzz(zzby zzbyVar) {
        try {
            InterfaceC0456Qm zzn = zzbyVar.zzn();
            if (zzn == null || ((View) BinderC3652rv.o(zzn)).getParent() != null) {
                return false;
            }
            this.f9632do.addView((View) BinderC3652rv.o(zzn));
            this.f9639do = zzbyVar;
            return true;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public zzel(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzr.zza, i);
    }

    public zzel(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzr.zza, 0);
    }

    public zzel(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzr.zza, i);
    }

    public zzel(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzr zzrVar, int i) {
        zzs zzsVar;
        this.f9641do = new zzbpa();
        this.f9635do = new VideoController();
        this.f9631do = new DR(this);
        this.f9632do = viewGroup;
        this.f9640do = zzrVar;
        this.f9639do = null;
        this.f9643do = new AtomicBoolean(false);
        this.f9630do = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzaa zzaaVar = new zzaa(context, attributeSet);
                this.f9645do = zzaaVar.zzb(z);
                this.f9642do = zzaaVar.zza();
                if (viewGroup.isInEditMode()) {
                    com.google.android.gms.ads.internal.util.client.zzf zzb = zzbc.zzb();
                    AdSize adSize = this.f9645do[0];
                    if (adSize.equals(AdSize.INVALID)) {
                        zzsVar = new zzs("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
                    } else {
                        zzs zzsVar2 = new zzs(context, adSize);
                        zzsVar2.zzj = i == 1;
                        zzsVar = zzsVar2;
                    }
                    zzb.zzm(viewGroup, zzsVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzbc.zzb().zzl(viewGroup, new zzs(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }
}
