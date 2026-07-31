package androidx.navigation;

import android.os.Bundle;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavGraphNavigator$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Ref$ObjectRef f$0;

    public /* synthetic */ NavGraphNavigator$$ExternalSyntheticLambda0(int i, Ref$ObjectRef ref$ObjectRef) {
        this.$r8$classId = i;
        this.f$0 = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Ref$ObjectRef ref$ObjectRef = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                Object obj2 = ref$ObjectRef.element;
                return Boolean.valueOf(obj2 == null || !((Bundle) obj2).containsKey(str));
            default:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                LazyLayoutPrefetchState lazyLayoutPrefetchState = ((TraversablePrefetchStateNode) traversableNode).prefetchState;
                List list = (List) ref$ObjectRef.element;
                if (list != null) {
                    list.add(lazyLayoutPrefetchState);
                } else {
                    list = IntOffsetKt.mutableListOf(lazyLayoutPrefetchState);
                }
                ref$ObjectRef.element = list;
                return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
        }
    }
}
