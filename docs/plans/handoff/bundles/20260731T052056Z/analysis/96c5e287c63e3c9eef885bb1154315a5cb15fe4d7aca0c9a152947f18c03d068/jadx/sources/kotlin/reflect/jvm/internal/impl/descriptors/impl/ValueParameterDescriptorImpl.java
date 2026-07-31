package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionInvokeDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ValueParameterDescriptorImpl extends VariableDescriptorImpl implements ParameterDescriptor {
    public final boolean declaresDefaultValue;
    public final int index;
    public final boolean isCrossinline;
    public final boolean isNoinline;
    public final ValueParameterDescriptorImpl original;
    public final KotlinType varargElementType;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WithDestructuringDeclaration extends ValueParameterDescriptorImpl {
        public final SynchronizedLazyImpl destructuringVariables$delegate;

        public WithDestructuringDeclaration(CallableDescriptor callableDescriptor, ValueParameterDescriptorImpl valueParameterDescriptorImpl, int i, Annotations annotations, Name name, KotlinType kotlinType, boolean z, boolean z2, boolean z3, KotlinType kotlinType2, SourceElement sourceElement, Function0 function0) {
            super(callableDescriptor, valueParameterDescriptorImpl, i, annotations, name, kotlinType, z, z2, z3, kotlinType2, sourceElement);
            this.destructuringVariables$delegate = new SynchronizedLazyImpl(function0);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl
        public final ValueParameterDescriptorImpl copy(FunctionInvokeDescriptor functionInvokeDescriptor, Name name, int i) {
            Annotations annotations = getAnnotations();
            annotations.getClass();
            KotlinType type = getType();
            type.getClass();
            return new WithDestructuringDeclaration(functionInvokeDescriptor, null, i, annotations, name, type, declaresDefaultValue(), this.isCrossinline, this.isNoinline, this.varargElementType, SourceElement.NO_SOURCE, new AndroidLeakFixes$Companion$onDecorViewReady$1(2, this));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ValueParameterDescriptorImpl(CallableDescriptor callableDescriptor, ValueParameterDescriptorImpl valueParameterDescriptorImpl, int i, Annotations annotations, Name name, KotlinType kotlinType, boolean z, boolean z2, boolean z3, KotlinType kotlinType2, SourceElement sourceElement) {
        super(callableDescriptor, annotations, name, kotlinType, sourceElement);
        callableDescriptor.getClass();
        annotations.getClass();
        name.getClass();
        kotlinType.getClass();
        sourceElement.getClass();
        this.index = i;
        this.declaresDefaultValue = z;
        this.isCrossinline = z2;
        this.isNoinline = z3;
        this.varargElementType = kotlinType2;
        this.original = valueParameterDescriptorImpl == null ? this : valueParameterDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        switch (connectionPool.$r8$classId) {
            case 2:
                return null;
            default:
                ((DescriptorRendererImpl) connectionPool.delegate).renderValueParameter(this, true, (StringBuilder) obj, true);
                return Unit.INSTANCE;
        }
    }

    public ValueParameterDescriptorImpl copy(FunctionInvokeDescriptor functionInvokeDescriptor, Name name, int i) {
        Annotations annotations = getAnnotations();
        annotations.getClass();
        KotlinType type = getType();
        type.getClass();
        return new ValueParameterDescriptorImpl(functionInvokeDescriptor, null, i, annotations, name, type, declaresDefaultValue(), this.isCrossinline, this.isNoinline, this.varargElementType, SourceElement.NO_SOURCE);
    }

    public final boolean declaresDefaultValue() {
        if (!this.declaresDefaultValue) {
            return false;
        }
        CallableMemberDescriptor.Kind kind = ((CallableMemberDescriptor) getContainingDeclaration()).getKind();
        kind.getClass();
        return kind != CallableMemberDescriptor.Kind.FAKE_OVERRIDE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final ConstantValue getCompileTimeInitializer() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final CallableDescriptor getContainingDeclaration() {
        DeclarationDescriptor containingDeclaration = super.getContainingDeclaration();
        containingDeclaration.getClass();
        return (CallableDescriptor) containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final ValueParameterDescriptorImpl getOriginal() {
        ValueParameterDescriptorImpl valueParameterDescriptorImpl = this.original;
        return valueParameterDescriptorImpl == this ? this : valueParameterDescriptorImpl.getOriginal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Collection getOverriddenDescriptors() {
        Collection overriddenDescriptors = getContainingDeclaration().getOverriddenDescriptors();
        overriddenDescriptors.getClass();
        Collection collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((ValueParameterDescriptorImpl) ((CallableDescriptor) it.next()).getValueParameters().get(this.index));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.LOCAL;
        anonymousClass1.getClass();
        return anonymousClass1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final boolean isVar() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final DeclarationDescriptorNonRoot substitute(TypeSubstitutor typeSubstitutor) {
        typeSubstitutor.getClass();
        if (typeSubstitutor.substitution.isEmpty()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }
}
