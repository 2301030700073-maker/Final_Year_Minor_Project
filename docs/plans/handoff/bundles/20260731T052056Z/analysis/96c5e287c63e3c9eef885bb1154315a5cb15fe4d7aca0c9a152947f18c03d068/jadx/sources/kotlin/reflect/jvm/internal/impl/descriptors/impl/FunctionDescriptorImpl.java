package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import androidx.compose.runtime.GapPending$keyMap$2;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ExtensionReceiver;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import okhttp3.ConnectionPool;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FunctionDescriptorImpl extends DeclarationDescriptorNonRootImpl implements FunctionDescriptor {
    public List contextReceiverParameters;
    public ReceiverParameterDescriptorImpl dispatchReceiverParameter;
    public ReceiverParameterDescriptorImpl extensionReceiverParameter;
    public boolean hasStableParameterNames;
    public boolean hasSynthesizedParameterNames;
    public FunctionDescriptor initialSignatureDescriptor;
    public boolean isExpect;
    public boolean isExternal;
    public boolean isHiddenForResolutionEverywhereBesideSupercalls;
    public boolean isHiddenToOvercomeSignatureClash;
    public boolean isInfix;
    public boolean isInline;
    public boolean isOperator;
    public boolean isSuspend;
    public boolean isTailrec;
    public final CallableMemberDescriptor.Kind kind;
    public volatile Http2Connection.ReaderRunnable lazyOverriddenFunctionsTask;
    public Modality modality;
    public final FunctionDescriptor original;
    public Collection overriddenFunctions;
    public List typeParameters;
    public KotlinType unsubstitutedReturnType;
    public List unsubstitutedValueParameters;
    public Map userDataMap;
    public DescriptorVisibilities.AnonymousClass1 visibility;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CopyConfiguration implements FunctionDescriptor.CopyBuilder {
        public Annotations additionalAnnotations;
        public boolean copyOverrides;
        public ReceiverParameterDescriptorImpl dispatchReceiverParameter;
        public boolean dropOriginalInContainingParts;
        public boolean isHiddenForResolutionEverywhereBesideSupercalls;
        public boolean isHiddenToOvercomeSignatureClash;
        public boolean justForTypeSubstitution;
        public CallableMemberDescriptor.Kind kind;
        public Name name;
        public final List newContextReceiverParameters;
        public ReceiverParameterDescriptorImpl newExtensionReceiverParameter;
        public Boolean newHasSynthesizedParameterNames;
        public Modality newModality;
        public DeclarationDescriptor newOwner;
        public KotlinType newReturnType;
        public List newTypeParameters;
        public List newValueParameterDescriptors;
        public DescriptorVisibilities.AnonymousClass1 newVisibility;
        public FunctionDescriptor original;
        public boolean preserveSourceElement;
        public boolean signatureChange;
        public TypeSubstitution substitution;
        public final /* synthetic */ FunctionDescriptorImpl this$0;
        public final LinkedHashMap userDataMap;

        public static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str;
            int i2;
            switch (i) {
                case 9:
                case 11:
                case IMAGE_VALUE:
                case 15:
                case LAZY_VERTICAL_GRID_VALUE:
                case RADIO_GROUP_VALUE:
                case RADIO_ROW_VALUE:
                case SIZE_BOX_VALUE:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 10:
                case 12:
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                case VERTICAL_GRID_ITEM_VALUE:
                case RADIO_BUTTON_VALUE:
                case RADIO_COLUMN_VALUE:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (i) {
                case 9:
                case 11:
                case IMAGE_VALUE:
                case 15:
                case LAZY_VERTICAL_GRID_VALUE:
                case RADIO_GROUP_VALUE:
                case RADIO_ROW_VALUE:
                case SIZE_BOX_VALUE:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    i2 = 2;
                    break;
                case 10:
                case 12:
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                case VERTICAL_GRID_ITEM_VALUE:
                case RADIO_BUTTON_VALUE:
                case RADIO_COLUMN_VALUE:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    i2 = 3;
                    break;
            }
            Object[] objArr = new Object[i2];
            switch (i) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    objArr[0] = "kind";
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newContextReceiverParameters";
                    break;
                case 7:
                    objArr[0] = "newReturnType";
                    break;
                case 8:
                    objArr[0] = "owner";
                    break;
                case 9:
                case 11:
                case IMAGE_VALUE:
                case 15:
                case LAZY_VERTICAL_GRID_VALUE:
                case RADIO_GROUP_VALUE:
                case RADIO_ROW_VALUE:
                case SIZE_BOX_VALUE:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[0] = "modality";
                    break;
                case 12:
                    objArr[0] = "visibility";
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    objArr[0] = "name";
                    break;
                case RADIO_BUTTON_VALUE:
                case RADIO_COLUMN_VALUE:
                    objArr[0] = "parameters";
                    break;
                case 23:
                    objArr[0] = "type";
                    break;
                case 25:
                    objArr[0] = "contextReceiverParameters";
                    break;
                case 35:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 37:
                default:
                    objArr[0] = "substitution";
                    break;
                case 39:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (i) {
                case 9:
                    objArr[1] = "setOwner";
                    break;
                case 10:
                case 12:
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                case VERTICAL_GRID_ITEM_VALUE:
                case RADIO_BUTTON_VALUE:
                case RADIO_COLUMN_VALUE:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 11:
                    objArr[1] = "setModality";
                    break;
                case IMAGE_VALUE:
                    objArr[1] = "setVisibility";
                    break;
                case 15:
                    objArr[1] = "setKind";
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    objArr[1] = "setCopyOverrides";
                    break;
                case RADIO_GROUP_VALUE:
                    objArr[1] = "setName";
                    break;
                case RADIO_ROW_VALUE:
                    objArr[1] = "setValueParameters";
                    break;
                case SIZE_BOX_VALUE:
                    objArr[1] = "setTypeParameters";
                    break;
                case 24:
                    objArr[1] = "setReturnType";
                    break;
                case 26:
                    objArr[1] = "setContextReceiverParameters";
                    break;
                case 27:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 28:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 29:
                    objArr[1] = "setOriginal";
                    break;
                case 30:
                    objArr[1] = "setSignatureChange";
                    break;
                case 31:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 32:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 33:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 34:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 36:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 38:
                    objArr[1] = "setSubstitution";
                    break;
                case 40:
                    objArr[1] = "putUserData";
                    break;
                case 41:
                    objArr[1] = "getSubstitution";
                    break;
                case 42:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (i) {
                case 8:
                    objArr[2] = "setOwner";
                    break;
                case 9:
                case 11:
                case IMAGE_VALUE:
                case 15:
                case LAZY_VERTICAL_GRID_VALUE:
                case RADIO_GROUP_VALUE:
                case RADIO_ROW_VALUE:
                case SIZE_BOX_VALUE:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    break;
                case 10:
                    objArr[2] = "setModality";
                    break;
                case 12:
                    objArr[2] = "setVisibility";
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    objArr[2] = "setKind";
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    objArr[2] = "setName";
                    break;
                case RADIO_BUTTON_VALUE:
                    objArr[2] = "setValueParameters";
                    break;
                case RADIO_COLUMN_VALUE:
                    objArr[2] = "setTypeParameters";
                    break;
                case 23:
                    objArr[2] = "setReturnType";
                    break;
                case 25:
                    objArr[2] = "setContextReceiverParameters";
                    break;
                case 35:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 37:
                    objArr[2] = "setSubstitution";
                    break;
                case 39:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String format = String.format(str, objArr);
            switch (i) {
                case 9:
                case 11:
                case IMAGE_VALUE:
                case 15:
                case LAZY_VERTICAL_GRID_VALUE:
                case RADIO_GROUP_VALUE:
                case RADIO_ROW_VALUE:
                case SIZE_BOX_VALUE:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    throw new IllegalStateException(format);
                case 10:
                case 12:
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                case VERTICAL_GRID_ITEM_VALUE:
                case RADIO_BUTTON_VALUE:
                case RADIO_COLUMN_VALUE:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    throw new IllegalArgumentException(format);
            }
        }

        public CopyConfiguration(FunctionDescriptorImpl functionDescriptorImpl, TypeSubstitution typeSubstitution, DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, CallableMemberDescriptor.Kind kind, List list, List list2, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, KotlinType kotlinType) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(0);
                throw null;
            }
            if (declarationDescriptor == null) {
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
            if (kind == null) {
                $$$reportNull$$$0(4);
                throw null;
            }
            if (list == null) {
                $$$reportNull$$$0(5);
                throw null;
            }
            if (list2 == null) {
                $$$reportNull$$$0(6);
                throw null;
            }
            if (kotlinType == null) {
                $$$reportNull$$$0(7);
                throw null;
            }
            this.this$0 = functionDescriptorImpl;
            this.original = null;
            this.dispatchReceiverParameter = functionDescriptorImpl.dispatchReceiverParameter;
            this.copyOverrides = true;
            this.signatureChange = false;
            this.preserveSourceElement = false;
            this.dropOriginalInContainingParts = false;
            this.isHiddenToOvercomeSignatureClash = functionDescriptorImpl.isHiddenToOvercomeSignatureClash;
            this.newTypeParameters = null;
            this.additionalAnnotations = null;
            this.isHiddenForResolutionEverywhereBesideSupercalls = functionDescriptorImpl.isHiddenForResolutionEverywhereBesideSupercalls;
            this.userDataMap = new LinkedHashMap();
            this.newHasSynthesizedParameterNames = null;
            this.justForTypeSubstitution = false;
            this.substitution = typeSubstitution;
            this.newOwner = declarationDescriptor;
            this.newModality = modality;
            this.newVisibility = anonymousClass1;
            this.kind = kind;
            this.newValueParameterDescriptors = list;
            this.newContextReceiverParameters = list2;
            this.newExtensionReceiverParameter = receiverParameterDescriptorImpl;
            this.newReturnType = kotlinType;
            this.name = null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor build() {
            return this.this$0.doSubstitute(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder putUserData() {
            this.userDataMap.put(JavaMethodDescriptor.HAS_ERASED_VALUE_PARAMETERS, Boolean.TRUE);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setAdditionalAnnotations(Annotations annotations) {
            if (annotations != null) {
                this.additionalAnnotations = annotations;
                return this;
            }
            $$$reportNull$$$0(35);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setCopyOverrides() {
            this.copyOverrides = false;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setDispatchReceiverParameter(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl) {
            this.dispatchReceiverParameter = receiverParameterDescriptorImpl;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setHiddenForResolutionEverywhereBesideSupercalls() {
            this.isHiddenForResolutionEverywhereBesideSupercalls = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setHiddenToOvercomeSignatureClash() {
            this.isHiddenToOvercomeSignatureClash = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setKind(CallableMemberDescriptor.Kind kind) {
            if (kind != null) {
                this.kind = kind;
                return this;
            }
            $$$reportNull$$$0(14);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setModality(Modality modality) {
            if (modality != null) {
                this.newModality = modality;
                return this;
            }
            $$$reportNull$$$0(10);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setName(Name name) {
            this.name = name;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setOwner(DeclarationDescriptor declarationDescriptor) {
            this.newOwner = declarationDescriptor;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setPreserveSourceElement() {
            this.preserveSourceElement = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setReturnType(KotlinType kotlinType) {
            if (kotlinType != null) {
                this.newReturnType = kotlinType;
                return this;
            }
            $$$reportNull$$$0(23);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setSignatureChange() {
            this.signatureChange = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setTypeParameters() {
            this.newTypeParameters = EmptyList.INSTANCE;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setValueParameters(List list) {
            this.newValueParameterDescriptors = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder
        public final FunctionDescriptor.CopyBuilder setVisibility(DescriptorVisibilities.AnonymousClass1 anonymousClass1) {
            if (anonymousClass1 != null) {
                this.newVisibility = anonymousClass1;
                return this;
            }
            $$$reportNull$$$0(12);
            throw null;
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        switch (i) {
            case 9:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case 23:
            case 26:
            case 27:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 10:
            case 11:
            case 12:
            case VERTICAL_GRID_ITEM_VALUE:
            case SIZE_BOX_VALUE:
            case 24:
            case 25:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 9:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case 23:
            case 26:
            case 27:
                i2 = 2;
                break;
            case 10:
            case 11:
            case 12:
            case VERTICAL_GRID_ITEM_VALUE:
            case SIZE_BOX_VALUE:
            case 24:
            case 25:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "source";
                break;
            case 5:
                objArr[0] = "contextReceiverParameters";
                break;
            case 6:
                objArr[0] = "typeParameters";
                break;
            case 7:
            case 28:
            case 30:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 8:
            case 10:
                objArr[0] = "visibility";
                break;
            case 9:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case 23:
            case 26:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 11:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 12:
                objArr[0] = "extensionReceiverParameter";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[0] = "overriddenDescriptors";
                break;
            case SIZE_BOX_VALUE:
                objArr[0] = "originalSubstitutor";
                break;
            case 24:
            case 29:
            case 31:
                objArr[0] = "substitutor";
                break;
            case 25:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 9:
                objArr[1] = "initialize";
                break;
            case 10:
            case 11:
            case 12:
            case VERTICAL_GRID_ITEM_VALUE:
            case SIZE_BOX_VALUE:
            case 24:
            case 25:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case IMAGE_VALUE:
                objArr[1] = "getContextReceiverParameters";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 15:
                objArr[1] = "getModality";
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[1] = "getVisibility";
                break;
            case RADIO_GROUP_VALUE:
                objArr[1] = "getTypeParameters";
                break;
            case RADIO_BUTTON_VALUE:
                objArr[1] = "getValueParameters";
                break;
            case RADIO_ROW_VALUE:
                objArr[1] = "getOriginal";
                break;
            case RADIO_COLUMN_VALUE:
                objArr[1] = "getKind";
                break;
            case 23:
                objArr[1] = "newCopyBuilder";
                break;
            case 26:
                objArr[1] = "copy";
                break;
            case 27:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case 23:
            case 26:
            case 27:
                break;
            case 10:
                objArr[2] = "setVisibility";
                break;
            case 11:
                objArr[2] = "setReturnType";
                break;
            case 12:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case SIZE_BOX_VALUE:
                objArr[2] = "substitute";
                break;
            case 24:
                objArr[2] = "newCopyBuilder";
                break;
            case 25:
                objArr[2] = "doSubstitute";
                break;
            case 28:
            case 29:
            case 30:
            case 31:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 9:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case 23:
            case 26:
            case 27:
                throw new IllegalStateException(format);
            case 10:
            case 11:
            case 12:
            case VERTICAL_GRID_ITEM_VALUE:
            case SIZE_BOX_VALUE:
            case 24:
            case 25:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionDescriptorImpl(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name) {
        super(declarationDescriptor, annotations, name, sourceElement);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (kind == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (sourceElement == null) {
            $$$reportNull$$$0(4);
            throw null;
        }
        this.visibility = DescriptorVisibilities.UNKNOWN;
        this.isOperator = false;
        this.isInfix = false;
        this.isExternal = false;
        this.isInline = false;
        this.isTailrec = false;
        this.isExpect = false;
        this.isHiddenToOvercomeSignatureClash = false;
        this.isHiddenForResolutionEverywhereBesideSupercalls = false;
        this.isSuspend = false;
        this.hasStableParameterNames = true;
        this.hasSynthesizedParameterNames = false;
        this.overriddenFunctions = null;
        this.lazyOverriddenFunctionsTask = null;
        this.initialSignatureDescriptor = null;
        this.userDataMap = null;
        this.original = functionDescriptor == null ? this : functionDescriptor;
        this.kind = kind;
    }

    public static ArrayList getSubstitutedValueParameters(FunctionDescriptor functionDescriptor, List list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        if (list == null) {
            $$$reportNull$$$0(30);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) it.next();
            KotlinType type = valueParameterDescriptorImpl.getType();
            Variance variance = Variance.IN_VARIANCE;
            KotlinType substitute = typeSubstitutor.substitute(type, variance);
            KotlinType kotlinType = valueParameterDescriptorImpl.varargElementType;
            KotlinType substitute2 = kotlinType == null ? null : typeSubstitutor.substitute(kotlinType, variance);
            if (substitute == null) {
                return null;
            }
            if ((substitute != valueParameterDescriptorImpl.getType() || kotlinType != substitute2) && zArr != null) {
                zArr[0] = true;
            }
            GapPending$keyMap$2 gapPending$keyMap$2 = valueParameterDescriptorImpl instanceof ValueParameterDescriptorImpl.WithDestructuringDeclaration ? new GapPending$keyMap$2(5, (List) ((ValueParameterDescriptorImpl.WithDestructuringDeclaration) valueParameterDescriptorImpl).destructuringVariables$delegate.getValue()) : null;
            ValueParameterDescriptorImpl valueParameterDescriptorImpl2 = z ? null : valueParameterDescriptorImpl;
            int i = valueParameterDescriptorImpl.index;
            Annotations annotations = valueParameterDescriptorImpl.getAnnotations();
            Name name = valueParameterDescriptorImpl.getName();
            boolean declaresDefaultValue = valueParameterDescriptorImpl.declaresDefaultValue();
            boolean z3 = valueParameterDescriptorImpl.isCrossinline;
            boolean z4 = valueParameterDescriptorImpl.isNoinline;
            SourceElement source = z2 ? valueParameterDescriptorImpl.getSource() : SourceElement.NO_SOURCE;
            annotations.getClass();
            name.getClass();
            source.getClass();
            arrayList.add(gapPending$keyMap$2 == null ? new ValueParameterDescriptorImpl(functionDescriptor, valueParameterDescriptorImpl2, i, annotations, name, substitute, declaresDefaultValue, z3, z4, substitute2, source) : new ValueParameterDescriptorImpl.WithDestructuringDeclaration(functionDescriptor, valueParameterDescriptorImpl2, i, annotations, name, substitute, declaresDefaultValue, z3, z4, substitute2, source, gapPending$keyMap$2));
        }
        return arrayList;
    }

    public Object accept(ConnectionPool connectionPool, Object obj) {
        return connectionPool.visitFunctionDescriptor(this, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final FunctionDescriptor copy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, CallableMemberDescriptor.Kind kind) {
        FunctionDescriptor build = newCopyBuilder().setOwner(declarationDescriptor).setModality(modality).setVisibility(anonymousClass1).setKind(kind).setCopyOverrides().build();
        if (build != null) {
            return build;
        }
        $$$reportNull$$$0(26);
        throw null;
    }

    public abstract FunctionDescriptorImpl createSubstitutedCopy(CallableMemberDescriptor.Kind kind, DeclarationDescriptor declarationDescriptor, FunctionDescriptor functionDescriptor, SourceElement sourceElement, Annotations annotations, Name name);

    public FunctionDescriptorImpl doSubstitute(CopyConfiguration copyConfiguration) {
        Annotations annotations;
        ArrayList arrayList;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2;
        KotlinType substitute;
        boolean[] zArr = new boolean[1];
        if (copyConfiguration.additionalAnnotations != null) {
            annotations = getAnnotations();
            Annotations annotations2 = copyConfiguration.additionalAnnotations;
            annotations.getClass();
            annotations2.getClass();
            if (annotations.isEmpty()) {
                annotations = annotations2;
            } else if (!annotations2.isEmpty()) {
                annotations = new AnnotationsImpl(new Annotations[]{annotations, annotations2});
            }
        } else {
            annotations = getAnnotations();
        }
        Annotations annotations3 = annotations;
        DeclarationDescriptor declarationDescriptor = copyConfiguration.newOwner;
        FunctionDescriptor functionDescriptor = copyConfiguration.original;
        CallableMemberDescriptor.Kind kind = copyConfiguration.kind;
        Name name = copyConfiguration.name;
        SourceElement source = copyConfiguration.preserveSourceElement ? ((DeclarationDescriptorNonRootImpl) (functionDescriptor != null ? functionDescriptor : getOriginal())).getSource() : SourceElement.NO_SOURCE;
        if (source == null) {
            $$$reportNull$$$0(27);
            throw null;
        }
        FunctionDescriptorImpl createSubstitutedCopy = createSubstitutedCopy(kind, declarationDescriptor, functionDescriptor, source, annotations3, name);
        List list = copyConfiguration.newTypeParameters;
        if (list == null) {
            list = getTypeParameters();
        }
        zArr[0] = zArr[0] | (!list.isEmpty());
        ArrayList arrayList2 = new ArrayList(list.size());
        TypeSubstitutor substituteTypeParameters = KotlinTypeKt.substituteTypeParameters(list, copyConfiguration.substitution, createSubstitutedCopy, arrayList2, zArr);
        if (substituteTypeParameters != null) {
            ArrayList arrayList3 = new ArrayList();
            if (!copyConfiguration.newContextReceiverParameters.isEmpty()) {
                int i = 0;
                for (ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl3 : copyConfiguration.newContextReceiverParameters) {
                    KotlinType substitute2 = substituteTypeParameters.substitute(receiverParameterDescriptorImpl3.getType(), Variance.IN_VARIANCE);
                    if (substitute2 == null) {
                        break;
                    }
                    int i2 = i + 1;
                    arrayList3.add(DescriptorFactory.createContextReceiverParameterForCallable(createSubstitutedCopy, substitute2, ((ContextReceiver) receiverParameterDescriptorImpl3.getValue()).getCustomLabelName(), receiverParameterDescriptorImpl3.getAnnotations(), i));
                    zArr[0] = zArr[0] | (substitute2 != receiverParameterDescriptorImpl3.getType());
                    i = i2;
                }
            }
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl4 = copyConfiguration.newExtensionReceiverParameter;
            if (receiverParameterDescriptorImpl4 != null) {
                KotlinType substitute3 = substituteTypeParameters.substitute(receiverParameterDescriptorImpl4.getType(), Variance.IN_VARIANCE);
                if (substitute3 != null) {
                    copyConfiguration.newExtensionReceiverParameter.getValue();
                    ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl5 = new ReceiverParameterDescriptorImpl(createSubstitutedCopy, new ExtensionReceiver(createSubstitutedCopy, substitute3), copyConfiguration.newExtensionReceiverParameter.getAnnotations());
                    zArr[0] = (substitute3 != copyConfiguration.newExtensionReceiverParameter.getType()) | zArr[0];
                    arrayList = arrayList2;
                    receiverParameterDescriptorImpl = receiverParameterDescriptorImpl5;
                }
            } else {
                arrayList = arrayList2;
                receiverParameterDescriptorImpl = null;
            }
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl6 = copyConfiguration.dispatchReceiverParameter;
            if (receiverParameterDescriptorImpl6 != null) {
                ReceiverParameterDescriptorImpl substitute4 = receiverParameterDescriptorImpl6.substitute(substituteTypeParameters);
                if (substitute4 != null) {
                    zArr[0] = zArr[0] | (substitute4 != copyConfiguration.dispatchReceiverParameter);
                    receiverParameterDescriptorImpl2 = substitute4;
                }
            } else {
                receiverParameterDescriptorImpl2 = null;
            }
            ArrayList substitutedValueParameters = getSubstitutedValueParameters(createSubstitutedCopy, copyConfiguration.newValueParameterDescriptors, substituteTypeParameters, copyConfiguration.dropOriginalInContainingParts, copyConfiguration.preserveSourceElement, zArr);
            if (substitutedValueParameters != null && (substitute = substituteTypeParameters.substitute(copyConfiguration.newReturnType, Variance.OUT_VARIANCE)) != null) {
                boolean z = zArr[0] | (substitute != copyConfiguration.newReturnType);
                zArr[0] = z;
                if (!z && copyConfiguration.justForTypeSubstitution) {
                    return this;
                }
                createSubstitutedCopy.mo829initialize(receiverParameterDescriptorImpl, receiverParameterDescriptorImpl2, arrayList3, arrayList, substitutedValueParameters, substitute, copyConfiguration.newModality, copyConfiguration.newVisibility);
                createSubstitutedCopy.isOperator = this.isOperator;
                createSubstitutedCopy.isInfix = this.isInfix;
                createSubstitutedCopy.isExternal = this.isExternal;
                createSubstitutedCopy.isInline = this.isInline;
                createSubstitutedCopy.isTailrec = this.isTailrec;
                createSubstitutedCopy.isSuspend = this.isSuspend;
                createSubstitutedCopy.isExpect = this.isExpect;
                createSubstitutedCopy.setHasStableParameterNames(this.hasStableParameterNames);
                createSubstitutedCopy.isHiddenToOvercomeSignatureClash = copyConfiguration.isHiddenToOvercomeSignatureClash;
                createSubstitutedCopy.isHiddenForResolutionEverywhereBesideSupercalls = copyConfiguration.isHiddenForResolutionEverywhereBesideSupercalls;
                Boolean bool = copyConfiguration.newHasSynthesizedParameterNames;
                createSubstitutedCopy.setHasSynthesizedParameterNames(bool != null ? bool.booleanValue() : this.hasSynthesizedParameterNames);
                if (!copyConfiguration.userDataMap.isEmpty() || this.userDataMap != null) {
                    LinkedHashMap linkedHashMap = copyConfiguration.userDataMap;
                    Map map = this.userDataMap;
                    if (map != null) {
                        for (Map.Entry entry : map.entrySet()) {
                            if (!linkedHashMap.containsKey(entry.getKey())) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                    }
                    if (linkedHashMap.size() == 1) {
                        createSubstitutedCopy.userDataMap = Collections.singletonMap(linkedHashMap.keySet().iterator().next(), linkedHashMap.values().iterator().next());
                    } else {
                        createSubstitutedCopy.userDataMap = linkedHashMap;
                    }
                }
                if (copyConfiguration.signatureChange || this.initialSignatureDescriptor != null) {
                    FunctionDescriptor functionDescriptor2 = this.initialSignatureDescriptor;
                    if (functionDescriptor2 == null) {
                        functionDescriptor2 = this;
                    }
                    createSubstitutedCopy.initialSignatureDescriptor = functionDescriptor2.substitute(substituteTypeParameters);
                }
                if (copyConfiguration.copyOverrides && !getOriginal().getOverriddenDescriptors().isEmpty()) {
                    if (copyConfiguration.substitution.isEmpty()) {
                        Http2Connection.ReaderRunnable readerRunnable = this.lazyOverriddenFunctionsTask;
                        if (readerRunnable != null) {
                            createSubstitutedCopy.lazyOverriddenFunctionsTask = readerRunnable;
                            return createSubstitutedCopy;
                        }
                        createSubstitutedCopy.setOverriddenDescriptors(getOverriddenDescriptors());
                        return createSubstitutedCopy;
                    }
                    createSubstitutedCopy.lazyOverriddenFunctionsTask = new Http2Connection.ReaderRunnable(3, this, substituteTypeParameters);
                }
                return createSubstitutedCopy;
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getContextReceiverParameters() {
        List list = this.contextReceiverParameters;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(13);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptorImpl getDispatchReceiverParameter() {
        return this.dispatchReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final ReceiverParameterDescriptorImpl getExtensionReceiverParameter() {
        return this.extensionReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final FunctionDescriptor getInitialSignatureDescriptor() {
        return this.initialSignatureDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public final CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.kind;
        if (kind != null) {
            return kind;
        }
        $$$reportNull$$$0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        Modality modality = this.modality;
        if (modality != null) {
            return modality;
        }
        $$$reportNull$$$0(15);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public FunctionDescriptor getOriginal() {
        FunctionDescriptor functionDescriptor = this.original;
        ?? r1 = this;
        if (functionDescriptor != this) {
            r1 = functionDescriptor.getOriginal();
        }
        if (r1 != 0) {
            return r1;
        }
        $$$reportNull$$$0(20);
        throw null;
    }

    public Collection getOverriddenDescriptors() {
        Http2Connection.ReaderRunnable readerRunnable = this.lazyOverriddenFunctionsTask;
        if (readerRunnable != null) {
            this.overriddenFunctions = (Collection) readerRunnable.invoke();
            this.lazyOverriddenFunctionsTask = null;
        }
        Collection collection = this.overriddenFunctions;
        if (collection == null) {
            collection = Collections.EMPTY_LIST;
        }
        if (collection != null) {
            return collection;
        }
        $$$reportNull$$$0(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public KotlinType getReturnType() {
        return this.unsubstitutedReturnType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getTypeParameters() {
        List list = this.typeParameters;
        if (list != null) {
            return list;
        }
        Gson$$ExternalSyntheticBUOutline0.m$1("typeParameters == null for ", this);
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public Object getUserData(CallableDescriptor.UserDataKey userDataKey) {
        Map map = this.userDataMap;
        if (map == null) {
            return null;
        }
        return map.get(userDataKey);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public final List getValueParameters() {
        List list = this.unsubstitutedValueParameters;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = this.visibility;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        $$$reportNull$$$0(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    public boolean hasSynthesizedParameterNames() {
        return this.hasSynthesizedParameterNames;
    }

    /* renamed from: initialize */
    public void mo829initialize(ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl, ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2, List list, List list2, List list3, KotlinType kotlinType, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1) {
        if (list == null) {
            $$$reportNull$$$0(5);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        if (list3 == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (anonymousClass1 == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        this.typeParameters = CollectionsKt.toList(list2);
        this.unsubstitutedValueParameters = CollectionsKt.toList(list3);
        this.unsubstitutedReturnType = kotlinType;
        this.modality = modality;
        this.visibility = anonymousClass1;
        this.extensionReceiverParameter = receiverParameterDescriptorImpl;
        this.dispatchReceiverParameter = receiverParameterDescriptorImpl2;
        this.contextReceiverParameters = list;
        for (int i = 0; i < list2.size(); i++) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) list2.get(i);
            if (typeParameterDescriptor.getIndex() != i) {
                StringBuilder sb = new StringBuilder();
                sb.append(typeParameterDescriptor);
                int index = typeParameterDescriptor.getIndex();
                sb.append(" index is ");
                sb.append(index);
                sb.append(" but position is ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
            }
        }
        for (int i2 = 0; i2 < list3.size(); i2++) {
            ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) list3.get(i2);
            if (valueParameterDescriptorImpl.index != i2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(valueParameterDescriptorImpl);
                int i3 = valueParameterDescriptorImpl.index;
                sb2.append("index is ");
                sb2.append(i3);
                sb2.append(" but position is ");
                sb2.append(i2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return this.isExpect;
    }

    public boolean isExternal() {
        return this.isExternal;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isHiddenForResolutionEverywhereBesideSupercalls() {
        return this.isHiddenForResolutionEverywhereBesideSupercalls;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isHiddenToOvercomeSignatureClash() {
        return this.isHiddenToOvercomeSignatureClash;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isInfix() {
        if (this.isInfix) {
            return true;
        }
        Iterator it = getOriginal().getOverriddenDescriptors().iterator();
        while (it.hasNext()) {
            if (((FunctionDescriptor) it.next()).isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.isInline;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public final boolean isOperator() {
        if (this.isOperator) {
            return true;
        }
        Iterator it = getOriginal().getOverriddenDescriptors().iterator();
        while (it.hasNext()) {
            if (((FunctionDescriptor) it.next()).isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public boolean isSuspend() {
        return this.isSuspend;
    }

    public boolean isTailrec() {
        return this.isTailrec;
    }

    public final CopyConfiguration newCopyBuilder(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return new CopyConfiguration(this, typeSubstitutor.substitution, getContainingDeclaration(), getModality(), getVisibility(), getKind(), getValueParameters(), getContextReceiverParameters(), this.extensionReceiverParameter, getReturnType());
        }
        $$$reportNull$$$0(24);
        throw null;
    }

    public void setHasStableParameterNames(boolean z) {
        this.hasStableParameterNames = z;
    }

    public void setHasSynthesizedParameterNames(boolean z) {
        this.hasSynthesizedParameterNames = z;
    }

    public void setOverriddenDescriptors(Collection collection) {
        if (collection == null) {
            $$$reportNull$$$0(17);
            throw null;
        }
        this.overriddenFunctions = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((FunctionDescriptor) it.next()).isHiddenForResolutionEverywhereBesideSupercalls()) {
                this.isHiddenForResolutionEverywhereBesideSupercalls = true;
                return;
            }
        }
    }

    public final void setReturnType(SimpleType simpleType) {
        if (simpleType != null) {
            this.unsubstitutedReturnType = simpleType;
        } else {
            $$$reportNull$$$0(11);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    public FunctionDescriptor substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(22);
            throw null;
        }
        if (typeSubstitutor.substitution.isEmpty()) {
            return this;
        }
        CopyConfiguration newCopyBuilder = newCopyBuilder(typeSubstitutor);
        newCopyBuilder.original = getOriginal();
        newCopyBuilder.preserveSourceElement = true;
        newCopyBuilder.justForTypeSubstitution = true;
        return newCopyBuilder.this$0.doSubstitute(newCopyBuilder);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public SimpleFunctionDescriptorImpl copy(DeclarationDescriptor declarationDescriptor, Modality modality, DescriptorVisibilities.AnonymousClass1 anonymousClass1, CallableMemberDescriptor.Kind kind) {
        return (SimpleFunctionDescriptorImpl) copy(declarationDescriptor, modality, anonymousClass1, kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor
    public FunctionDescriptor.CopyBuilder newCopyBuilder() {
        return newCopyBuilder(TypeSubstitutor.EMPTY);
    }
}
