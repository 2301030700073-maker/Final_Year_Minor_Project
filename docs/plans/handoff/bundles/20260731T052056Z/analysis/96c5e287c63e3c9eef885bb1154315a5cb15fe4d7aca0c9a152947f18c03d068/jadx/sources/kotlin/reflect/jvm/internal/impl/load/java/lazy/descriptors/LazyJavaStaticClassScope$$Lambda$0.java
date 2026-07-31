package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.collections.IndexingIterable;
import kotlin.io.LinesSequence;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.sequences.SequencesKt;

/* loaded from: classes.dex */
public final class LazyJavaStaticClassScope$$Lambda$0 implements DFS.Neighbors {
    public static final LazyJavaStaticClassScope$$Lambda$0 INSTANCE = new LazyJavaStaticClassScope$$Lambda$0();

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Neighbors
    public final Iterable getNeighbors(Object obj) {
        int i = LazyJavaStaticClassScope.$r8$clinit;
        Collection supertypes = ((ModuleAwareClassDescriptor) obj).getTypeConstructor().getSupertypes();
        supertypes.getClass();
        return new IndexingIterable(4, SequencesKt.mapNotNull(new LinesSequence(2, supertypes), LazyJavaClassMemberScope$computeMemberIndex$1.INSTANCE$4));
    }
}
