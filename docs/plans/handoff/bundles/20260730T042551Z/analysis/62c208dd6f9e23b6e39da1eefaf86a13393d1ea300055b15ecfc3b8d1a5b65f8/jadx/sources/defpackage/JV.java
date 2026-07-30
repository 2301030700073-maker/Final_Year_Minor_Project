package defpackage;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class JV {

    /* renamed from: do, reason: not valid java name */
    public final int f1647do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GG f1648do = new GG();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f1649do;

    /* renamed from: if, reason: not valid java name */
    public final int f1650if;

    public JV(int i, int i2, Bundle bundle) {
        this.f1647do = i;
        this.f1650if = i2;
        this.f1649do = bundle;
    }

    /* renamed from: do */
    public abstract void mo373do(Bundle bundle);

    /* renamed from: for, reason: not valid java name */
    public final void m1039for(C2855hC c2855hC) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            toString();
            c2855hC.toString();
        }
        this.f1648do.m719do(c2855hC);
    }

    /* renamed from: if */
    public abstract boolean mo374if();

    public final String toString() {
        return "Request { what=" + this.f1650if + " id=" + this.f1647do + " oneWay=" + mo374if() + "}";
    }
}
