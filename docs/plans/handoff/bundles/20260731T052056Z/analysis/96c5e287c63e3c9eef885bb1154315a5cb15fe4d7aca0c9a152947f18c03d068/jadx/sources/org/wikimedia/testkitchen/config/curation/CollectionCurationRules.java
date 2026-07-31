package org.wikimedia.testkitchen.config.curation;

import androidx.room.Room;
import j$.util.function.Predicate$CC;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class CollectionCurationRules<T> implements Predicate<Collection<? extends T>> {
    public static final Companion Companion = new Companion();
    public Object contains;
    public Collection containsAll;
    public Collection containsAny;
    public Object doesNotContain;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final <T> KSerializer serializer(final KSerializer kSerializer) {
            kSerializer.getClass();
            return new GeneratedSerializer() { // from class: org.wikimedia.testkitchen.config.curation.CollectionCurationRules$$serializer
                private final SerialDescriptor descriptor;

                {
                    PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.curation.CollectionCurationRules", this, 4);
                    pluginGeneratedSerialDescriptor.addElement("contains", true);
                    pluginGeneratedSerialDescriptor.addElement("does_not_contain", true);
                    pluginGeneratedSerialDescriptor.addElement("contains_all", true);
                    pluginGeneratedSerialDescriptor.addElement("contains_any", true);
                    this.descriptor = pluginGeneratedSerialDescriptor;
                }

                @Override // kotlinx.serialization.internal.GeneratedSerializer
                public final KSerializer[] childSerializers() {
                    KSerializer kSerializer2 = kSerializer;
                    return new KSerializer[]{UnsignedKt.getNullable(kSerializer2), UnsignedKt.getNullable(kSerializer2), UnsignedKt.getNullable(new HashSetSerializer(kSerializer2, 1)), UnsignedKt.getNullable(new HashSetSerializer(kSerializer2, 1))};
                }

                @Override // kotlinx.serialization.KSerializer
                public final Object deserialize(Decoder decoder) {
                    SerialDescriptor serialDescriptor = this.descriptor;
                    CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
                    boolean z = true;
                    int i = 0;
                    Object obj = null;
                    Object obj2 = null;
                    Collection collection = null;
                    Collection collection2 = null;
                    while (z) {
                        int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                        if (decodeElementIndex != -1) {
                            KSerializer kSerializer2 = kSerializer;
                            if (decodeElementIndex == 0) {
                                obj = beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, kSerializer2, obj);
                                i |= 1;
                            } else if (decodeElementIndex == 1) {
                                obj2 = beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, kSerializer2, obj2);
                                i |= 2;
                            } else if (decodeElementIndex == 2) {
                                collection = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, new HashSetSerializer(kSerializer2, 1), collection);
                                i |= 4;
                            } else {
                                if (decodeElementIndex != 3) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                                    return null;
                                }
                                collection2 = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, new HashSetSerializer(kSerializer2, 1), collection2);
                                i |= 8;
                            }
                        } else {
                            z = false;
                        }
                    }
                    beginStructure.endStructure(serialDescriptor);
                    CollectionCurationRules collectionCurationRules = new CollectionCurationRules();
                    if ((i & 1) == 0) {
                        collectionCurationRules.contains = null;
                    } else {
                        collectionCurationRules.contains = obj;
                    }
                    if ((i & 2) == 0) {
                        collectionCurationRules.doesNotContain = null;
                    } else {
                        collectionCurationRules.doesNotContain = obj2;
                    }
                    if ((i & 4) == 0) {
                        collectionCurationRules.containsAll = null;
                    } else {
                        collectionCurationRules.containsAll = collection;
                    }
                    if ((i & 8) == 0) {
                        collectionCurationRules.containsAny = null;
                        return collectionCurationRules;
                    }
                    collectionCurationRules.containsAny = collection2;
                    return collectionCurationRules;
                }

                @Override // kotlinx.serialization.KSerializer
                public final SerialDescriptor getDescriptor() {
                    return this.descriptor;
                }

                @Override // kotlinx.serialization.KSerializer
                public final void serialize(UuidKt uuidKt, Object obj) {
                    CollectionCurationRules collectionCurationRules = (CollectionCurationRules) obj;
                    collectionCurationRules.getClass();
                    Collection collection = collectionCurationRules.containsAny;
                    Collection collection2 = collectionCurationRules.containsAll;
                    Object obj2 = collectionCurationRules.doesNotContain;
                    Object obj3 = collectionCurationRules.contains;
                    SerialDescriptor serialDescriptor = this.descriptor;
                    UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
                    boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
                    KSerializer kSerializer2 = kSerializer;
                    if (shouldEncodeElementDefault || obj3 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, kSerializer2, obj3);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || obj2 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, kSerializer2, obj2);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || collection2 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, new HashSetSerializer(kSerializer2, 1), collection2);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || collection != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, new HashSetSerializer(kSerializer2, 1), collection);
                    }
                    beginStructure.endStructure(serialDescriptor);
                }

                @Override // kotlinx.serialization.internal.GeneratedSerializer
                public final KSerializer[] typeParametersSerializers() {
                    return new KSerializer[]{kSerializer};
                }
            };
        }
    }

    static {
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.curation.CollectionCurationRules", null, 4);
        pluginGeneratedSerialDescriptor.addElement("contains", true);
        pluginGeneratedSerialDescriptor.addElement("does_not_contain", true);
        pluginGeneratedSerialDescriptor.addElement("contains_all", true);
        pluginGeneratedSerialDescriptor.addElement("contains_any", true);
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Object obj2;
        Object obj3;
        Collection<?> collection;
        int i;
        Collection collection2 = (Collection) obj;
        Collection collection3 = this.containsAny;
        if (collection2 != null && (((obj2 = this.contains) == null || CollectionsKt.contains(collection2, obj2)) && (((obj3 = this.doesNotContain) == null || !CollectionsKt.contains(collection2, obj3)) && ((collection = this.containsAll) == null || collection2.containsAll(collection))))) {
            if (collection3 == null) {
                return true;
            }
            Collection collection4 = collection2;
            if (collection4.isEmpty()) {
                i = 0;
            } else {
                Iterator<T> it = collection4.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (CollectionsKt.contains(collection3, it.next()) && (i = i + 1) < 0) {
                        Room.throwCountOverflow();
                        throw null;
                    }
                }
            }
            if (i > 0) {
                return true;
            }
        }
        return false;
    }
}
