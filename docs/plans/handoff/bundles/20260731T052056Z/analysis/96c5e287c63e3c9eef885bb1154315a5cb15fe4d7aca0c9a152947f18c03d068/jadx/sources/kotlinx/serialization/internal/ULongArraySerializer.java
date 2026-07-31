package kotlinx.serialization.internal;

import kotlin.ULongArray;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ULongArraySerializer extends PrimitiveArraySerializer {
    public static final ULongArraySerializer INSTANCE = new ULongArraySerializer(ULongSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        return ((ULongArray) obj).storage.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new ULongArray(new long[0]);
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        ULongArrayBuilder uLongArrayBuilder = (ULongArrayBuilder) obj;
        uLongArrayBuilder.getClass();
        long decodeLong = compositeDecoder.decodeInlineElement(this.descriptor, i).decodeLong();
        uLongArrayBuilder.ensureCapacity$kotlinx_serialization_core(uLongArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        long[] jArr = uLongArrayBuilder.buffer;
        int i2 = uLongArrayBuilder.position;
        uLongArrayBuilder.position = i2 + 1;
        jArr[i2] = decodeLong;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        long[] jArr = ((ULongArray) obj).storage;
        ULongArrayBuilder uLongArrayBuilder = new ULongArrayBuilder();
        uLongArrayBuilder.buffer = jArr;
        uLongArrayBuilder.position = jArr.length;
        uLongArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return uLongArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(UuidKt uuidKt, Object obj, int i) {
        long[] jArr = ((ULongArray) obj).storage;
        uuidKt.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            uuidKt.encodeInlineElement(this.descriptor, i2).encodeLong(jArr[i2]);
        }
    }
}
