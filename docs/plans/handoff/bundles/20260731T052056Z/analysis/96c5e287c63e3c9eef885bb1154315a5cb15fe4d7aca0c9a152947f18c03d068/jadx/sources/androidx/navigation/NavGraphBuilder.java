package androidx.navigation;

import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.navigation.serialization.InternalNavType;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavGraphBuilder extends NavDestinationBuilder {
    public final ArrayList destinations;
    public final NavigatorProvider provider;
    public final Object startDestinationObject;
    public final String startDestinationRoute;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, Object obj, Map map) {
        super(navigatorProvider.getNavigator(UuidKt.getNameForNavigator$navigation_common_release(NavGraphNavigator.class)), -1, null);
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationObject = obj;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavGraph build() {
        NavGraph navGraph = (NavGraph) super.build();
        Dispatcher dispatcher = navGraph.impl;
        dispatcher.getClass();
        NavGraph navGraph2 = (NavGraph) dispatcher.executorServiceOrNull;
        Iterator it = this.destinations.iterator();
        while (it.hasNext()) {
            NavDestination navDestination = (NavDestination) it.next();
            if (navDestination != null) {
                SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) dispatcher.readyAsyncCalls;
                RulerTrackingMap rulerTrackingMap = ((NavDestination) navGraph2).impl;
                RulerTrackingMap rulerTrackingMap2 = navDestination.impl;
                int i = rulerTrackingMap2.size;
                String str = (String) rulerTrackingMap2.layoutNodes;
                if (i == 0 && str == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
                    return null;
                }
                String str2 = (String) rulerTrackingMap.layoutNodes;
                if (str2 != null && Intrinsics.areEqual(str, str2)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Destination ", navDestination, " cannot have the same route as graph ", navGraph2);
                    return null;
                }
                if (i == rulerTrackingMap.size) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Destination ", navDestination, " cannot have the same id as graph ", navGraph2);
                    return null;
                }
                NavDestination navDestination2 = (NavDestination) ArraySetKt.commonGet(sparseArrayCompat, i);
                if (navDestination2 == navDestination) {
                    continue;
                } else {
                    if (navDestination.parent != null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
                        return null;
                    }
                    if (navDestination2 != null) {
                        navDestination2.parent = null;
                    }
                    navDestination.parent = navGraph2;
                    sparseArrayCompat.put(rulerTrackingMap2.size, navDestination);
                }
            }
        }
        Object obj = this.startDestinationObject;
        String str3 = this.startDestinationRoute;
        if (str3 == null && obj == null) {
            if (this.route != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You must set a start destination route");
                return null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You must set a start destination id");
            return null;
        }
        if (str3 != null) {
            dispatcher.setStartDestinationRoute$navigation_common_release(str3);
            return navGraph;
        }
        if (obj == null) {
            if (((NavDestination) navGraph2).impl.size == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Start destination 0 cannot use the same id as the graph ", navGraph2);
                return null;
            }
            if (((String) dispatcher.runningSyncCalls) != null) {
                dispatcher.setStartDestinationRoute$navigation_common_release(null);
            }
            dispatcher.maxRequestsPerHost = 0;
            dispatcher.runningAsyncCalls = null;
            return navGraph;
        }
        KSerializer serializer = TuplesKt.serializer(Reflection.factory.getOrCreateKotlinClass(obj.getClass()));
        int generateHashCode = InternalNavType.generateHashCode(serializer);
        NavDestination findNode$navigation_common_release = dispatcher.findNode$navigation_common_release(generateHashCode);
        if (findNode$navigation_common_release == null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$2(serializer.getDescriptor().getSerialName(), " from NavGraph. Ensure the starting NavDestination was added with route from KClass.", "Cannot find startDestination ");
            return null;
        }
        Map arguments = findNode$navigation_common_release.getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(arguments.size()));
        for (Map.Entry entry : arguments.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).type);
        }
        dispatcher.setStartDestinationRoute$navigation_common_release(InternalNavType.generateRouteWithArgs(obj, linkedHashMap));
        dispatcher.maxRequestsPerHost = generateHashCode;
        return navGraph;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider) {
        super(navigatorProvider.getNavigator(UuidKt.getNameForNavigator$navigation_common_release(NavGraphNavigator.class)), -1, null);
        navigatorProvider.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationRoute = "yir_2025";
    }
}
