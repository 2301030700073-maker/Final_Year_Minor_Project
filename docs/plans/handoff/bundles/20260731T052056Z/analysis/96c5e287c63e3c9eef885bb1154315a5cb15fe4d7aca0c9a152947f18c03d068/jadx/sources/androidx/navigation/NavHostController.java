package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.fragment.app.FragmentManager$1;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.serialization.InternalNavType;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.room.Room;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.TuplesKt;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.sequences.SequencesKt;
import kotlin.text.UStringsKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.homefeed.HomeFeedSettingsDestination;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavHostController {
    public final Activity activity;
    public final Context context;
    public boolean deepLinkHandled;
    public final boolean enableOnBackPressedCallback;
    public final NavControllerImpl impl;
    public final NavContext navContext;
    public final FragmentManager$1 onBackPressedCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public NavHostController(Context context) {
        Object obj;
        context.getClass();
        this.context = context;
        Object[] objArr = 0;
        this.impl = new NavControllerImpl(this, new NavController$$ExternalSyntheticLambda0(this, 0));
        this.navContext = new NavContext(context, 0 == true ? 1 : 0);
        Iterator it = SequencesKt.generateSequence(context, new PagingSource$$ExternalSyntheticLambda0(17)).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (((Context) obj) instanceof Activity) {
                    break;
                }
            }
        }
        this.activity = (Activity) obj;
        this.onBackPressedCallback = new FragmentManager$1(this, objArr == true ? 1 : 0, 3);
        this.enableOnBackPressedCallback = true;
        NavigatorProvider navigatorProvider = this.impl._navigatorProvider;
        navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
        this.impl._navigatorProvider.addNavigator(new ActivityNavigator(this.context));
        new SynchronizedLazyImpl(new NavController$$ExternalSyntheticLambda0(this, 1));
    }

    public static void navigate$default(NavHostController navHostController, HomeFeedSettingsDestination homeFeedSettingsDestination) {
        String str;
        navHostController.getClass();
        homeFeedSettingsDestination.getClass();
        NavControllerImpl navControllerImpl = navHostController.impl;
        navControllerImpl.getClass();
        homeFeedSettingsDestination.getClass();
        Class<?> cls = homeFeedSettingsDestination.getClass();
        ReflectionFactory reflectionFactory = Reflection.factory;
        NavDestination findDestinationComprehensive$navigation_runtime_release = NavControllerImpl.findDestinationComprehensive$navigation_runtime_release(InternalNavType.generateHashCode(TuplesKt.serializer(reflectionFactory.getOrCreateKotlinClass(cls))), navControllerImpl.getGraph$navigation_runtime_release(), null, true);
        if (findDestinationComprehensive$navigation_runtime_release != null) {
            Map arguments = findDestinationComprehensive$navigation_runtime_release.getArguments();
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(arguments.size()));
            for (Map.Entry entry : arguments.entrySet()) {
                linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).type);
            }
            str = InternalNavType.generateRouteWithArgs(homeFeedSettingsDestination, linkedHashMap);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Destination with route ", reflectionFactory.getOrCreateKotlinClass(homeFeedSettingsDestination.getClass()).getSimpleName(), " cannot be found in navigation graph ", navControllerImpl._graph);
            str = null;
        }
        if (navControllerImpl._graph == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot navigate to ", str, ". Navigation graph has not been set for NavController ", navControllerImpl, 46);
            return;
        }
        NavGraph topGraph$navigation_runtime_release = navControllerImpl.getTopGraph$navigation_runtime_release();
        NavDestination.DeepLinkMatch matchRouteComprehensive = topGraph$navigation_runtime_release.matchRouteComprehensive(str, true, topGraph$navigation_runtime_release);
        if (matchRouteComprehensive == null) {
            Gson$$ExternalSyntheticBUOutline0.m$1(Animation.CC.m21m("Navigation destination that matches route ", str, " cannot be found in the navigation graph "), navControllerImpl._graph);
            return;
        }
        NavDestination navDestination = matchRouteComprehensive.destination;
        Bundle addInDefaultArgs = navDestination.addInDefaultArgs(matchRouteComprehensive.matchingArgs);
        if (addInDefaultArgs == null) {
            addInDefaultArgs = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        }
        int i = NavDestination.$r8$clinit;
        String str2 = (String) navDestination.impl.layoutNodes;
        Uri parse = Uri.parse(str2 != null ? "android-app://androidx.navigation/".concat(str2) : "");
        parse.getClass();
        Intent intent = new Intent();
        intent.setDataAndType(parse, null);
        intent.setAction(null);
        addInDefaultArgs.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
        navControllerImpl.navigate$navigation_runtime_release(navDestination, addInDefaultArgs, null);
    }

    public final int getDestinationCountOnBackStack() {
        ArrayDeque arrayDeque = this.impl.backQueue;
        int i = 0;
        if (arrayDeque != null && arrayDeque.isEmpty()) {
            return 0;
        }
        Iterator it = arrayDeque.iterator();
        while (it.hasNext()) {
            if (!(((NavBackStackEntry) it.next()).destination instanceof NavGraph) && (i = i + 1) < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public final boolean navigateUp() {
        Bundle addInDefaultArgs;
        Intent intent;
        if (getDestinationCountOnBackStack() != 1) {
            return popBackStack();
        }
        Activity activity = this.activity;
        Bundle extras = (activity == null || (intent = activity.getIntent()) == null) ? null : intent.getExtras();
        int[] intArray = extras != null ? extras.getIntArray("android-support-nav:controller:deepLinkIds") : null;
        int i = 0;
        NavControllerImpl navControllerImpl = this.impl;
        if (intArray == null) {
            NavDestination currentDestination$navigation_runtime_release = navControllerImpl.getCurrentDestination$navigation_runtime_release();
            currentDestination$navigation_runtime_release.getClass();
            int i2 = currentDestination$navigation_runtime_release.impl.size;
            for (NavGraph navGraph = currentDestination$navigation_runtime_release.parent; navGraph != null; navGraph = navGraph.parent) {
                RulerTrackingMap rulerTrackingMap = ((NavDestination) navGraph).impl;
                if (navGraph.impl.maxRequestsPerHost != i2) {
                    Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    if (activity != null && activity.getIntent() != null && activity.getIntent().getData() != null) {
                        Intent intent2 = activity.getIntent();
                        intent2.getClass();
                        bundleOf.putParcelable("android-support-nav:controller:deepLinkIntent", intent2);
                        NavGraph topGraph$navigation_runtime_release = navControllerImpl.getTopGraph$navigation_runtime_release();
                        Intent intent3 = activity.getIntent();
                        intent3.getClass();
                        NavDestination.DeepLinkMatch matchDeepLinkComprehensive = topGraph$navigation_runtime_release.matchDeepLinkComprehensive(new SVG(intent3.getData(), intent3.getAction(), intent3.getType(), 21), topGraph$navigation_runtime_release);
                        if ((matchDeepLinkComprehensive != null ? matchDeepLinkComprehensive.matchingArgs : null) != null && (addInDefaultArgs = matchDeepLinkComprehensive.destination.addInDefaultArgs(matchDeepLinkComprehensive.matchingArgs)) != null) {
                            bundleOf.putAll(addInDefaultArgs);
                        }
                    }
                    Request.Builder builder = new Request.Builder(this);
                    int i3 = rulerTrackingMap.size;
                    ArrayList arrayList = (ArrayList) builder.tags;
                    arrayList.clear();
                    arrayList.add(new NavDeepLinkBuilder$DeepLinkDestination(i3, null));
                    builder.verifyAllDestinations();
                    ((Intent) builder.headers).putExtra("android-support-nav:controller:deepLinkExtras", bundleOf);
                    builder.createTaskStackBuilder().startActivities();
                    if (activity != null) {
                        activity.finish();
                    }
                    return true;
                }
                i2 = rulerTrackingMap.size;
            }
        } else if (this.deepLinkHandled) {
            activity.getClass();
            Intent intent4 = activity.getIntent();
            Bundle extras2 = intent4.getExtras();
            extras2.getClass();
            int[] intArray2 = extras2.getIntArray("android-support-nav:controller:deepLinkIds");
            intArray2.getClass();
            ArrayList arrayList2 = new ArrayList(intArray2.length);
            for (int i4 : intArray2) {
                arrayList2.add(Integer.valueOf(i4));
            }
            ArrayList parcelableArrayList = extras2.getParcelableArrayList("android-support-nav:controller:deepLinkArgs");
            if (arrayList2.size() >= 2) {
                int intValue = ((Number) CollectionsKt.removeLast(arrayList2)).intValue();
                if (parcelableArrayList != null) {
                }
                NavDestination findDestinationComprehensive$navigation_runtime_release = NavControllerImpl.findDestinationComprehensive$navigation_runtime_release(intValue, navControllerImpl.getGraph$navigation_runtime_release(), null, false);
                if (findDestinationComprehensive$navigation_runtime_release instanceof NavGraph) {
                    int i5 = NavGraph.$r8$clinit;
                    intValue = ((NavDestination) SequencesKt.last(SequencesKt.generateSequence((NavGraph) findDestinationComprehensive$navigation_runtime_release, new PagingSource$$ExternalSyntheticLambda0(22)))).impl.size;
                }
                NavDestination currentDestination$navigation_runtime_release2 = navControllerImpl.getCurrentDestination$navigation_runtime_release();
                if (currentDestination$navigation_runtime_release2 != null && intValue == currentDestination$navigation_runtime_release2.impl.size) {
                    Request.Builder builder2 = new Request.Builder(this);
                    Bundle bundleOf2 = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    bundleOf2.putParcelable("android-support-nav:controller:deepLinkIntent", intent4);
                    Bundle bundle = extras2.getBundle("android-support-nav:controller:deepLinkExtras");
                    if (bundle != null) {
                        bundleOf2.putAll(bundle);
                    }
                    ((Intent) builder2.headers).putExtra("android-support-nav:controller:deepLinkExtras", bundleOf2);
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        int i6 = i + 1;
                        if (i < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        ((ArrayList) builder2.tags).add(new NavDeepLinkBuilder$DeepLinkDestination(((Number) next).intValue(), parcelableArrayList != null ? (Bundle) parcelableArrayList.get(i) : null));
                        builder2.verifyAllDestinations();
                        i = i6;
                    }
                    builder2.createTaskStackBuilder().startActivities();
                    activity.finish();
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean popBackStack() {
        NavControllerImpl navControllerImpl = this.impl;
        if (!navControllerImpl.backQueue.isEmpty()) {
            NavDestination currentDestination$navigation_runtime_release = navControllerImpl.getCurrentDestination$navigation_runtime_release();
            currentDestination$navigation_runtime_release.getClass();
            if (navControllerImpl.popBackStackInternal$navigation_runtime_release(currentDestination$navigation_runtime_release.impl.size, true, false) && navControllerImpl.dispatchOnDestinationChanged$navigation_runtime_release()) {
                return true;
            }
        }
        return false;
    }
}
