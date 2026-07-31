package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyo {
    static final /* synthetic */ zzhvi zza(zzhvi zzhviVar, zzhvi zzhviVar2, ArrayDeque arrayDeque) {
        zzb(zzhviVar, arrayDeque);
        zzb(zzhviVar2, arrayDeque);
        zzhvi zzhviVar3 = (zzhvi) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            zzhviVar3 = new zzhyq((zzhvi) arrayDeque.pop(), zzhviVar3, null);
        }
        return zzhviVar3;
    }

    private static final void zzb(zzhvi zzhviVar, ArrayDeque arrayDeque) {
        byte[] bArr;
        if (!zzhviVar.zzg()) {
            if (!(zzhviVar instanceof zzhyq)) {
                String valueOf = String.valueOf(zzhviVar.getClass());
                String.valueOf(valueOf);
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(valueOf)));
            }
            zzhyq zzhyqVar = (zzhyq) zzhviVar;
            zzb(zzhyqVar.zzB(), arrayDeque);
            zzb(zzhyqVar.zzC(), arrayDeque);
            return;
        }
        int zzc = zzc(zzhviVar.zzc(), arrayDeque);
        int zzh = zzhyq.zzh(zzc + 1);
        if (arrayDeque.isEmpty() || ((zzhvi) arrayDeque.peek()).zzc() >= zzh) {
            arrayDeque.push(zzhviVar);
            return;
        }
        int zzh2 = zzhyq.zzh(zzc);
        zzhvi zzhviVar2 = (zzhvi) arrayDeque.pop();
        while (true) {
            bArr = null;
            if (arrayDeque.isEmpty() || ((zzhvi) arrayDeque.peek()).zzc() >= zzh2) {
                break;
            } else {
                zzhviVar2 = new zzhyq((zzhvi) arrayDeque.pop(), zzhviVar2, bArr);
            }
        }
        zzhyq zzhyqVar2 = new zzhyq(zzhviVar2, zzhviVar, bArr);
        while (!arrayDeque.isEmpty()) {
            if (((zzhvi) arrayDeque.peek()).zzc() >= zzhyq.zzh(zzc(zzhyqVar2.zzc(), arrayDeque) + 1)) {
                break;
            } else {
                zzhyqVar2 = new zzhyq((zzhvi) arrayDeque.pop(), zzhyqVar2, bArr);
            }
        }
        arrayDeque.push(zzhyqVar2);
    }

    private static final int zzc(int i, ArrayDeque arrayDeque) {
        int binarySearch = Arrays.binarySearch(zzhyq.zza, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }
}
