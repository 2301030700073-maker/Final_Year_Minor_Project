package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavOptions;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Navigator {
    public NavController$NavControllerNavigatorState _state;
    public boolean isAttached;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Name {
        String value();
    }

    public abstract NavDestination createDestination();

    public final NavController$NavControllerNavigatorState getState() {
        NavController$NavControllerNavigatorState navController$NavControllerNavigatorState = this._state;
        if (navController$NavControllerNavigatorState != null) {
            return navController$NavControllerNavigatorState;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You cannot access the Navigator's state until the Navigator is attached");
        return null;
    }

    public void navigate(List list, NavOptions navOptions) {
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt.filterNotNull(new TakeWhileSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, list), new Navigator$$ExternalSyntheticLambda1(0, this, navOptions), 2)));
        while (filteringSequence$iterator$1.hasNext()) {
            getState().push((NavBackStackEntry) filteringSequence$iterator$1.next());
        }
    }

    public void onAttach(NavController$NavControllerNavigatorState navController$NavControllerNavigatorState) {
        this._state = navController$NavControllerNavigatorState;
        this.isAttached = true;
    }

    public void onLaunchSingleTop(NavBackStackEntry navBackStackEntry) {
        NavDestination navDestination = navBackStackEntry.destination;
        if (navDestination == null) {
            navDestination = null;
        }
        if (navDestination == null) {
            return;
        }
        NavOptions.Builder builder = new NavOptions.Builder();
        builder.singleTop = true;
        builder.restoreState = false;
        builder.popUpToId = -1;
        builder.popUpToRoute = null;
        builder.popUpToInclusive = false;
        builder.popUpToSaveState = false;
        navigate(navDestination, null, builder.build());
        getState().onLaunchSingleTop(navBackStackEntry);
    }

    public Bundle onSaveState() {
        return null;
    }

    public void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        List list = (List) getState().backStack.$$delegate_0.getValue();
        if (!list.contains(navBackStackEntry)) {
            DBUtil$$ExternalSyntheticBUOutline0.m("popBackStack was called with ", navBackStackEntry, " which does not exist in back stack ", list);
            return;
        }
        ListIterator listIterator = list.listIterator(list.size());
        NavBackStackEntry navBackStackEntry2 = null;
        while (popBackStack()) {
            navBackStackEntry2 = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.areEqual(navBackStackEntry2, navBackStackEntry)) {
                break;
            }
        }
        if (navBackStackEntry2 != null) {
            getState().pop(navBackStackEntry2, z);
        }
    }

    public void onRestoreState(Bundle bundle) {
    }

    public NavDestination navigate(NavDestination navDestination, Bundle bundle, NavOptions navOptions) {
        return navDestination;
    }

    public boolean popBackStack() {
        return true;
    }
}
