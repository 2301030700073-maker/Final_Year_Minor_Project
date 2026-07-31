package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ShortArraySerializer extends PrimitiveArraySerializer {
    public static final ShortArraySerializer INSTANCE = new ShortArraySerializer(ShortSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        return sArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new short[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        ShortArrayBuilder shortArrayBuilder = (ShortArrayBuilder) obj;
        shortArrayBuilder.getClass();
        short decodeShortElement = compositeDecoder.decodeShortElement(this.descriptor, i);
        shortArrayBuilder.ensureCapacity$kotlinx_serialization_core(shortArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        short[] sArr = shortArrayBuilder.buffer;
        int i2 = shortArrayBuilder.position;
        shortArrayBuilder.position = i2 + 1;
        sArr[i2] = decodeShortElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        ShortArrayBuilder shortArrayBuilder = new ShortArrayBuilder();
        shortArrayBuilder.buffer = sArr;
        shortArrayBuilder.position = sArr.length;
        shortArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return shortArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(SQLite sQLite, Object obj, int i) {
        short[] sArr = (short[]) obj;
        sQLite.getClass();
        sArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            short s = sArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            sQLite.encodeElement(primitiveArrayDescriptor, i2);
            sQLite.encodeShort(s);
        }
    }
}
