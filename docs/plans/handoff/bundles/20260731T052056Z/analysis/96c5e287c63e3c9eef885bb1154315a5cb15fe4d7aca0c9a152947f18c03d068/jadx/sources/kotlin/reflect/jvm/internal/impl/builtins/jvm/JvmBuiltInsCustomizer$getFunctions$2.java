package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltInsCustomizer$getFunctions$2 extends Lambda implements Function1 {
    public final /* synthetic */ Name $name;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ JvmBuiltInsCustomizer$getFunctions$2(Name name, int i) {
        super(1);
        this.$r8$classId = i;
        this.$name = name;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Name name = this.$name;
        switch (i) {
            case 0:
                MemberScope memberScope = (MemberScope) obj;
                memberScope.getClass();
                return memberScope.getContributedFunctions(name, NoLookupLocation.FROM_BUILTINS);
            default:
                MemberScope memberScope2 = (MemberScope) obj;
                memberScope2.getClass();
                return memberScope2.getContributedVariables(name, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
        }
    }
}
