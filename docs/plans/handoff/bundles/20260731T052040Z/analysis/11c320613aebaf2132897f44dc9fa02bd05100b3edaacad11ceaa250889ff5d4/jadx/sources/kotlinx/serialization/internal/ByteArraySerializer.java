package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ByteArraySerializer extends PrimitiveArraySerializer {
    public static final ByteArraySerializer INSTANCE = new ByteArraySerializer(ByteSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        return bArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new byte[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        ByteArrayBuilder byteArrayBuilder = (ByteArrayBuilder) obj;
        byteArrayBuilder.getClass();
        byte decodeByteElement = compositeDecoder.decodeByteElement(this.descriptor, i);
        byteArrayBuilder.ensureCapacity$kotlinx_serialization_core(byteArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        byte[] bArr = byteArrayBuilder.buffer;
        int i2 = byteArrayBuilder.position;
        byteArrayBuilder.position = i2 + 1;
        bArr[i2] = decodeByteElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder();
        byteArrayBuilder.buffer = bArr;
        byteArrayBuilder.position = bArr.length;
        byteArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return byteArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(SQLite sQLite, Object obj, int i) {
        byte[] bArr = (byte[]) obj;
        sQLite.getClass();
        bArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            sQLite.encodeElement(primitiveArrayDescriptor, i2);
            sQLite.encodeByte(b);
        }
    }
}
