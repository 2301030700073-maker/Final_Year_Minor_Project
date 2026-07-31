package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CollectionLikeSerializer extends AbstractCollectionSerializer {
    public final KSerializer elementSerializer;

    public CollectionLikeSerializer(KSerializer kSerializer) {
        this.elementSerializer = kSerializer;
    }

    public abstract void insert(int i, Object obj, Object obj2);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        insert(i, obj, compositeDecoder.decodeSerializableElement(getDescriptor(), i, this.elementSerializer, null));
    }

    @Override // kotlinx.serialization.KSerializer
    public void serialize(UuidKt uuidKt, Object obj) {
        int collectionSize = collectionSize(obj);
        SerialDescriptor descriptor = getDescriptor();
        descriptor.getClass();
        UuidKt beginStructure = uuidKt.beginStructure(descriptor);
        Iterator collectionIterator = collectionIterator(obj);
        for (int i = 0; i < collectionSize; i++) {
            beginStructure.encodeSerializableElement(getDescriptor(), i, this.elementSerializer, collectionIterator.next());
        }
        beginStructure.endStructure(descriptor);
    }
}
