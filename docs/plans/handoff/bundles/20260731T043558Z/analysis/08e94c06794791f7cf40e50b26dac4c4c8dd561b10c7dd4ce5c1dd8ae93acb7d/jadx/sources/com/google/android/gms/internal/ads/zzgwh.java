package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgwh {
    private static final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public static zzgwg zza(String str) throws GeneralSecurityException {
        Iterator it = zza.iterator();
        while (it.hasNext()) {
            zzgwg zzgwgVar = (zzgwg) it.next();
            if (zzgwgVar.zza()) {
                return zzgwgVar;
            }
        }
        String.valueOf(str);
        throw new GeneralSecurityException("No KMS client does support: ".concat(String.valueOf(str)));
    }
}
