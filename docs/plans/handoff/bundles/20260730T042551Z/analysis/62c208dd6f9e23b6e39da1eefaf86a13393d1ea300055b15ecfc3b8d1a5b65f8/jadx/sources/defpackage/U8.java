package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes3.dex */
public class U8 {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f3838do = AtomicIntegerFieldUpdater.newUpdater(U8.class, "_handled");
    private volatile int _handled;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Throwable f3839do;

    public U8(boolean z, Throwable th) {
        this.f3839do = th;
        this._handled = z ? 1 : 0;
    }

    public final String toString() {
        return getClass().getSimpleName() + '[' + this.f3839do + ']';
    }
}
