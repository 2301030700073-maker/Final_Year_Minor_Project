package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgtc;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzgtd implements PrivilegedExceptionAction {
    static final /* synthetic */ zzgtd zza = new zzgtd();

    private /* synthetic */ zzgtd() {
    }

    @Override // java.security.PrivilegedExceptionAction
    public final /* synthetic */ Object run() {
        int i = zzgtc.zzd.zzg;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }
}
