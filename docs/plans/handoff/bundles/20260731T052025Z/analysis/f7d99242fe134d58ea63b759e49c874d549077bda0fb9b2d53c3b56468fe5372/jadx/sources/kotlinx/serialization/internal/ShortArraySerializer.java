package kotlinx.serialization.internal;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        short[] sArr = (short[]) obj;
        charsKt__CharKt.getClass();
        sArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            short s = sArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            charsKt__CharKt.encodeElement(primitiveArrayDescriptor, i2);
            charsKt__CharKt.encodeShort(s);
        }
    }
}
