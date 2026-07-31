package kotlinx.serialization;

import androidx.sqlite.SQLite;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
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
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SealedClassSerializer extends AbstractPolymorphicSerializer {
    public final List _annotations;
    public final ClassReference baseClass;
    public final Map class2Serializer;
    public final Lazy descriptor$delegate = ResultKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Worker$$ExternalSyntheticLambda0(this, 29));
    public final LinkedHashMap serialName2Serializer;

    public SealedClassSerializer(ClassReference classReference, ClassReference[] classReferenceArr, KSerializer[] kSerializerArr, Annotation[] annotationArr) {
        this.baseClass = classReference;
        this._annotations = EmptyList.INSTANCE;
        if (classReferenceArr.length != kSerializerArr.length) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m(classReference.getSimpleName(), " should be marked @Serializable", "All subclasses of sealed class ");
            throw null;
        }
        int min = Math.min(classReferenceArr.length, kSerializerArr.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(new Pair(classReferenceArr[i], kSerializerArr[i]));
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
        List asList = Arrays.asList(annotationArr);
        asList.getClass();
        this._annotations = asList;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final KSerializer findPolymorphicSerializerOrNull(SQLite sQLite, Object obj) {
        obj.getClass();
        KSerializer kSerializer = (KSerializer) this.class2Serializer.get(Reflection.getOrCreateKotlinClass(obj.getClass()));
        KSerializer findPolymorphicSerializerOrNull = kSerializer != null ? kSerializer : super.findPolymorphicSerializerOrNull(sQLite, obj);
        if (findPolymorphicSerializerOrNull != null) {
            return findPolymorphicSerializerOrNull;
        }
        return null;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final ClassReference getBaseClass() {
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
