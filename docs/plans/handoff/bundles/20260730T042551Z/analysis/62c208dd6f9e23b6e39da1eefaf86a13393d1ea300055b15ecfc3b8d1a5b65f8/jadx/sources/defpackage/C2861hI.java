package defpackage;

import android.content.Context;

/* renamed from: hI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2861hI {

    /* renamed from: do, reason: not valid java name */
    public static C2861hI f13288do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f13289do;

    /* renamed from: for, reason: not valid java name */
    public final Object f13290for;

    /* renamed from: if, reason: not valid java name */
    public final Object f13291if;

    /* renamed from: new, reason: not valid java name */
    public Object f13292new;

    public /* synthetic */ C2861hI() {
        this.f13289do = new C2604cx();
        this.f13291if = new C2604cx();
        this.f13290for = new C2604cx();
        this.f13292new = new HE[32];
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized C2861hI m6791do(Context context, IG ig) {
        C2861hI c2861hI;
        synchronized (C2861hI.class) {
            if (f13288do == null) {
                f13288do = new C2861hI(context, ig);
            }
            c2861hI = f13288do;
        }
        return c2861hI;
    }

    public /* synthetic */ C2861hI(Context context, IG ig) {
        Context applicationContext = context.getApplicationContext();
        this.f13289do = new C3192k5(applicationContext, ig);
        this.f13291if = new C3310m5(applicationContext, ig);
        this.f13290for = new C0179Du(applicationContext, ig);
        this.f13292new = new C3673sF(applicationContext, ig);
    }
}
