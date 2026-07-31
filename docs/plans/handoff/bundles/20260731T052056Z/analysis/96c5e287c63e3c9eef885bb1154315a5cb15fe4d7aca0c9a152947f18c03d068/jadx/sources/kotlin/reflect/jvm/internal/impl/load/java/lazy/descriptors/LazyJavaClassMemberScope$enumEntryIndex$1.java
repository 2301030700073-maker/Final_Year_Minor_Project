package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$innerClassNames$1;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaField;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassMemberScope$enumEntryIndex$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LazyJavaClassMemberScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyJavaClassMemberScope$enumEntryIndex$1(LazyJavaClassMemberScope lazyJavaClassMemberScope, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = lazyJavaClassMemberScope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        LazyJavaClassMemberScope lazyJavaClassMemberScope = this.this$0;
        switch (i) {
            case 0:
                List fields$1 = lazyJavaClassMemberScope.jClass.getFields$1();
                ArrayList arrayList = new ArrayList();
                for (Object obj : fields$1) {
                    if (((ReflectJavaField) obj).member.isEnumConstant()) {
                        arrayList.add(obj);
                    }
                }
                int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                if (mapCapacity < 16) {
                    mapCapacity = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    linkedHashMap.put(((ReflectJavaField) next).getName(), next);
                }
                return linkedHashMap;
            case 1:
                Class<?>[] declaredClasses = lazyJavaClassMemberScope.jClass.klass.getDeclaredClasses();
                declaredClasses.getClass();
                return CollectionsKt.toSet(SequencesKt.toList(SequencesKt.mapNotNull(new FilteringSequence(ArraysKt___ArraysKt.asSequence(declaredClasses), false, ReflectJavaClass$innerClassNames$1.INSTANCE), ReflectJavaClass$innerClassNames$1.INSTANCE$3)));
            default:
                return UuidKt.plus(lazyJavaClassMemberScope.getFunctionNames(), (Iterable) lazyJavaClassMemberScope.getVariableNames());
        }
    }
}
