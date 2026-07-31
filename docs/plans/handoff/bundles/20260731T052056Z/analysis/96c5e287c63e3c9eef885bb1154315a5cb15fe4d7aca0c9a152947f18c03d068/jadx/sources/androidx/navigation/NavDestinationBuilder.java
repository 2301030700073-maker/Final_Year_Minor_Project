package androidx.navigation;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.navigation.NavDeepLink;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function1;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavDestinationBuilder {
    public final int id;
    public final Navigator navigator;
    public final String route;
    public final LinkedHashMap arguments = new LinkedHashMap();
    public final ArrayList deepLinks = new ArrayList();
    public final LinkedHashMap actions = new LinkedHashMap();

    public NavDestinationBuilder(Navigator navigator, int i, String str) {
        this.navigator = navigator;
        this.id = i;
        this.route = str;
    }

    public NavDestination build() {
        NavDestination instantiateDestination = instantiateDestination();
        instantiateDestination.getClass();
        RulerTrackingMap rulerTrackingMap = instantiateDestination.impl;
        for (Map.Entry entry : this.arguments.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            str.getClass();
            navArgument.getClass();
            rulerTrackingMap.getClass();
            ((LinkedHashMap) rulerTrackingMap.accessFlags).put(str, navArgument);
        }
        Iterator it = this.deepLinks.iterator();
        while (it.hasNext()) {
            final NavDeepLink navDeepLink = (NavDeepLink) it.next();
            navDeepLink.getClass();
            rulerTrackingMap.getClass();
            final int i = 0;
            ArrayList missingRequiredArguments = RegexKt.missingRequiredArguments((LinkedHashMap) rulerTrackingMap.accessFlags, new Function1() { // from class: androidx.navigation.internal.NavDestinationImpl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean contains;
                    int i2 = i;
                    NavDeepLink navDeepLink2 = navDeepLink;
                    String str2 = (String) obj;
                    switch (i2) {
                        case 0:
                            str2.getClass();
                            contains = navDeepLink2.getArgumentsNames$navigation_common_release().contains(str2);
                            break;
                        default:
                            str2.getClass();
                            contains = navDeepLink2.getArgumentsNames$navigation_common_release().contains(str2);
                            break;
                    }
                    return Boolean.valueOf(!contains);
                }
            });
            if (!missingRequiredArguments.isEmpty()) {
                throw new IllegalArgumentException(("Deep link " + navDeepLink.uriPattern + " can't be used to open destination " + ((NavDestination) rulerTrackingMap.rulers) + ".\nFollowing required arguments are missing: " + missingRequiredArguments).toString());
            }
            ((ArrayList) rulerTrackingMap.values).add(navDeepLink);
        }
        Iterator it2 = this.actions.entrySet().iterator();
        if (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            ((Number) entry2.getKey()).intValue();
            entry2.getValue().getClass();
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return null;
        }
        String str2 = this.route;
        if (str2 != null) {
            rulerTrackingMap.getClass();
            if (StringsKt.isBlank(str2)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot have an empty route");
                return null;
            }
            String concat = "android-app://androidx.navigation/".concat(str2);
            final NavDeepLink navDeepLink2 = new NavDeepLink(concat);
            final int i2 = 1;
            ArrayList missingRequiredArguments2 = RegexKt.missingRequiredArguments((LinkedHashMap) rulerTrackingMap.accessFlags, new Function1() { // from class: androidx.navigation.internal.NavDestinationImpl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean contains;
                    int i22 = i2;
                    NavDeepLink navDeepLink22 = navDeepLink2;
                    String str22 = (String) obj;
                    switch (i22) {
                        case 0:
                            str22.getClass();
                            contains = navDeepLink22.getArgumentsNames$navigation_common_release().contains(str22);
                            break;
                        default:
                            str22.getClass();
                            contains = navDeepLink22.getArgumentsNames$navigation_common_release().contains(str22);
                            break;
                    }
                    return Boolean.valueOf(!contains);
                }
            });
            if (!missingRequiredArguments2.isEmpty()) {
                StringBuilder m21m = Animation.CC.m21m("Cannot set route \"", str2, "\" for destination ");
                m21m.append((NavDestination) rulerTrackingMap.rulers);
                m21m.append(". Following required arguments are missing: ");
                m21m.append(missingRequiredArguments2);
                throw new IllegalArgumentException(m21m.toString().toString());
            }
            rulerTrackingMap.newRulers = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(1, concat));
            rulerTrackingMap.size = concat.hashCode();
            rulerTrackingMap.layoutNodes = str2;
        }
        int i3 = this.id;
        if (i3 != -1) {
            rulerTrackingMap.size = i3;
        }
        return instantiateDestination;
    }

    public NavDestination instantiateDestination() {
        return this.navigator.createDestination();
    }
}
