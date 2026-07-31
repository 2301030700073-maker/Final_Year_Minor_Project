package kotlinx.serialization.internal;

import androidx.compose.ui.Modifier;
import androidx.sqlite.SQLite;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlinx.serialization.descriptors.PrimitiveKind$INT;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LinkedHashMapSerializer extends AbstractCollectionSerializer {
    public final LinkedHashMapClassDesc descriptor;

    public LinkedHashMapSerializer() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        this.descriptor = new LinkedHashMapClassDesc(StringSerializer.descriptor, JsonElementSerializer.descriptor);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object builder() {
        return new LinkedHashMap();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int builderSize(Object obj) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
        linkedHashMap.getClass();
        return linkedHashMap.size() * 2;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Iterator collectionIterator(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.entrySet().iterator();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int collectionSize(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        return map.size();
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void readElement(CompositeDecoder compositeDecoder, int i, Object obj) {
        Map map = (Map) obj;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        map.getClass();
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        LinkedHashMapClassDesc linkedHashMapClassDesc = this.descriptor;
        Object decodeSerializableElement = compositeDecoder.decodeSerializableElement(linkedHashMapClassDesc, i, stringSerializer, null);
        int decodeElementIndex = compositeDecoder.decodeElementIndex(linkedHashMapClassDesc);
        if (decodeElementIndex == i + 1) {
            map.put(decodeSerializableElement, (!map.containsKey(decodeSerializableElement) || (JsonElementSerializer.descriptor.kind instanceof PrimitiveKind$INT)) ? compositeDecoder.decodeSerializableElement(linkedHashMapClassDesc, decodeElementIndex, jsonElementSerializer, null) : compositeDecoder.decodeSerializableElement(linkedHashMapClassDesc, decodeElementIndex, jsonElementSerializer, MapsKt__MapsKt.getValue(decodeSerializableElement, map)));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, decodeElementIndex, "Value must follow key in a map, index for key: ", ", returned index for value: "));
        }
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, Object obj) {
        collectionSize(obj);
        LinkedHashMapClassDesc linkedHashMapClassDesc = this.descriptor;
        SQLite beginCollection = ((SQLite) encoder).beginCollection(linkedHashMapClassDesc);
        Iterator collectionIterator = collectionIterator(obj);
        int i = 0;
        while (collectionIterator.hasNext()) {
            Map.Entry entry = (Map.Entry) collectionIterator.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            beginCollection.encodeSerializableElement(linkedHashMapClassDesc, i, StringSerializer.INSTANCE, key);
            i += 2;
            beginCollection.encodeSerializableElement(linkedHashMapClassDesc, i2, JsonElementSerializer.INSTANCE, value);
        }
        beginCollection.endStructure(linkedHashMapClassDesc);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toBuilder(Object obj) {
        throw null;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object toResult(Object obj) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) obj;
        linkedHashMap.getClass();
        return linkedHashMap;
    }
}
