package androidx.navigation;

import androidx.navigation.serialization.InternalNavType;
import androidx.room.util.DBUtil;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavGraphBuilder extends NavDestinationBuilder {
    public final ArrayList destinations;
    public final NavigatorProvider provider;
    public final OnboardingRoute.Onboarding startDestinationObject;
    public final String startDestinationRoute;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, OnboardingRoute.Onboarding onboarding, Map map) {
        super(navigatorProvider.getNavigator(DBUtil.getNameForNavigator$navigation_common_release(NavGraphNavigator.class)), (ClassReference) null, map);
        navigatorProvider.getClass();
        map.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationObject = onboarding;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavGraph build() {
        NavGraph navGraph = (NavGraph) super.build();
        ArrayList arrayList = this.destinations;
        arrayList.getClass();
        RawField rawField = navGraph.impl;
        rawField.getClass();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            NavDestination navDestination = (NavDestination) it.next();
            if (navDestination != null) {
                rawField.addDestination$navigation_common_release(navDestination);
            }
        }
        OnboardingRoute.Onboarding onboarding = this.startDestinationObject;
        String str = this.startDestinationRoute;
        if (str == null && onboarding == null) {
            if (this.route != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must set a start destination route");
                return null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must set a start destination id");
            return null;
        }
        if (str != null) {
            rawField.setStartDestinationRoute$navigation_common_release(str);
            return navGraph;
        }
        if (onboarding == null) {
            rawField.setStartDestinationId$navigation_common_release(0);
            return navGraph;
        }
        KSerializer serializer = ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(OnboardingRoute.Onboarding.class));
        int generateHashCode = InternalNavType.generateHashCode(serializer);
        NavDestination findNode$navigation_common_release = rawField.findNode$navigation_common_release(generateHashCode);
        if (findNode$navigation_common_release == null) {
            UriKt$$ExternalSyntheticBUOutline0.m(serializer.getDescriptor().getSerialName(), " from NavGraph. Ensure the starting NavDestination was added with route from KClass.", "Cannot find startDestination ");
            return null;
        }
        Map arguments = findNode$navigation_common_release.getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(arguments.size()));
        for (Map.Entry entry : arguments.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).type);
        }
        rawField.setStartDestinationRoute$navigation_common_release(InternalNavType.generateRouteWithArgs(onboarding, linkedHashMap));
        rawField.delimiterIdx = generateHashCode;
        return navGraph;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, String str) {
        super(navigatorProvider.getNavigator(DBUtil.getNameForNavigator$navigation_common_release(NavGraphNavigator.class)), -1, (String) null);
        navigatorProvider.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationRoute = str;
    }
}
