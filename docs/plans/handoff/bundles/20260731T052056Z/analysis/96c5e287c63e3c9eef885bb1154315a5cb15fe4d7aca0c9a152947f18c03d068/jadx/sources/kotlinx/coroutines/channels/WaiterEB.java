package kotlinx.coroutines.channels;

import kotlinx.coroutines.Waiter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WaiterEB {
    public final Waiter waiter;

    public WaiterEB(Waiter waiter) {
        this.waiter = waiter;
    }

    public final String toString() {
        return "WaiterEB(" + this.waiter + ')';
    }
}
