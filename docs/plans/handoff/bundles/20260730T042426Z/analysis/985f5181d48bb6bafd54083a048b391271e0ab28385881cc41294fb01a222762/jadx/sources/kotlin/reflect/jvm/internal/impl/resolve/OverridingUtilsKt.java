package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* compiled from: overridingUtils.kt */
/* loaded from: classes2.dex */
public abstract class OverridingUtilsKt {
    public static final Collection selectMostSpecificInEachOverridableGroup(Collection collection, Function1 descriptorByHandle) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(descriptorByHandle, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        SmartSet create = SmartSet.Companion.create();
        while (!linkedList.isEmpty()) {
            Object first = CollectionsKt.first((List) linkedList);
            final SmartSet create2 = SmartSet.Companion.create();
            Collection extractMembersOverridableInBothWays = OverridingUtil.extractMembersOverridableInBothWays(first, linkedList, descriptorByHandle, new Function1(create2) { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt$$Lambda$1
                private final SmartSet arg$0;

                {
                    this.arg$0 = create2;
                }

                @Override // kotlin.jvm.functions.Function1
                public Object invoke(Object obj) {
                    Unit selectMostSpecificInEachOverridableGroup$lambda$2;
                    selectMostSpecificInEachOverridableGroup$lambda$2 = OverridingUtilsKt.selectMostSpecificInEachOverridableGroup$lambda$2(this.arg$0, obj);
                    return selectMostSpecificInEachOverridableGroup$lambda$2;
                }
            });
            Intrinsics.checkNotNullExpressionValue(extractMembersOverridableInBothWays, "extractMembersOverridableInBothWays(...)");
            if (extractMembersOverridableInBothWays.size() == 1 && create2.isEmpty()) {
                Object single = CollectionsKt.single(extractMembersOverridableInBothWays);
                Intrinsics.checkNotNullExpressionValue(single, "single(...)");
                create.add(single);
            } else {
                Object selectMostSpecificMember = OverridingUtil.selectMostSpecificMember(extractMembersOverridableInBothWays, descriptorByHandle);
                CallableDescriptor callableDescriptor = (CallableDescriptor) descriptorByHandle.invoke(selectMostSpecificMember);
                for (Object obj : extractMembersOverridableInBothWays) {
                    Intrinsics.checkNotNull(obj);
                    if (!OverridingUtil.isMoreSpecific(callableDescriptor, (CallableDescriptor) descriptorByHandle.invoke(obj))) {
                        create2.add(obj);
                    }
                }
                if (!create2.isEmpty()) {
                    create.addAll(create2);
                }
                create.add(selectMostSpecificMember);
            }
        }
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit selectMostSpecificInEachOverridableGroup$lambda$2(SmartSet smartSet, Object obj) {
        Intrinsics.checkNotNull(obj);
        smartSet.add(obj);
        return Unit.INSTANCE;
    }
}
