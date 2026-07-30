package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzfuh {
    private final String zza;
    private final zzfug zzb;
    private zzfug zzc;

    public /* synthetic */ zzfuh(String str, zzfui zzfuiVar) {
        zzfug zzfugVar = new zzfug();
        this.zzb = zzfugVar;
        this.zzc = zzfugVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzfug zzfugVar = this.zzb.zzb;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (zzfugVar != null) {
            Object obj = zzfugVar.zza;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            zzfugVar = zzfugVar.zzb;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzfuh zza(Object obj) {
        zzfug zzfugVar = new zzfug();
        this.zzc.zzb = zzfugVar;
        this.zzc = zzfugVar;
        zzfugVar.zza = obj;
        return this;
    }
}
