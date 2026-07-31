package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.facebook.react.uimanager.ViewProps;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcpx implements zzbqi {
    private final Context zza;
    private final zzbar zzb;
    private final PowerManager zzc;

    public zzcpx(Context context, zzbar zzbarVar) {
        this.zza = context;
        this.zzb = zzbarVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbqi
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final JSONObject zzb(zzcqa zzcqaVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzbat zzbatVar = zzcqaVar.zzf;
        if (zzbatVar == null) {
            jSONObject = new JSONObject();
        } else {
            zzbar zzbarVar = this.zzb;
            if (zzbarVar.zzc() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = zzbatVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", zzbarVar.zzb()).put("activeViewJSON", zzbarVar.zzc()).put("timestamp", zzcqaVar.zzd).put("adFormat", zzbarVar.zza()).put("hashCode", zzbarVar.zzd()).put("isMraid", false);
            boolean z2 = zzcqaVar.zzc;
            JSONObject put2 = put.put("isStopped", false).put("isPaused", zzcqaVar.zzb).put("isNative", zzbarVar.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", com.google.android.gms.ads.internal.zzt.zzi().zzd()).put("appVolume", com.google.android.gms.ads.internal.zzt.zzi().zzb());
            Context context = this.zza;
            put2.put("deviceVolume", com.google.android.gms.ads.internal.util.zzaa.zze(context.getApplicationContext()));
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            JSONObject put3 = jSONObject3.put("windowVisibility", zzbatVar.zzb).put("isAttachedToWindow", z);
            JSONObject jSONObject4 = new JSONObject();
            Rect rect = zzbatVar.zzc;
            JSONObject put4 = put3.put("viewBox", jSONObject4.put("top", rect.top).put(ViewProps.BOTTOM, rect.bottom).put("left", rect.left).put("right", rect.right));
            JSONObject jSONObject5 = new JSONObject();
            Rect rect2 = zzbatVar.zzd;
            JSONObject put5 = put4.put("adBox", jSONObject5.put("top", rect2.top).put(ViewProps.BOTTOM, rect2.bottom).put("left", rect2.left).put("right", rect2.right));
            JSONObject jSONObject6 = new JSONObject();
            Rect rect3 = zzbatVar.zze;
            JSONObject put6 = put5.put("globalVisibleBox", jSONObject6.put("top", rect3.top).put(ViewProps.BOTTOM, rect3.bottom).put("left", rect3.left).put("right", rect3.right)).put("globalVisibleBoxVisible", zzbatVar.zzf);
            JSONObject jSONObject7 = new JSONObject();
            Rect rect4 = zzbatVar.zzg;
            JSONObject put7 = put6.put("localVisibleBox", jSONObject7.put("top", rect4.top).put(ViewProps.BOTTOM, rect4.bottom).put("left", rect4.left).put("right", rect4.right)).put("localVisibleBoxVisible", zzbatVar.zzh);
            JSONObject jSONObject8 = new JSONObject();
            Rect rect5 = zzbatVar.zzi;
            put7.put("hitBox", jSONObject8.put("top", rect5.top).put(ViewProps.BOTTOM, rect5.bottom).put("left", rect5.left).put("right", rect5.right)).put("screenDensity", displayMetrics.density);
            jSONObject3.put("isVisible", zzcqaVar.zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbH)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzbatVar.zzk;
                if (list != null) {
                    for (Rect rect6 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect6.top).put(ViewProps.BOTTOM, rect6.bottom).put("left", rect6.left).put("right", rect6.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzcqaVar.zze)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
