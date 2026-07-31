package kotlinx.serialization.internal;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharArraySerializer extends PrimitiveArraySerializer {
    public static final CharArraySerializer INSTANCE = new CharArraySerializer(CharSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return cArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new char[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        CharArrayBuilder charArrayBuilder = (CharArrayBuilder) obj;
        charArrayBuilder.getClass();
        char decodeCharElement = compositeDecoder.decodeCharElement(this.descriptor, i);
        charArrayBuilder.ensureCapacity$kotlinx_serialization_core(charArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        char[] cArr = charArrayBuilder.buffer;
        int i2 = charArrayBuilder.position;
        charArrayBuilder.position = i2 + 1;
        cArr[i2] = decodeCharElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        CharArrayBuilder charArrayBuilder = new CharArrayBuilder();
        charArrayBuilder.buffer = cArr;
        charArrayBuilder.position = cArr.length;
        charArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return charArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        char[] cArr = (char[]) obj;
        charsKt__CharKt.getClass();
        cArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            char c = cArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            charsKt__CharKt.encodeElement(primitiveArrayDescriptor, i2);
            charsKt__CharKt.encodeChar(c);
        }
    }
}
