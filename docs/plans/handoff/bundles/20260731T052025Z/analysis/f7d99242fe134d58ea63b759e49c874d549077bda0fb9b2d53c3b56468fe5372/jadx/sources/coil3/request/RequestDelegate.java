package coil3.request;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface RequestDelegate {
    void assertActive();

    Object awaitStarted(Continuation continuation);

    void complete();

    void dispose();

    void start();
}
