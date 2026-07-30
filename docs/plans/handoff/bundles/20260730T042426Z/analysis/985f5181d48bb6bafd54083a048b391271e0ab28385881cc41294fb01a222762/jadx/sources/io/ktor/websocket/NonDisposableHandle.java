package io.ktor.websocket;

import kotlinx.coroutines.DisposableHandle;

/* compiled from: FrameCommon.kt */
/* loaded from: classes.dex */
public final class NonDisposableHandle implements DisposableHandle {
    public static final NonDisposableHandle INSTANCE = new NonDisposableHandle();

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
    }

    private NonDisposableHandle() {
    }

    public String toString() {
        return "NonDisposableHandle";
    }
}
