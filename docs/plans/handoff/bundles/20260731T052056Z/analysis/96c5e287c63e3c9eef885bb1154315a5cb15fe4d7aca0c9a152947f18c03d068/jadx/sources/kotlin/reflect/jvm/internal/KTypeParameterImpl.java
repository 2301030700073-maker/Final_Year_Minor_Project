package kotlin.reflect.jvm.internal;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.jvm.internal.TypeParameterReference$Companion$WhenMappings;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KProperty;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KTypeParameterImpl implements KClassifier {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final KTypeParameterOwnerImpl container;
    public final TypeParameterDescriptor descriptor;
    public final ReflectProperties$LazySoftVal upperBounds$delegate = KPropertyImplKt.lazySoft(null, new LayoutNode$_foldedChildren$1(26, this));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(KTypeParameterImpl.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};
    }

    public KTypeParameterImpl(KTypeParameterOwnerImpl kTypeParameterOwnerImpl, TypeParameterDescriptor typeParameterDescriptor) {
        KClassImpl kClassImpl;
        Object accept;
        this.descriptor = typeParameterDescriptor;
        if (kTypeParameterOwnerImpl == null) {
            DeclarationDescriptor containingDeclaration = typeParameterDescriptor.getContainingDeclaration();
            containingDeclaration.getClass();
            if (containingDeclaration instanceof ModuleAwareClassDescriptor) {
                accept = toKClassImpl((ModuleAwareClassDescriptor) containingDeclaration);
            } else {
                if (!(containingDeclaration instanceof CallableMemberDescriptor)) {
                    Gson$$ExternalSyntheticBUOutline0.m$6("Unknown type parameter container: ", containingDeclaration);
                    throw null;
                }
                DeclarationDescriptor containingDeclaration2 = ((CallableMemberDescriptor) containingDeclaration).getContainingDeclaration();
                containingDeclaration2.getClass();
                if (containingDeclaration2 instanceof ModuleAwareClassDescriptor) {
                    kClassImpl = toKClassImpl((ModuleAwareClassDescriptor) containingDeclaration2);
                } else {
                    DeserializedMemberDescriptor deserializedMemberDescriptor = containingDeclaration instanceof DeserializedMemberDescriptor ? (DeserializedMemberDescriptor) containingDeclaration : null;
                    if (deserializedMemberDescriptor == null) {
                        Gson$$ExternalSyntheticBUOutline0.m$6("Non-class callable descriptor must be deserialized: ", containingDeclaration);
                        throw null;
                    }
                    DeserializedContainerSource containerSource = deserializedMemberDescriptor.getContainerSource();
                    JvmPackagePartSource jvmPackagePartSource = containerSource instanceof JvmPackagePartSource ? (JvmPackagePartSource) containerSource : null;
                    ReflectKotlinClass reflectKotlinClass = jvmPackagePartSource != null ? jvmPackagePartSource.knownJvmBinaryClass : null;
                    reflectKotlinClass = reflectKotlinClass == null ? null : reflectKotlinClass;
                    if (reflectKotlinClass == null) {
                        Gson$$ExternalSyntheticBUOutline0.m$6("Container of deserialized member is not resolved: ", deserializedMemberDescriptor);
                        throw null;
                    }
                    kClassImpl = (KClassImpl) Reflection.factory.getOrCreateKotlinClass(reflectKotlinClass.klass);
                }
                accept = containingDeclaration.accept(new ConnectionPool(2, kClassImpl), Unit.INSTANCE);
            }
            accept.getClass();
            kTypeParameterOwnerImpl = (KTypeParameterOwnerImpl) accept;
        }
        this.container = kTypeParameterOwnerImpl;
    }

    public static KClassImpl toKClassImpl(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        Class javaClass = UtilKt.toJavaClass(moduleAwareClassDescriptor);
        KClassImpl kClassImpl = (KClassImpl) (javaClass != null ? Reflection.factory.getOrCreateKotlinClass(javaClass) : null);
        if (kClassImpl != null) {
            return kClassImpl;
        }
        Gson$$ExternalSyntheticBUOutline0.m$7("Type parameter container is not resolved: ", moduleAwareClassDescriptor.getContainingDeclaration());
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof KTypeParameterImpl)) {
            return false;
        }
        KTypeParameterImpl kTypeParameterImpl = (KTypeParameterImpl) obj;
        return Intrinsics.areEqual(this.container, kTypeParameterImpl.container) && getName().equals(kTypeParameterImpl.getName());
    }

    public final String getName() {
        String asString = this.descriptor.getName().asString();
        asString.getClass();
        return asString;
    }

    public final int hashCode() {
        return getName().hashCode() + (this.container.hashCode() * 31);
    }

    public final String toString() {
        KVariance kVariance;
        StringBuilder sb = new StringBuilder();
        int i = WhenMappings.$EnumSwitchMapping$0[this.descriptor.getVariance().ordinal()];
        if (i == 1) {
            kVariance = KVariance.INVARIANT;
        } else if (i == 2) {
            kVariance = KVariance.IN;
        } else {
            if (i != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            kVariance = KVariance.OUT;
        }
        int i2 = TypeParameterReference$Companion$WhenMappings.$EnumSwitchMapping$0[kVariance.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                sb.append("in ");
            } else {
                if (i2 != 3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                sb.append("out ");
            }
        }
        sb.append(getName());
        return sb.toString();
    }
}
