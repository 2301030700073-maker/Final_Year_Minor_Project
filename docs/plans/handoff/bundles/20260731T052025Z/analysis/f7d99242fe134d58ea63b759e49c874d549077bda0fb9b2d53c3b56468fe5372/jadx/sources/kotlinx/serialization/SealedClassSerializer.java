package kotlinx.serialization;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SealedClassSerializer extends AbstractPolymorphicSerializer {
    public List _annotations = EmptyList.INSTANCE;
    public final ClassReference baseClass;
    public final Map class2Serializer;
    public final Lazy descriptor$delegate;
    public final LinkedHashMap serialName2Serializer;

    public SealedClassSerializer(String str, ClassReference classReference, KClass[] kClassArr, KSerializer[] kSerializerArr) {
        this.baseClass = classReference;
        int i = 0;
        this.descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SealedClassSerializer$$ExternalSyntheticLambda0(i, str, this));
        if (kClassArr.length != kSerializerArr.length) {
            Regex$$ExternalSyntheticBUOutline0.m$1(classReference.getSimpleName(), " should be marked @Serializable", "All subclasses of sealed class ");
            throw null;
        }
        int min = Math.min(kClassArr.length, kSerializerArr.length);
        ArrayList arrayList = new ArrayList(min);
        while (i < min) {
            arrayList.add(new Pair(kClassArr[i], kSerializerArr[i]));
            i++;
        }
        Map map = MapsKt__MapsKt.toMap(arrayList);
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
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KSerializer findPolymorphicSerializerOrNull(CharsKt__CharKt charsKt__CharKt, Object obj) {
        obj.getClass();
        KSerializer kSerializer = (KSerializer) this.class2Serializer.get(Reflection.getOrCreateKotlinClass(obj.getClass()));
        KSerializer findPolymorphicSerializerOrNull = kSerializer != null ? kSerializer : super.findPolymorphicSerializerOrNull(charsKt__CharKt, obj);
        if (findPolymorphicSerializerOrNull != null) {
            return findPolymorphicSerializerOrNull;
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
        return kSerializer != null ? kSerializer : super.findPolymorphicSerializerOrNull(compositeDecoder, str);
    }
}
