package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbki implements zzbjp {
    private final Context zza;

    public zzbki(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        if (!map.containsKey(ViewHierarchyConstants.TEXT_KEY) || TextUtils.isEmpty((CharSequence) map.get(ViewHierarchyConstants.TEXT_KEY))) {
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get(ViewHierarchyConstants.TEXT_KEY))));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", (String) map.get(ViewHierarchyConstants.TEXT_KEY));
        if (map.containsKey("title")) {
            intent.putExtra("android.intent.extra.TITLE", (String) map.get("title"));
        }
        try {
            com.google.android.gms.ads.internal.zzv.zzq();
            com.google.android.gms.ads.internal.util.zzs.zzT(this.zza, intent);
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to open Share Sheet", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "ShareSheetGmsgHandler.onGmsg");
        }
    }
}
