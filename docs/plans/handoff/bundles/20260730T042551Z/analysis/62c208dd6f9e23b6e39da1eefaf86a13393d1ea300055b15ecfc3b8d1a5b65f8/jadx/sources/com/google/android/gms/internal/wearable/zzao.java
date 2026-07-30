package com.google.android.gms.internal.wearable;

import java.util.Comparator;

/* loaded from: classes3.dex */
final class zzao implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzaw zzawVar = (zzaw) obj;
        zzaw zzawVar2 = (zzaw) obj2;
        zzan zzanVar = new zzan(zzawVar);
        zzan zzanVar2 = new zzan(zzawVar2);
        while (zzanVar.hasNext() && zzanVar2.hasNext()) {
            int compareTo = Integer.valueOf(zzanVar.zza() & 255).compareTo(Integer.valueOf(zzanVar2.zza() & 255));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(zzawVar.zzd()).compareTo(Integer.valueOf(zzawVar2.zzd()));
    }
}
