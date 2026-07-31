package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzuw {
    default void zzA(zzak zzakVar) {
    }

    void zzD(zzus zzusVar);

    zzus zzG(zzuu zzuuVar, zzyv zzyvVar, long j);

    default zzbf zzH() {
        return null;
    }

    default boolean zzI() {
        return true;
    }

    zzak zzJ();

    void zzl(Handler handler, zzvf zzvfVar);

    void zzm(zzvf zzvfVar);

    void zzn(Handler handler, zzrv zzrvVar);

    void zzo(zzrv zzrvVar);

    void zzp(zzuv zzuvVar, zzgz zzgzVar, zzpc zzpcVar);

    void zzq(zzuv zzuvVar);

    void zzr(zzuv zzuvVar);

    void zzs(zzuv zzuvVar);

    void zzt() throws IOException;
}
