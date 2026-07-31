package kotlinx.serialization.internal;

import kotlin.ULongArray;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ULongArraySerializer extends PrimitiveArraySerializer {
    public static final ULongArraySerializer INSTANCE = new ULongArraySerializer(ULongSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        return ((ULongArray) obj).storage.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new ULongArray(new long[0]);
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        ULongArrayBuilder uLongArrayBuilder = (ULongArrayBuilder) obj;
        uLongArrayBuilder.getClass();
        long decodeLong = compositeDecoder.decodeInlineElement(this.descriptor, i).decodeLong();
        uLongArrayBuilder.ensureCapacity$kotlinx_serialization_core(uLongArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        long[] jArr = uLongArrayBuilder.buffer;
        int i2 = uLongArrayBuilder.position;
        uLongArrayBuilder.position = i2 + 1;
        jArr[i2] = decodeLong;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        long[] jArr = ((ULongArray) obj).storage;
        ULongArrayBuilder uLongArrayBuilder = new ULongArrayBuilder();
        uLongArrayBuilder.buffer = jArr;
        uLongArrayBuilder.position = jArr.length;
        uLongArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return uLongArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        long[] jArr = ((ULongArray) obj).storage;
        charsKt__CharKt.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            charsKt__CharKt.encodeInlineElement(this.descriptor, i2).encodeLong(jArr[i2]);
        }
    }
}
