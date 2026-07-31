package kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* loaded from: classes.dex */
public final class DescriptorUtilsKt$$Lambda$0 implements DFS.Neighbors {
    public static final DescriptorUtilsKt$$Lambda$0 INSTANCE = new DescriptorUtilsKt$$Lambda$0(0);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DescriptorUtilsKt$$Lambda$0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    public final Iterable getNeighbors(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                int i = DescriptorUtilsKt.$r8$clinit;
                Collection overriddenDescriptors = ((ValueParameterDescriptorImpl) obj).getOverriddenDescriptors();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(overriddenDescriptors, 10));
                Iterator it = ((ArrayList) overriddenDescriptors).iterator();
                while (it.hasNext()) {
                    arrayList.add(((ValueParameterDescriptorImpl) it.next()).getOriginal());
                }
                return arrayList;
            default:
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                Collection overriddenDescriptors2 = callableMemberDescriptor != null ? callableMemberDescriptor.getOverriddenDescriptors() : null;
                return overriddenDescriptors2 == null ? EmptyList.INSTANCE : overriddenDescriptors2;
        }
    }
}
