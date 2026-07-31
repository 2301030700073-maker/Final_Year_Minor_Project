package org.wikimedia.testkitchen.config.curation;

import j$.util.function.Predicate$CC;
import java.lang.Comparable;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.function.Predicate;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ComparableCurationRules<T extends Comparable<? super T>> implements Predicate<T> {
    public static final Companion Companion = new Companion();
    public Comparable greaterThan;
    public Comparable greaterThanOrEquals;
    public Comparable isEquals;
    public Collection isIn;
    public Comparable isNotEquals;
    public Collection isNotIn;
    public Comparable lessThan;
    public Comparable lessThanOrEquals;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final <T> KSerializer serializer(final KSerializer kSerializer) {
            kSerializer.getClass();
            return new GeneratedSerializer() { // from class: org.wikimedia.testkitchen.config.curation.ComparableCurationRules$$serializer
                private final SerialDescriptor descriptor;

                {
                    PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.curation.ComparableCurationRules", this, 8);
                    pluginGeneratedSerialDescriptor.addElement("is_equals", true);
                    pluginGeneratedSerialDescriptor.addElement("not_equals", true);
                    pluginGeneratedSerialDescriptor.addElement("greater_than", true);
                    pluginGeneratedSerialDescriptor.addElement("less_than", true);
                    pluginGeneratedSerialDescriptor.addElement("greater_than_or_equals", true);
                    pluginGeneratedSerialDescriptor.addElement("less_than_or_equals", true);
                    pluginGeneratedSerialDescriptor.addElement("in", true);
                    pluginGeneratedSerialDescriptor.addElement("not_in", true);
                    this.descriptor = pluginGeneratedSerialDescriptor;
                }

                @Override // kotlinx.serialization.internal.GeneratedSerializer
                public final KSerializer[] childSerializers() {
                    KSerializer kSerializer2 = kSerializer;
                    KSerializer nullable = UnsignedKt.getNullable(kSerializer2);
                    KSerializer nullable2 = UnsignedKt.getNullable(kSerializer2);
                    KSerializer nullable3 = UnsignedKt.getNullable(kSerializer2);
                    KSerializer nullable4 = UnsignedKt.getNullable(kSerializer2);
                    KSerializer nullable5 = UnsignedKt.getNullable(kSerializer2);
                    KSerializer nullable6 = UnsignedKt.getNullable(kSerializer2);
                    ReflectionFactory reflectionFactory = Reflection.factory;
                    return new KSerializer[]{nullable, nullable2, nullable3, nullable4, nullable5, nullable6, UnsignedKt.getNullable(new PolymorphicSerializer(reflectionFactory.getOrCreateKotlinClass(Collection.class), new Annotation[0])), UnsignedKt.getNullable(new PolymorphicSerializer(reflectionFactory.getOrCreateKotlinClass(Collection.class), new Annotation[0]))};
                }

                /* JADX WARN: Type inference failed for: r1v2 */
                /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Comparable, java.util.Collection] */
                /* JADX WARN: Type inference failed for: r1v4 */
                @Override // kotlinx.serialization.KSerializer
                public final Object deserialize(Decoder decoder) {
                    ?? r1;
                    ComparableCurationRules$$serializer comparableCurationRules$$serializer = this;
                    SerialDescriptor serialDescriptor = comparableCurationRules$$serializer.descriptor;
                    CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
                    int i = 0;
                    boolean z = true;
                    Comparable comparable = null;
                    Comparable comparable2 = null;
                    Comparable comparable3 = null;
                    Comparable comparable4 = null;
                    Comparable comparable5 = null;
                    Comparable comparable6 = null;
                    Collection collection = null;
                    Collection collection2 = null;
                    while (z) {
                        int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                        KSerializer kSerializer2 = kSerializer;
                        switch (decodeElementIndex) {
                            case -1:
                                comparableCurationRules$$serializer = this;
                                z = false;
                                continue;
                            case 0:
                                comparable = (Comparable) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, kSerializer2, comparable);
                                i |= 1;
                                break;
                            case 1:
                                comparable2 = (Comparable) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, kSerializer2, comparable2);
                                i |= 2;
                                break;
                            case 2:
                                comparable3 = (Comparable) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, kSerializer2, comparable3);
                                i |= 4;
                                break;
                            case 3:
                                comparable4 = (Comparable) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, kSerializer2, comparable4);
                                i |= 8;
                                break;
                            case 4:
                                comparable5 = (Comparable) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, kSerializer2, comparable5);
                                i |= 16;
                                break;
                            case 5:
                                comparable6 = (Comparable) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, kSerializer2, comparable6);
                                i |= 32;
                                break;
                            case 6:
                                collection = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection);
                                i |= 64;
                                break;
                            case 7:
                                collection2 = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection2);
                                i |= 128;
                                break;
                            default:
                                _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                                return null;
                        }
                        comparableCurationRules$$serializer = this;
                    }
                    beginStructure.endStructure(serialDescriptor);
                    ComparableCurationRules comparableCurationRules = new ComparableCurationRules();
                    if ((i & 1) == 0) {
                        r1 = 0;
                        comparableCurationRules.isEquals = null;
                    } else {
                        r1 = 0;
                        comparableCurationRules.isEquals = comparable;
                    }
                    if ((i & 2) == 0) {
                        comparableCurationRules.isNotEquals = r1;
                    } else {
                        comparableCurationRules.isNotEquals = comparable2;
                    }
                    if ((i & 4) == 0) {
                        comparableCurationRules.greaterThan = r1;
                    } else {
                        comparableCurationRules.greaterThan = comparable3;
                    }
                    if ((i & 8) == 0) {
                        comparableCurationRules.lessThan = r1;
                    } else {
                        comparableCurationRules.lessThan = comparable4;
                    }
                    if ((i & 16) == 0) {
                        comparableCurationRules.greaterThanOrEquals = r1;
                    } else {
                        comparableCurationRules.greaterThanOrEquals = comparable5;
                    }
                    if ((i & 32) == 0) {
                        comparableCurationRules.lessThanOrEquals = r1;
                    } else {
                        comparableCurationRules.lessThanOrEquals = comparable6;
                    }
                    if ((i & 64) == 0) {
                        comparableCurationRules.isIn = r1;
                    } else {
                        comparableCurationRules.isIn = collection;
                    }
                    if ((i & 128) == 0) {
                        comparableCurationRules.isNotIn = r1;
                        return comparableCurationRules;
                    }
                    comparableCurationRules.isNotIn = collection2;
                    return comparableCurationRules;
                }

                @Override // kotlinx.serialization.KSerializer
                public final SerialDescriptor getDescriptor() {
                    return this.descriptor;
                }

                @Override // kotlinx.serialization.KSerializer
                public final void serialize(UuidKt uuidKt, Object obj) {
                    ComparableCurationRules comparableCurationRules = (ComparableCurationRules) obj;
                    comparableCurationRules.getClass();
                    Collection collection = comparableCurationRules.isNotIn;
                    Collection collection2 = comparableCurationRules.isIn;
                    Comparable comparable = comparableCurationRules.lessThanOrEquals;
                    Comparable comparable2 = comparableCurationRules.greaterThanOrEquals;
                    Comparable comparable3 = comparableCurationRules.lessThan;
                    Comparable comparable4 = comparableCurationRules.greaterThan;
                    Comparable comparable5 = comparableCurationRules.isNotEquals;
                    Comparable comparable6 = comparableCurationRules.isEquals;
                    SerialDescriptor serialDescriptor = this.descriptor;
                    UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
                    boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
                    KSerializer kSerializer2 = kSerializer;
                    if (shouldEncodeElementDefault || comparable6 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, kSerializer2, comparable6);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparable5 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, kSerializer2, comparable5);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparable4 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, kSerializer2, comparable4);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparable3 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, kSerializer2, comparable3);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparable2 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, kSerializer2, comparable2);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparable != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, kSerializer2, comparable);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || collection2 != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection2);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || collection != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection);
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
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.curation.ComparableCurationRules", null, 8);
        pluginGeneratedSerialDescriptor.addElement("is_equals", true);
        pluginGeneratedSerialDescriptor.addElement("not_equals", true);
        pluginGeneratedSerialDescriptor.addElement("greater_than", true);
        pluginGeneratedSerialDescriptor.addElement("less_than", true);
        pluginGeneratedSerialDescriptor.addElement("greater_than_or_equals", true);
        pluginGeneratedSerialDescriptor.addElement("less_than_or_equals", true);
        pluginGeneratedSerialDescriptor.addElement("in", true);
        pluginGeneratedSerialDescriptor.addElement("not_in", true);
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
        Comparable comparable = (Comparable) obj;
        if (comparable == null) {
            return false;
        }
        Comparable comparable2 = this.isEquals;
        if (comparable2 != null && !Intrinsics.areEqual(comparable2, comparable)) {
            return false;
        }
        Comparable comparable3 = this.isNotEquals;
        if (comparable3 != null && Intrinsics.areEqual(comparable3, comparable)) {
            return false;
        }
        Comparable comparable4 = this.greaterThan;
        if (comparable4 != null && comparable4.compareTo(comparable) >= 0) {
            return false;
        }
        Comparable comparable5 = this.lessThan;
        if (comparable5 != null && comparable5.compareTo(comparable) <= 0) {
            return false;
        }
        Comparable comparable6 = this.greaterThanOrEquals;
        if (comparable6 != null && comparable6.compareTo(comparable) > 0) {
            return false;
        }
        Comparable comparable7 = this.lessThanOrEquals;
        if (comparable7 != null && comparable7.compareTo(comparable) < 0) {
            return false;
        }
        Collection collection = this.isIn;
        if (collection != null && !collection.contains(comparable)) {
            return false;
        }
        Collection collection2 = this.isNotIn;
        return collection2 == null || !collection2.contains(comparable);
    }
}
