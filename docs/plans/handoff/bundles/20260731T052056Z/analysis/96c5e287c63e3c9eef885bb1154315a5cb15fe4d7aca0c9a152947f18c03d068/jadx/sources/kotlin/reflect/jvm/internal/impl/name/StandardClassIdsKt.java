package kotlin.reflect.jvm.internal.impl.name;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class StandardClassIdsKt {
    static {
        new FqName("java.lang").child(Name.identifier("annotation"));
    }

    public static final ClassId baseId(String str) {
        FqName fqName = StandardClassIds.BASE_KOTLIN_PACKAGE;
        return new ClassId(StandardClassIds.BASE_KOTLIN_PACKAGE, Name.identifier(str));
    }

    public static final ClassId collectionsId(String str) {
        FqName fqName = StandardClassIds.BASE_KOTLIN_PACKAGE;
        return new ClassId(StandardClassIds.BASE_COLLECTIONS_PACKAGE, Name.identifier(str));
    }

    public static final void inverseMap(LinkedHashMap linkedHashMap) {
        Set<Map.Entry> entrySet = linkedHashMap.entrySet();
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entrySet, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry : entrySet) {
            linkedHashMap2.put(entry.getValue(), entry.getKey());
        }
    }

    public static final ClassId primitiveArrayId(Name name) {
        FqName fqName = StandardClassIds.BASE_KOTLIN_PACKAGE;
        ClassId classId = StandardClassIds.Array;
        return new ClassId(classId.getPackageFqName(), Name.identifier(name.getIdentifier().concat(classId.getShortClassName().getIdentifier())));
    }

    public static final ClassId reflectId(String str) {
        FqName fqName = StandardClassIds.BASE_KOTLIN_PACKAGE;
        return new ClassId(StandardClassIds.BASE_REFLECT_PACKAGE, Name.identifier(str));
    }

    public static final ClassId unsignedId(ClassId classId) {
        FqName fqName = StandardClassIds.BASE_KOTLIN_PACKAGE;
        return new ClassId(StandardClassIds.BASE_KOTLIN_PACKAGE, Name.identifier("U".concat(classId.getShortClassName().getIdentifier())));
    }
}
