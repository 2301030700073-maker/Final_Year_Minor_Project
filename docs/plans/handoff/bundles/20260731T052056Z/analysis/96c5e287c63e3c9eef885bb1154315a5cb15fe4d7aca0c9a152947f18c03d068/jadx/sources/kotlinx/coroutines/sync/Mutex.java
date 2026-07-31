package kotlinx.coroutines.sync;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Mutex {
    Object lock(Continuation continuation);

    void unlock(Object obj);
}
