package kotlinx.serialization.internal;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        int[] iArr = (int[]) obj;
        charsKt__CharKt.getClass();
        iArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            charsKt__CharKt.encodeElement(primitiveArrayDescriptor, i2);
            charsKt__CharKt.encodeInt(i3);
        }
    }
}
