package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PrimitiveArraySerializer extends CollectionLikeSerializer {
    public final PrimitiveArrayDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimitiveArraySerializer(KSerializer kSerializer) {
        super(kSerializer);
        kSerializer.getClass();
        this.descriptor = new PrimitiveArrayDescriptor(kSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object builder() {
        return (PrimitiveArrayBuilder) toBuilder(empty());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int builderSize(Object obj) {
        PrimitiveArrayBuilder primitiveArrayBuilder = (PrimitiveArrayBuilder) obj;
        primitiveArrayBuilder.getClass();
        return primitiveArrayBuilder.getPosition$kotlinx_serialization_core();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Iterator collectionIterator(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        return merge(decoder);
    }

    public abstract Object empty();

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public final void insert(int i, Object obj, Object obj2) {
        ((PrimitiveArrayBuilder) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        int collectionSize = collectionSize(obj);
        PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
        primitiveArrayDescriptor.getClass();
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(primitiveArrayDescriptor);
        writeContent(beginStructure, obj, collectionSize);
        beginStructure.endStructure(primitiveArrayDescriptor);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toResult(Object obj) {
        PrimitiveArrayBuilder primitiveArrayBuilder = (PrimitiveArrayBuilder) obj;
        primitiveArrayBuilder.getClass();
        return primitiveArrayBuilder.build$kotlinx_serialization_core();
    }

    public abstract void writeContent(CharsKt__CharKt charsKt__CharKt, Object obj, int i);
}
