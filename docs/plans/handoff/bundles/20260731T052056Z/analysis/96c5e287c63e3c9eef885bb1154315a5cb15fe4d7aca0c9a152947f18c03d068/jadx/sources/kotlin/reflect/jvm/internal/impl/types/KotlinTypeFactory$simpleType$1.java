package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KotlinTypeFactory$simpleType$1 extends Lambda implements Function1 {
    public final /* synthetic */ TypeConstructor $constructor;
    public final /* synthetic */ int $r8$classId = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KotlinTypeFactory$simpleType$1(List list, TypeAttributes typeAttributes, TypeConstructor typeConstructor, boolean z) {
        super(1);
        this.$constructor = typeConstructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((KotlinTypeRefiner$Default) obj).getClass();
                this.$constructor.getDeclarationDescriptor();
                break;
            default:
                ((KotlinTypeRefiner$Default) obj).getClass();
                this.$constructor.getDeclarationDescriptor();
                break;
        }
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KotlinTypeFactory$simpleType$1(List list, MemberScope memberScope, TypeAttributes typeAttributes, TypeConstructor typeConstructor, boolean z) {
        super(1);
        this.$constructor = typeConstructor;
    }
}
