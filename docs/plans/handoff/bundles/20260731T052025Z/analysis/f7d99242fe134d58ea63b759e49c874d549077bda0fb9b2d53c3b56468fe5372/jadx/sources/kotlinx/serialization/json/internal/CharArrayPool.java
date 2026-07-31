package kotlinx.serialization.json.internal;

import kotlin.collections.ArrayDeque;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharArrayPool {
    public static final CharArrayPool INSTANCE = new CharArrayPool();
    public final ArrayDeque arrays = new ArrayDeque();
    public int charsTotal;
}
