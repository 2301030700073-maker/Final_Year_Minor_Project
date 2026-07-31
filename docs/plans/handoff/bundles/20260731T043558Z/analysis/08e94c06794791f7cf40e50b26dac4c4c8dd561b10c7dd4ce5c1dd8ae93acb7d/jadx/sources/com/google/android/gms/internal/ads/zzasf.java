package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzasf implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        int length;
        zzasg zzasgVar = (zzasg) obj;
        zzasg zzasgVar2 = (zzasg) obj2;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = zzasgVar.zza.length;
            if (i >= length || i2 >= zzasgVar2.zza.length) {
                break;
            }
            int compare = Integer.compare(zzasg.zzg(zzasgVar.zzb(i)), zzasg.zzg(zzasgVar2.zzb(i2)));
            if (compare != 0) {
                return compare;
            }
            i++;
            i2++;
        }
        return Integer.compare(length, zzasgVar2.zza.length);
    }
}
