package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        int collectionSize = collectionSize(obj);
        SerialDescriptor descriptor = getDescriptor();
        descriptor.getClass();
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(descriptor);
        Iterator collectionIterator = collectionIterator(obj);
        for (int i = 0; i < collectionSize; i++) {
            beginStructure.encodeSerializableElement(getDescriptor(), i, this.elementSerializer, collectionIterator.next());
        }
        beginStructure.endStructure(descriptor);
    }
}
