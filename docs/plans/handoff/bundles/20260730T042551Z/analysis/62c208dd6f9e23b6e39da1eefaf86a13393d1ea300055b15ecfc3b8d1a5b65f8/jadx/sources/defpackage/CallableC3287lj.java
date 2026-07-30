package defpackage;

import android.content.Context;
import defpackage.C3405nj;
import java.util.concurrent.Callable;

/* renamed from: lj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC3287lj implements Callable<C3405nj.Cdo> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14179do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Context f14180do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2942ij f14181do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f14182do;

    public CallableC3287lj(String str, Context context, C2942ij c2942ij, int i) {
        this.f14182do = str;
        this.f14180do = context;
        this.f14181do = c2942ij;
        this.f14179do = i;
    }

    @Override // java.util.concurrent.Callable
    public final C3405nj.Cdo call() {
        try {
            return C3405nj.m7603do(this.f14182do, this.f14180do, this.f14181do, this.f14179do);
        } catch (Throwable unused) {
            return new C3405nj.Cdo(-3);
        }
    }
}
