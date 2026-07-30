package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzbef;
import java.util.Map;

/* loaded from: classes.dex */
public class CsiUrlBuilder {

    /* renamed from: do, reason: not valid java name */
    public final String f10116do = (String) zzbef.zza.zze();

    public String generateUrl(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f10116do).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }
}
