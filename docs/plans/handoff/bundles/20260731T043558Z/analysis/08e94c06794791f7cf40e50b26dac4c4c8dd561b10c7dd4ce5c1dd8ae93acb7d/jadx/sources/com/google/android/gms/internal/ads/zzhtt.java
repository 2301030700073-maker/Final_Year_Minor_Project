package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhtt extends zzhtv {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhtt(zzhtu zzhtuVar) {
        super(zzhtuVar.zza);
        Objects.requireNonNull(zzhtuVar);
    }

    @Override // java.util.Iterator
    public final Object next() {
        return zza().zzf;
    }
}
