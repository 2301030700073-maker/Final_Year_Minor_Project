package defpackage;

import android.content.Context;
import defpackage.C3405nj;
import java.util.concurrent.Callable;

/* renamed from: jj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC3169jj implements Callable<C3405nj.Cdo> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f13760do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Context f13761do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2942ij f13762do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f13763do;

    public CallableC3169jj(String str, Context context, C2942ij c2942ij, int i) {
        this.f13763do = str;
        this.f13761do = context;
        this.f13762do = c2942ij;
        this.f13760do = i;
    }

    @Override // java.util.concurrent.Callable
    public final C3405nj.Cdo call() {
        return C3405nj.m7603do(this.f13763do, this.f13761do, this.f13762do, this.f13760do);
    }
}
