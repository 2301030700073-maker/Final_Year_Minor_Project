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
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdmp {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfgn zzc;
    private final zzdlv zzd;
    private final zzdlq zze;
    private final zzdnd zzf;
    private final zzdnl zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzbhx zzj;
    private final zzdln zzk;

    public zzdmp(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfgn zzfgnVar, zzdlv zzdlvVar, zzdlq zzdlqVar, zzdnd zzdndVar, zzdnl zzdnlVar, Executor executor, Executor executor2, zzdln zzdlnVar) {
        this.zzb = zzgVar;
        this.zzc = zzfgnVar;
        this.zzj = zzfgnVar.zzj;
        this.zzd = zzdlvVar;
        this.zze = zzdlqVar;
        this.zzf = zzdndVar;
        this.zzg = zzdnlVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdlnVar;
    }

    private final boolean zzi(ViewGroup viewGroup, boolean z) {
        View zzJ = z ? this.zze.zzJ() : this.zze.zzK();
        if (zzJ == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzJ.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzJ.getParent()).removeView(zzJ);
        }
        viewGroup.addView(zzJ, ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzes)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final void zza(final zzdnn zzdnnVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmo
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdmp.this.zzf(zzdnnVar);
            }
        });
    }

    public final void zzb(zzdnn zzdnnVar) {
        zzdnd zzdndVar;
        if (zzdnnVar == null || (zzdndVar = this.zzf) == null || zzdnnVar.zzdF() == null || !this.zzd.zzb()) {
            return;
        }
        try {
            zzdnnVar.zzdF().addView(zzdndVar.zza());
        } catch (zzchn e) {
            com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
        }
    }

    public final void zzc(zzdnn zzdnnVar) {
        if (zzdnnVar == null) {
            return;
        }
        Context context = zzdnnVar.zzdJ().getContext();
        if (com.google.android.gms.ads.internal.util.zzbs.zzi(context, this.zzd.zza)) {
            if (!(context instanceof Activity)) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Activity context is needed for policy validator.");
                return;
            }
            zzdnl zzdnlVar = this.zzg;
            if (zzdnlVar == null || zzdnnVar.zzdF() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(zzdnlVar.zza(zzdnnVar.zzdF(), windowManager), com.google.android.gms.ads.internal.util.zzbs.zzk());
            } catch (zzchn e) {
                com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
            }
        }
    }

    public final boolean zzd(ViewGroup viewGroup) {
        return zzi(viewGroup, true);
    }

    public final boolean zze(ViewGroup viewGroup) {
        return zzi(viewGroup, false);
    }

    final /* synthetic */ void zzf(zzdnn zzdnnVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        zzbif zza2;
        Drawable drawable;
        zzdlv zzdlvVar = this.zzd;
        if (zzdlvVar.zze() || zzdlvVar.zzc()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
            for (int i = 0; i < 2; i++) {
                View zzm = zzdnnVar.zzm(strArr[i]);
                if (zzm instanceof ViewGroup) {
                    viewGroup = (ViewGroup) zzm;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = zzdnnVar.zzdJ().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        zzdlq zzdlqVar = this.zze;
        if (zzdlqVar.zzA() != null) {
            view = zzdlqVar.zzA();
            zzbhx zzbhxVar = this.zzj;
            if (zzbhxVar != null && viewGroup == null) {
                zzh(layoutParams, zzbhxVar.zze);
                view.setLayoutParams(layoutParams);
                viewGroup = null;
            }
        } else if (zzdlqVar.zzz() instanceof zzbhq) {
            zzbhq zzbhqVar = (zzbhq) zzdlqVar.zzz();
            if (viewGroup == null) {
                zzh(layoutParams, zzbhqVar.zzi());
                viewGroup = null;
            }
            View zzbhrVar = new zzbhr(context, zzbhqVar, layoutParams);
            zzbhrVar.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeq));
            view = zzbhrVar;
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
                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(zzdnnVar.zzdJ().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(view);
                FrameLayout zzdF = zzdnnVar.zzdF();
                if (zzdF != null) {
                    zzdF.addView(zzaVar);
                }
            }
            zzdnnVar.zzi(zzdnnVar.zzn(), view, true);
        }
        zzgpe zzgpeVar = zzdml.zza;
        int size = zzgpeVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View zzm2 = zzdnnVar.zzm((String) zzgpeVar.get(i2));
            i2++;
            if (zzm2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzm2;
                break;
            }
        }
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmn
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdmp.this.zzg(viewGroup2);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (zzi(viewGroup2, true)) {
            if (zzdlqVar.zzT() != null) {
                zzdlqVar.zzT().zzaq(new zzdmm(zzdnnVar, viewGroup2));
                return;
            }
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzla)).booleanValue() && zzi(viewGroup2, false)) {
            if (zzdlqVar.zzU() != null) {
                zzdlqVar.zzU().zzaq(new zzdmm(zzdnnVar, viewGroup2));
                return;
            }
            return;
        }
        viewGroup2.removeAllViews();
        View zzdJ = zzdnnVar.zzdJ();
        Context context2 = zzdJ != null ? zzdJ.getContext() : null;
        if (context2 == null || (zza2 = this.zzk.zza()) == null) {
            return;
        }
        try {
            IObjectWrapper zzg = zza2.zzg();
            if (zzg == null || (drawable = (Drawable) ObjectWrapper.unwrap(zzg)) == null) {
                return;
            }
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            IObjectWrapper zzo = zzdnnVar.zzo();
            if (zzo == null || !((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgK)).booleanValue()) {
                imageView.setScaleType(zza);
            } else {
                imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzo));
            }
            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            viewGroup2.addView(imageView);
        } catch (RemoteException unused) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not get main image drawable");
        }
    }

    final /* synthetic */ void zzg(ViewGroup viewGroup) {
        zzdlq zzdlqVar = this.zze;
        if (zzdlqVar.zzJ() != null) {
            boolean z = viewGroup != null;
            if (zzdlqVar.zzx() == 2 || zzdlqVar.zzx() == 1) {
                this.zzb.zzr(this.zzc.zzg, String.valueOf(zzdlqVar.zzx()), z);
            } else if (zzdlqVar.zzx() == 6) {
                com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzb;
                String str = this.zzc.zzg;
                zzgVar.zzr(str, ExifInterface.GPS_MEASUREMENT_2D, z);
                zzgVar.zzr(str, "1", z);
            }
        }
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
}
