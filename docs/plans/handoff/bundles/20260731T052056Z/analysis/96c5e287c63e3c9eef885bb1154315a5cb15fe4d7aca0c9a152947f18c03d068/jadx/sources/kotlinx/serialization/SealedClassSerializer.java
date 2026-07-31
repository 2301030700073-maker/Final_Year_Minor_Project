package kotlinx.serialization;

import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import java.lang.annotation.Annotation;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SealedClassSerializer extends AbstractPolymorphicSerializer {
    public final List _annotations;
    public final KClass baseClass;
    public final Map class2Serializer;
    public final Lazy descriptor$delegate;
    public final LinkedHashMap serialName2Serializer;

    public SealedClassSerializer(String str, KClass kClass, KClass[] kClassArr, KSerializer[] kSerializerArr, Annotation[] annotationArr) {
        kClass.getClass();
        this.baseClass = kClass;
        this._annotations = EmptyList.INSTANCE;
        this.descriptor$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Regex$$ExternalSyntheticLambda0(3, str, this));
        if (kClassArr.length != kSerializerArr.length) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m$2(kClass.getSimpleName(), " should be marked @Serializable", "All subclasses of sealed class ");
            throw null;
        }
        Map map = MapsKt__MapsKt.toMap(ArraysKt___ArraysKt.zip(kClassArr, kSerializerArr));
        this.class2Serializer = map;
        Set<Map.Entry> entrySet = map.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : entrySet) {
            String serialName = ((KSerializer) entry.getValue()).getDescriptor().getSerialName();
            Object obj = linkedHashMap.get(serialName);
            if (obj == null) {
                linkedHashMap.containsKey(serialName);
            }
            Map.Entry entry2 = (Map.Entry) obj;
            if (entry2 != null) {
                StringBuilder sb = new StringBuilder("Multiple sealed subclasses of '");
                sb.append(this.baseClass);
                sb.append("' have the same serial name '");
                sb.append(serialName);
                sb.append("': '");
                sb.append(entry2.getKey());
                Object key = entry.getKey();
                sb.append("', '");
                sb.append(key);
                sb.append('\'');
                throw new IllegalStateException(sb.toString().toString());
            }
            linkedHashMap.put(serialName, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.serialName2Serializer = linkedHashMap2;
        List asList = Arrays.asList(annotationArr);
        asList.getClass();
        this._annotations = asList;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KSerializer findPolymorphicSerializerOrNull(UuidKt uuidKt, Object obj) {
        KSerializer kSerializer;
        obj.getClass();
        KSerializer kSerializer2 = (KSerializer) this.class2Serializer.get(Reflection.factory.getOrCreateKotlinClass(obj.getClass()));
        if (kSerializer2 != null) {
            kSerializer = kSerializer2;
        } else {
            super.findPolymorphicSerializerOrNull(uuidKt, obj);
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        return null;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KClass getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KSerializer findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        KSerializer kSerializer = (KSerializer) this.serialName2Serializer.get(str);
        if (kSerializer != null) {
            return kSerializer;
        }
        super.findPolymorphicSerializerOrNull(compositeDecoder, str);
        return null;
    }
}
