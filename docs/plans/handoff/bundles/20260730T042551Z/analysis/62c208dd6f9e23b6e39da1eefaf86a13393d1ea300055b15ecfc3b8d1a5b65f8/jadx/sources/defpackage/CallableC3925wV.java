package defpackage;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

/* renamed from: wV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC3925wV implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final long f16365do;

    public CallableC3925wV(long j) {
        this.f16365do = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        if (AdOverlayInfoParcel.f9692do.remove(Long.valueOf(this.f16365do)) == null) {
            return null;
        }
        zzv.zzp().zzw(new Exception("Key was non-null in AdOverlayObjectsCleanupTask"), "AdOverlayObjectsCleanupTask");
        return null;
    }
}
