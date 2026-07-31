package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeParameterDescriptorImpl extends AbstractTypeParameterDescriptor {
    public boolean initialized;
    public final ArrayList upperBounds;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 5 || i == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 28) ? 2 : 3];
        switch (i) {
            case 1:
            case 7:
            case IMAGE_VALUE:
            case RADIO_ROW_VALUE:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case RADIO_COLUMN_VALUE:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case SIZE_BOX_VALUE:
                objArr[0] = "name";
                break;
            case 4:
            case 11:
            case RADIO_GROUP_VALUE:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case RADIO_BUTTON_VALUE:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case LAZY_VERTICAL_GRID_VALUE:
            case 23:
                objArr[0] = "source";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (i == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (i != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (i) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
                objArr[2] = "createForFurtherModification";
                break;
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
                objArr[2] = "<init>";
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 5 && i != 28) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeParameterDescriptorImpl(int i, DeclarationDescriptor declarationDescriptor, Annotations annotations, Name name, LockBasedStorageManager lockBasedStorageManager, Variance variance, boolean z) {
        super(i, declarationDescriptor, annotations, name, lockBasedStorageManager, variance, z);
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(19);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(20);
            throw null;
        }
        if (variance == null) {
            $$$reportNull$$$0(21);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(22);
            throw null;
        }
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(25);
            throw null;
        }
        this.upperBounds = new ArrayList(1);
        this.initialized = false;
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(int i, DeclarationDescriptor declarationDescriptor, Annotations annotations, Name name, LockBasedStorageManager lockBasedStorageManager, Variance variance, boolean z) {
        if (declarationDescriptor == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        if (annotations == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (variance == null) {
            $$$reportNull$$$0(8);
            throw null;
        }
        if (name == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        if (lockBasedStorageManager != null) {
            return new TypeParameterDescriptorImpl(i, declarationDescriptor, annotations, name, lockBasedStorageManager, variance, z);
        }
        $$$reportNull$$$0(11);
        throw null;
    }

    public static TypeParameterDescriptorImpl createWithDefaultBound(AbstractClassDescriptor abstractClassDescriptor, Variance variance, Name name, int i, LockBasedStorageManager lockBasedStorageManager) {
        if (variance == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(4);
            throw null;
        }
        TypeParameterDescriptorImpl createForFurtherModification = createForFurtherModification(i, abstractClassDescriptor, Annotations.Companion.EMPTY, name, lockBasedStorageManager, variance, false);
        SimpleType defaultBound = DescriptorUtilsKt.getBuiltIns(abstractClassDescriptor).getDefaultBound();
        if (createForFurtherModification.initialized) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Type parameter descriptor is already initialized: ".concat(createForFurtherModification.nameForAssertions()));
            return null;
        }
        if (!KotlinTypeKt.isError(defaultBound)) {
            createForFurtherModification.upperBounds.add(defaultBound);
        }
        if (createForFurtherModification.initialized) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Type parameter descriptor is already initialized: ".concat(createForFurtherModification.nameForAssertions()));
            return null;
        }
        createForFurtherModification.initialized = true;
        return createForFurtherModification;
    }

    public final String nameForAssertions() {
        return getName() + " declared in " + DescriptorUtils.getFqName(getContainingDeclaration());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List resolveUpperBounds() {
        if (!this.initialized) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Type parameter descriptor is not initialized: ".concat(nameForAssertions()));
            return null;
        }
        ArrayList arrayList = this.upperBounds;
        if (arrayList != null) {
            return arrayList;
        }
        $$$reportNull$$$0(28);
        throw null;
    }
}
