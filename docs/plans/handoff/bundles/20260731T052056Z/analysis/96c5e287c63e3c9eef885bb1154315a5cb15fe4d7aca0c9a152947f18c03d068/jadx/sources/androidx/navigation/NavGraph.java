package androidx.navigation;

import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class NavGraph extends NavDestination implements Iterable, KMappedMarker {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Dispatcher impl;

    public NavGraph(NavGraphNavigator navGraphNavigator) {
        super(navGraphNavigator);
        this.impl = new Dispatcher(this);
    }

    @Override // androidx.navigation.NavDestination
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || !(obj instanceof NavGraph) || !super.equals(obj)) {
                return false;
            }
            Dispatcher dispatcher = this.impl;
            int size = ((SparseArrayCompat) dispatcher.readyAsyncCalls).size();
            Dispatcher dispatcher2 = ((NavGraph) obj).impl;
            if (size != ((SparseArrayCompat) dispatcher2.readyAsyncCalls).size() || dispatcher.maxRequestsPerHost != dispatcher2.maxRequestsPerHost) {
                return false;
            }
            Iterator it = ((ConstrainedOnceSequence) SequencesKt.asSequence(new UIntArray.Iterator(1, (SparseArrayCompat) dispatcher.readyAsyncCalls))).iterator();
            while (it.hasNext()) {
                NavDestination navDestination = (NavDestination) it.next();
                if (!navDestination.equals(ArraySetKt.commonGet((SparseArrayCompat) dispatcher2.readyAsyncCalls, navDestination.impl.size))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // androidx.navigation.NavDestination
    public final int hashCode() {
        Dispatcher dispatcher = this.impl;
        int i = dispatcher.maxRequestsPerHost;
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) dispatcher.readyAsyncCalls;
        int size = sparseArrayCompat.size();
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + sparseArrayCompat.keyAt(i2)) * 31) + ((NavDestination) sparseArrayCompat.valueAt(i2)).hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Dispatcher dispatcher = this.impl;
        dispatcher.getClass();
        return new NavGraphImpl$iterator$1(dispatcher);
    }

    @Override // androidx.navigation.NavDestination
    public final NavDestination.DeepLinkMatch matchDeepLink(SVG svg) {
        NavDestination.DeepLinkMatch matchDeepLink = super.matchDeepLink(svg);
        Dispatcher dispatcher = this.impl;
        dispatcher.getClass();
        return dispatcher.matchDeepLinkComprehensive$navigation_common_release(matchDeepLink, svg, false, (NavGraph) dispatcher.executorServiceOrNull);
    }

    public final NavDestination.DeepLinkMatch matchDeepLinkComprehensive(SVG svg, NavDestination navDestination) {
        return this.impl.matchDeepLinkComprehensive$navigation_common_release(super.matchDeepLink(svg), svg, true, navDestination);
    }

    public final NavDestination.DeepLinkMatch matchRouteComprehensive(String str, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch;
        Dispatcher dispatcher = this.impl;
        dispatcher.getClass();
        NavGraph navGraph = (NavGraph) dispatcher.executorServiceOrNull;
        NavDestination.DeepLinkMatch matchRoute$navigation_common_release = ((NavDestination) navGraph).impl.matchRoute$navigation_common_release(str);
        ArrayList arrayList = new ArrayList();
        Iterator it = navGraph.iterator();
        while (true) {
            NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
            deepLinkMatch = null;
            if (!navGraphImpl$iterator$1.hasNext()) {
                break;
            }
            NavDestination navDestination2 = (NavDestination) navGraphImpl$iterator$1.next();
            if (!Intrinsics.areEqual(navDestination2, navDestination)) {
                if (navDestination2 instanceof NavGraph) {
                    deepLinkMatch = ((NavGraph) navDestination2).matchRouteComprehensive(str, false, navGraph);
                } else {
                    navDestination2.getClass();
                    deepLinkMatch = navDestination2.impl.matchRoute$navigation_common_release(str);
                }
            }
            if (deepLinkMatch != null) {
                arrayList.add(deepLinkMatch);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch2 = (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(arrayList);
        NavGraph navGraph2 = navGraph.parent;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatch = navGraph2.matchRouteComprehensive(str, true, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(ArraysKt___ArraysKt.filterNotNull(new NavDestination.DeepLinkMatch[]{matchRoute$navigation_common_release, deepLinkMatch2, deepLinkMatch}));
    }

    @Override // androidx.navigation.NavDestination
    public final String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        Dispatcher dispatcher = this.impl;
        String str = (String) dispatcher.runningSyncCalls;
        dispatcher.getClass();
        NavDestination findNode$navigation_common_release = (str == null || StringsKt.isBlank(str)) ? null : dispatcher.findNode$navigation_common_release(str, true);
        if (findNode$navigation_common_release == null) {
            findNode$navigation_common_release = dispatcher.findNode$navigation_common_release(dispatcher.maxRequestsPerHost);
        }
        sb.append(" startDestination=");
        if (findNode$navigation_common_release == null) {
            String str2 = (String) dispatcher.runningSyncCalls;
            if (str2 != null) {
                sb.append(str2);
            } else {
                String str3 = (String) dispatcher.runningAsyncCalls;
                if (str3 != null) {
                    sb.append(str3);
                } else {
                    sb.append("0x" + Integer.toHexString(dispatcher.maxRequestsPerHost));
                }
            }
        } else {
            sb.append("{");
            sb.append(findNode$navigation_common_release.toString());
            sb.append("}");
        }
        return sb.toString();
    }
}
