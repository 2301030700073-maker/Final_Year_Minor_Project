package defpackage;

import com.android.billingclient.api.Cdo;

/* renamed from: bx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0781bx {

    /* renamed from: do, reason: not valid java name */
    public int f8461do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f8462do;

    public /* synthetic */ C0781bx(int i) {
        if (!(i > 0)) {
            throw new IllegalArgumentException("The max pool size must be > 0".toString());
        }
        this.f8462do = new Object[i];
    }

    public /* synthetic */ C0781bx(Cdo cdo, int i) {
        this.f8462do = cdo;
        this.f8461do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public Object mo4867do() {
        int i = this.f8461do;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object obj = this.f8462do;
        Object obj2 = ((Object[]) obj)[i2];
        C0173Do.m396for(obj2, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        ((Object[]) obj)[i2] = null;
        this.f8461do--;
        return obj2;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean mo4868if(Object obj) {
        Object obj2;
        boolean z;
        C0173Do.m401try(obj, "instance");
        int i = this.f8461do;
        int i2 = 0;
        while (true) {
            obj2 = this.f8462do;
            if (i2 >= i) {
                z = false;
                break;
            }
            if (((Object[]) obj2)[i2] == obj) {
                z = true;
                break;
            }
            i2++;
        }
        if (!(!z)) {
            throw new IllegalStateException("Already in the pool!".toString());
        }
        int i3 = this.f8461do;
        if (i3 >= ((Object[]) obj2).length) {
            return false;
        }
        ((Object[]) obj2)[i3] = obj;
        this.f8461do = i3 + 1;
        return true;
    }
}
