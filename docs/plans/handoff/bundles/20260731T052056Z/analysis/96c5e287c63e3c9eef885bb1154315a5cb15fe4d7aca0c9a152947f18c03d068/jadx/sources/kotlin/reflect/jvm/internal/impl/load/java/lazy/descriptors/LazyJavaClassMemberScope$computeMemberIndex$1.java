package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.lang.reflect.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassMemberScope$computeMemberIndex$1 extends Lambda implements Function1 {
    public static final LazyJavaClassMemberScope$computeMemberIndex$1 INSTANCE;
    public static final LazyJavaClassMemberScope$computeMemberIndex$1 INSTANCE$1;
    public static final LazyJavaClassMemberScope$computeMemberIndex$1 INSTANCE$2;
    public static final LazyJavaClassMemberScope$computeMemberIndex$1 INSTANCE$3;
    public static final LazyJavaClassMemberScope$computeMemberIndex$1 INSTANCE$4;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new LazyJavaClassMemberScope$computeMemberIndex$1(i, 0);
        INSTANCE$1 = new LazyJavaClassMemberScope$computeMemberIndex$1(i, 1);
        INSTANCE$2 = new LazyJavaClassMemberScope$computeMemberIndex$1(i, 2);
        INSTANCE$3 = new LazyJavaClassMemberScope$computeMemberIndex$1(i, 3);
        INSTANCE$4 = new LazyJavaClassMemberScope$computeMemberIndex$1(i, 4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyJavaClassMemberScope$computeMemberIndex$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((ReflectJavaMember) obj).getClass();
                return Boolean.valueOf(!Modifier.isStatic(r1.getMember().getModifiers()));
            case 1:
                SimpleFunctionDescriptorImpl simpleFunctionDescriptorImpl = (SimpleFunctionDescriptorImpl) obj;
                simpleFunctionDescriptorImpl.getClass();
                return simpleFunctionDescriptorImpl;
            case 2:
                ReflectJavaMember reflectJavaMember = (ReflectJavaMember) obj;
                reflectJavaMember.getClass();
                return Boolean.valueOf(Modifier.isStatic(reflectJavaMember.getMember().getModifiers()));
            case 3:
                MemberScope memberScope = (MemberScope) obj;
                memberScope.getClass();
                return memberScope.getVariableNames();
            default:
                ClassifierDescriptor declarationDescriptor = ((KotlinType) obj).getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
                    return (ModuleAwareClassDescriptor) declarationDescriptor;
                }
                return null;
        }
    }
}
