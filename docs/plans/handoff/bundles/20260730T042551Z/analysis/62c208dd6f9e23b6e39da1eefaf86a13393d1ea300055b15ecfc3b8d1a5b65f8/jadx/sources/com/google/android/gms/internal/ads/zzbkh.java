package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbkh implements zzbjp {
    private final zzbkg zza;

    public zzbkh(zzbkg zzbkgVar) {
        this.zza = zzbkgVar;
    }

    public static void zzb(zzcex zzcexVar, zzbkg zzbkgVar) {
        zzcexVar.zzag("/reward", new zzbkh(zzbkgVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(NativeProtocol.WEB_DIALOG_ACTION);
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.zza.zzc();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    this.zza.zzb();
                    return;
                }
                return;
            }
        }
        zzbwi zzbwiVar = null;
        try {
            int parseInt = Integer.parseInt((String) map.get("amount"));
            String str2 = (String) map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                zzbwiVar = new zzbwi(str2, parseInt);
            }
        } catch (NumberFormatException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to parse reward amount.", e);
        }
        this.zza.zza(zzbwiVar);
    }
}
