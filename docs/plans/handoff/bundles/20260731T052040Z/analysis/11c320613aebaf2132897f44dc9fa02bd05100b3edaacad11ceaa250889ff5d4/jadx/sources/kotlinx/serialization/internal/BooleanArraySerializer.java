package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BooleanArraySerializer extends PrimitiveArraySerializer {
    public static final BooleanArraySerializer INSTANCE = new BooleanArraySerializer(BooleanSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new boolean[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        BooleanArrayBuilder booleanArrayBuilder = (BooleanArrayBuilder) obj;
        booleanArrayBuilder.getClass();
        boolean decodeBooleanElement = compositeDecoder.decodeBooleanElement(this.descriptor, i);
        booleanArrayBuilder.ensureCapacity$kotlinx_serialization_core(booleanArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        boolean[] zArr = booleanArrayBuilder.buffer;
        int i2 = booleanArrayBuilder.position;
        booleanArrayBuilder.position = i2 + 1;
        zArr[i2] = decodeBooleanElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        BooleanArrayBuilder booleanArrayBuilder = new BooleanArrayBuilder();
        booleanArrayBuilder.buffer = zArr;
        booleanArrayBuilder.position = zArr.length;
        booleanArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return booleanArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(SQLite sQLite, Object obj, int i) {
        boolean[] zArr = (boolean[]) obj;
        sQLite.getClass();
        zArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            boolean z = zArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            sQLite.encodeElement(primitiveArrayDescriptor, i2);
            sQLite.encodeBoolean(z);
        }
    }
}
