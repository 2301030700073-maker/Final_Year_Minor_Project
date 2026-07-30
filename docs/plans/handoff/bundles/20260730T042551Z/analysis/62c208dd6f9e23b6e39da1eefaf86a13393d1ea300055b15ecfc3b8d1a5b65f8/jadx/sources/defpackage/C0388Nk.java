package defpackage;

import android.app.ActivityManager;
import android.content.Context;

/* renamed from: Nk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0388Nk {

    /* renamed from: do, reason: not valid java name */
    public final ActivityManager.MemoryInfo f2425do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ActivityManager f2426do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Runtime f2427do = Runtime.getRuntime();

    static {
        Q0.m1818new();
    }

    public C0388Nk(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f2426do = activityManager;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f2425do = memoryInfo;
        activityManager.getMemoryInfo(memoryInfo);
    }
}
