package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InnerClassesScopeWrapper extends MemberScopeImpl {
    public final MemberScope workerScope;

    public InnerClassesScopeWrapper(MemberScope memberScope) {
        memberScope.getClass();
        this.workerScope = memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        return this.workerScope.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        ClassifierDescriptor contributedClassifier = this.workerScope.getContributedClassifier(name, noLookupLocation);
        if (contributedClassifier != null) {
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = contributedClassifier instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) contributedClassifier : null;
            if (moduleAwareClassDescriptor != null) {
                return moduleAwareClassDescriptor;
            }
            if (contributedClassifier instanceof DeserializedTypeAliasDescriptor) {
                return (DeserializedTypeAliasDescriptor) contributedClassifier;
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        int i = DescriptorKindFilter.CLASSIFIERS_MASK & descriptorKindFilter.kindMask;
        DescriptorKindFilter descriptorKindFilter2 = i == 0 ? null : new DescriptorKindFilter(descriptorKindFilter.excludes, i);
        if (descriptorKindFilter2 == null) {
            return EmptyList.INSTANCE;
        }
        Collection contributedDescriptors = this.workerScope.getContributedDescriptors(descriptorKindFilter2, function1);
        ArrayList arrayList = new ArrayList();
        for (Object obj : contributedDescriptors) {
            if (obj instanceof ClassifierDescriptorWithTypeParameters) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getFunctionNames() {
        return this.workerScope.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getVariableNames() {
        return this.workerScope.getVariableNames();
    }

    public final String toString() {
        return "Classes from " + this.workerScope;
    }
}
