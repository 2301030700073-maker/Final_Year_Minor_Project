package org.wikimedia.testkitchen.config.curation;

import j$.util.function.Predicate$CC;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.function.Predicate;
import kotlin.UnsignedKt;
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
public final class CurationRules<T> implements Predicate<T> {
    public static final Companion Companion = new Companion();
    public Object isEquals;
    public Collection isIn;
    public Object isNotEquals;
    public Collection isNotIn;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final <T> KSerializer serializer(final KSerializer kSerializer) {
            kSerializer.getClass();
            return new GeneratedSerializer() { // from class: org.wikimedia.testkitchen.config.curation.CurationRules$$serializer
                private final SerialDescriptor descriptor;

                {
                    PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.curation.CurationRules", this, 4);
                    pluginGeneratedSerialDescriptor.addElement("equals", true);
                    pluginGeneratedSerialDescriptor.addElement("not_equals", true);
                    pluginGeneratedSerialDescriptor.addElement("in", true);
                    pluginGeneratedSerialDescriptor.addElement("not_in", true);
                    this.descriptor = pluginGeneratedSerialDescriptor;
                }

                @Override // kotlinx.serialization.internal.GeneratedSerializer
                public final KSerializer[] childSerializers() {
                    KSerializer kSerializer2 = kSerializer;
                    KSerializer nullable = UnsignedKt.getNullable(kSerializer2);
                    KSerializer nullable2 = UnsignedKt.getNullable(kSerializer2);
                    ReflectionFactory reflectionFactory = Reflection.factory;
                    return new KSerializer[]{nullable, nullable2, UnsignedKt.getNullable(new PolymorphicSerializer(reflectionFactory.getOrCreateKotlinClass(Collection.class), new Annotation[0])), UnsignedKt.getNullable(new PolymorphicSerializer(reflectionFactory.getOrCreateKotlinClass(Collection.class), new Annotation[0]))};
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
                                collection = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection);
                                i |= 4;
                            } else {
                                if (decodeElementIndex != 3) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                                    return null;
                                }
                                collection2 = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection2);
                                i |= 8;
                            }
                        } else {
                            z = false;
                        }
                    }
                    beginStructure.endStructure(serialDescriptor);
                    CurationRules curationRules = new CurationRules();
                    if ((i & 1) == 0) {
                        curationRules.isEquals = null;
                    } else {
                        curationRules.isEquals = obj;
                    }
                    if ((i & 2) == 0) {
                        curationRules.isNotEquals = null;
                    } else {
                        curationRules.isNotEquals = obj2;
                    }
                    if ((i & 4) == 0) {
                        curationRules.isIn = null;
                    } else {
                        curationRules.isIn = collection;
                    }
                    if ((i & 8) == 0) {
                        curationRules.isNotIn = null;
                        return curationRules;
                    }
                    curationRules.isNotIn = collection2;
                    return curationRules;
                }

                @Override // kotlinx.serialization.KSerializer
                public final SerialDescriptor getDescriptor() {
                    return this.descriptor;
                }

                @Override // kotlinx.serialization.KSerializer
                public final void serialize(UuidKt uuidKt, Object obj) {
                    CurationRules curationRules = (CurationRules) obj;
                    curationRules.getClass();
                    Collection collection = curationRules.isNotIn;
                    Collection collection2 = curationRules.isIn;
                    Object obj2 = curationRules.isNotEquals;
                    Object obj3 = curationRules.isEquals;
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
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection2);
                    }
                    if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || collection != null) {
                        beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, new PolymorphicSerializer(Reflection.factory.getOrCreateKotlinClass(Collection.class), new Annotation[0]), collection);
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
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.curation.CurationRules", null, 4);
        pluginGeneratedSerialDescriptor.addElement("equals", true);
        pluginGeneratedSerialDescriptor.addElement("not_equals", true);
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

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
    
        if (r1.contains(r3) != false) goto L17;
     */
    @Override // java.util.function.Predicate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean test(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 != 0) goto L4
            return r0
        L4:
            java.lang.Object r1 = r2.isEquals
            if (r1 == 0) goto Le
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L33
        Le:
            java.lang.Object r1 = r2.isNotEquals
            if (r1 == 0) goto L18
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 != 0) goto L33
        L18:
            java.util.Collection r1 = r2.isIn
            if (r1 == 0) goto L25
            r1.getClass()
            boolean r1 = r1.contains(r3)
            if (r1 == 0) goto L33
        L25:
            java.util.Collection r2 = r2.isNotIn
            if (r2 == 0) goto L34
            r2.getClass()
            boolean r2 = r2.contains(r3)
            if (r2 != 0) goto L33
            goto L34
        L33:
            return r0
        L34:
            r2 = 1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikimedia.testkitchen.config.curation.CurationRules.test(java.lang.Object):boolean");
    }
}
