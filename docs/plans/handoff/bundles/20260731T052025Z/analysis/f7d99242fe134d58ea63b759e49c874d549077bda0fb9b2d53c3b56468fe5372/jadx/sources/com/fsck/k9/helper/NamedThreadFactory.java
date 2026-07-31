package com.fsck.k9.helper;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NamedThreadFactory implements ThreadFactory {
    public int counter;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        runnable.getClass();
        int i = this.counter;
        this.counter = i + 1;
        return new Thread(runnable, CameraDevices$CC.m("SaveSettings-", i));
    }
}
