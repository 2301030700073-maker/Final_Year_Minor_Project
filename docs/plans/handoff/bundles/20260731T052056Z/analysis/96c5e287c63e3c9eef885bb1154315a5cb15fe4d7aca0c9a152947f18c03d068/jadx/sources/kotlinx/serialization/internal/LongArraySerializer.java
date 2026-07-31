package kotlinx.serialization.internal;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LongArraySerializer extends PrimitiveArraySerializer {
    public static final LongArraySerializer INSTANCE = new LongArraySerializer(LongSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        return jArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new long[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        LongArrayBuilder longArrayBuilder = (LongArrayBuilder) obj;
        longArrayBuilder.getClass();
        long decodeLongElement = compositeDecoder.decodeLongElement(this.descriptor, i);
        longArrayBuilder.ensureCapacity$kotlinx_serialization_core(longArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        long[] jArr = longArrayBuilder.buffer;
        int i2 = longArrayBuilder.position;
        longArrayBuilder.position = i2 + 1;
        jArr[i2] = decodeLongElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        LongArrayBuilder longArrayBuilder = new LongArrayBuilder();
        longArrayBuilder.buffer = jArr;
        longArrayBuilder.position = jArr.length;
        longArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return longArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(UuidKt uuidKt, Object obj, int i) {
        long[] jArr = (long[]) obj;
        uuidKt.getClass();
        jArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            uuidKt.encodeLongElement(this.descriptor, i2, jArr[i2]);
        }
    }
}
