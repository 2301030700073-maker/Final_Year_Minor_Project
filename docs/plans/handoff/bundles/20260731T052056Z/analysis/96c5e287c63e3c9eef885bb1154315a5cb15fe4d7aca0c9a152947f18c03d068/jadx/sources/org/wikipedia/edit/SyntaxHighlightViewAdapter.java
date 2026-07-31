package org.wikipedia.edit;

import android.view.View;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FieldDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ContextReceiver;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ExtensionReceiver;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import okhttp3.MultipartBody;
import org.wikipedia.Constants;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.edit.WikiTextKeyboardView;
import org.wikipedia.page.PageTitle;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda0;
import org.wikipedia.views.WikitextKeyboardButtonView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SyntaxHighlightViewAdapter implements WikiTextKeyboardView.Callback {
    public Object activity;
    public Object editText;
    public final Object invokeSource;
    public boolean isFromDiff;
    public Object pageTitle;
    public final Object requestInsertMedia;
    public final Object requestInsertTemplate;
    public final Object requestLinkFromSearch;
    public Object wikiTextKeyboardFormattingView;
    public Object wikiTextKeyboardHeadingsView;
    public Object wikiTextKeyboardView;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 7:
            case 9:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_BUTTON_VALUE:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                break;
            case 4:
                objArr[0] = "type";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 8:
                objArr[0] = "visibility";
                break;
            case 10:
                objArr[0] = "kind";
                break;
            case 12:
                objArr[0] = "typeParameters";
                break;
            case 15:
                objArr[0] = "substitution";
                break;
            case RADIO_GROUP_VALUE:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "owner";
                break;
        }
        if (i == 1) {
            objArr[1] = "setOwner";
        } else if (i == 2) {
            objArr[1] = "setOriginal";
        } else if (i == 3) {
            objArr[1] = "setPreserveSourceElement";
        } else if (i == 5) {
            objArr[1] = "setReturnType";
        } else if (i == 7) {
            objArr[1] = "setModality";
        } else if (i == 9) {
            objArr[1] = "setVisibility";
        } else if (i == 11) {
            objArr[1] = "setKind";
        } else if (i == 19) {
            objArr[1] = "setName";
        } else if (i == 13) {
            objArr[1] = "setTypeParameters";
        } else if (i == 14) {
            objArr[1] = "setDispatchReceiverParameter";
        } else if (i == 16) {
            objArr[1] = "setSubstitution";
        } else if (i != 17) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
        } else {
            objArr[1] = "setCopyOverrides";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 7:
            case 9:
            case 11:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_BUTTON_VALUE:
                break;
            case 4:
                objArr[2] = "setReturnType";
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 8:
                objArr[2] = "setVisibility";
                break;
            case 10:
                objArr[2] = "setKind";
                break;
            case 12:
                objArr[2] = "setTypeParameters";
                break;
            case 15:
                objArr[2] = "setSubstitution";
                break;
            case RADIO_GROUP_VALUE:
                objArr[2] = "setName";
                break;
            default:
                objArr[2] = "setOwner";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 1 && i != 2 && i != 3 && i != 5 && i != 7 && i != 9 && i != 11 && i != 19 && i != 13 && i != 14 && i != 16 && i != 17) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public SyntaxHighlightViewAdapter(BaseActivity baseActivity, PageTitle pageTitle, SyntaxHighlightableEditText syntaxHighlightableEditText, WikiTextKeyboardView wikiTextKeyboardView, WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView, WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView, Constants.InvokeSource invokeSource, ActivityResultRegistry$register$2 activityResultRegistry$register$2, boolean z, boolean z2) {
        pageTitle.getClass();
        syntaxHighlightableEditText.getClass();
        invokeSource.getClass();
        activityResultRegistry$register$2.getClass();
        this.activity = baseActivity;
        this.pageTitle = pageTitle;
        this.editText = syntaxHighlightableEditText;
        this.wikiTextKeyboardView = wikiTextKeyboardView;
        this.wikiTextKeyboardFormattingView = wikiTextKeyboardFormattingView;
        this.wikiTextKeyboardHeadingsView = wikiTextKeyboardHeadingsView;
        this.invokeSource = invokeSource;
        this.requestInsertMedia = activityResultRegistry$register$2;
        this.isFromDiff = z;
        wikiTextKeyboardView.setEditText(syntaxHighlightableEditText);
        wikiTextKeyboardView.setCallback(this);
        wikiTextKeyboardFormattingView.setEditText(syntaxHighlightableEditText);
        wikiTextKeyboardFormattingView.setCallback(this);
        wikiTextKeyboardHeadingsView.setEditText(syntaxHighlightableEditText);
        wikiTextKeyboardHeadingsView.setCallback(this);
        wikiTextKeyboardView.setUserMentionVisible(z2);
        hideAllSyntaxModals();
        View decorView = baseActivity.getWindow().getDecorView();
        SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0 syntaxHighlightViewAdapter$$ExternalSyntheticLambda0 = new SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0(this, 0);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(decorView, syntaxHighlightViewAdapter$$ExternalSyntheticLambda0);
        int i = 3;
        syntaxHighlightableEditText.setOnFocusChangeListener(new SurveyDialog$$ExternalSyntheticLambda0(i, this));
        this.requestLinkFromSearch = (ActivityResultRegistry$register$2) baseActivity.registerForActivityResult(new SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0(this, 1), new FragmentManager$FragmentIntentSenderContract(i));
        this.requestInsertTemplate = (ActivityResultRegistry$register$2) baseActivity.registerForActivityResult(new SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0(this, 2), new FragmentManager$FragmentIntentSenderContract(i));
    }

    public PropertyDescriptorImpl build() {
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl2;
        PropertyGetterDescriptorImpl propertyGetterDescriptorImpl;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        Function0 function0;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl3;
        ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl4;
        PropertyDescriptorImpl propertyDescriptorImpl = (PropertyDescriptorImpl) this.requestInsertTemplate;
        PropertyDescriptorImpl createSubstitutedCopy = propertyDescriptorImpl.createSubstitutedCopy((DeclarationDescriptor) this.activity, (Modality) this.pageTitle, (DescriptorVisibilities.AnonymousClass1) this.editText, (PropertyDescriptor) this.wikiTextKeyboardView, (CallableMemberDescriptor.Kind) this.wikiTextKeyboardFormattingView, (Name) this.requestInsertMedia);
        List typeParameters = propertyDescriptorImpl.getTypeParameters();
        ArrayList arrayList = new ArrayList(((ArrayList) typeParameters).size());
        TypeSubstitutor substituteTypeParameters = KotlinTypeKt.substituteTypeParameters(typeParameters, (TypeSubstitution) this.wikiTextKeyboardHeadingsView, createSubstitutedCopy, arrayList);
        KotlinType kotlinType = (KotlinType) this.requestLinkFromSearch;
        KotlinType substitute = substituteTypeParameters.substitute(kotlinType, Variance.OUT_VARIANCE);
        if (substitute != null) {
            Variance variance = Variance.IN_VARIANCE;
            KotlinType substitute2 = substituteTypeParameters.substitute(kotlinType, variance);
            if (substitute2 != null) {
                createSubstitutedCopy.setInType(substitute2);
            }
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl5 = (ReceiverParameterDescriptorImpl) this.invokeSource;
            if (receiverParameterDescriptorImpl5 != null) {
                ReceiverParameterDescriptorImpl substitute3 = receiverParameterDescriptorImpl5.substitute(substituteTypeParameters);
                receiverParameterDescriptorImpl = substitute3 != null ? substitute3 : null;
            }
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl6 = propertyDescriptorImpl.extensionReceiverParameter;
            if (receiverParameterDescriptorImpl6 != null) {
                KotlinType substitute4 = substituteTypeParameters.substitute(receiverParameterDescriptorImpl6.getType(), variance);
                if (substitute4 == null) {
                    receiverParameterDescriptorImpl4 = null;
                } else {
                    receiverParameterDescriptorImpl6.getValue();
                    receiverParameterDescriptorImpl4 = new ReceiverParameterDescriptorImpl(createSubstitutedCopy, new ExtensionReceiver(createSubstitutedCopy, substitute4), receiverParameterDescriptorImpl6.getAnnotations());
                }
                receiverParameterDescriptorImpl2 = receiverParameterDescriptorImpl4;
            } else {
                receiverParameterDescriptorImpl2 = null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl7 : propertyDescriptorImpl.contextReceiverParameters) {
                KotlinType substitute5 = substituteTypeParameters.substitute(receiverParameterDescriptorImpl7.getType(), Variance.IN_VARIANCE);
                if (substitute5 == null) {
                    receiverParameterDescriptorImpl3 = null;
                } else {
                    Name customLabelName = ((ContextReceiver) receiverParameterDescriptorImpl7.getValue()).getCustomLabelName();
                    receiverParameterDescriptorImpl7.getValue();
                    receiverParameterDescriptorImpl3 = new ReceiverParameterDescriptorImpl(createSubstitutedCopy, new ContextReceiver(createSubstitutedCopy, substitute5, customLabelName), receiverParameterDescriptorImpl7.getAnnotations());
                }
                if (receiverParameterDescriptorImpl3 != null) {
                    arrayList2.add(receiverParameterDescriptorImpl3);
                }
            }
            createSubstitutedCopy.setType(substitute, arrayList, receiverParameterDescriptorImpl, receiverParameterDescriptorImpl2, arrayList2);
            PropertyGetterDescriptorImpl propertyGetterDescriptorImpl2 = propertyDescriptorImpl.getter;
            SourceFile$1 sourceFile$1 = SourceElement.NO_SOURCE;
            if (propertyGetterDescriptorImpl2 == null) {
                propertyGetterDescriptorImpl = null;
            } else {
                Annotations annotations = propertyGetterDescriptorImpl2.getAnnotations();
                Modality modality = (Modality) this.pageTitle;
                DescriptorVisibilities.AnonymousClass1 visibility = propertyDescriptorImpl.getter.getVisibility();
                if (((CallableMemberDescriptor.Kind) this.wikiTextKeyboardFormattingView) == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && DescriptorVisibilities.isPrivate(DescriptorVisibilities.toDescriptorVisibility(visibility.delegate.normalize()))) {
                    visibility = DescriptorVisibilities.INVISIBLE_FAKE;
                }
                DescriptorVisibilities.AnonymousClass1 anonymousClass1 = visibility;
                PropertyGetterDescriptorImpl propertyGetterDescriptorImpl3 = propertyDescriptorImpl.getter;
                boolean z = propertyGetterDescriptorImpl3.isDefault;
                boolean z2 = propertyGetterDescriptorImpl3.isExternal;
                boolean z3 = propertyGetterDescriptorImpl3.isInline;
                CallableMemberDescriptor.Kind kind = (CallableMemberDescriptor.Kind) this.wikiTextKeyboardFormattingView;
                PropertyDescriptor propertyDescriptor = (PropertyDescriptor) this.wikiTextKeyboardView;
                propertyGetterDescriptorImpl = new PropertyGetterDescriptorImpl(createSubstitutedCopy, annotations, modality, anonymousClass1, z, z2, z3, kind, propertyDescriptor == null ? null : propertyDescriptor.getGetter(), sourceFile$1);
            }
            if (propertyGetterDescriptorImpl != null) {
                PropertyGetterDescriptorImpl propertyGetterDescriptorImpl4 = propertyDescriptorImpl.getter;
                KotlinType kotlinType2 = propertyGetterDescriptorImpl4.returnType;
                propertyGetterDescriptorImpl.initialSignatureDescriptor = PropertyDescriptorImpl.getSubstitutedInitialSignatureDescriptor(substituteTypeParameters, propertyGetterDescriptorImpl4);
                propertyGetterDescriptorImpl.initialize(kotlinType2 != null ? substituteTypeParameters.substitute(kotlinType2, Variance.OUT_VARIANCE) : null);
            }
            PropertySetterDescriptorImpl propertySetterDescriptorImpl2 = propertyDescriptorImpl.setter;
            if (propertySetterDescriptorImpl2 == null) {
                propertySetterDescriptorImpl = null;
            } else {
                Annotations annotations2 = propertySetterDescriptorImpl2.getAnnotations();
                Modality modality2 = (Modality) this.pageTitle;
                DescriptorVisibilities.AnonymousClass1 visibility2 = propertyDescriptorImpl.setter.getVisibility();
                if (((CallableMemberDescriptor.Kind) this.wikiTextKeyboardFormattingView) == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && DescriptorVisibilities.isPrivate(DescriptorVisibilities.toDescriptorVisibility(visibility2.delegate.normalize()))) {
                    visibility2 = DescriptorVisibilities.INVISIBLE_FAKE;
                }
                DescriptorVisibilities.AnonymousClass1 anonymousClass12 = visibility2;
                PropertySetterDescriptorImpl propertySetterDescriptorImpl3 = propertyDescriptorImpl.setter;
                boolean z4 = propertySetterDescriptorImpl3.isDefault;
                boolean z5 = propertySetterDescriptorImpl3.isExternal;
                boolean z6 = propertySetterDescriptorImpl3.isInline;
                CallableMemberDescriptor.Kind kind2 = (CallableMemberDescriptor.Kind) this.wikiTextKeyboardFormattingView;
                PropertyDescriptor propertyDescriptor2 = (PropertyDescriptor) this.wikiTextKeyboardView;
                propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(createSubstitutedCopy, annotations2, modality2, anonymousClass12, z4, z5, z6, kind2, propertyDescriptor2 == null ? null : propertyDescriptor2.getSetter(), sourceFile$1);
            }
            if (propertySetterDescriptorImpl != null) {
                List substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(propertySetterDescriptorImpl, propertyDescriptorImpl.setter.getValueParameters(), substituteTypeParameters, false, false, null);
                if (substitutedValueParameters == null) {
                    substitutedValueParameters = Collections.singletonList(PropertySetterDescriptorImpl.createSetterParameter(propertySetterDescriptorImpl, DescriptorUtilsKt.getBuiltIns((DeclarationDescriptor) this.activity).getNothingType(), ((ValueParameterDescriptorImpl) propertyDescriptorImpl.setter.getValueParameters().get(0)).getAnnotations()));
                }
                if (substitutedValueParameters.size() != 1) {
                    Gson$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                propertySetterDescriptorImpl.initialSignatureDescriptor = PropertyDescriptorImpl.getSubstitutedInitialSignatureDescriptor(substituteTypeParameters, propertyDescriptorImpl.setter);
                ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) substitutedValueParameters.get(0);
                if (valueParameterDescriptorImpl == null) {
                    PropertySetterDescriptorImpl.$$$reportNull$$$0(6);
                    throw null;
                }
                propertySetterDescriptorImpl.parameter = valueParameterDescriptorImpl;
            }
            FieldDescriptorImpl fieldDescriptorImpl = propertyDescriptorImpl.backingField;
            FieldDescriptorImpl fieldDescriptorImpl2 = fieldDescriptorImpl == null ? null : new FieldDescriptorImpl(fieldDescriptorImpl.getAnnotations(), createSubstitutedCopy);
            FieldDescriptorImpl fieldDescriptorImpl3 = propertyDescriptorImpl.delegateField;
            createSubstitutedCopy.initialize(propertyGetterDescriptorImpl, propertySetterDescriptorImpl, fieldDescriptorImpl2, fieldDescriptorImpl3 == null ? null : new FieldDescriptorImpl(fieldDescriptorImpl3.getAnnotations(), createSubstitutedCopy));
            if (this.isFromDiff) {
                SmartSet smartSet = new SmartSet();
                Iterator it = propertyDescriptorImpl.getOverriddenDescriptors().iterator();
                while (it.hasNext()) {
                    smartSet.add(((PropertyDescriptor) it.next()).substitute(substituteTypeParameters));
                }
                createSubstitutedCopy.overriddenProperties = smartSet;
            }
            if (propertyDescriptorImpl.isConst() && (function0 = propertyDescriptorImpl.compileTimeInitializerFactory) != null) {
                createSubstitutedCopy.setCompileTimeInitializer(propertyDescriptorImpl.compileTimeInitializer, function0);
            }
            return createSubstitutedCopy;
        }
        return null;
    }

    public void hideAllSyntaxModals() {
        ((WikiTextKeyboardHeadingsView) this.wikiTextKeyboardHeadingsView).setVisibility(8);
        ((WikiTextKeyboardFormattingView) this.wikiTextKeyboardFormattingView).setVisibility(8);
        MultipartBody.Builder builder = ((WikiTextKeyboardView) this.wikiTextKeyboardView).binding;
        ((WikitextKeyboardButtonView) builder.type).setExpanded(false);
        ((WikitextKeyboardButtonView) builder.boundary).setExpanded(false);
    }

    public SyntaxHighlightViewAdapter(PropertyDescriptorImpl propertyDescriptorImpl) {
        this.requestInsertTemplate = propertyDescriptorImpl;
        this.activity = propertyDescriptorImpl.getContainingDeclaration();
        this.pageTitle = propertyDescriptorImpl.getModality();
        this.editText = propertyDescriptorImpl.getVisibility();
        this.wikiTextKeyboardView = null;
        this.wikiTextKeyboardFormattingView = propertyDescriptorImpl.getKind();
        this.wikiTextKeyboardHeadingsView = TypeSubstitution.EMPTY;
        this.isFromDiff = true;
        this.invokeSource = propertyDescriptorImpl.dispatchReceiverParameter;
        this.requestInsertMedia = propertyDescriptorImpl.getName();
        this.requestLinkFromSearch = propertyDescriptorImpl.getType();
    }
}
