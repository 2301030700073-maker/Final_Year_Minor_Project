package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* renamed from: Lb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC0336Lb implements Callable<Void> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f1961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C0357Mb f1962do;

    public CallableC0336Lb(C0357Mb c0357Mb, long j) {
        this.f1962do = c0357Mb;
        this.f1961do = j;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.f1961do);
        this.f1962do.f2194do.mo269if(bundle);
        return null;
    }
}
