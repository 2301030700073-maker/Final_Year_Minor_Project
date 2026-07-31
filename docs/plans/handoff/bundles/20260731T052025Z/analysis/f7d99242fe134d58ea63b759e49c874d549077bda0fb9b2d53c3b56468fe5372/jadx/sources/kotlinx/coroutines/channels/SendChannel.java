package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SendChannel {
    boolean close(Throwable th);

    Object send(Object obj, Continuation continuation);

    /* renamed from: trySend-JP2dKIU */
    Object mo1016trySendJP2dKIU(Object obj);
}
