package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.facebook.appevents.AppEventsConstants;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdkb {
    private final zzdow zza;
    private final zzdnl zzb;
    private ViewTreeObserver.OnScrollChangedListener zzc = null;

    public zzdkb(zzdow zzdowVar, zzdnl zzdnlVar) {
        this.zza = zzdowVar;
        this.zzb = zzdnlVar;
    }

    private static final int zzf(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        return com.google.android.gms.ads.internal.util.client.zzf.zzx(context, i);
    }

    public final View zza(final View view, final WindowManager windowManager) {
        zzcex zza = this.zza.zza(com.google.android.gms.ads.internal.client.zzs.zzc(), null, null);
        zza.zzF().setVisibility(4);
        zza.zzF().setContentDescription("policy_validator");
        zza.zzag("/sendMessageToSdk", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdjv
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                zzdkb.this.zzb((zzcex) obj, map);
            }
        });
        zza.zzag("/hideValidatorOverlay", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdjw
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                zzdkb.this.zzc(windowManager, view, (zzcex) obj, map);
            }
        });
        zza.zzag("/open", new zzbkb(null, null, null, null, null));
        this.zzb.zzm(new WeakReference(zza), "/loadNativeAdPolicyViolations", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdjx
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                zzdkb.this.zzd(view, windowManager, (zzcex) obj, map);
            }
        });
        this.zzb.zzm(new WeakReference(zza), "/showValidatorOverlay", new zzbjp() { // from class: com.google.android.gms.internal.ads.zzdjy
            @Override // com.google.android.gms.internal.ads.zzbjp
            public final void zza(Object obj, Map map) {
                com.google.android.gms.ads.internal.util.client.zzo.zze("Show native ad policy validator overlay.");
                ((zzcex) obj).zzF().setVisibility(0);
            }
        });
        return zza.zzF();
    }

    public final /* synthetic */ void zzb(zzcex zzcexVar, Map map) {
        this.zzb.zzj("sendMessageToNativeJs", map);
    }

    public final /* synthetic */ void zzc(WindowManager windowManager, View view, zzcex zzcexVar, Map map) {
        com.google.android.gms.ads.internal.util.client.zzo.zze("Hide native ad policy validator overlay.");
        zzcexVar.zzF().setVisibility(8);
        if (zzcexVar.zzF().getWindowToken() != null) {
            windowManager.removeView(zzcexVar.zzF());
        }
        zzcexVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.zzc == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.zzc);
    }

    public final /* synthetic */ void zzd(final View view, final WindowManager windowManager, final zzcex zzcexVar, final Map map) {
        zzcexVar.zzN().zzC(new zzcgn() { // from class: com.google.android.gms.internal.ads.zzdjz
            @Override // com.google.android.gms.internal.ads.zzcgn
            public final void zza(boolean z, int i, String str, String str2) {
                zzdkb.this.zze(map, z, i, str, str2);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int zzf = zzf(context, (String) map.get("validator_width"), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhV)).intValue());
        int zzf2 = zzf(context, (String) map.get("validator_height"), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhW)).intValue());
        int zzf3 = zzf(context, (String) map.get("validator_x"), 0);
        int zzf4 = zzf(context, (String) map.get("validator_y"), 0);
        zzcexVar.zzaj(zzcgr.zzb(zzf, zzf2));
        try {
            zzcexVar.zzG().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhX)).booleanValue());
            zzcexVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhY)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams zzb = com.google.android.gms.ads.internal.util.zzbv.zzb();
        zzb.x = zzf3;
        zzb.y = zzf4;
        windowManager.updateViewLayout(zzcexVar.zzF(), zzb);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            final int i = ((AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - zzf4;
            this.zzc = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdka
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    Rect rect2 = new Rect();
                    if (view.getGlobalVisibleRect(rect2)) {
                        zzcex zzcexVar2 = zzcexVar;
                        if (zzcexVar2.zzF().getWindowToken() == null) {
                            return;
                        }
                        int i2 = i;
                        WindowManager.LayoutParams layoutParams = zzb;
                        String str2 = str;
                        if (AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(str2) || "2".equals(str2)) {
                            layoutParams.y = rect2.bottom - i2;
                        } else {
                            layoutParams.y = rect2.top - i2;
                        }
                        windowManager.updateViewLayout(zzcexVar2.zzF(), layoutParams);
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
        zzcexVar.loadUrl(str2);
    }

    public final /* synthetic */ void zze(Map map, boolean z, int i, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.zzb.zzj("sendMessageToNativeJs", hashMap);
    }
}
