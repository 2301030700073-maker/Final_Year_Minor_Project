package c.b.a.c.d.g.u;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* renamed from: c.b.a.c.d.g.u.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0413d implements c.b.a.c.d.g.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasePendingResult f2901a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0412c f2902b;

    public C0413d(C0412c c0412c, BasePendingResult basePendingResult) {
        this.f2902b = c0412c;
        this.f2901a = basePendingResult;
    }

    @Override // c.b.a.c.d.g.p
    public final void a(Status status) {
        this.f2902b.f2899a.remove(this.f2901a);
    }
}
