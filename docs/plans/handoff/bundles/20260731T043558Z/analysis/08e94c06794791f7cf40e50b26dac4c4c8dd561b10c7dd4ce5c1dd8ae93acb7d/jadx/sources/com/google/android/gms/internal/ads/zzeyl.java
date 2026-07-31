package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzeyl implements zzeya {
    private final zzgus zza;
    private final Context zzb;
    private final zzdzt zzc;

    zzeyl(zzgus zzgusVar, Context context, zzdzt zzdztVar) {
        this.zza = zzgusVar;
        this.zzb = context;
        this.zzc = zzdztVar;
    }

    private static ResolveInfo zzd(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyk
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzeyl.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 38;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:0|1|(2:4|2)|5|6|(3:80|81|(21:83|9|10|11|(21:13|14|15|16|17|18|19|20|(1:22)(3:66|(1:68)|69)|23|(1:25)(2:54|(3:57|(3:60|(2:63|64)(1:62)|58)|65))|26|27|(2:29|(7:31|32|(4:44|45|(1:49)|51)(1:34)|(1:36)(1:43)|(1:38)(1:42)|39|40))|53|32|(0)(0)|(0)(0)|(0)(0)|39|40)|76|72|20|(0)(0)|23|(0)(0)|26|27|(0)|53|32|(0)(0)|(0)(0)|(0)(0)|39|40))|8|9|10|11|(0)|76|72|20|(0)(0)|23|(0)(0)|26|27|(0)|53|32|(0)(0)|(0)(0)|(0)(0)|39|40) */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00af A[Catch: Exception -> 0x00e1, TRY_LEAVE, TryCatch #4 {Exception -> 0x00e1, blocks: (B:11:0x00a3, B:13:0x00af), top: B:10:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ com.google.android.gms.internal.ads.zzeyj zzc() {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeyl.zzc():com.google.android.gms.internal.ads.zzeyj");
    }
}
