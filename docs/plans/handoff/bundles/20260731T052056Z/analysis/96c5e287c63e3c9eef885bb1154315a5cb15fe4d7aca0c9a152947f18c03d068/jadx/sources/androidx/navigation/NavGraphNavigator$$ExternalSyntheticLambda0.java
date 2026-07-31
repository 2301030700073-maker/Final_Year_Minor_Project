package androidx.navigation;

import android.os.Bundle;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.room.Room;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NavGraphNavigator$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Ref$ObjectRef f$0;

    public /* synthetic */ NavGraphNavigator$$ExternalSyntheticLambda0(Ref$ObjectRef ref$ObjectRef, int i) {
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
            case 1:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                LazyLayoutPrefetchState lazyLayoutPrefetchState = ((TraversablePrefetchStateNode) traversableNode).prefetchState;
                List list = (List) ref$ObjectRef.element;
                if (list != null) {
                    list.add(lazyLayoutPrefetchState);
                } else {
                    list = Room.mutableListOf(lazyLayoutPrefetchState);
                }
                ref$ObjectRef.element = list;
                return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
            default:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
                ref$ObjectRef.element = parentLayoutCoordinates != null ? RulerKt.findRootCoordinates(parentLayoutCoordinates).localBoundingBoxOf(parentLayoutCoordinates, true) : null;
                return Unit.INSTANCE;
        }
    }
}
