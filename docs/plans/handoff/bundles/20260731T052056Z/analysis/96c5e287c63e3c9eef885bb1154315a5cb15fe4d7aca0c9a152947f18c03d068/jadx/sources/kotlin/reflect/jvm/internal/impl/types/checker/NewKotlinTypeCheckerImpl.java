package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NewKotlinTypeCheckerImpl implements NewKotlinTypeChecker {
    public final KotlinTypePreparator$Default kotlinTypePreparator = KotlinTypePreparator$Default.INSTANCE;
    public final OverridingUtil overridingUtil = new OverridingUtil(OverridingUtil.DEFAULT_TYPE_CONSTRUCTOR_EQUALITY);

    public final boolean equalTypes(KotlinType kotlinType, KotlinType kotlinType2) {
        kotlinType.getClass();
        kotlinType2.getClass();
        return TypeAliasExpander.equalTypes(UtilsKt.createClassicTypeCheckerState$default(false, this.kotlinTypePreparator, 6), kotlinType.unwrap(), kotlinType2.unwrap());
    }

    public final boolean isSubtypeOf(KotlinType kotlinType, KotlinType kotlinType2) {
        kotlinType.getClass();
        kotlinType2.getClass();
        return TypeAliasExpander.isSubtypeOf$default(TypeAliasExpander.INSTANCE, UtilsKt.createClassicTypeCheckerState$default(true, this.kotlinTypePreparator, 6), kotlinType.unwrap(), kotlinType2.unwrap());
    }
}
