package kotlin.reflect.jvm.internal.impl.types;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotNullSimpleType extends DelegatingSimpleTypeImpl {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NotNullSimpleType(SimpleType simpleType, int i) {
        super(simpleType);
        this.$r8$classId = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        switch (this.$r8$classId) {
            case 0:
                return false;
            default:
                return true;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final DelegatingSimpleType replaceDelegate(SimpleType simpleType) {
        switch (this.$r8$classId) {
            case 0:
                return new NotNullSimpleType(simpleType, 0);
            default:
                return new NotNullSimpleType(simpleType, 1);
        }
    }
}
