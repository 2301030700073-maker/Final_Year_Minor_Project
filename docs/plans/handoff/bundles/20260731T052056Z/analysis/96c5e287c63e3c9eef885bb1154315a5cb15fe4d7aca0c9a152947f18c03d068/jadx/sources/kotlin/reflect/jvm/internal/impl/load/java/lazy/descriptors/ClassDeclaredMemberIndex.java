package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaField;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMethod;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassDeclaredMemberIndex implements DeclaredMemberIndex {
    public final LinkedHashMap components;
    public final LinkedHashMap fields;
    public final ReflectJavaClass jClass;
    public final Function1 memberFilter;
    public final AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 methodFilter;
    public final LinkedHashMap methods;

    public ClassDeclaredMemberIndex(ReflectJavaClass reflectJavaClass, Function1 function1) {
        reflectJavaClass.getClass();
        this.jClass = reflectJavaClass;
        this.memberFilter = function1;
        AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 androidLeakFixes$TEXT_LINE_POOL$apply$1$2 = new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(11, this);
        this.methodFilter = androidLeakFixes$TEXT_LINE_POOL$apply$1$2;
        FilteringSequence filteringSequence = new FilteringSequence(new LinesSequence(2, reflectJavaClass.getMethods$1()), true, androidLeakFixes$TEXT_LINE_POOL$apply$1$2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filteringSequence);
        while (filteringSequence$iterator$1.hasNext()) {
            Object next = filteringSequence$iterator$1.next();
            Name name = ((ReflectJavaMethod) next).getName();
            Object obj = linkedHashMap.get(name);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(name, obj);
            }
            ((List) obj).add(next);
        }
        this.methods = linkedHashMap;
        FilteringSequence filteringSequence2 = new FilteringSequence(new LinesSequence(2, this.jClass.getFields$1()), true, this.memberFilter);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        FilteringSequence$iterator$1 filteringSequence$iterator$12 = new FilteringSequence$iterator$1(filteringSequence2);
        while (filteringSequence$iterator$12.hasNext()) {
            Object next2 = filteringSequence$iterator$12.next();
            linkedHashMap2.put(((ReflectJavaField) next2).getName(), next2);
        }
        this.fields = linkedHashMap2;
        ArrayList recordComponents = this.jClass.getRecordComponents();
        Function1 function12 = this.memberFilter;
        ArrayList arrayList = new ArrayList();
        Iterator it = recordComponents.iterator();
        while (it.hasNext()) {
            Object next3 = it.next();
            if (((Boolean) function12.invoke(next3)).booleanValue()) {
                arrayList.add(next3);
            }
        }
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(mapCapacity < 16 ? 16 : mapCapacity);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next4 = it2.next();
            linkedHashMap3.put(((ReflectJavaRecordComponent) next4).getName(), next4);
        }
        this.components = linkedHashMap3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final ReflectJavaField findFieldByName(Name name) {
        return (ReflectJavaField) this.fields.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Collection findMethodsByName(Name name) {
        List list = (List) this.methods.get(name);
        return list != null ? list : EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final ReflectJavaRecordComponent findRecordComponentByName(Name name) {
        name.getClass();
        return (ReflectJavaRecordComponent) this.components.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Set getFieldNames() {
        FilteringSequence filteringSequence = new FilteringSequence(new LinesSequence(2, this.jClass.getFields$1()), true, this.memberFilter);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filteringSequence);
        while (filteringSequence$iterator$1.hasNext()) {
            linkedHashSet.add(((ReflectJavaField) filteringSequence$iterator$1.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Set getMethodNames() {
        FilteringSequence filteringSequence = new FilteringSequence(new LinesSequence(2, this.jClass.getMethods$1()), true, this.methodFilter);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filteringSequence);
        while (filteringSequence$iterator$1.hasNext()) {
            linkedHashSet.add(((ReflectJavaMethod) filteringSequence$iterator$1.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Set getRecordComponentNames() {
        return this.components.keySet();
    }
}
