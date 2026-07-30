package defpackage;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class NT implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2382break;

    /* renamed from: catch, reason: not valid java name */
    public final /* synthetic */ String f2383catch;

    /* renamed from: class, reason: not valid java name */
    public final /* synthetic */ String f2384class = null;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f2385do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Bundle f2386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4041yT f2387do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f2388do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ boolean f2389for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ boolean f2390if;

    public NT(C4041yT c4041yT, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.f2382break = str;
        this.f2383catch = str2;
        this.f2385do = j;
        this.f2386do = bundle;
        this.f2388do = z;
        this.f2390if = z2;
        this.f2389for = z3;
        this.f2387do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2387do.m8746throws(this.f2382break, this.f2383catch, this.f2385do, this.f2386do, this.f2388do, this.f2390if, this.f2389for, this.f2384class);
    }
}
