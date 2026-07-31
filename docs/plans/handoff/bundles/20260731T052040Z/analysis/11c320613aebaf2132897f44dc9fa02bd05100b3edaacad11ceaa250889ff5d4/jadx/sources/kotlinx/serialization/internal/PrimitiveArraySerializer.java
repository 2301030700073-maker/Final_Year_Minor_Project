package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    /* renamed from: deserialize */
    public final Object mo469deserialize(Decoder decoder) {
        return merge(decoder);
    }

    public abstract Object empty();

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public final void insert(Object obj, Object obj2, int i) {
        ((PrimitiveArrayBuilder) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        int collectionSize = collectionSize(obj);
        PrimitiveArrayDescriptor primitiveArrayDescriptor = this.descriptor;
        SQLite beginCollection = ((SQLite) encoder).beginCollection(primitiveArrayDescriptor);
        writeContent(beginCollection, obj, collectionSize);
        beginCollection.endStructure(primitiveArrayDescriptor);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toResult(Object obj) {
        PrimitiveArrayBuilder primitiveArrayBuilder = (PrimitiveArrayBuilder) obj;
        primitiveArrayBuilder.getClass();
        return primitiveArrayBuilder.build$kotlinx_serialization_core();
    }

    public abstract void writeContent(SQLite sQLite, Object obj, int i);
}
