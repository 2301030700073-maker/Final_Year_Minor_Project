package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import java.util.Arrays;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInsBinaryVersion extends BinaryVersion {
    public static final BuiltInsBinaryVersion INSTANCE = new BuiltInsBinaryVersion(Arrays.copyOf(new int[]{1, 0, 7}, 3));

    static {
        new BuiltInsBinaryVersion(Arrays.copyOf(new int[0], 0));
    }
}
