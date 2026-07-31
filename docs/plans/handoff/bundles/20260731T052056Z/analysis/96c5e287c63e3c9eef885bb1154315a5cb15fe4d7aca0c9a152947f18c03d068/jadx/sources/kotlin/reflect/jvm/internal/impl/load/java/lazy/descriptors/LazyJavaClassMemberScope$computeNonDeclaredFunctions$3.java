package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyJavaClassMemberScope$computeNonDeclaredFunctions$3 extends FunctionReference implements Function1 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(int i, int i2, Object obj) {
        super(i, obj);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "searchMethodsByNameWithoutBuiltinMagic";
            case 1:
                return "searchMethodsInSupertypesWithoutBuiltinMagic";
            default:
                return "<init>";
        }
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        switch (this.$r8$classId) {
            case 0:
                return Reflection.factory.getOrCreateKotlinClass(LazyJavaClassMemberScope.class);
            case 1:
                return Reflection.factory.getOrCreateKotlinClass(LazyJavaClassMemberScope.class);
            default:
                return Reflection.factory.getOrCreateKotlinClass(DeserializedClassDescriptor.DeserializedClassMemberScope.class);
        }
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        switch (this.$r8$classId) {
            case 0:
                return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
            case 1:
                return "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
            default:
                return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.receiver;
        switch (i) {
            case 0:
                Name name = (Name) obj;
                name.getClass();
                return ((LazyJavaClassMemberScope) obj2).searchMethodsByNameWithoutBuiltinMagic(name);
            case 1:
                Name name2 = (Name) obj;
                name2.getClass();
                return ((LazyJavaClassMemberScope) obj2).searchMethodsInSupertypesWithoutBuiltinMagic(name2);
            default:
                KotlinTypeRefiner$Default kotlinTypeRefiner$Default = (KotlinTypeRefiner$Default) obj;
                kotlinTypeRefiner$Default.getClass();
                return new DeserializedClassDescriptor.DeserializedClassMemberScope((DeserializedClassDescriptor) obj2, kotlinTypeRefiner$Default);
        }
    }
}
