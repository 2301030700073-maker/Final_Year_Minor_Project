package com.google.android.gms.ads.identifier;

import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.google.android.gms.ads.identifier.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo extends Thread {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Map f9571do;

    public Cdo(HashMap hashMap) {
        this.f9571do = hashMap;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        Map map = this.f9571do;
        for (String str : map.keySet()) {
            buildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        zzc.zza(buildUpon.build().toString());
    }
}
