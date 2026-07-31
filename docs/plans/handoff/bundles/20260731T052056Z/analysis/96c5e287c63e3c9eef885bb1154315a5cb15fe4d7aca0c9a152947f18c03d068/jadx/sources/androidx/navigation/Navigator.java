package androidx.navigation;

import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.ListIterator;
import kotlin.io.LinesSequence;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.TransformingSequence;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Navigator {
    public NavController$NavControllerNavigatorState _state;
    public boolean isAttached;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You cannot access the Navigator's state until the Navigator is attached");
        return null;
    }

    public void navigate(List list, NavOptions navOptions) {
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new TransformingSequence(new LinesSequence(2, list), new DiskLruCache$$ExternalSyntheticLambda0(12, this, navOptions)), false, new Data$$ExternalSyntheticLambda0(21)));
        while (filteringSequence$iterator$1.hasNext()) {
            getState().push((NavBackStackEntry) filteringSequence$iterator$1.next());
        }
    }

    public void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        List list = (List) getState().backStack.$$delegate_0.getValue();
        if (!list.contains(navBackStackEntry)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("popBackStack was called with ", navBackStackEntry, " which does not exist in back stack ", list);
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

    public NavDestination navigate(NavDestination navDestination) {
        return navDestination;
    }

    public boolean popBackStack() {
        return true;
    }
}
