package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompanionObjectMapping {
    public static final LinkedHashSet classIds;

    static {
        Set<PrimitiveType> set = PrimitiveType.NUMBER_TYPES;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set, 10));
        for (PrimitiveType primitiveType : set) {
            primitiveType.getClass();
            arrayList.add(StandardNames.BUILT_INS_PACKAGE_FQ_NAME.child(primitiveType.getTypeName()));
        }
        ArrayList plus = CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) arrayList, (Object) StandardNames.FqNames.string.toSafe()), (Object) StandardNames.FqNames._boolean.toSafe()), (Object) StandardNames.FqNames._enum.toSafe());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = plus.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(ClassId.topLevel((FqName) it.next()));
        }
        classIds = linkedHashSet;
    }
}
