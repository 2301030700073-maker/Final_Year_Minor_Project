package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcct implements zzbjp {
    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcbs zzcbsVar = (zzcbs) obj;
        zzcfz zzq = zzcbsVar.zzq();
        if (zzq == null) {
            try {
                zzcfz zzcfzVar = new zzcfz(zzcbsVar, Float.parseFloat((String) map.get("duration")), AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("customControlsAllowed")), AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("clickToExpandAllowed")));
                zzcbsVar.zzC(zzcfzVar);
                zzq = zzcfzVar;
            } catch (NullPointerException e) {
                e = e;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            } catch (NumberFormatException e2) {
                e = e2;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat = Float.parseFloat((String) map.get("duration"));
        boolean equals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("muted"));
        float parseFloat2 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        if (parseInt < 0 || parseInt > 3) {
            parseInt = 0;
        }
        String str = (String) map.get("aspectRatio");
        float parseFloat3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3)) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Video Meta GMSG: currentTime : " + parseFloat2 + " , duration : " + parseFloat + " , isMuted : " + equals + " , playbackState : " + parseInt + " , aspectRatio : " + str);
        }
        zzq.zzc(parseFloat2, parseFloat, parseInt, equals, parseFloat3);
    }
}
