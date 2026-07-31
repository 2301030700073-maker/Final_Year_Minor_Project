package androidx.work.impl;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkerStoppedException extends CancellationException {
    public final int reason;

    public WorkerStoppedException(int i) {
        this.reason = i;
    }
}
