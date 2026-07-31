package kotlinx.serialization.internal;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FloatArraySerializer extends PrimitiveArraySerializer {
    public static final FloatArraySerializer INSTANCE = new FloatArraySerializer(FloatSerializer.INSTANCE);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object empty() {
        return new float[0];
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        FloatArrayBuilder floatArrayBuilder = (FloatArrayBuilder) obj;
        floatArrayBuilder.getClass();
        float decodeFloatElement = compositeDecoder.decodeFloatElement(this.descriptor, i);
        floatArrayBuilder.ensureCapacity$kotlinx_serialization_core(floatArrayBuilder.getPosition$kotlinx_serialization_core() + 1);
        float[] fArr = floatArrayBuilder.buffer;
        int i2 = floatArrayBuilder.position;
        floatArrayBuilder.position = i2 + 1;
        fArr[i2] = decodeFloatElement;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        FloatArrayBuilder floatArrayBuilder = new FloatArrayBuilder();
        floatArrayBuilder.buffer = fArr;
        floatArrayBuilder.position = fArr.length;
        floatArrayBuilder.ensureCapacity$kotlinx_serialization_core(10);
        return floatArrayBuilder;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i) {
        float[] fArr = (float[]) obj;
        charsKt__CharKt.getClass();
        fArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
            primitiveArrayDescriptor.getClass();
            charsKt__CharKt.encodeElement(primitiveArrayDescriptor, i2);
            charsKt__CharKt.encodeFloat(f);
        }
    }
}
