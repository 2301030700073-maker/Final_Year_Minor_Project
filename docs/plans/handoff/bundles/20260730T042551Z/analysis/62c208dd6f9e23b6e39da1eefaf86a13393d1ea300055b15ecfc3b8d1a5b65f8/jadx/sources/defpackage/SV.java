package defpackage;

import android.os.Looper;
import com.google.android.gms.internal.tasks.zza;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class SV implements Executor {

    /* renamed from: do, reason: not valid java name */
    public final zza f3525do = new zza(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f3525do.post(runnable);
    }
}
