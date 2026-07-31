package kotlinx.serialization.internal;

import androidx.sqlite.SQLite;
import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CollectionLikeSerializer extends AbstractCollectionSerializer {
    public final KSerializer elementSerializer;

    public CollectionLikeSerializer(KSerializer kSerializer) {
        this.elementSerializer = kSerializer;
    }

    public abstract void insert(Object obj, Object obj2, int i);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        insert(obj, compositeDecoder.decodeSerializableElement(getDescriptor(), i, this.elementSerializer, null), i);
    }

    @Override // kotlinx.serialization.KSerializer
    public void serialize(Encoder encoder, Object obj) {
        int collectionSize = collectionSize(obj);
        SerialDescriptor descriptor = getDescriptor();
        SQLite beginCollection = ((SQLite) encoder).beginCollection(descriptor);
        Iterator collectionIterator = collectionIterator(obj);
        for (int i = 0; i < collectionSize; i++) {
            beginCollection.encodeSerializableElement(getDescriptor(), i, this.elementSerializer, collectionIterator.next());
        }
        beginCollection.endStructure(descriptor);
    }
}
