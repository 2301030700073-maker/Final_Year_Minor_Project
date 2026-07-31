package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.compose.ui.unit.DpKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltInClassDescriptorFactory implements ClassDescriptorFactory {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public static final ClassId CLONEABLE_CLASS_ID;
    public static final Name CLONEABLE_NAME;
    public static final JavaToKotlinClassMapper Companion;
    public static final FqName KOTLIN_FQ_NAME;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue cloneable$delegate;
    public final Function1 computeContainingDeclaration = AnonymousClass1.INSTANCE;
    public final ModuleDescriptorImpl moduleDescriptor;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JvmBuiltInClassDescriptorFactory.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};
        Companion = new JavaToKotlinClassMapper();
        KOTLIN_FQ_NAME = StandardNames.BUILT_INS_PACKAGE_FQ_NAME;
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames.cloneable;
        Name shortName = fqNameUnsafe.shortName();
        shortName.getClass();
        CLONEABLE_NAME = shortName;
        CLONEABLE_CLASS_ID = ClassId.topLevel(fqNameUnsafe.toSafe());
    }

    public JvmBuiltInClassDescriptorFactory(LockBasedStorageManager lockBasedStorageManager, ModuleDescriptorImpl moduleDescriptorImpl) {
        this.moduleDescriptor = moduleDescriptorImpl;
        this.cloneable$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new KTypeImpl$arguments$2(14, this, lockBasedStorageManager));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final ModuleAwareClassDescriptor createClass(ClassId classId) {
        classId.getClass();
        if (!classId.equals(CLONEABLE_CLASS_ID)) {
            return null;
        }
        return (ClassDescriptorImpl) DpKt.getValue(this.cloneable$delegate, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final Collection getAllContributedClassesIfPossible(FqName fqName) {
        fqName.getClass();
        if (!fqName.equals(KOTLIN_FQ_NAME)) {
            return EmptySet.INSTANCE;
        }
        return UuidKt.setOf((ClassDescriptorImpl) DpKt.getValue(this.cloneable$delegate, $$delegatedProperties[0]));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final boolean shouldCreateClass(FqName fqName, Name name) {
        fqName.getClass();
        name.getClass();
        return name.equals(CLONEABLE_NAME) && fqName.equals(KOTLIN_FQ_NAME);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory$1, reason: invalid class name */
    public final class AnonymousClass1 extends Lambda implements Function1 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1(1);
        public final /* synthetic */ int $r8$classId = 0;

        public /* synthetic */ AnonymousClass1(int i) {
            super(i);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            boolean z = false;
            switch (this.$r8$classId) {
                case 0:
                    ModuleDescriptor moduleDescriptor = (ModuleDescriptor) obj;
                    moduleDescriptor.getClass();
                    List list = (List) DpKt.getValue(moduleDescriptor.getPackage(JvmBuiltInClassDescriptorFactory.KOTLIN_FQ_NAME).fragments$delegate, LazyPackageViewDescriptorImpl.$$delegatedProperties[0]);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        if (obj2 instanceof BuiltInsPackageFragmentImpl) {
                            arrayList.add(obj2);
                        }
                    }
                    return (BuiltInsPackageFragmentImpl) CollectionsKt.first((List) arrayList);
                default:
                    CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                    if (callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.DECLARATION) {
                        DeclarationDescriptor containingDeclaration = callableMemberDescriptor.getContainingDeclaration();
                        containingDeclaration.getClass();
                        String str = JavaToKotlinClassMap.NUMBERED_FUNCTION_PREFIX;
                        if (JavaToKotlinClassMap.mutableToReadOnly.containsKey(DescriptorUtils.getFqName((ModuleAwareClassDescriptor) containingDeclaration))) {
                            z = true;
                        }
                    }
                    return Boolean.valueOf(z);
            }
        }

        public AnonymousClass1(JvmBuiltInsCustomizer jvmBuiltInsCustomizer) {
            super(1);
        }
    }
}
