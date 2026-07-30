package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.Map;

/* loaded from: classes.dex */
final class zzcfu implements zzbjp {
    final /* synthetic */ zzcfw zza;

    public zzcfu(zzcfw zzcfwVar) {
        this.zza = zzcfwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.zza) {
                    zzcfw zzcfwVar = this.zza;
                    i = zzcfwVar.zzI;
                    if (i != parseInt) {
                        zzcfwVar.zzI = parseInt;
                        this.zza.requestLayout();
                    }
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Exception occurred while getting webview content height", e);
            }
        }
    }
}
