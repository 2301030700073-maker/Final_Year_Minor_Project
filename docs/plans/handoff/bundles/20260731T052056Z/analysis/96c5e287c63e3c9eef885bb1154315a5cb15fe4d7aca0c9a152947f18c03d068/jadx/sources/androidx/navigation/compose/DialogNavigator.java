package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.window.DialogProperties;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.room.Room;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Navigator.Name("dialog")
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/compose/DialogNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/compose/DialogNavigator$Destination;", "Destination", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DialogNavigator extends Navigator {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Destination extends NavDestination {
        public final ComposableLambdaImpl content;
        public final DialogProperties dialogProperties;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(DialogNavigator dialogNavigator) {
            super(dialogNavigator);
            ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$DialogNavigatorKt.f15lambda$1092249270;
            DialogProperties dialogProperties = new DialogProperties();
            this.dialogProperties = dialogProperties;
            this.content = composableLambdaImpl;
        }
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination createDestination() {
        ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$DialogNavigatorKt.f15lambda$1092249270;
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public final void navigate(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            getState().push((NavBackStackEntry) it.next());
        }
    }

    @Override // androidx.navigation.Navigator
    public final void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        getState().popWithTransition(navBackStackEntry, z);
        int indexOf = CollectionsKt.indexOf((Iterable) getState().transitionsInProgress.$$delegate_0.getValue(), navBackStackEntry);
        int i = 0;
        for (Object obj : (Iterable) getState().transitionsInProgress.$$delegate_0.getValue()) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
            if (i > indexOf) {
                getState().markTransitionComplete(navBackStackEntry2);
            }
            i = i2;
        }
    }
}
