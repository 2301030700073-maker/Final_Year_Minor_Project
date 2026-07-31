package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeql implements zzeya {
    private final zzeya zza;
    private final zzfgn zzb;
    private final Context zzc;
    private final zzcbj zzd;

    zzeql(zzeso zzesoVar, zzfgn zzfgnVar, Context context, zzcbj zzcbjVar) {
        this.zza = zzesoVar;
        this.zzb = zzfgnVar;
        this.zzc = context;
        this.zzd = zzcbjVar;
    }

    private final Insets zzd(float f) {
        Window window;
        View decorView;
        WindowInsetsCompat rootWindowInsets;
        if (f == 0.0f) {
            return Insets.NONE;
        }
        Insets insets = Insets.NONE;
        if (Build.VERSION.SDK_INT >= 30) {
            WindowManager windowManager = (WindowManager) this.zzc.getSystemService("window");
            if (windowManager != null) {
                insets = Insets.toCompatInsets(windowManager.getCurrentWindowMetrics().getWindowInsets().getInsets(WindowInsets.Type.statusBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.navigationBars() | WindowInsets.Type.captionBar()));
            }
        } else {
            Activity zzd = com.google.android.gms.ads.internal.zzt.zzg().zzd();
            if (zzd != null && (window = zzd.getWindow()) != null && (decorView = window.getDecorView()) != null && (rootWindowInsets = ViewCompat.getRootWindowInsets(decorView)) != null) {
                insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
            }
        }
        return Insets.of((int) Math.ceil(insets.left / f), (int) Math.ceil(insets.top / f), (int) Math.ceil(insets.right / f), (int) Math.ceil(insets.bottom / f));
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return zzgui.zzk(this.zza.zza(), new zzglu() { // from class: com.google.android.gms.internal.ads.zzeqk
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                return zzeql.this.zzc((zzeyj) obj);
            }
        }, zzcbv.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 7;
    }

    final /* synthetic */ zzeqm zzc(zzeyj zzeyjVar) {
        String str;
        boolean z;
        int i;
        String str2;
        float f;
        int i2;
        Insets insets;
        int i3;
        int i4;
        int i5;
        WindowManager windowManager;
        int i6;
        int i7;
        DisplayMetrics displayMetrics;
        zzfgn zzfgnVar = this.zzb;
        com.google.android.gms.ads.internal.client.zzr zzrVar = zzfgnVar.zzf;
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr != null) {
            boolean z2 = false;
            boolean z3 = false;
            str = null;
            z = false;
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                boolean z4 = zzrVar2.zzi;
                if (!z4 && !z2) {
                    str = zzrVar2.zza;
                    z2 = true;
                }
                if (z4) {
                    if (z3) {
                        z3 = true;
                    } else {
                        z3 = true;
                        z = true;
                    }
                }
                if (z2 && z3) {
                    break;
                }
            }
        } else {
            str = zzrVar.zza;
            z = zzrVar.zzi;
        }
        Context context = this.zzc;
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            i = 0;
            str2 = null;
            f = 0.0f;
            i2 = 0;
        } else {
            zzcbj zzcbjVar = this.zzd;
            f = displayMetrics.density;
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
            str2 = zzcbjVar.zzo().zzu();
        }
        Insets zzd = (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzop)).booleanValue() || Build.VERSION.SDK_INT < 35) ? null : zzd(f);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoq)).booleanValue() || Build.VERSION.SDK_INT > 34 || Build.VERSION.SDK_INT < 28 || (windowManager = (WindowManager) context.getSystemService("window")) == null) {
            insets = zzd;
            int i8 = i2;
            i3 = i;
            i4 = i8;
        } else {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                i6 = currentWindowMetrics.getBounds().width();
                i7 = currentWindowMetrics.getBounds().height();
            } else {
                Point point = new Point();
                windowManager.getDefaultDisplay().getRealSize(point);
                i6 = point.x;
                i7 = point.y;
            }
            i3 = i7;
            i4 = i6;
            insets = zzd(f);
        }
        StringBuilder sb = new StringBuilder();
        if (zzrVarArr != null) {
            boolean z5 = false;
            for (com.google.android.gms.ads.internal.client.zzr zzrVar3 : zzrVarArr) {
                if (zzrVar3.zzi) {
                    z5 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i9 = zzrVar3.zze;
                    if (i9 == -1) {
                        i9 = f != 0.0f ? (int) (zzrVar3.zzf / f) : -1;
                    }
                    sb.append(i9);
                    sb.append("x");
                    int i10 = zzrVar3.zzb;
                    if (i10 == -2) {
                        i10 = f != 0.0f ? (int) (zzrVar3.zzc / f) : -2;
                    }
                    sb.append(i10);
                }
            }
            if (z5) {
                if (sb.length() != 0) {
                    i5 = 0;
                    sb.insert(0, "|");
                } else {
                    i5 = 0;
                }
                sb.insert(i5, "320x50");
            }
        }
        return new zzeqm(zzrVar, str, z, sb.toString(), f, i4, i3, str2, zzfgnVar.zzr, insets);
    }
}
