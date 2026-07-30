package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzanv {
    public final int zza;
    public final String zzb;
    public final int zzc;
    public final List zzd;
    public final byte[] zze;

    public zzanv(int i, String str, int i2, List list, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = i2;
        this.zzd = list == null ? Collections.emptyList() : DesugarCollections.unmodifiableList(list);
        this.zze = bArr;
    }

    public final int zza() {
        int i = this.zzc;
        if (i == 2) {
            return 2048;
        }
        if (i != 3) {
            return 0;
        }
        return AdRequest.MAX_CONTENT_URL_LENGTH;
    }
}
