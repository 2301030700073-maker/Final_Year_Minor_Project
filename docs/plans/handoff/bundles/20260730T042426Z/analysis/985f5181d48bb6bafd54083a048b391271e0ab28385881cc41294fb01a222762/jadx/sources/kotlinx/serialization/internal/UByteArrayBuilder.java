package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.UByteArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes2.dex */
public final class UByteArrayBuilder extends PrimitiveArrayBuilder {
    private byte[] buffer;
    private int position;

    public /* synthetic */ UByteArrayBuilder(byte[] bArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ Object build$kotlinx_serialization_core() {
        return UByteArray.m2662boximpl(m2860buildTcUX1vc$kotlinx_serialization_core());
    }

    private UByteArrayBuilder(byte[] bArr) {
        this.buffer = bArr;
        this.position = UByteArray.m2669getSizeimpl(bArr);
        ensureCapacity$kotlinx_serialization_core(10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i) {
        if (UByteArray.m2669getSizeimpl(this.buffer) < i) {
            byte[] bArr = this.buffer;
            byte[] copyOf = Arrays.copyOf(bArr, RangesKt.coerceAtLeast(i, UByteArray.m2669getSizeimpl(bArr) * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.buffer = UByteArray.m2664constructorimpl(copyOf);
        }
    }

    /* renamed from: append-7apg3OU$kotlinx_serialization_core, reason: not valid java name */
    public final void m2859append7apg3OU$kotlinx_serialization_core(byte b) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        byte[] bArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        UByteArray.m2673setVurrAj0(bArr, position$kotlinx_serialization_core, b);
    }

    /* renamed from: build-TcUX1vc$kotlinx_serialization_core, reason: not valid java name */
    public byte[] m2860buildTcUX1vc$kotlinx_serialization_core() {
        byte[] copyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        return UByteArray.m2664constructorimpl(copyOf);
    }
}
