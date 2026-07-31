package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IntArraySerializer extends PrimitiveArraySerializer {
    public static final IntArraySerializer INSTANCE = new IntArraySerializer(IntSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        return iArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new int[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        IntArrayBuilder intArrayBuilder = (IntArrayBuilder) obj;
        intArrayBuilder.getClass();
        int decodeIntElement = compositeDecoder.decodeIntElement(this.descriptor, i);
        intArrayBuilder.ensureCapacity$kotlinx_serialization_core(intArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        int[] iArr = intArrayBuilder.buffer;
        int i2 = intArrayBuilder.position;
        intArrayBuilder.position = i2 + 1;
        iArr[i2] = decodeIntElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        IntArrayBuilder intArrayBuilder = new IntArrayBuilder();
        intArrayBuilder.buffer = iArr;
        intArrayBuilder.position = iArr.length;
        intArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return intArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(SQLite sQLite, Object obj, int i) {
        int[] iArr = (int[]) obj;
        sQLite.getClass();
        iArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            sQLite.encodeElement(primitiveArrayDescriptor, i2);
            sQLite.encodeInt(i3);
        }
    }
}
