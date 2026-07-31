package kotlinx.serialization.descriptors;

import androidx.room.Room;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.CachedNames;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SerialDescriptorImpl implements SerialDescriptor, CachedNames {
    public final SynchronizedLazyImpl _hashCode$delegate;
    public final List annotations;
    public final List[] elementAnnotations;
    public final SerialDescriptor[] elementDescriptors;
    public final String[] elementNames;
    public final boolean[] elementOptionality;
    public final int elementsCount;
    public final Room kind;
    public final Map name2Index;
    public final String serialName;
    public final HashSet serialNames;
    public final SerialDescriptor[] typeParametersDescriptors;

    public SerialDescriptorImpl(String str, Room room, int i, List list, ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        this.serialName = str;
        this.kind = room;
        this.elementsCount = i;
        this.annotations = classSerialDescriptorBuilder.annotations;
        ArrayList arrayList = classSerialDescriptorBuilder.elementNames;
        HashSet hashSet = new HashSet(MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 12)));
        CollectionsKt.toCollection(arrayList, hashSet);
        this.serialNames = hashSet;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.elementNames = strArr;
        this.elementDescriptors = TuplesKt.compactArray(classSerialDescriptorBuilder.elementDescriptors);
        this.elementAnnotations = (List[]) classSerialDescriptorBuilder.elementAnnotations.toArray(new List[0]);
        this.elementOptionality = CollectionsKt.toBooleanArray(classSerialDescriptorBuilder.elementOptionality);
        strArr.getClass();
        IndexingIterable indexingIterable = new IndexingIterable(0, new Worker$$ExternalSyntheticLambda0(20, strArr));
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(indexingIterable, 10));
        Iterator it = indexingIterable.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.iterator.hasNext()) {
                this.name2Index = MapsKt__MapsKt.toMap(arrayList2);
                this.typeParametersDescriptors = TuplesKt.compactArray(list);
                this._hashCode$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(25, this));
                return;
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            arrayList2.add(new Pair(indexedValue.value, Integer.valueOf(indexedValue.index)));
        }
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (this.serialName.equals(serialDescriptor.getSerialName()) && Arrays.equals(this.typeParametersDescriptors, ((SerialDescriptorImpl) obj).typeParametersDescriptors)) {
                int elementsCount = serialDescriptor.getElementsCount();
                int i2 = this.elementsCount;
                if (i2 == elementsCount) {
                    for (0; i < i2; i + 1) {
                        SerialDescriptor[] serialDescriptorArr = this.elementDescriptors;
                        i = (Intrinsics.areEqual(serialDescriptorArr[i].getSerialName(), serialDescriptor.getElementDescriptor(i).getSerialName()) && Intrinsics.areEqual(serialDescriptorArr[i].getKind(), serialDescriptor.getElementDescriptor(i).getKind())) ? i + 1 : 0;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getAnnotations() {
        return this.annotations;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getElementAnnotations(int i) {
        return this.elementAnnotations[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor getElementDescriptor(int i) {
        return this.elementDescriptors[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementIndex(String str) {
        str.getClass();
        Integer num = (Integer) this.name2Index.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getElementName(int i) {
        return this.elementNames[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final Room getKind() {
        return this.kind;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public final Set getSerialNames() {
        return this.serialNames;
    }

    public final int hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isElementOptional(int i) {
        return this.elementOptionality[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isNullable() {
        return false;
    }

    public final String toString() {
        return TuplesKt.toStringImpl(this);
    }
}
