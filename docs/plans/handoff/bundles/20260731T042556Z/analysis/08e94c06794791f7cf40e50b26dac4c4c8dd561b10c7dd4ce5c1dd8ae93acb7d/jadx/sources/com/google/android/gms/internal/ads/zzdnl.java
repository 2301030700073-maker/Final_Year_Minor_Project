package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.exifinterface.media.ExifInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdnl {
    private final zzdse zza;
    private final zzdqt zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdnl(zzdse zzdseVar, zzdqt zzdqtVar) {
        this.zza = zzdseVar;
        this.zzb = zzdqtVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzbb.zza();
        return com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
    }

    public final View zza(final View view, final WindowManager windowManager) throws zzchn {
        zzcgy zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzr.zzb(), null, null);
        zza.zzE().setVisibility(4);
        zza.zzE().setContentDescription("policy_validator");
        zza.zzab("/sendMessageToSdk", new zzblx() { // from class: com.google.android.gms.internal.ads.zzdnk
            @Override // com.google.android.gms.internal.ads.zzblx
            public final /* synthetic */ void zza(Object obj, Map map) {
                zzdnl.this.zzb((zzcgy) obj, map);
            }
        });
        zza.zzab("/hideValidatorOverlay", new zzblx() { // from class: com.google.android.gms.internal.ads.zzdnf
            @Override // com.google.android.gms.internal.ads.zzblx
            public final /* synthetic */ void zza(Object obj, Map map) {
                zzdnl.this.zzc(windowManager, view, (zzcgy) obj, map);
            }
        });
        zza.zzab("/open", new zzbmk(null, null, null, null, null, null));
        WeakReference weakReference = new WeakReference(zza);
        zzblx zzblxVar = new zzblx() { // from class: com.google.android.gms.internal.ads.zzdng
            @Override // com.google.android.gms.internal.ads.zzblx
            public final /* synthetic */ void zza(Object obj, Map map) {
                zzdnl.this.zzd(view, windowManager, (zzcgy) obj, map);
            }
        };
        zzdqt zzdqtVar = this.zzb;
        zzdqtVar.zzh(weakReference, "/loadNativeAdPolicyViolations", zzblxVar);
        zzdqtVar.zzh(new WeakReference(zza), "/showValidatorOverlay", zzdnh.zza);
        return zza.zzE();
    }

    final /* synthetic */ void zzb(zzcgy zzcgyVar, Map map) {
        this.zzb.zzf("sendMessageToNativeJs", map);
    }

    final /* synthetic */ void zzc(WindowManager windowManager, View view, zzcgy zzcgyVar, Map map) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Hide native ad policy validator overlay.");
        zzcgyVar.zzE().setVisibility(8);
        if (zzcgyVar.zzE().getWindowToken() != null) {
            windowManager.removeView(zzcgyVar.zzE());
        }
        zzcgyVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzc);
    }

    final /* synthetic */ void zzd(final View view, final WindowManager windowManager, final zzcgy zzcgyVar, final Map map) {
        zzcgyVar.zzP().zzG(new zzciu() { // from class: com.google.android.gms.internal.ads.zzdnj
            @Override // com.google.android.gms.internal.ads.zzciu
            public final /* synthetic */ void zza(boolean z, int i, String str, String str2) {
                zzdnl.this.zze(map, z, i, str, str2);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int zzf = zzf(context, (String) map.get("validator_width"), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziV)).intValue());
        int zzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziW)).intValue());
        int zzf3 = zzf(context, (String) map.get("validator_x"), 0);
        int zzf4 = zzf(context, (String) map.get("validator_y"), 0);
        zzcgyVar.zzaf(zzcji.zzc(zzf, zzf2));
        try {
            zzcgyVar.zzD().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziX)).booleanValue());
            zzcgyVar.zzD().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziY)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams zzk = com.google.android.gms.ads.internal.util.zzbs.zzk();
        zzk.x = zzf3;
        zzk.y = zzf4;
        windowManager.updateViewLayout(zzcgyVar.zzE(), zzk);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            final int i = (("1".equals(str) || ExifInterface.GPS_MEASUREMENT_2D.equals(str)) ? rect.bottom : rect.top) - zzf4;
            this.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdni
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final /* synthetic */ void onScrollChanged() {
                    Rect rect2 = new Rect();
                    if (view.getGlobalVisibleRect(rect2)) {
                        zzcgy zzcgyVar2 = zzcgyVar;
                        if (zzcgyVar2.zzE().getWindowToken() == null) {
                            return;
                        }
                        int i2 = i;
                        WindowManager.LayoutParams layoutParams = zzk;
                        String str2 = str;
                        if ("1".equals(str2) || ExifInterface.GPS_MEASUREMENT_2D.equals(str2)) {
                            layoutParams.y = rect2.bottom - i2;
                        } else {
                            layoutParams.y = rect2.top - i2;
                        }
                        windowManager.updateViewLayout(zzcgyVar2.zzE(), layoutParams);
                    }
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.zzc);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        zzcgyVar.loadUrl(str2);
    }

    final /* synthetic */ void zze(Map map, boolean z, int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzb.zzf("sendMessageToNativeJs", hashMap);
    }
}
