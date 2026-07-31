package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ImplicitClassReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.TransientReceiver;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import okhttp3.ConnectionPool;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReceiverParameterDescriptorImpl extends DeclarationDescriptorImpl implements ParameterDescriptor {
    public final /* synthetic */ int $r8$classId = 0;
    public final DeclarationDescriptor containingDeclaration;
    public final ReceiverValue value;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
                objArr[0] = "value";
                break;
            case 2:
            case 5:
                objArr[0] = "annotations";
                break;
            case 3:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 6:
                objArr[0] = "name";
                break;
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
                break;
            case 9:
                objArr[0] = "newOwner";
                break;
            case 10:
                objArr[0] = "outType";
                break;
        }
        if (i == 7) {
            objArr[1] = "getValue";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        switch (i) {
            case 7:
            case 8:
                break;
            case 9:
                objArr[2] = "copy";
                break;
            case 10:
                objArr[2] = "setOutType";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 7 && i != 8) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public static /* synthetic */ void $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "substitutor";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 5:
                objArr[1] = "getTypeParameters";
                break;
            case 6:
                objArr[1] = "getType";
                break;
            case 7:
                objArr[1] = "getValueParameters";
                break;
            case 8:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 9:
                objArr[1] = "getVisibility";
                break;
            case 10:
                objArr[1] = "getOriginal";
                break;
            case 11:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i) {
            case 3:
                objArr[2] = "substitute";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                throw new IllegalStateException(format);
            default:
                throw new IllegalArgumentException(format);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReceiverParameterDescriptorImpl(DeclarationDescriptor declarationDescriptor, BasePreferenceLoader basePreferenceLoader, Annotations annotations, Name name) {
        super(annotations, name);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(5);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        this.containingDeclaration = declarationDescriptor;
        this.value = basePreferenceLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        switch (connectionPool.$r8$classId) {
            case 2:
                return null;
            default:
                ((StringBuilder) obj).append(getName());
                return Unit.INSTANCE;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getContainingDeclaration() {
        int i = this.$r8$classId;
        DeclarationDescriptor declarationDescriptor = this.containingDeclaration;
        switch (i) {
            case 0:
                if (declarationDescriptor != null) {
                    return declarationDescriptor;
                }
                $$$reportNull$$$0(8);
                throw null;
            default:
                return (ModuleAwareClassDescriptor) declarationDescriptor;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptorImpl getDispatchReceiverParameter() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptorImpl getExtensionReceiverParameter() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Collection getOverriddenDescriptors() {
        Set set = Collections.EMPTY_SET;
        if (set != null) {
            return set;
        }
        $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(8);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final KotlinType getReturnType() {
        return getType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot
    public final SourceElement getSource() {
        return SourceElement.NO_SOURCE;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader, kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
    public final KotlinType getType() {
        KotlinType type = getValue().getType();
        if (type != null) {
            return type;
        }
        $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getTypeParameters() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(5);
        throw null;
    }

    public final ReceiverValue getValue() {
        int i = this.$r8$classId;
        ReceiverValue receiverValue = this.value;
        switch (i) {
            case 0:
                BasePreferenceLoader basePreferenceLoader = (BasePreferenceLoader) receiverValue;
                if (basePreferenceLoader != null) {
                    return basePreferenceLoader;
                }
                $$$reportNull$$$0(7);
                throw null;
            default:
                return (ImplicitClassReceiver) receiverValue;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getValueParameters() {
        List list = Collections.EMPTY_LIST;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.LOCAL;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(9);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final boolean hasSynthesizedParameterNames() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final ReceiverParameterDescriptorImpl substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$descriptors$impl$AbstractReceiverParameterDescriptor(3);
            throw null;
        }
        if (!typeSubstitutor.substitution.isEmpty()) {
            KotlinType substitute = getContainingDeclaration() instanceof ModuleAwareClassDescriptor ? typeSubstitutor.substitute(getType(), Variance.OUT_VARIANCE) : typeSubstitutor.substitute(getType(), Variance.INVARIANT);
            if (substitute == null) {
                return null;
            }
            if (substitute != getType()) {
                return new ReceiverParameterDescriptorImpl(getContainingDeclaration(), new TransientReceiver(substitute), getAnnotations());
            }
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, org.wikipedia.settings.BasePreferenceLoader
    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return "class " + ((ModuleAwareClassDescriptor) this.containingDeclaration).getName() + "::this";
            default:
                return super.toString();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final CallableDescriptor getOriginal() {
        return this;
    }

    public ReceiverParameterDescriptorImpl(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        super(Annotations.Companion.EMPTY, SpecialNames.THIS);
        this.containingDeclaration = moduleAwareClassDescriptor;
        this.value = new ImplicitClassReceiver(moduleAwareClassDescriptor);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ReceiverParameterDescriptorImpl(DeclarationDescriptor declarationDescriptor, BasePreferenceLoader basePreferenceLoader, Annotations annotations) {
        this(declarationDescriptor, basePreferenceLoader, annotations, SpecialNames.THIS);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (annotations != null) {
        } else {
            $$$reportNull$$$0(2);
            throw null;
        }
    }
}
