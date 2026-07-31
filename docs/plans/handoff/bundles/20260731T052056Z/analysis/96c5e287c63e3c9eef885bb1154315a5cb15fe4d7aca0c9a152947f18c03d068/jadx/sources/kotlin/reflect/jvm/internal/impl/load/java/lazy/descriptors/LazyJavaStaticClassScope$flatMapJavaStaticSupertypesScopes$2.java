package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2 extends DFS {
    public final /* synthetic */ Function1 $onJavaStaticScope;
    public final /* synthetic */ Set $result;
    public final /* synthetic */ ModuleAwareClassDescriptor $root;

    public LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2(ModuleAwareClassDescriptor moduleAwareClassDescriptor, Set set, Function1 function1) {
        this.$root = moduleAwareClassDescriptor;
        this.$result = set;
        this.$onJavaStaticScope = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS
    public final boolean beforeChildren(Object obj) {
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = (ModuleAwareClassDescriptor) obj;
        moduleAwareClassDescriptor.getClass();
        if (moduleAwareClassDescriptor == this.$root) {
            return true;
        }
        MemberScope staticScope = moduleAwareClassDescriptor.getStaticScope();
        staticScope.getClass();
        if (!(staticScope instanceof LazyJavaStaticScope)) {
            return true;
        }
        this.$result.addAll((Collection) this.$onJavaStaticScope.invoke(staticScope));
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS
    public final Object result() {
        return Unit.INSTANCE;
    }
}
