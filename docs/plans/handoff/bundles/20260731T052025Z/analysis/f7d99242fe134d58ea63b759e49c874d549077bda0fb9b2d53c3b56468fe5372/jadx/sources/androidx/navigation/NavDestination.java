package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.navigation.ActivityNavigator;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.internal.NavDestinationImpl$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Data;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
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
import kotlin.text.StringsKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavDestination {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final SparseArrayCompat actions;
    public final NavDestinationImpl impl;
    public CharSequence label;
    public final String navigatorName;
    public NavGraph parent;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DeepLinkMatch implements Comparable {
        public final NavDestination destination;
        public final boolean hasMatchingAction;
        public final boolean isExactDeepLink;
        public final Bundle matchingArgs;
        public final int matchingPathSegments;
        public final int mimeTypeMatchLevel;

        public DeepLinkMatch(NavDestination navDestination, Bundle bundle, boolean z, int i, boolean z2, int i2) {
            this.destination = navDestination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z;
            this.matchingPathSegments = i;
            this.hasMatchingAction = z2;
            this.mimeTypeMatchLevel = i2;
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
                bundle2.getClass();
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
            if (z4 && !z) {
                return 1;
            }
            if (z4 || !z) {
                return this.mimeTypeMatchLevel - deepLinkMatch.mimeTypeMatchLevel;
            }
            return -1;
        }
    }

    static {
        new LinkedHashMap();
    }

    public NavDestination(Navigator navigator) {
        navigator.getClass();
        LinkedHashMap linkedHashMap = NavigatorProvider.annotationNames;
        this.navigatorName = DBUtil.getNameForNavigator$navigation_common_release(navigator.getClass());
        this.impl = new NavDestinationImpl(this);
        this.actions = new SparseArrayCompat(0);
    }

    public final void addDeepLink(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        NavDestinationImpl navDestinationImpl = this.impl;
        navDestinationImpl.getClass();
        ArrayList missingRequiredArguments = Data.Companion.missingRequiredArguments((LinkedHashMap) navDestinationImpl.arguments, new NavDestinationImpl$$ExternalSyntheticLambda0(navDeepLink, 0));
        if (missingRequiredArguments.isEmpty()) {
            ((ArrayList) navDestinationImpl.deepLinks).add(navDeepLink);
        } else {
            DBUtil$$ExternalSyntheticBUOutline0.m("Deep link ", navDeepLink.uriPattern, " can't be used to open destination ", (NavDestination) navDestinationImpl.destination, ".\nFollowing required arguments are missing: ", missingRequiredArguments);
        }
    }

    public final Bundle addInDefaultArgs(Bundle bundle) {
        Object obj;
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.impl.arguments;
        if (bundle == null && linkedHashMap.isEmpty()) {
            return null;
        }
        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            navArgument.getClass();
            str.getClass();
            if (navArgument.isDefaultValuePresent && (obj = navArgument.defaultValue) != null) {
                navArgument.type.put(bundleOf, str, obj);
            }
        }
        if (bundle != null) {
            bundleOf.putAll(bundle);
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                NavArgument navArgument2 = (NavArgument) entry2.getValue();
                boolean z = navArgument2.isDefaultValueUnknown;
                NavType navType = navArgument2.type;
                if (!z) {
                    str2.getClass();
                    if (navArgument2.isNullable || !bundleOf.containsKey(str2) || !Operation$State.m833isNullimpl(str2, bundleOf)) {
                        try {
                            navType.get(str2, bundleOf);
                        } catch (IllegalStateException unused) {
                        }
                    }
                    DBUtil$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m31m("Wrong argument type for '", str2, "' in argument savedState. "), (Object) navType.getName(), (Object) " expected.");
                    return null;
                }
            }
        }
        return bundleOf;
    }

    public final int[] buildDeepLinkIds(NavDestination navDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            NavDestinationImpl navDestinationImpl = this.impl;
            NavGraph navGraph = this.parent;
            if ((navDestination != null ? navDestination.parent : null) != null) {
                NavGraph navGraph2 = navDestination.parent;
                navGraph2.getClass();
                if (navGraph2.impl.findNode$navigation_common_release(navDestinationImpl.id) == this) {
                    arrayDeque.addFirst(this);
                    break;
                }
            }
            if (navGraph == null || navGraph.impl.delimiterIdx != navDestinationImpl.id) {
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
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).impl.id));
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
            androidx.navigation.internal.NavDestinationImpl r2 = r10.impl
            java.io.Serializable r3 = r2.deepLinks
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            androidx.navigation.NavDestination r11 = (androidx.navigation.NavDestination) r11
            androidx.collection.SparseArrayCompat r4 = r11.actions
            androidx.navigation.internal.NavDestinationImpl r5 = r11.impl
            java.io.Serializable r6 = r5.deepLinks
            java.util.ArrayList r6 = (java.util.ArrayList) r6
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r6)
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
            java.lang.Object r9 = r6.get(r8)
            java.lang.Object r8 = r4.get(r8)
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
            kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 r10 = kotlin.collections.CollectionsKt.asSequence(r10)
            java.lang.Object r10 = r10.$this_lineSequence$inlined
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
            int r11 = r2.id
            int r6 = r5.id
            if (r11 != r6) goto Ld6
            java.io.Serializable r11 = r2.route
            java.lang.String r11 = (java.lang.String) r11
            java.io.Serializable r2 = r5.route
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

    public final NavAction getAction(int i) {
        SparseArrayCompat sparseArrayCompat = this.actions;
        NavAction navAction = sparseArrayCompat.size() == 0 ? null : (NavAction) sparseArrayCompat.get(i);
        if (navAction != null) {
            return navAction;
        }
        NavGraph navGraph = this.parent;
        if (navGraph != null) {
            return navGraph.getAction(i);
        }
        return null;
    }

    public final Map getArguments() {
        return MapsKt__MapsKt.toMap((LinkedHashMap) this.impl.arguments);
    }

    public int hashCode() {
        NavDestinationImpl navDestinationImpl = this.impl;
        int i = navDestinationImpl.id * 31;
        String str = (String) navDestinationImpl.route;
        int hashCode = i + (str != null ? str.hashCode() : 0);
        Iterator it = ((ArrayList) navDestinationImpl.deepLinks).iterator();
        while (it.hasNext()) {
            NavDeepLink navDeepLink = (NavDeepLink) it.next();
            int i2 = hashCode * 31;
            String str2 = navDeepLink.uriPattern;
            int hashCode2 = (i2 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = navDeepLink.action;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = navDeepLink.mimeType;
            hashCode = hashCode3 + (str4 != null ? str4.hashCode() : 0);
        }
        SparseArrayCompat sparseArrayCompat = this.actions;
        sparseArrayCompat.getClass();
        int i3 = 0;
        while (true) {
            if (!(i3 < sparseArrayCompat.size())) {
                break;
            }
            int i4 = i3 + 1;
            NavAction navAction = (NavAction) sparseArrayCompat.valueAt(i3);
            int i5 = ((hashCode * 31) + navAction.destinationId) * 31;
            NavOptions navOptions = navAction.navOptions;
            hashCode = i5 + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle bundle = navAction.defaultArguments;
            if (bundle != null) {
                hashCode = IntOffsetKt.contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(bundle) + (hashCode * 31);
            }
            i3 = i4;
        }
        for (String str5 : getArguments().keySet()) {
            int m = Modifier.CC.m(hashCode * 31, str5, 31);
            Object obj = getArguments().get(str5);
            hashCode = m + (obj != null ? obj.hashCode() : 0);
        }
        return hashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01e2  */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.navigation.NavDestination.DeepLinkMatch matchDeepLink(com.fsck.k9.backend.imap.ImapSync r26) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDestination.matchDeepLink(com.fsck.k9.backend.imap.ImapSync):androidx.navigation.NavDestination$DeepLinkMatch");
    }

    public void onInflate(Context context, AttributeSet attributeSet) {
        String valueOf;
        context.getClass();
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.Navigator);
        obtainAttributes.getClass();
        setRoute(obtainAttributes.getString(2));
        if (obtainAttributes.hasValue(1)) {
            int resourceId = obtainAttributes.getResourceId(1, 0);
            NavDestinationImpl navDestinationImpl = this.impl;
            navDestinationImpl.id = resourceId;
            navDestinationImpl.idName = null;
            int i = navDestinationImpl.id;
            if (i <= 16777215) {
                valueOf = String.valueOf(i);
            } else {
                try {
                    valueOf = context.getResources().getResourceName(i);
                    valueOf.getClass();
                } catch (Resources.NotFoundException unused) {
                    valueOf = String.valueOf(i);
                }
            }
            navDestinationImpl.idName = valueOf;
        }
        this.label = obtainAttributes.getText(0);
        obtainAttributes.recycle();
    }

    public final void putAction(int i, NavAction navAction) {
        navAction.getClass();
        if (!(this instanceof ActivityNavigator.Destination)) {
            if (i != 0) {
                this.actions.put(i, navAction);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("Cannot have an action with actionId 0");
                return;
            }
        }
        throw new UnsupportedOperationException("Cannot add action " + i + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    public final void setRoute(String str) {
        NavDestinationImpl navDestinationImpl = this.impl;
        if (str == null) {
            navDestinationImpl.id = 0;
            navDestinationImpl.idName = null;
        } else {
            navDestinationImpl.getClass();
            if (StringsKt.isBlank(str)) {
                UriKt$$ExternalSyntheticBUOutline0.m("Cannot have an empty route");
                return;
            }
            String concat = "android-app://androidx.navigation/".concat(str);
            int i = 1;
            ArrayList missingRequiredArguments = Data.Companion.missingRequiredArguments((LinkedHashMap) navDestinationImpl.arguments, new NavDestinationImpl$$ExternalSyntheticLambda0(new NavDeepLink(concat, null, null), i));
            if (!missingRequiredArguments.isEmpty()) {
                StringBuilder m31m = CameraDevices$CC.m31m("Cannot set route \"", str, "\" for destination ");
                m31m.append((NavDestination) navDestinationImpl.destination);
                m31m.append(". Following required arguments are missing: ");
                m31m.append(missingRequiredArguments);
                throw new IllegalArgumentException(m31m.toString().toString());
            }
            navDestinationImpl.routeDeepLink = new SynchronizedLazyImpl(new PathPart$$ExternalSyntheticLambda0(concat, i));
            navDestinationImpl.id = concat.hashCode();
            navDestinationImpl.idName = null;
        }
        navDestinationImpl.route = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        NavDestinationImpl navDestinationImpl = this.impl;
        String str = navDestinationImpl.idName;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(navDestinationImpl.id));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = (String) navDestinationImpl.route;
        if (str2 != null && !StringsKt.isBlank(str2)) {
            sb.append(" route=");
            sb.append((String) navDestinationImpl.route);
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        return sb.toString();
    }
}
