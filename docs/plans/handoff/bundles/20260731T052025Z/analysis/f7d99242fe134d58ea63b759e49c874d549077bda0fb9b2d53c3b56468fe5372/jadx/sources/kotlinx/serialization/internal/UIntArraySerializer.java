package kotlinx.serialization.internal;

import kotlin.UIntArray;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UIntArraySerializer extends PrimitiveArraySerializer {
    public static final UIntArraySerializer INSTANCE = new UIntArraySerializer(UIntSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        return ((UIntArray) obj).storage.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new UIntArray(new int[0]);
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        UIntArrayBuilder uIntArrayBuilder = (UIntArrayBuilder) obj;
        uIntArrayBuilder.getClass();
        int decodeInt = compositeDecoder.decodeInlineElement(this.descriptor, i).decodeInt();
        uIntArrayBuilder.ensureCapacity$kotlinx_serialization_core(uIntArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        int[] iArr = uIntArrayBuilder.buffer;
        int i2 = uIntArrayBuilder.position;
        uIntArrayBuilder.position = i2 + 1;
        iArr[i2] = decodeInt;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        int[] iArr = ((UIntArray) obj).storage;
        UIntArrayBuilder uIntArrayBuilder = new UIntArrayBuilder();
        uIntArrayBuilder.buffer = iArr;
        uIntArrayBuilder.position = iArr.length;
        uIntArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return uIntArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        int[] iArr = ((UIntArray) obj).storage;
        charsKt__CharKt.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            charsKt__CharKt.encodeInlineElement(this.descriptor, i2).encodeInt(iArr[i2]);
        }
    }
}
