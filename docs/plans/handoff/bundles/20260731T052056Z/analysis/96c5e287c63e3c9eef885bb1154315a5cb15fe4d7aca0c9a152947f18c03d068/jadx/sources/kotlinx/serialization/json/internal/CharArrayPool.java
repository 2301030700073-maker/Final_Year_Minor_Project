package kotlinx.serialization.json.internal;

import kotlin.collections.ArrayDeque;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CharArrayPool {
    public static final CharArrayPool INSTANCE = new CharArrayPool();
    public final ArrayDeque arrays = new ArrayDeque();
    public int charsTotal;
}
