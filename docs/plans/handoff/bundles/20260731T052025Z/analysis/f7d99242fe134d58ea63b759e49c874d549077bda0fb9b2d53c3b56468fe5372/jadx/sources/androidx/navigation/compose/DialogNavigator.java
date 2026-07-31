package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Navigator.Name("dialog")
/* loaded from: classes.dex */
public final class DialogNavigator extends Navigator {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Destination extends NavDestination implements FloatingWindow {
        public final ComposableLambdaImpl content;
        public final DialogProperties dialogProperties;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(DialogNavigator dialogNavigator) {
            super(dialogNavigator);
            ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$DialogNavigatorKt.f13lambda$1092249270;
            DialogProperties dialogProperties = new DialogProperties(7, false, false);
            this.dialogProperties = dialogProperties;
            this.content = composableLambdaImpl;
        }
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination createDestination() {
        ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$DialogNavigatorKt.f13lambda$1092249270;
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
                IntOffsetKt.throwIndexOverflow();
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
