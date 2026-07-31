package com.fasterxml.jackson.core.util;

import coil3.svg.internal.AndroidSvg;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BufferRecyclers {
    public static final AndroidSvg _bufferRecyclerTracker;
    public static final ThreadLocal _recyclerRef;

    static {
        boolean z;
        try {
            z = "true".equals(System.getProperty("com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"));
        } catch (SecurityException unused) {
            z = false;
        }
        _bufferRecyclerTracker = z ? ThreadLocalBufferManager$ThreadLocalBufferManagerHolder.manager : null;
        _recyclerRef = new ThreadLocal();
    }
}
