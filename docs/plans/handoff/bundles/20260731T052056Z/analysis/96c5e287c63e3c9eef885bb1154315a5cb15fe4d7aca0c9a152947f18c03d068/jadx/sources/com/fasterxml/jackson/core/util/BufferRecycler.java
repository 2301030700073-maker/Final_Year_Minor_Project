package com.fasterxml.jackson.core.util;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BufferRecycler {
    public static final int[] BYTE_BUFFER_LENGTHS = {8000, 8000, 2000, 2000};
    public static final int[] CHAR_BUFFER_LENGTHS = {4000, 4000, 200, 200};
    public final AtomicReferenceArray _byteBuffers = new AtomicReferenceArray(4);
    public final AtomicReferenceArray _charBuffers = new AtomicReferenceArray(4);
}
