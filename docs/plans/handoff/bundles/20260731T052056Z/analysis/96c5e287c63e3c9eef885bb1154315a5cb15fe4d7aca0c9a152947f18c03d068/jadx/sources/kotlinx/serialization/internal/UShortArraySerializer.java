package kotlinx.serialization.internal;

import kotlin.UShortArray;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UShortArraySerializer extends PrimitiveArraySerializer {
    public static final UShortArraySerializer INSTANCE = new UShortArraySerializer(UShortSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        return ((UShortArray) obj).storage.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new UShortArray(new short[0]);
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        UShortArrayBuilder uShortArrayBuilder = (UShortArrayBuilder) obj;
        uShortArrayBuilder.getClass();
        short decodeShort = compositeDecoder.decodeInlineElement(this.descriptor, i).decodeShort();
        uShortArrayBuilder.ensureCapacity$kotlinx_serialization_core(uShortArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        short[] sArr = uShortArrayBuilder.buffer;
        int i2 = uShortArrayBuilder.position;
        uShortArrayBuilder.position = i2 + 1;
        sArr[i2] = decodeShort;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        short[] sArr = ((UShortArray) obj).storage;
        UShortArrayBuilder uShortArrayBuilder = new UShortArrayBuilder();
        uShortArrayBuilder.buffer = sArr;
        uShortArrayBuilder.position = sArr.length;
        uShortArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return uShortArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(UuidKt uuidKt, Object obj, int i) {
        short[] sArr = ((UShortArray) obj).storage;
        uuidKt.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            uuidKt.encodeInlineElement(this.descriptor, i2).encodeShort(sArr[i2]);
        }
    }
}
