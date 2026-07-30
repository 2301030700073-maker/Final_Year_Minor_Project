package defpackage;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.MU;

/* loaded from: classes3.dex */
public final class EU<T extends Context & MU> {

    /* renamed from: do, reason: not valid java name */
    public final T f798do;

    public EU(T t) {
        Preconditions.checkNotNull(t);
        this.f798do = t;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m454do(Intent intent) {
        if (intent == null) {
            m456if().f13717do.m7369if("onRebind called with null intent");
        } else {
            m456if().f13723this.m7368for("onRebind called. action", intent.getAction());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m455for(Intent intent) {
        if (intent == null) {
            m456if().f13717do.m7369if("onUnbind called with null intent");
        } else {
            m456if().f13723this.m7368for("onUnbind called for intent. action", intent.getAction());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final C3156jS m456if() {
        C3156jS c3156jS = TS.m2246if(this.f798do, null, null).f3695do;
        TS.m2247this(c3156jS);
        return c3156jS;
    }
}
