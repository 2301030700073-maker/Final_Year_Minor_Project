package androidx.navigation.compose;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$NavControllerNavigatorState;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavControllerImpl;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Navigator.Name("composable")
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/compose/ComposeNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/compose/ComposeNavigator$Destination;", "Destination", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ComposeNavigator extends Navigator {
    public final ParcelableSnapshotMutableState isPop = Updater.mutableStateOf$default(Boolean.FALSE);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Destination extends NavDestination {
        public final ComposableLambdaImpl content;

        public Destination(ComposeNavigator composeNavigator, ComposableLambdaImpl composableLambdaImpl) {
            super(composeNavigator);
            this.content = composableLambdaImpl;
        }
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination createDestination() {
        return new Destination(this, ComposableSingletons$ComposeNavigatorKt.lambda$127448943);
    }

    @Override // androidx.navigation.Navigator
    public final void navigate(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            NavController$NavControllerNavigatorState state = getState();
            StateFlowImpl stateFlowImpl = state.backStack.$$delegate_0;
            navBackStackEntry.getClass();
            StateFlowImpl stateFlowImpl2 = state._transitionsInProgress;
            Iterable iterable = (Iterable) stateFlowImpl2.getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it2 = iterable.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                        Iterable iterable2 = (Iterable) stateFlowImpl.getValue();
                        if (!(iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                            Iterator it3 = iterable2.iterator();
                            while (it3.hasNext()) {
                                if (((NavBackStackEntry) it3.next()) == navBackStackEntry) {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.lastOrNull((List) stateFlowImpl.getValue());
            if (navBackStackEntry2 != null) {
                stateFlowImpl2.updateState(null, UuidKt.plus((Set) stateFlowImpl2.getValue(), navBackStackEntry2));
            }
            stateFlowImpl2.updateState(null, UuidKt.plus((Set) stateFlowImpl2.getValue(), navBackStackEntry));
            state.push(navBackStackEntry);
        }
        this.isPop.setValue(Boolean.FALSE);
    }

    @Override // androidx.navigation.Navigator
    public final void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        getState().popWithTransition(navBackStackEntry, z);
        this.isPop.setValue(Boolean.TRUE);
    }

    public final void prepareForTransition(NavBackStackEntry navBackStackEntry) {
        NavController$NavControllerNavigatorState state = getState();
        navBackStackEntry.getClass();
        StateFlowImpl stateFlowImpl = state._transitionsInProgress;
        stateFlowImpl.updateState(null, UuidKt.plus((Set) stateFlowImpl.getValue(), navBackStackEntry));
        NavControllerImpl navControllerImpl = state.this$0.impl;
        navControllerImpl.getClass();
        if (navControllerImpl.backQueue.contains(navBackStackEntry)) {
            navBackStackEntry.setMaxLifecycle(Lifecycle$State.STARTED);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot transition entry that is not in the back stack");
        }
    }
}
