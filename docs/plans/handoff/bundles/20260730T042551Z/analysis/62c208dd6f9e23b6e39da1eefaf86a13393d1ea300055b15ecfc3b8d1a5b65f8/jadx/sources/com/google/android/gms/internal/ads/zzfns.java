package com.google.android.gms.internal.ads;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zzfns {
    public static zzfpb zza(Context context, int i, int i2, String str, String str2, String str3, zzfni zzfniVar) {
        return new zzfnr(context, 1, i2, str, str2, AppEventsConstants.EVENT_PARAM_VALUE_YES, zzfniVar).zza(50000);
    }
}
