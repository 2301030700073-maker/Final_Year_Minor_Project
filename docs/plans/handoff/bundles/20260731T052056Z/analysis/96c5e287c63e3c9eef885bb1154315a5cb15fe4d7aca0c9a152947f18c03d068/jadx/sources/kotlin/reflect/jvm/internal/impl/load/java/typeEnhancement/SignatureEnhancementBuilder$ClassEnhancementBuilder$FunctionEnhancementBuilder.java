package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder {
    public final ArrayList parameters = new ArrayList();
    public Pair returnType = new Pair("V", null);

    public SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder(FormBody.Builder builder, String str) {
    }

    public final void parameter(String str, JavaTypeQualifiers... javaTypeQualifiersArr) {
        TypeEnhancementInfo typeEnhancementInfo;
        str.getClass();
        if (javaTypeQualifiersArr.length == 0) {
            typeEnhancementInfo = null;
        } else {
            IndexingIterable indexingIterable = new IndexingIterable(0, new Worker$$ExternalSyntheticLambda0(20, javaTypeQualifiersArr));
            int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(indexingIterable, 10));
            if (mapCapacity < 16) {
                mapCapacity = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
            Iterator it = indexingIterable.iterator();
            while (true) {
                IndexingIterator indexingIterator = (IndexingIterator) it;
                if (!indexingIterator.iterator.hasNext()) {
                    break;
                }
                IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                linkedHashMap.put(Integer.valueOf(indexedValue.index), (JavaTypeQualifiers) indexedValue.value);
            }
            typeEnhancementInfo = new TypeEnhancementInfo(linkedHashMap);
        }
        this.parameters.add(new Pair(str, typeEnhancementInfo));
    }

    public final void returns(String str, JavaTypeQualifiers... javaTypeQualifiersArr) {
        str.getClass();
        IndexingIterable indexingIterable = new IndexingIterable(0, new Worker$$ExternalSyntheticLambda0(20, javaTypeQualifiersArr));
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(indexingIterable, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        Iterator it = indexingIterable.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.iterator.hasNext()) {
                this.returnType = new Pair(str, new TypeEnhancementInfo(linkedHashMap));
                return;
            } else {
                IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                linkedHashMap.put(Integer.valueOf(indexedValue.index), (JavaTypeQualifiers) indexedValue.value);
            }
        }
    }

    public final void returns(JvmPrimitiveType jvmPrimitiveType) {
        jvmPrimitiveType.getClass();
        String desc = jvmPrimitiveType.getDesc();
        desc.getClass();
        this.returnType = new Pair(desc, null);
    }
}
