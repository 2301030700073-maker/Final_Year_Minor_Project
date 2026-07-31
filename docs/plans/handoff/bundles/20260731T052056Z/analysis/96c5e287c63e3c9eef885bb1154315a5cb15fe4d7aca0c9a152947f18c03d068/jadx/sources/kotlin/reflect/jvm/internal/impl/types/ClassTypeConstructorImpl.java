package kotlin.reflect.jvm.internal.impl.types;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassTypeConstructorImpl extends AbstractClassTypeConstructor {
    public final ModuleAwareClassDescriptor classDescriptor;
    public final List parameters;
    public final Collection supertypes;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 4 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "parameters";
                break;
            case 2:
                objArr[0] = "supertypes";
                break;
            case 3:
                objArr[0] = "storageManager";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
                break;
            default:
                objArr[0] = "classDescriptor";
                break;
        }
        if (i == 4) {
            objArr[1] = "getParameters";
        } else if (i == 5) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (i == 6) {
            objArr[1] = "computeSupertypes";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
        } else {
            objArr[1] = "getSupertypeLoopChecker";
        }
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClassTypeConstructorImpl(ModuleAwareClassDescriptor moduleAwareClassDescriptor, List list, Collection collection, LockBasedStorageManager lockBasedStorageManager) {
        super(lockBasedStorageManager);
        if (list == null) {
            $$$reportNull$$$0(1);
            throw null;
        }
        if (collection == null) {
            $$$reportNull$$$0(2);
            throw null;
        }
        if (lockBasedStorageManager == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        this.classDescriptor = moduleAwareClassDescriptor;
        this.parameters = DesugarCollections.unmodifiableList(new ArrayList(list));
        this.supertypes = DesugarCollections.unmodifiableCollection(collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public final Collection computeSupertypes() {
        Collection collection = this.supertypes;
        if (collection != null) {
            return collection;
        }
        $$$reportNull$$$0(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final ModuleAwareClassDescriptor getDeclarationDescriptor() {
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = this.classDescriptor;
        if (moduleAwareClassDescriptor != null) {
            return moduleAwareClassDescriptor;
        }
        $$$reportNull$$$0(5);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getParameters() {
        List list = this.parameters;
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public final SourceFile$1 getSupertypeLoopChecker() {
        return SourceFile$1.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return true;
    }

    public final String toString() {
        String str = DescriptorUtils.getFqName(this.classDescriptor).fqName;
        if (str != null) {
            return str;
        }
        FqNameUnsafe.$$$reportNull$$$0(4);
        throw null;
    }
}
