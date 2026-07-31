package kotlinx.serialization.internal;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DoubleArraySerializer extends PrimitiveArraySerializer {
    public static final DoubleArraySerializer INSTANCE = new DoubleArraySerializer(DoubleSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new double[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        DoubleArrayBuilder doubleArrayBuilder = (DoubleArrayBuilder) obj;
        doubleArrayBuilder.getClass();
        double decodeDoubleElement = compositeDecoder.decodeDoubleElement(this.descriptor, i);
        doubleArrayBuilder.ensureCapacity$kotlinx_serialization_core(doubleArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        double[] dArr = doubleArrayBuilder.buffer;
        int i2 = doubleArrayBuilder.position;
        doubleArrayBuilder.position = i2 + 1;
        dArr[i2] = decodeDoubleElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        DoubleArrayBuilder doubleArrayBuilder = new DoubleArrayBuilder();
        doubleArrayBuilder.buffer = dArr;
        doubleArrayBuilder.position = dArr.length;
        doubleArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return doubleArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(UuidKt uuidKt, Object obj, int i) {
        double[] dArr = (double[]) obj;
        uuidKt.getClass();
        dArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            uuidKt.encodeDoubleElement(this.descriptor, i2, dArr[i2]);
        }
    }
}
