package kotlinx.serialization.internal;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        byte[] bArr = (byte[]) obj;
        charsKt__CharKt.getClass();
        bArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            byte b = bArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            charsKt__CharKt.encodeElement(primitiveArrayDescriptor, i2);
            charsKt__CharKt.encodeByte(b);
        }
    }
}
