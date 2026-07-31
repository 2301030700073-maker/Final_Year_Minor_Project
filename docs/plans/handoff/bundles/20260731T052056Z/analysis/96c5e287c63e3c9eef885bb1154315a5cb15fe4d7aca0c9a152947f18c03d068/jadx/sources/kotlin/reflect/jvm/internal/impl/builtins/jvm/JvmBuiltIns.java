package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.compose.ui.unit.DpKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltIns extends KotlinBuiltIns {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue customizer$delegate;
    public JvmBuiltIns$initialize$1 settingsComputation;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Kind {
        private static final /* synthetic */ Kind[] $VALUES;
        public static final Kind FALLBACK;
        public static final Kind FROM_CLASS_LOADER;
        public static final Kind FROM_DEPENDENCIES;

        static {
            Kind kind = new Kind("FROM_DEPENDENCIES", 0);
            FROM_DEPENDENCIES = kind;
            Kind kind2 = new Kind("FROM_CLASS_LOADER", 1);
            FROM_CLASS_LOADER = kind2;
            Kind kind3 = new Kind("FALLBACK", 2);
            FALLBACK = kind3;
            $VALUES = new Kind[]{kind, kind2, kind3};
        }

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Settings {
        public final ModuleDescriptorImpl ownerModuleDescriptor;

        public Settings(ModuleDescriptorImpl moduleDescriptorImpl) {
            this.ownerModuleDescriptor = moduleDescriptorImpl;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.FROM_DEPENDENCIES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Kind.FROM_CLASS_LOADER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Kind.FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JvmBuiltIns.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltIns(LockBasedStorageManager lockBasedStorageManager, Kind kind) {
        super(lockBasedStorageManager);
        kind.getClass();
        this.customizer$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new KTypeImpl$arguments$2(15, this, lockBasedStorageManager));
        int i = WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
        if (i == 2) {
            createBuiltInsModule();
        } else {
            if (i != 3) {
                return;
            }
            createBuiltInsModule();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final AdditionalClassPartsProvider getAdditionalClassPartsProvider() {
        return getCustomizer();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final Iterable getClassDescriptorFactories() {
        Iterable classDescriptorFactories = super.getClassDescriptorFactories();
        ModuleDescriptorImpl builtInsModule = getBuiltInsModule();
        builtInsModule.getClass();
        return CollectionsKt.plus(classDescriptorFactories, new JvmBuiltInClassDescriptorFactory(this.storageManager, builtInsModule));
    }

    public final JvmBuiltInsCustomizer getCustomizer() {
        return (JvmBuiltInsCustomizer) DpKt.getValue(this.customizer$delegate, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final PlatformDependentDeclarationFilter getPlatformDependentDeclarationFilter() {
        return getCustomizer();
    }
}
