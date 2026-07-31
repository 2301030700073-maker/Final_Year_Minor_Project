package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final void writeContent(SQLite sQLite, Object obj, int i) {
        char[] cArr = (char[]) obj;
        sQLite.getClass();
        cArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            char c = cArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            sQLite.encodeElement(primitiveArrayDescriptor, i2);
            sQLite.encodeChar(c);
        }
    }
}
