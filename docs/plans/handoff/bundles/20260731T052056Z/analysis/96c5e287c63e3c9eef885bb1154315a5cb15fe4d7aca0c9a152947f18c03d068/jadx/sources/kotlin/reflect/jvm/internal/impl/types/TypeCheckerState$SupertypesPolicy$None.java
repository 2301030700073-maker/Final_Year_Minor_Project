package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeCheckerState$SupertypesPolicy$None extends KotlinTypeKt {
    public final /* synthetic */ int $r8$classId;
    public static final TypeCheckerState$SupertypesPolicy$None INSTANCE$1 = new TypeCheckerState$SupertypesPolicy$None(1);
    public static final TypeCheckerState$SupertypesPolicy$None INSTANCE = new TypeCheckerState$SupertypesPolicy$None(0);
    public static final TypeCheckerState$SupertypesPolicy$None INSTANCE$2 = new TypeCheckerState$SupertypesPolicy$None(2);

    public /* synthetic */ TypeCheckerState$SupertypesPolicy$None(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt
    public final SimpleTypeMarker transformType(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
        switch (this.$r8$classId) {
            case 0:
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                throw new UnsupportedOperationException("Should not be called");
            case 1:
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                return typeCheckerState.typeSystemContext.lowerBoundIfFlexible(kotlinTypeMarker);
            default:
                typeCheckerState.getClass();
                kotlinTypeMarker.getClass();
                return typeCheckerState.typeSystemContext.upperBoundIfFlexible(kotlinTypeMarker);
        }
    }
}
