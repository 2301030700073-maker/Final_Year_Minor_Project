package io.ktor.utils.io.bits;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MemoryJvm.kt */
/* loaded from: classes.dex */
public abstract class Memory {
    public static final Companion Companion = new Companion(null);
    private static final ByteBuffer Empty;

    /* renamed from: constructor-impl, reason: not valid java name */
    public static ByteBuffer m2622constructorimpl(ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        return buffer;
    }

    /* renamed from: slice-87lwejk, reason: not valid java name */
    public static final ByteBuffer m2624slice87lwejk(ByteBuffer byteBuffer, int i, int i2) {
        return m2622constructorimpl(MemoryJvmKt.sliceSafe(byteBuffer, i, i2));
    }

    /* renamed from: copyTo-JT6ljtQ, reason: not valid java name */
    public static final void m2623copyToJT6ljtQ(ByteBuffer byteBuffer, ByteBuffer destination, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (byteBuffer.hasArray() && destination.hasArray() && !byteBuffer.isReadOnly() && !destination.isReadOnly()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + i, destination.array(), destination.arrayOffset() + i3, i2);
            return;
        }
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(i);
        duplicate.limit(i + i2);
        ByteBuffer duplicate2 = destination.duplicate();
        duplicate2.position(i3);
        duplicate2.put(duplicate);
    }

    /* compiled from: MemoryJvm.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getEmpty-SK3TCg8, reason: not valid java name */
        public final ByteBuffer m2625getEmptySK3TCg8() {
            return Memory.Empty;
        }
    }

    static {
        ByteBuffer order = ByteBuffer.allocate(0).order(ByteOrder.BIG_ENDIAN);
        Intrinsics.checkNotNullExpressionValue(order, "allocate(0).order(ByteOrder.BIG_ENDIAN)");
        Empty = m2622constructorimpl(order);
    }
}
