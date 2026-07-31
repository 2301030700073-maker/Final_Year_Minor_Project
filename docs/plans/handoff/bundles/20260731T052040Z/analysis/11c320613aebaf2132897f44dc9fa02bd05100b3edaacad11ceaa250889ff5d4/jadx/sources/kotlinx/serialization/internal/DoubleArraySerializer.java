package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final void writeContent(SQLite sQLite, Object obj, int i) {
        double[] dArr = (double[]) obj;
        sQLite.getClass();
        dArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            double d = dArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            sQLite.encodeElement(primitiveArrayDescriptor, i2);
            sQLite.encodeDouble(d);
        }
    }
}
