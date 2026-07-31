package kotlinx.serialization.internal;

import kotlin.UIntArray;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UIntArraySerializer extends PrimitiveArraySerializer {
    public static final UIntArraySerializer INSTANCE = new UIntArraySerializer(UIntSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        return ((UIntArray) obj).storage.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new UIntArray(new int[0]);
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        UIntArrayBuilder uIntArrayBuilder = (UIntArrayBuilder) obj;
        uIntArrayBuilder.getClass();
        int decodeInt = compositeDecoder.decodeInlineElement(this.descriptor, i).decodeInt();
        uIntArrayBuilder.ensureCapacity$kotlinx_serialization_core(uIntArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        int[] iArr = uIntArrayBuilder.buffer;
        int i2 = uIntArrayBuilder.position;
        uIntArrayBuilder.position = i2 + 1;
        iArr[i2] = decodeInt;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        int[] iArr = ((UIntArray) obj).storage;
        UIntArrayBuilder uIntArrayBuilder = new UIntArrayBuilder();
        uIntArrayBuilder.buffer = iArr;
        uIntArrayBuilder.position = iArr.length;
        uIntArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return uIntArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(UuidKt uuidKt, Object obj, int i) {
        int[] iArr = ((UIntArray) obj).storage;
        uuidKt.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            uuidKt.encodeInlineElement(this.descriptor, i2).encodeInt(iArr[i2]);
        }
    }
}
