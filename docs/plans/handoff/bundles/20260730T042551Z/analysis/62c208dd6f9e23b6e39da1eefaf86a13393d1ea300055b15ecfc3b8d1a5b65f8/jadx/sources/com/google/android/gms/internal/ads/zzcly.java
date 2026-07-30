package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcly implements zzcla {
    private final zzduv zza;

    public zzcly(zzduv zzduvVar) {
        this.zza = zzduvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zza(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzo(str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
    }
}
