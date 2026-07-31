package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import androidx.glance.GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyScopeAdapter implements MemberScope {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object lazyScope;

    public LazyScopeAdapter(LockBasedStorageManager lockBasedStorageManager, Function0 function0) {
        lockBasedStorageManager.getClass();
        this.lazyScope = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(2, function0));
    }

    public final MemberScope getActualScope() {
        if (!(getWorkerScope() instanceof LazyScopeAdapter)) {
            return getWorkerScope();
        }
        MemberScope workerScope = getWorkerScope();
        workerScope.getClass();
        return ((LazyScopeAdapter) workerScope).getActualScope();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        return getWorkerScope().getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return getWorkerScope().getContributedClassifier(name, noLookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        switch (this.$r8$classId) {
            case 1:
                descriptorKindFilter.getClass();
                Collection contributedDescriptors$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter = getContributedDescriptors$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(descriptorKindFilter, function1);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : contributedDescriptors$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter) {
                    if (((DeclarationDescriptor) obj) instanceof CallableDescriptor) {
                        arrayList.add(obj);
                    } else {
                        arrayList2.add(obj);
                    }
                }
                return CollectionsKt.plus(DescriptorFactory.selectMostSpecificInEachOverridableGroup(arrayList, MemberScope$Companion$ALL_NAME_FILTER$1.INSTANCE$1), (Iterable) arrayList2);
            default:
                return getContributedDescriptors$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(descriptorKindFilter, function1);
        }
    }

    public final Collection getContributedDescriptors$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return getWorkerScope().getContributedDescriptors(descriptorKindFilter, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        switch (this.$r8$classId) {
            case 1:
                name.getClass();
                noLookupLocation.getClass();
                return DescriptorFactory.selectMostSpecificInEachOverridableGroup(getContributedFunctions$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(name, noLookupLocation), MemberScope$Companion$ALL_NAME_FILTER$1.INSTANCE$2);
            default:
                return getContributedFunctions$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(name, noLookupLocation);
        }
    }

    public final Collection getContributedFunctions$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return getWorkerScope().getContributedFunctions(name, noLookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        switch (this.$r8$classId) {
            case 1:
                name.getClass();
                noLookupLocation.getClass();
                return DescriptorFactory.selectMostSpecificInEachOverridableGroup(getContributedVariables$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(name, noLookupLocation), MemberScope$Companion$ALL_NAME_FILTER$1.INSTANCE$3);
            default:
                return getContributedVariables$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(name, noLookupLocation);
        }
    }

    public final Collection getContributedVariables$kotlin$reflect$jvm$internal$impl$resolve$scopes$AbstractScopeAdapter(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return getWorkerScope().getContributedVariables(name, noLookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getFunctionNames() {
        return getWorkerScope().getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getVariableNames() {
        return getWorkerScope().getVariableNames();
    }

    public final MemberScope getWorkerScope() {
        int i = this.$r8$classId;
        Object obj = this.lazyScope;
        switch (i) {
            case 0:
                return (MemberScope) ((LockBasedStorageManager.LockBasedNotNullLazyValue) obj).invoke();
            default:
                return (MemberScope) obj;
        }
    }

    public LazyScopeAdapter(MemberScope memberScope) {
        this.lazyScope = memberScope;
    }
}
