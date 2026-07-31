package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1 extends FunctionReference implements Function2 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(int i, int i2, Object obj) {
        super(i, obj);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "isStrictSupertype";
            default:
                return "equalTypes";
        }
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        switch (this.$r8$classId) {
            case 0:
                return Reflection.factory.getOrCreateKotlinClass(TypeIntersector.class);
            default:
                return Reflection.factory.getOrCreateKotlinClass(NewKotlinTypeCheckerImpl.class);
        }
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        switch (this.$r8$classId) {
            case 0:
                return "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
            default:
                return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.receiver;
        switch (i) {
            case 0:
                KotlinType kotlinType = (KotlinType) obj;
                KotlinType kotlinType2 = (KotlinType) obj2;
                kotlinType.getClass();
                kotlinType2.getClass();
                ((TypeIntersector) obj3).getClass();
                NewKotlinTypeChecker.Companion.getClass();
                NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.Default;
                return Boolean.valueOf(newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType, kotlinType2) && !newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType2, kotlinType));
            default:
                KotlinType kotlinType3 = (KotlinType) obj;
                KotlinType kotlinType4 = (KotlinType) obj2;
                kotlinType3.getClass();
                kotlinType4.getClass();
                return Boolean.valueOf(((NewKotlinTypeCheckerImpl) obj3).equalTypes(kotlinType3, kotlinType4));
        }
    }
}
