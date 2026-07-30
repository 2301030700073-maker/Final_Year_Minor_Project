package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import defpackage.Creturn;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzclw implements zzcla {
    private final CookieManager zza;

    public zzclw(Context context) {
        this.zza = com.google.android.gms.ads.internal.zzv.zzr().zza(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zza(Map map) {
        String cookie;
        if (this.zza == null) {
            return;
        }
        if (((String) map.get("clear")) == null) {
            String str = (String) map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.zza.setCookie((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaY), str);
            return;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaY);
        CookieManager cookieManager = this.zza;
        if (cookieManager == null || (cookie = cookieManager.getCookie(str2)) == null) {
            return;
        }
        List zzf = zzfvc.zzb(zzfty.zzc(';')).zzf(cookie);
        for (int i = 0; i < zzf.size(); i++) {
            CookieManager cookieManager2 = this.zza;
            Iterator it = zzfvc.zzb(zzfty.zzc('=')).zzd((String) zzf.get(i)).iterator();
            it.getClass();
            if (!it.hasNext()) {
                throw new IndexOutOfBoundsException(Creturn.m7981if("position (0) must be less than the number of elements that remained (", 0, ")"));
            }
            cookieManager2.setCookie(str2, String.valueOf((String) it.next()).concat(String.valueOf((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaK))));
        }
    }
}
