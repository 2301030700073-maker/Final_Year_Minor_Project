package androidx.navigation;

import android.os.Bundle;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.RawField;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Navigator.Name("navigation")
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
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = navBackStackEntry.impl.getArguments$navigation_common_release();
            RawField rawField = navGraph.impl;
            int i = rawField.delimiterIdx;
            String str = (String) rawField.body;
            if (i == 0 && str == null) {
                NavDestinationImpl navDestinationImpl = ((NavDestination) navGraph).impl;
                String str2 = navDestinationImpl.idName;
                if (str2 == null) {
                    str2 = String.valueOf(navDestinationImpl.id);
                }
                str2.getClass();
                if (((NavDestination) ((NavGraph) rawField.raw)).impl.id == 0) {
                    str2 = "the root navigation";
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) "no start destination defined via app:startDestination for ".concat(str2));
                return;
            }
            NavDestination findNode$navigation_common_release = str != null ? rawField.findNode$navigation_common_release(str, false) : (NavDestination) ((SparseArrayCompat) rawField.nameLowerCase).get(i);
            if (findNode$navigation_common_release == null) {
                if (((String) rawField.name) == null) {
                    String str3 = (String) rawField.body;
                    if (str3 == null) {
                        str3 = String.valueOf(rawField.delimiterIdx);
                    }
                    rawField.name = str3;
                }
                String str4 = (String) rawField.name;
                str4.getClass();
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("navigation destination ", str4, " is not a direct child of this NavGraph"));
                return;
            }
            NavDestinationImpl navDestinationImpl2 = findNode$navigation_common_release.impl;
            if (str != null) {
                if (!str.equals((String) navDestinationImpl2.route)) {
                    NavDestination.DeepLinkMatch matchRoute$navigation_common_release = navDestinationImpl2.matchRoute$navigation_common_release(str);
                    Bundle bundle = matchRoute$navigation_common_release != null ? matchRoute$navigation_common_release.matchingArgs : null;
                    if (bundle != null && !bundle.isEmpty()) {
                        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
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
                    ArrayList missingRequiredArguments = Data.Companion.missingRequiredArguments(findNode$navigation_common_release.getArguments(), new NavGraphNavigator$$ExternalSyntheticLambda0(0, ref$ObjectRef));
                    if (!missingRequiredArguments.isEmpty()) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot navigate to startDestination ", findNode$navigation_common_release, ". Missing required arguments [", missingRequiredArguments, 93);
                        return;
                    }
                }
            }
            this.navigatorProvider.getNavigator(findNode$navigation_common_release.navigatorName).navigate(IntOffsetKt.listOf(getState().createBackStackEntry(findNode$navigation_common_release, findNode$navigation_common_release.addInDefaultArgs((Bundle) ref$ObjectRef.element))), navOptions);
        }
    }
}
