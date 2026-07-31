package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.collection.SparseArrayCompat;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavDestination {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final SparseArrayCompat actions;
    public final RulerTrackingMap impl;
    public final String navigatorName;
    public NavGraph parent;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DeepLinkMatch implements Comparable {
        public final NavDestination destination;
        public final boolean hasMatchingAction;
        public final boolean isExactDeepLink;
        public final Bundle matchingArgs;
        public final int matchingPathSegments;

        public DeepLinkMatch(NavDestination navDestination, Bundle bundle, boolean z, int i, boolean z2) {
            this.destination = navDestination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z;
            this.matchingPathSegments = i;
            this.hasMatchingAction = z2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(DeepLinkMatch deepLinkMatch) {
            deepLinkMatch.getClass();
            boolean z = deepLinkMatch.hasMatchingAction;
            boolean z2 = deepLinkMatch.isExactDeepLink;
            Bundle bundle = deepLinkMatch.matchingArgs;
            boolean z3 = this.isExactDeepLink;
            if (z3 && !z2) {
                return 1;
            }
            if (!z3 && z2) {
                return -1;
            }
            int i = this.matchingPathSegments - deepLinkMatch.matchingPathSegments;
            if (i > 0) {
                return 1;
            }
            if (i < 0) {
                return -1;
            }
            Bundle bundle2 = this.matchingArgs;
            if (bundle2 != null && bundle == null) {
                return 1;
            }
            if (bundle2 == null && bundle != null) {
                return -1;
            }
            if (bundle2 != null) {
                int size = bundle2.size();
                bundle.getClass();
                int size2 = size - bundle.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z4 = this.hasMatchingAction;
            if (!z4 || z) {
                return (z4 || !z) ? 0 : -1;
            }
            return 1;
        }
    }

    static {
        new LinkedHashMap();
    }

    public NavDestination(Navigator navigator) {
        LinkedHashMap linkedHashMap = NavigatorProvider.annotationNames;
        this.navigatorName = UuidKt.getNameForNavigator$navigation_common_release(navigator.getClass());
        this.impl = new RulerTrackingMap(this);
        this.actions = new SparseArrayCompat(0);
    }

    public final Bundle addInDefaultArgs(Bundle bundle) {
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.impl.accessFlags;
        if (bundle == null && linkedHashMap.isEmpty()) {
            return null;
        }
        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            ((NavArgument) entry.getValue()).getClass();
            str.getClass();
        }
        if (bundle != null) {
            bundleOf.putAll(bundle);
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                NavArgument navArgument = (NavArgument) entry2.getValue();
                boolean z = navArgument.isDefaultValueUnknown;
                NavType navType = navArgument.type;
                if (!z) {
                    str2.getClass();
                    if (navArgument.isNullable || !bundleOf.containsKey(str2) || !DpKt.m704isNullimpl(bundleOf, str2)) {
                        try {
                            navType.get(bundleOf, str2);
                        } catch (IllegalStateException unused) {
                        }
                    }
                    TimeSource$Companion$$ExternalSyntheticLambda0.m(Animation.CC.m21m("Wrong argument type for '", str2, "' in argument savedState. "), (Object) navType.getName(), (Object) " expected.");
                    return null;
                }
            }
        }
        return bundleOf;
    }

    public final int[] buildDeepLinkIds(NavDestination navDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            RulerTrackingMap rulerTrackingMap = this.impl;
            NavGraph navGraph = this.parent;
            if ((navDestination != null ? navDestination.parent : null) != null) {
                NavGraph navGraph2 = navDestination.parent;
                navGraph2.getClass();
                if (navGraph2.impl.findNode$navigation_common_release(rulerTrackingMap.size) == this) {
                    arrayDeque.addFirst(this);
                    break;
                }
            }
            if (navGraph == null || navGraph.impl.maxRequestsPerHost != rulerTrackingMap.size) {
                arrayDeque.addFirst(this);
            }
            if (Intrinsics.areEqual(navGraph, navDestination) || navGraph == null) {
                break;
            }
            this = navGraph;
        }
        List list = CollectionsKt.toList(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).impl.size));
        }
        return CollectionsKt.toIntArray(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r11) {
        /*
            r10 = this;
            r0 = 1
            if (r10 != r11) goto L5
            goto Ld5
        L5:
            r1 = 0
            if (r11 == 0) goto Ld6
            boolean r2 = r11 instanceof androidx.navigation.NavDestination
            if (r2 != 0) goto Le
            goto Ld6
        Le:
            androidx.compose.ui.node.RulerTrackingMap r2 = r10.impl
            java.lang.Object r3 = r2.values
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            androidx.navigation.NavDestination r11 = (androidx.navigation.NavDestination) r11
            androidx.collection.SparseArrayCompat r4 = r11.actions
            androidx.compose.ui.node.RulerTrackingMap r5 = r11.impl
            java.lang.Object r6 = r5.values
            java.util.ArrayList r6 = (java.util.ArrayList) r6
            boolean r3 = r3.equals(r6)
            androidx.collection.SparseArrayCompat r6 = r10.actions
            int r7 = r6.size()
            int r8 = r4.size()
            if (r7 != r8) goto L5e
            androidx.collection.SparseArrayKt$keyIterator$1 r7 = new androidx.collection.SparseArrayKt$keyIterator$1
            r7.<init>()
            kotlin.sequences.Sequence r7 = kotlin.sequences.SequencesKt.asSequence(r7)
            kotlin.sequences.ConstrainedOnceSequence r7 = (kotlin.sequences.ConstrainedOnceSequence) r7
            java.util.Iterator r7 = r7.iterator()
        L3d:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L5c
            java.lang.Object r8 = r7.next()
            java.lang.Number r8 = (java.lang.Number) r8
            int r8 = r8.intValue()
            java.lang.Object r9 = androidx.collection.ArraySetKt.commonGet(r6, r8)
            java.lang.Object r8 = androidx.collection.ArraySetKt.commonGet(r4, r8)
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r8)
            if (r8 != 0) goto L3d
            goto L5e
        L5c:
            r4 = r0
            goto L5f
        L5e:
            r4 = r1
        L5f:
            java.util.Map r6 = r10.getArguments()
            int r6 = r6.size()
            java.util.Map r7 = r11.getArguments()
            int r7 = r7.size()
            if (r6 != r7) goto Lba
            java.util.Map r10 = r10.getArguments()
            java.util.Set r10 = r10.entrySet()
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            kotlin.io.LinesSequence r10 = kotlin.collections.CollectionsKt.asSequence(r10)
            java.lang.Object r10 = r10.reader
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.Iterator r10 = r10.iterator()
        L87:
            boolean r6 = r10.hasNext()
            if (r6 == 0) goto Lb8
            java.lang.Object r6 = r10.next()
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6
            java.util.Map r7 = r11.getArguments()
            java.lang.Object r8 = r6.getKey()
            boolean r7 = r7.containsKey(r8)
            if (r7 == 0) goto Lba
            java.util.Map r7 = r11.getArguments()
            java.lang.Object r8 = r6.getKey()
            java.lang.Object r7 = r7.get(r8)
            java.lang.Object r6 = r6.getValue()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r6)
            if (r6 == 0) goto Lba
            goto L87
        Lb8:
            r10 = r0
            goto Lbb
        Lba:
            r10 = r1
        Lbb:
            int r11 = r2.size
            int r6 = r5.size
            if (r11 != r6) goto Ld6
            java.lang.Object r11 = r2.layoutNodes
            java.lang.String r11 = (java.lang.String) r11
            java.lang.Object r2 = r5.layoutNodes
            java.lang.String r2 = (java.lang.String) r2
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r2)
            if (r11 == 0) goto Ld6
            if (r3 == 0) goto Ld6
            if (r4 == 0) goto Ld6
            if (r10 == 0) goto Ld6
        Ld5:
            return r0
        Ld6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDestination.equals(java.lang.Object):boolean");
    }

    public final Map getArguments() {
        return MapsKt__MapsKt.toMap((LinkedHashMap) this.impl.accessFlags);
    }

    public int hashCode() {
        RulerTrackingMap rulerTrackingMap = this.impl;
        int i = rulerTrackingMap.size * 31;
        String str = (String) rulerTrackingMap.layoutNodes;
        int hashCode = i + (str != null ? str.hashCode() : 0);
        Iterator it = ((ArrayList) rulerTrackingMap.values).iterator();
        while (it.hasNext()) {
            hashCode = (((NavDeepLink) it.next()).uriPattern.hashCode() + (hashCode * 31)) * 961;
        }
        SparseArrayCompat sparseArrayCompat = this.actions;
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.size() > 0) {
            sparseArrayCompat.valueAt(0).getClass();
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return 0;
        }
        for (String str2 : getArguments().keySet()) {
            int m = Animation.CC.m(hashCode * 31, 31, str2);
            Object obj = getArguments().get(str2);
            hashCode = m + (obj != null ? obj.hashCode() : 0);
        }
        return hashCode;
    }

    public DeepLinkMatch matchDeepLink(SVG svg) {
        boolean matches;
        Regex regex;
        MatcherMatchResult matchEntire;
        RulerTrackingMap rulerTrackingMap = this.impl;
        LinkedHashMap linkedHashMap = (LinkedHashMap) rulerTrackingMap.accessFlags;
        Uri uri = (Uri) svg.rootElement;
        ArrayList arrayList = (ArrayList) rulerTrackingMap.values;
        if (arrayList.isEmpty()) {
            return null;
        }
        Iterator it = arrayList.iterator();
        DeepLinkMatch deepLinkMatch = null;
        while (it.hasNext()) {
            NavDeepLink navDeepLink = (NavDeepLink) it.next();
            navDeepLink.getClass();
            SynchronizedLazyImpl synchronizedLazyImpl = navDeepLink.pathPattern$delegate;
            if (((Regex) synchronizedLazyImpl.getValue()) == null) {
                matches = true;
            } else if (uri == null) {
                matches = false;
            } else {
                Regex regex2 = (Regex) synchronizedLazyImpl.getValue();
                regex2.getClass();
                matches = regex2.matches(uri.toString());
            }
            if (matches) {
                Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, linkedHashMap) : null;
                int calculateMatchingPathSegments$navigation_common_release = navDeepLink.calculateMatchingPathSegments$navigation_common_release(uri);
                String str = (String) svg.cssRules;
                boolean z = str != null && str.equals(null);
                if (matchingArguments == null) {
                    if (z) {
                        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        if (uri != null && (regex = (Regex) synchronizedLazyImpl.getValue()) != null && (matchEntire = regex.matchEntire(uri.toString())) != null) {
                            navDeepLink.getMatchingPathArguments(matchEntire, bundleOf, linkedHashMap);
                            if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                                navDeepLink.getMatchingQueryArguments(uri, bundleOf, linkedHashMap);
                            }
                        }
                        if (RegexKt.missingRequiredArguments(linkedHashMap, new NavDeepLink$$ExternalSyntheticLambda8(1, bundleOf)).isEmpty()) {
                        }
                    }
                }
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch((NavDestination) rulerTrackingMap.rulers, matchingArguments, navDeepLink.isExactDeepLink, calculateMatchingPathSegments$navigation_common_release, z);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append("(0x");
        RulerTrackingMap rulerTrackingMap = this.impl;
        rulerTrackingMap.getClass();
        sb.append(Integer.toHexString(rulerTrackingMap.size));
        sb.append(")");
        String str = (String) rulerTrackingMap.layoutNodes;
        if (str != null && !StringsKt.isBlank(str)) {
            sb.append(" route=");
            sb.append((String) rulerTrackingMap.layoutNodes);
        }
        return sb.toString();
    }
}
