package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.formats.NativeAd;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdjf {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfcj zzc;
    private final zzdik zzd;
    private final zzdif zze;
    private final zzdjt zzf;
    private final zzdkb zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzbfl zzj;
    private final zzdic zzk;

    public zzdjf(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfcj zzfcjVar, zzdik zzdikVar, zzdif zzdifVar, zzdjt zzdjtVar, zzdkb zzdkbVar, Executor executor, Executor executor2, zzdic zzdicVar) {
        this.zzb = zzgVar;
        this.zzc = zzfcjVar;
        this.zzj = zzfcjVar.zzi;
        this.zzd = zzdikVar;
        this.zze = zzdifVar;
        this.zzf = zzdjtVar;
        this.zzg = zzdkbVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdicVar;
    }

    private static void zzh(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    private final boolean zzi(ViewGroup viewGroup, boolean z) {
        View zzf = z ? this.zze.zzf() : this.zze.zzg();
        if (zzf == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzf.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzf.getParent()).removeView(zzf);
        }
        viewGroup.addView(zzf, ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdV)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final /* synthetic */ void zza(ViewGroup viewGroup) {
        zzdif zzdifVar = this.zze;
        if (zzdifVar.zzf() != null) {
            boolean z = viewGroup != null;
            if (zzdifVar.zzc() == 2 || zzdifVar.zzc() == 1) {
                this.zzb.zzF(this.zzc.zzf, String.valueOf(zzdifVar.zzc()), z);
            } else if (zzdifVar.zzc() == 6) {
                this.zzb.zzF(this.zzc.zzf, "2", z);
                this.zzb.zzF(this.zzc.zzf, AppEventsConstants.EVENT_PARAM_VALUE_YES, z);
            }
        }
    }

    public final /* synthetic */ void zzb(zzdkd zzdkdVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        zzbft zza2;
        Drawable drawable;
        if (this.zzd.zzf() || this.zzd.zze()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
            for (int i = 0; i < 2; i++) {
                View zzg = zzdkdVar.zzg(strArr[i]);
                if (zzg != null && (zzg instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzg;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = zzdkdVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        zzdif zzdifVar = this.zze;
        if (zzdifVar.zze() != null) {
            zzbfl zzbflVar = this.zzj;
            view = zzdifVar.zze();
            if (zzbflVar != null && viewGroup == null) {
                zzh(layoutParams, zzbflVar.zze);
                view.setLayoutParams(layoutParams);
                viewGroup = null;
            }
        } else if (zzdifVar.zzl() instanceof zzbfg) {
            zzbfg zzbfgVar = (zzbfg) zzdifVar.zzl();
            if (viewGroup == null) {
                zzh(layoutParams, zzbfgVar.zzc());
                viewGroup = null;
            }
            View zzbfhVar = new zzbfh(context, zzbfgVar, layoutParams);
            zzbfhVar.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdT));
            view = zzbfhVar;
        } else {
            view = null;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(zzdkdVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(view);
                FrameLayout zzh = zzdkdVar.zzh();
                if (zzh != null) {
                    zzh.addView(zzaVar);
                }
            }
            zzdkdVar.zzq(zzdkdVar.zzk(), view, true);
        }
        zzfxn zzfxnVar = zzdjb.zza;
        int size = zzfxnVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View zzg2 = zzdkdVar.zzg((String) zzfxnVar.get(i2));
            i2++;
            if (zzg2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzg2;
                break;
            }
        }
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjc
            @Override // java.lang.Runnable
            public final void run() {
                zzdjf.this.zza(viewGroup2);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (zzi(viewGroup2, true)) {
            zzdif zzdifVar2 = this.zze;
            if (zzdifVar2.zzs() != null) {
                zzdifVar2.zzs().zzar(new zzdje(zzdkdVar, viewGroup2));
                return;
            }
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjS)).booleanValue() && zzi(viewGroup2, false)) {
            zzdif zzdifVar3 = this.zze;
            if (zzdifVar3.zzq() != null) {
                zzdifVar3.zzq().zzar(new zzdje(zzdkdVar, viewGroup2));
                return;
            }
            return;
        }
        viewGroup2.removeAllViews();
        View zzf = zzdkdVar.zzf();
        Context context2 = zzf != null ? zzf.getContext() : null;
        if (context2 == null || (zza2 = this.zzk.zza()) == null) {
            return;
        }
        try {
            InterfaceC0456Qm zzi = zza2.zzi();
            if (zzi == null || (drawable = (Drawable) BinderC3652rv.o(zzi)) == null) {
                return;
            }
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            InterfaceC0456Qm zzj = zzdkdVar.zzj();
            if (zzj != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzga)).booleanValue()) {
                    imageView.setScaleType((ImageView.ScaleType) BinderC3652rv.o(zzj));
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                }
            }
            imageView.setScaleType(zza);
            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            viewGroup2.addView(imageView);
        } catch (RemoteException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not get main image drawable");
        }
    }

    public final void zzc(zzdkd zzdkdVar) {
        if (zzdkdVar == null || this.zzf == null || zzdkdVar.zzh() == null || !this.zzd.zzg()) {
            return;
        }
        try {
            zzdkdVar.zzh().addView(this.zzf.zza());
        } catch (zzcfj e) {
            com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
        }
    }

    public final void zzd(zzdkd zzdkdVar) {
        if (zzdkdVar == null) {
            return;
        }
        Context context = zzdkdVar.zzf().getContext();
        if (com.google.android.gms.ads.internal.util.zzbv.zzh(context, this.zzd.zza)) {
            if (!(context instanceof Activity)) {
                com.google.android.gms.ads.internal.util.client.zzo.zze("Activity context is needed for policy validator.");
                return;
            }
            if (this.zzg == null || zzdkdVar.zzh() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.zzg.zza(zzdkdVar.zzh(), windowManager), com.google.android.gms.ads.internal.util.zzbv.zzb());
            } catch (zzcfj e) {
                com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
            }
        }
    }

    public final void zze(final zzdkd zzdkdVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjd
            @Override // java.lang.Runnable
            public final void run() {
                zzdjf.this.zzb(zzdkdVar);
            }
        });
    }

    public final boolean zzf(ViewGroup viewGroup) {
        return zzi(viewGroup, false);
    }

    public final boolean zzg(ViewGroup viewGroup) {
        return zzi(viewGroup, true);
    }
}
