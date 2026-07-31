package kotlinx.serialization.internal;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final void writeContent(UuidKt uuidKt, Object obj, int i) {
        char[] cArr = (char[]) obj;
        uuidKt.getClass();
        cArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            char c = cArr[i2];
            uuidKt.encodeElement(this.descriptor, i2);
            uuidKt.encodeChar(c);
        }
    }
}
