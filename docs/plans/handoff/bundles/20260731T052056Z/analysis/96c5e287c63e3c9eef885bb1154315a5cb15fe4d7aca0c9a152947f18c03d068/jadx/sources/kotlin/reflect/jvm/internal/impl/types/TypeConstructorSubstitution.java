package kotlin.reflect.jvm.internal.impl.types;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TypeConstructorSubstitution extends TypeSubstitution {
    public static final TypeAliasExpander Companion = new TypeAliasExpander();

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjectionBase get(KotlinType kotlinType) {
        return get(kotlinType.getConstructor());
    }

    public abstract TypeProjectionBase get(TypeConstructor typeConstructor);
}
