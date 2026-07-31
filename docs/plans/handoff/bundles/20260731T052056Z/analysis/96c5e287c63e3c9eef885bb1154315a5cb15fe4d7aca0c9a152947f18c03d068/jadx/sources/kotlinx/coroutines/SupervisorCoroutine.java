package kotlinx.coroutines;

import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SupervisorCoroutine extends ScopeCoroutine {
    @Override // kotlinx.coroutines.JobSupport
    public final boolean childCancelled(Throwable th) {
        return false;
    }
}
