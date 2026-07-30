package defpackage;

import android.window.BackEvent;

/* renamed from: l1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3247l1 {

    /* renamed from: do, reason: not valid java name */
    public static final C3247l1 f14069do = new C3247l1();

    /* renamed from: do, reason: not valid java name */
    public final BackEvent m7328do(float f, float f2, float f3, int i) {
        return new BackEvent(f, f2, f3, i);
    }

    /* renamed from: for, reason: not valid java name */
    public final int m7329for(BackEvent backEvent) {
        C0173Do.m401try(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    /* renamed from: if, reason: not valid java name */
    public final float m7330if(BackEvent backEvent) {
        C0173Do.m401try(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    /* renamed from: new, reason: not valid java name */
    public final float m7331new(BackEvent backEvent) {
        C0173Do.m401try(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    /* renamed from: try, reason: not valid java name */
    public final float m7332try(BackEvent backEvent) {
        C0173Do.m401try(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}
