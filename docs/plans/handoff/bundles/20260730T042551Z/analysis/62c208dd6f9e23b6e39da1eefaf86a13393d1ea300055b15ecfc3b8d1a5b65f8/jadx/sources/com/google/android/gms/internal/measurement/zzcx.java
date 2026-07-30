package com.google.android.gms.internal.measurement;

import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
final class zzcx extends zzcy {
    private zzcx() {
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final URLConnection zza(URL url, String str) {
        return url.openConnection();
    }
}
