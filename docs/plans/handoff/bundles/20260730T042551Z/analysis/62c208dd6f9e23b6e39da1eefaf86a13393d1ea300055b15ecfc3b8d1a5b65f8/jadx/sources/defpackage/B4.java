package defpackage;

import android.window.BackEvent;

/* loaded from: classes.dex */
public final class B4 {

    /* renamed from: do, reason: not valid java name */
    public final float f198do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f199do;

    /* renamed from: for, reason: not valid java name */
    public final float f200for;

    /* renamed from: if, reason: not valid java name */
    public final float f201if;

    public B4(BackEvent backEvent) {
        C0173Do.m401try(backEvent, "backEvent");
        C3247l1 c3247l1 = C3247l1.f14069do;
        float m7331new = c3247l1.m7331new(backEvent);
        float m7332try = c3247l1.m7332try(backEvent);
        float m7330if = c3247l1.m7330if(backEvent);
        int m7329for = c3247l1.m7329for(backEvent);
        this.f198do = m7331new;
        this.f201if = m7332try;
        this.f200for = m7330if;
        this.f199do = m7329for;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.f198do + ", touchY=" + this.f201if + ", progress=" + this.f200for + ", swipeEdge=" + this.f199do + '}';
    }
}
