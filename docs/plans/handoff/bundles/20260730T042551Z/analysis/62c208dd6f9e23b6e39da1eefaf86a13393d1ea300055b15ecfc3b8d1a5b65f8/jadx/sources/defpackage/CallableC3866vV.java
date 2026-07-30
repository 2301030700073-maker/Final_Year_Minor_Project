package defpackage;

import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.ads.zzaux;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzava;
import java.util.concurrent.Callable;

/* renamed from: vV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC3866vV implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzu f16094do;

    public CallableC3866vV(zzu zzuVar) {
        this.f16094do = zzuVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzu zzuVar = this.f16094do;
        return new zzava(zzauz.zzu(zzuVar.f9877do, new zzaux(zzuVar.f9882do.afmaVersion, false)));
    }
}
