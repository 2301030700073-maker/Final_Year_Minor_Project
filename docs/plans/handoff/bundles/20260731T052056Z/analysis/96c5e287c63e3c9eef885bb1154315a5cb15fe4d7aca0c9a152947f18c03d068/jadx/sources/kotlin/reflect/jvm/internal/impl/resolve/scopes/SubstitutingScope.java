package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import coil3.util.ContextsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Substitutable;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubstitutingScope implements MemberScope {
    public final SynchronizedLazyImpl _allDescriptors$delegate;
    public final TypeSubstitutor capturingSubstitutor;
    public HashMap substitutedDescriptors;
    public final MemberScope workerScope;

    public SubstitutingScope(MemberScope memberScope, TypeSubstitutor typeSubstitutor) {
        memberScope.getClass();
        typeSubstitutor.getClass();
        this.workerScope = memberScope;
        new SynchronizedLazyImpl(new AndroidLeakFixes$Companion$onDecorViewReady$1(12, typeSubstitutor));
        this.capturingSubstitutor = new TypeSubstitutor(ContextsKt.wrapWithCapturingSubstitution$default(typeSubstitutor.substitution));
        this._allDescriptors$delegate = new SynchronizedLazyImpl(new AndroidLeakFixes$Companion$onDecorViewReady$1(11, this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getClassifierNames() {
        return this.workerScope.getClassifierNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        ClassifierDescriptor contributedClassifier = this.workerScope.getContributedClassifier(name, noLookupLocation);
        if (contributedClassifier != null) {
            return (ClassifierDescriptor) substitute(contributedClassifier);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        return (Collection) this._allDescriptors$delegate.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return substitute(this.workerScope.getContributedFunctions(name, noLookupLocation));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return substitute(this.workerScope.getContributedVariables(name, noLookupLocation));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getFunctionNames() {
        return this.workerScope.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Set getVariableNames() {
        return this.workerScope.getVariableNames();
    }

    public final DeclarationDescriptor substitute(DeclarationDescriptor declarationDescriptor) {
        TypeSubstitutor typeSubstitutor = this.capturingSubstitutor;
        if (typeSubstitutor.substitution.isEmpty()) {
            return declarationDescriptor;
        }
        HashMap hashMap = this.substitutedDescriptors;
        if (hashMap == null) {
            hashMap = new HashMap();
            this.substitutedDescriptors = hashMap;
        }
        Object obj = hashMap.get(declarationDescriptor);
        if (obj == null) {
            if (!(declarationDescriptor instanceof Substitutable)) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Unknown descriptor in scope: ", declarationDescriptor);
                return null;
            }
            obj = ((Substitutable) declarationDescriptor).substitute(typeSubstitutor);
            if (obj == null) {
                Gson$$ExternalSyntheticBUOutline0.m(declarationDescriptor, " substitution fails", "We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but ");
                return null;
            }
            hashMap.put(declarationDescriptor, obj);
        }
        return (DeclarationDescriptor) obj;
    }

    public final Collection substitute(Collection collection) {
        if (this.capturingSubstitutor.substitution.isEmpty() || collection.isEmpty()) {
            return collection;
        }
        int size = collection.size();
        LinkedHashSet linkedHashSet = new LinkedHashSet(size >= 3 ? (size / 3) + size + 1 : 3);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(substitute((DeclarationDescriptor) it.next()));
        }
        return linkedHashSet;
    }
}
