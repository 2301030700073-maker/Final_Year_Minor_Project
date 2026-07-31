package androidx.navigation;

import android.os.Bundle;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Navigator.Name("navigation")
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/navigation/NavGraphNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavGraph;", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public class NavGraphNavigator extends Navigator {
    public final NavigatorProvider navigatorProvider;

    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        this.navigatorProvider = navigatorProvider;
    }

    @Override // androidx.navigation.Navigator
    public NavGraph createDestination() {
        return new NavGraph(this);
    }

    @Override // androidx.navigation.Navigator
    public final void navigate(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            NavDestination navDestination = navBackStackEntry.destination;
            navDestination.getClass();
            NavGraph navGraph = (NavGraph) navDestination;
            RulerTrackingMap rulerTrackingMap = ((NavDestination) navGraph).impl;
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = navBackStackEntry.impl.getArguments$navigation_common_release();
            Dispatcher dispatcher = navGraph.impl;
            int i = dispatcher.maxRequestsPerHost;
            String str = (String) dispatcher.runningSyncCalls;
            if (i == 0 && str == null) {
                rulerTrackingMap.getClass();
                String valueOf = String.valueOf(rulerTrackingMap.size);
                valueOf.getClass();
                if (((NavDestination) ((NavGraph) dispatcher.executorServiceOrNull)).impl.size == 0) {
                    valueOf = "the root navigation";
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) "no start destination defined via app:startDestination for ".concat(valueOf));
                return;
            }
            NavDestination findNode$navigation_common_release = str != null ? dispatcher.findNode$navigation_common_release(str, false) : (NavDestination) ArraySetKt.commonGet((SparseArrayCompat) dispatcher.readyAsyncCalls, i);
            if (findNode$navigation_common_release == null) {
                String str2 = (String) dispatcher.runningAsyncCalls;
                if (str2 == null) {
                    str2 = (String) dispatcher.runningSyncCalls;
                    if (str2 == null) {
                        str2 = String.valueOf(dispatcher.maxRequestsPerHost);
                    }
                    dispatcher.runningAsyncCalls = str2;
                }
                str2.getClass();
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m("navigation destination ", str2, " is not a direct child of this NavGraph"));
                return;
            }
            RulerTrackingMap rulerTrackingMap2 = findNode$navigation_common_release.impl;
            if (str != null) {
                if (!str.equals((String) rulerTrackingMap2.layoutNodes)) {
                    NavDestination.DeepLinkMatch matchRoute$navigation_common_release = rulerTrackingMap2.matchRoute$navigation_common_release(str);
                    Bundle bundle = matchRoute$navigation_common_release != null ? matchRoute$navigation_common_release.matchingArgs : null;
                    if (bundle != null && !bundle.isEmpty()) {
                        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        bundleOf.putAll(bundle);
                        Bundle bundle2 = (Bundle) ref$ObjectRef.element;
                        if (bundle2 != null) {
                            bundleOf.putAll(bundle2);
                        }
                        ref$ObjectRef.element = bundleOf;
                    }
                }
                if (findNode$navigation_common_release.getArguments().isEmpty()) {
                    continue;
                } else {
                    ArrayList missingRequiredArguments = RegexKt.missingRequiredArguments(findNode$navigation_common_release.getArguments(), new NavGraphNavigator$$ExternalSyntheticLambda0(ref$ObjectRef, 0));
                    if (!missingRequiredArguments.isEmpty()) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot navigate to startDestination ", findNode$navigation_common_release, ". Missing required arguments [", missingRequiredArguments, 93);
                        return;
                    }
                }
            }
            this.navigatorProvider.getNavigator(findNode$navigation_common_release.navigatorName).navigate(Room.listOf(getState().createBackStackEntry(findNode$navigation_common_release, findNode$navigation_common_release.addInDefaultArgs((Bundle) ref$ObjectRef.element))), navOptions);
        }
    }
}
