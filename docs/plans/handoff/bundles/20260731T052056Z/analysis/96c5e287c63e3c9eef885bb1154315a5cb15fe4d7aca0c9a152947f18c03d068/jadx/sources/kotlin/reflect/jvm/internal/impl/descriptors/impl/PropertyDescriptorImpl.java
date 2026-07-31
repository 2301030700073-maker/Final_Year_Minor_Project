package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.edit.SyntaxHighlightViewAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PropertyDescriptorImpl extends VariableDescriptorImpl implements PropertyDescriptor {
    public FieldDescriptorImpl backingField;
    public LockBasedStorageManager.LockBasedLazyValue compileTimeInitializer;
    public Function0 compileTimeInitializerFactory;
    public List contextReceiverParameters;
    public FieldDescriptorImpl delegateField;
    public ReceiverParameterDescriptorImpl dispatchReceiverParameter;
    public ReceiverParameterDescriptorImpl extensionReceiverParameter;
    public PropertyGetterDescriptorImpl getter;
    public final boolean isConst;
    public final boolean isDelegated;
    public final boolean isExpect;
    public final boolean isExternal;
    public final boolean isVar;
    public final CallableMemberDescriptor.Kind kind;
    public final boolean lateInit;
    public final Modality modality;
    public final PropertyDescriptor original;
    public Collection overriddenProperties;
    public PropertySetterDescriptorImpl setter;
    public ArrayList typeParameters;
    public DescriptorVisibilities.AnonymousClass1 visibility;

    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0120 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r11) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl.$$$reportNull$$$0(int):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PropertyDescriptorImpl(DeclarationDescriptor declarationDescriptor, PropertyDescriptor propertyDescriptor, Annotations annotations, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, boolean z, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        super(declarationDescriptor, annotations, name, null, sourceElement);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(4);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(5);
            throw null;
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        this.isVar = z;
        this.overriddenProperties = null;
        this.contextReceiverParameters = Collections.EMPTY_LIST;
        this.modality = modality;
        this.visibility = anonymousClass1;
        this.original = propertyDescriptor == null ? this : propertyDescriptor;
        this.kind = kind;
        this.lateInit = z2;
        this.isConst = z3;
        this.isExpect = z4;
        this.isExternal = z5;
        this.isDelegated = z6;
    }

    public static PropertyDescriptorImpl create(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, boolean z, Name name, CallableMemberDescriptor.Kind kind, SourceElement sourceElement) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(10);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(11);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(12);
            throw null;
        }
        if (sourceElement != null) {
            return new PropertyDescriptorImpl(declarationDescriptor, null, Annotations.Companion.EMPTY, modality, anonymousClass1, z, name, kind, sourceElement, false, false, false, false, false);
        }
        $$$reportNull$$$0(13);
        throw null;
    }

    public static FunctionDescriptor getSubstitutedInitialSignatureDescriptor(TypeSubstitutor typeSubstitutor, PropertyAccessorDescriptorImpl propertyAccessorDescriptorImpl) {
        if (propertyAccessorDescriptorImpl == null) {
            $$$reportNull$$$0(31);
            throw null;
        }
        FunctionDescriptor functionDescriptor = propertyAccessorDescriptorImpl.initialSignatureDescriptor;
        if (functionDescriptor != null) {
            return functionDescriptor.substitute(typeSubstitutor);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object accept(ConnectionPool connectionPool, Object obj) {
        return connectionPool.visitPropertyDescriptor(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final PropertyDescriptorImpl copy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, CallableMemberDescriptor.Kind kind) {
        SyntaxHighlightViewAdapter syntaxHighlightViewAdapter = new SyntaxHighlightViewAdapter(this);
        syntaxHighlightViewAdapter.activity = declarationDescriptor;
        syntaxHighlightViewAdapter.wikiTextKeyboardView = null;
        syntaxHighlightViewAdapter.pageTitle = modality;
        if (anonymousClass1 == null) {
            SyntaxHighlightViewAdapter.$$$reportNull$$$0(8);
            throw null;
        }
        syntaxHighlightViewAdapter.editText = anonymousClass1;
        if (kind == null) {
            SyntaxHighlightViewAdapter.$$$reportNull$$$0(10);
            throw null;
        }
        syntaxHighlightViewAdapter.wikiTextKeyboardFormattingView = kind;
        syntaxHighlightViewAdapter.isFromDiff = false;
        PropertyDescriptorImpl build = syntaxHighlightViewAdapter.build();
        if (build != null) {
            return build;
        }
        $$$reportNull$$$0(42);
        throw null;
    }

    public PropertyDescriptorImpl createSubstitutedCopy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, PropertyDescriptor propertyDescriptor, CallableMemberDescriptor.Kind kind, Name name) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(32);
            throw null;
        }
        if (modality == null) {
            $$$reportNull$$$0(33);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(34);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(35);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(36);
            throw null;
        }
        return new PropertyDescriptorImpl(declarationDescriptor, propertyDescriptor, getAnnotations(), modality, anonymousClass1, this.isVar, name, kind, SourceElement.NO_SOURCE, this.lateInit, isConst(), this.isExpect, isExternal(), this.isDelegated);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final ArrayList getAccessors() {
        ArrayList arrayList = new ArrayList(2);
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl = this.getter;
        if (propertyGetterDescriptorImpl != null) {
            arrayList.add(propertyGetterDescriptorImpl);
        }
        PropertySetterDescriptorImpl propertySetterDescriptorImpl = this.setter;
        if (propertySetterDescriptorImpl != null) {
            arrayList.add(propertySetterDescriptorImpl);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final FieldDescriptorImpl getBackingField() {
        return this.backingField;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final ConstantValue getCompileTimeInitializer() {
        LockBasedStorageManager.LockBasedLazyValue lockBasedLazyValue = this.compileTimeInitializer;
        if (lockBasedLazyValue != null) {
            return (ConstantValue) lockBasedLazyValue.invoke();
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getContextReceiverParameters() {
        List list = this.contextReceiverParameters;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final FieldDescriptorImpl getDelegateField() {
        return this.delegateField;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptorImpl getDispatchReceiverParameter() {
        return this.dispatchReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptorImpl getExtensionReceiverParameter() {
        return this.extensionReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final PropertyGetterDescriptorImpl getGetter() {
        return this.getter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.kind;
        if (kind != null) {
            return kind;
        }
        $$$reportNull$$$0(39);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        Modality modality = this.modality;
        if (modality != null) {
            return modality;
        }
        $$$reportNull$$$0(24);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final PropertyDescriptor getOriginal() {
        PropertyDescriptor propertyDescriptor = this.original;
        ?? r1 = this;
        if (propertyDescriptor != this) {
            r1 = propertyDescriptor.getOriginal();
        }
        if (r1 != 0) {
            return r1;
        }
        $$$reportNull$$$0(38);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final Collection getOverriddenDescriptors() {
        Collection collection = this.overriddenProperties;
        if (collection == null) {
            collection = Collections.EMPTY_LIST;
        }
        if (collection != null) {
            return collection;
        }
        $$$reportNull$$$0(41);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final KotlinType getReturnType() {
        KotlinType type = getType();
        if (type != null) {
            return type;
        }
        $$$reportNull$$$0(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final PropertySetterDescriptorImpl getSetter() {
        return this.setter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.VariableDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getTypeParameters() {
        ArrayList arrayList = this.typeParameters;
        if (arrayList != null) {
            return arrayList;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("typeParameters == null for ".concat(DeclarationDescriptorImpl.toString(this)));
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public Object getUserData(CallableDescriptor.UserDataKey userDataKey) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = this.visibility;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        $$$reportNull$$$0(25);
        throw null;
    }

    public final void initialize(PropertyGetterDescriptorImpl propertyGetterDescriptorImpl, PropertySetterDescriptorImpl propertySetterDescriptorImpl, FieldDescriptorImpl fieldDescriptorImpl, FieldDescriptorImpl fieldDescriptorImpl2) {
        this.getter = propertyGetterDescriptorImpl;
        this.setter = propertySetterDescriptorImpl;
        this.backingField = fieldDescriptorImpl;
        this.delegateField = fieldDescriptorImpl2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public boolean isConst() {
        return this.isConst;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor
    public final boolean isDelegated() {
        return this.isDelegated;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return this.isExpect;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public boolean isExternal() {
        return this.isExternal;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final boolean isLateInit() {
        return this.lateInit;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor
    public final boolean isVar() {
        return this.isVar;
    }

    public final void setCompileTimeInitializer(LockBasedStorageManager.LockBasedLazyValue lockBasedLazyValue, Function0 function0) {
        if (function0 == null) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "compileTimeInitializerFactory", "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl", "setCompileTimeInitializer"));
        }
        this.compileTimeInitializerFactory = function0;
        if (lockBasedLazyValue == null) {
            lockBasedLazyValue = (LockBasedStorageManager.LockBasedLazyValue) function0.invoke();
        }
        this.compileTimeInitializer = lockBasedLazyValue;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final void setOverriddenDescriptors(Collection collection) {
        if (collection != null) {
            this.overriddenProperties = collection;
        } else {
            $$$reportNull$$$0(40);
            throw null;
        }
    }

    public final void setType(KotlinType kotlinType, List list, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2, List list2) {
        if (kotlinType == null) {
            $$$reportNull$$$0(17);
            throw null;
        }
        if (list == null) {
            $$$reportNull$$$0(18);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(19);
            throw null;
        }
        this.outType = kotlinType;
        this.typeParameters = new ArrayList(list);
        this.extensionReceiverParameter = receiverParameterDescriptorImpl2;
        this.dispatchReceiverParameter = receiverParameterDescriptorImpl;
        this.contextReceiverParameters = list2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public final PropertyDescriptor substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(27);
            throw null;
        }
        TypeSubstitution typeSubstitution = typeSubstitutor.substitution;
        if (typeSubstitution.isEmpty()) {
            return this;
        }
        SyntaxHighlightViewAdapter syntaxHighlightViewAdapter = new SyntaxHighlightViewAdapter(this);
        syntaxHighlightViewAdapter.wikiTextKeyboardHeadingsView = typeSubstitution;
        syntaxHighlightViewAdapter.wikiTextKeyboardView = getOriginal();
        return syntaxHighlightViewAdapter.build();
    }

    public void setInType(KotlinType kotlinType) {
    }
}
