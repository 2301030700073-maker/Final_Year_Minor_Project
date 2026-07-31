package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.window.Api33Impl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda0;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.serialization.InternalNavType;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.flow.SharingConfig;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavHostController {
    public final Activity activity;
    public final Context context;
    public boolean deepLinkHandled;
    public final boolean enableOnBackPressedCallback;
    public final NavControllerImpl impl;
    public final NavContext navContext;
    public final SynchronizedLazyImpl navInflater$delegate;
    public final MessageCompose.AnonymousClass3 onBackPressedCallback;

    /* JADX WARN: Multi-variable type inference failed */
    public NavHostController(Context context) {
        Object obj;
        context.getClass();
        this.context = context;
        Object[] objArr = 0;
        this.impl = new NavControllerImpl(this, new NavController$$ExternalSyntheticLambda0(this, 0));
        this.navContext = new NavContext(context, 0 == true ? 1 : 0);
        Iterator it = SequencesKt.generateSequence(context, new RoomDatabase$$ExternalSyntheticLambda0(10)).iterator();
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
        this.onBackPressedCallback = new MessageCompose.AnonymousClass3(4, this, objArr == true ? 1 : 0);
        this.enableOnBackPressedCallback = true;
        NavigatorProvider navigatorProvider = this.impl._navigatorProvider;
        navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
        this.impl._navigatorProvider.addNavigator(new ActivityNavigator(this.context));
        this.navInflater$delegate = new SynchronizedLazyImpl(new NavController$$ExternalSyntheticLambda0(this, 1));
    }

    public static void navigate$default(NavHostController navHostController, ThundermailRoute thundermailRoute) {
        String str;
        navHostController.getClass();
        thundermailRoute.getClass();
        NavControllerImpl navControllerImpl = navHostController.impl;
        navControllerImpl.getClass();
        thundermailRoute.getClass();
        NavDestination findDestinationComprehensive$navigation_runtime_release = NavControllerImpl.findDestinationComprehensive$navigation_runtime_release(InternalNavType.generateHashCode(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(thundermailRoute.getClass()))), navControllerImpl.getGraph$navigation_runtime_release(), null, true);
        if (findDestinationComprehensive$navigation_runtime_release != null) {
            Map arguments = findDestinationComprehensive$navigation_runtime_release.getArguments();
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(arguments.size()));
            for (Map.Entry entry : arguments.entrySet()) {
                linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).type);
            }
            str = InternalNavType.generateRouteWithArgs(thundermailRoute, linkedHashMap);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Destination with route ", Reflection.getOrCreateKotlinClass(thundermailRoute.getClass()).getSimpleName(), " cannot be found in navigation graph ", navControllerImpl._graph);
            str = null;
        }
        navControllerImpl.navigate$navigation_runtime_release(str, null);
    }

    public static void popBackStack$default(NavHostController navHostController, String str, boolean z) {
        navHostController.getClass();
        str.getClass();
        NavControllerImpl navControllerImpl = navHostController.impl;
        navControllerImpl.getClass();
        if (navControllerImpl.popBackStackInternal$navigation_runtime_release(str, z, false)) {
            navControllerImpl.dispatchOnDestinationChanged$navigation_runtime_release();
        }
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
                IntOffsetKt.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public final void navigate(int i, Bundle bundle) {
        int i2;
        NavOptions navOptions;
        Bundle bundle2;
        NavControllerImpl navControllerImpl = this.impl;
        NavDestination navDestination = navControllerImpl.backQueue.isEmpty() ? navControllerImpl._graph : ((NavBackStackEntry) navControllerImpl.backQueue.last()).destination;
        if (navDestination == null) {
            throw new IllegalStateException("No current destination found. Ensure a navigation graph has been set for NavController " + this + '.');
        }
        NavAction action = navDestination.getAction(i);
        if (action != null) {
            navOptions = action.navOptions;
            i2 = action.destinationId;
            Bundle bundle3 = action.defaultArguments;
            if (bundle3 != null) {
                bundle2 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                bundle2.putAll(bundle3);
            } else {
                bundle2 = null;
            }
        } else {
            i2 = i;
            navOptions = null;
            bundle2 = null;
        }
        if (bundle != null) {
            if (bundle2 == null) {
                bundle2 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            bundle2.putAll(bundle);
        }
        if (i2 == 0 && navOptions != null) {
            boolean z = navOptions.popUpToInclusive;
            String str = navOptions.popUpToRoute;
            int i3 = navOptions.popUpToId;
            if (i3 != -1 || str != null) {
                if (str != null) {
                    popBackStack$default(this, str, z);
                    return;
                } else {
                    if (i3 == -1 || !navControllerImpl.popBackStackInternal$navigation_runtime_release(i3, z, false)) {
                        return;
                    }
                    navControllerImpl.dispatchOnDestinationChanged$navigation_runtime_release();
                    return;
                }
            }
        }
        if (i2 == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
            return;
        }
        NavDestination findDestination$navigation_runtime_release = navControllerImpl.findDestination$navigation_runtime_release(i2, null);
        if (findDestination$navigation_runtime_release != null) {
            navControllerImpl.navigate$navigation_runtime_release(findDestination$navigation_runtime_release, bundle2, navOptions);
            return;
        }
        int i4 = NavDestination.$r8$clinit;
        NavContext navContext = this.navContext;
        String displayName = OperationKt.getDisplayName(navContext, i2);
        if (action == null) {
            Regex$$ExternalSyntheticBUOutline0.m$1("Navigation action/destination ", displayName, " cannot be found from the current destination ", navDestination);
            return;
        }
        StringBuilder m31m = CameraDevices$CC.m31m("Navigation destination ", displayName, " referenced from action ");
        m31m.append(OperationKt.getDisplayName(navContext, i));
        m31m.append(" cannot be found from the current destination ");
        m31m.append(navDestination);
        throw new IllegalArgumentException(m31m.toString().toString());
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
            int i2 = currentDestination$navigation_runtime_release.impl.id;
            for (NavGraph navGraph = currentDestination$navigation_runtime_release.parent; navGraph != null; navGraph = navGraph.parent) {
                NavDestinationImpl navDestinationImpl = ((NavDestination) navGraph).impl;
                if (navGraph.impl.delimiterIdx != i2) {
                    Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    if (activity != null && activity.getIntent() != null && activity.getIntent().getData() != null) {
                        Intent intent2 = activity.getIntent();
                        intent2.getClass();
                        bundleOf.putParcelable("android-support-nav:controller:deepLinkIntent", intent2);
                        NavGraph topGraph$navigation_runtime_release = navControllerImpl.getTopGraph$navigation_runtime_release();
                        Intent intent3 = activity.getIntent();
                        intent3.getClass();
                        NavDestination.DeepLinkMatch matchDeepLinkComprehensive = topGraph$navigation_runtime_release.matchDeepLinkComprehensive(new ImapSync(intent3.getData(), intent3.getAction(), intent3.getType()), topGraph$navigation_runtime_release);
                        if ((matchDeepLinkComprehensive != null ? matchDeepLinkComprehensive.matchingArgs : null) != null && (addInDefaultArgs = matchDeepLinkComprehensive.destination.addInDefaultArgs(matchDeepLinkComprehensive.matchingArgs)) != null) {
                            bundleOf.putAll(addInDefaultArgs);
                        }
                    }
                    LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(this);
                    int i3 = navDestinationImpl.id;
                    ArrayList arrayList = (ArrayList) anonymousClass7.val$messages;
                    arrayList.clear();
                    arrayList.add(new NavDeepLinkBuilder$DeepLinkDestination(i3, null));
                    if (((NavGraph) anonymousClass7.this$0) != null) {
                        anonymousClass7.verifyAllDestinations();
                    }
                    ((Intent) anonymousClass7.val$folder).putExtra("android-support-nav:controller:deepLinkExtras", bundleOf);
                    anonymousClass7.createTaskStackBuilder().startActivities();
                    if (activity != null) {
                        activity.finish();
                    }
                    return true;
                }
                i2 = navDestinationImpl.id;
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
                    intValue = IntOffsetKt.findStartDestination((NavGraph) findDestinationComprehensive$navigation_runtime_release).impl.id;
                }
                NavDestination currentDestination$navigation_runtime_release2 = navControllerImpl.getCurrentDestination$navigation_runtime_release();
                if (currentDestination$navigation_runtime_release2 != null && intValue == currentDestination$navigation_runtime_release2.impl.id) {
                    LocalStore.AnonymousClass7 anonymousClass72 = new LocalStore.AnonymousClass7(this);
                    Bundle bundleOf2 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    bundleOf2.putParcelable("android-support-nav:controller:deepLinkIntent", intent4);
                    Bundle bundle = extras2.getBundle("android-support-nav:controller:deepLinkExtras");
                    if (bundle != null) {
                        bundleOf2.putAll(bundle);
                    }
                    ((Intent) anonymousClass72.val$folder).putExtra("android-support-nav:controller:deepLinkExtras", bundleOf2);
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        int i6 = i + 1;
                        if (i < 0) {
                            IntOffsetKt.throwIndexOverflow();
                            throw null;
                        }
                        ((ArrayList) anonymousClass72.val$messages).add(new NavDeepLinkBuilder$DeepLinkDestination(((Number) next).intValue(), parcelableArrayList != null ? (Bundle) parcelableArrayList.get(i) : null));
                        if (((NavGraph) anonymousClass72.this$0) != null) {
                            anonymousClass72.verifyAllDestinations();
                        }
                        i = i6;
                    }
                    anonymousClass72.createTaskStackBuilder().startActivities();
                    activity.finish();
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean popBackStack() {
        NavControllerImpl navControllerImpl = this.impl;
        if (navControllerImpl.backQueue.isEmpty()) {
            return false;
        }
        NavDestination currentDestination$navigation_runtime_release = navControllerImpl.getCurrentDestination$navigation_runtime_release();
        currentDestination$navigation_runtime_release.getClass();
        return navControllerImpl.popBackStackInternal$navigation_runtime_release(currentDestination$navigation_runtime_release.impl.id, true, false) && navControllerImpl.dispatchOnDestinationChanged$navigation_runtime_release();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void restoreState(Bundle bundle) {
        Bundle bundle2;
        Bundle[] bundleArr;
        Throwable th;
        if (bundle != null) {
            bundle.setClassLoader(this.context.getClassLoader());
        }
        NavControllerImpl navControllerImpl = this.impl;
        LinkedHashMap linkedHashMap = navControllerImpl.backStackStates;
        Throwable th2 = null;
        if (bundle == null) {
            th = null;
        } else {
            if (bundle.containsKey("android-support-nav:controller:navigatorState")) {
                bundle2 = bundle.getBundle("android-support-nav:controller:navigatorState");
                if (bundle2 == null) {
                    OperationKt.keyOrValueNotFoundError("android-support-nav:controller:navigatorState");
                    throw null;
                }
            } else {
                bundle2 = null;
            }
            navControllerImpl.navigatorStateToRestore = bundle2;
            if (bundle.containsKey("android-support-nav:controller:backStack")) {
                ArrayList parcelableArrayList = Build.VERSION.SDK_INT >= 34 ? Api33Impl.getParcelableArrayList(bundle, "android-support-nav:controller:backStack", Handshake.Companion.getJavaClass(Reflection.getOrCreateKotlinClass(Bundle.class))) : bundle.getParcelableArrayList("android-support-nav:controller:backStack");
                if (parcelableArrayList == null) {
                    OperationKt.keyOrValueNotFoundError("android-support-nav:controller:backStack");
                    throw null;
                }
                bundleArr = (Bundle[]) parcelableArrayList.toArray(new Bundle[0]);
            } else {
                bundleArr = null;
            }
            navControllerImpl.backStackToRestore = bundleArr;
            linkedHashMap.clear();
            if (bundle.containsKey("android-support-nav:controller:backStackDestIds") && bundle.containsKey("android-support-nav:controller:backStackIds")) {
                int[] intArray = bundle.getIntArray("android-support-nav:controller:backStackDestIds");
                if (intArray == null) {
                    OperationKt.keyOrValueNotFoundError("android-support-nav:controller:backStackDestIds");
                    throw null;
                }
                ArrayList<String> stringArrayList = bundle.getStringArrayList("android-support-nav:controller:backStackIds");
                if (stringArrayList == null) {
                    OperationKt.keyOrValueNotFoundError("android-support-nav:controller:backStackIds");
                    throw null;
                }
                int length = intArray.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    Throwable th3 = th2;
                    navControllerImpl.backStackMap.put(Integer.valueOf(intArray[i]), !Intrinsics.areEqual(stringArrayList.get(i2), "") ? (String) stringArrayList.get(i2) : th3);
                    i++;
                    i2 = i3;
                    th2 = th3;
                }
            }
            th = th2;
            if (bundle.containsKey("android-support-nav:controller:backStackStates")) {
                ArrayList<String> stringArrayList2 = bundle.getStringArrayList("android-support-nav:controller:backStackStates");
                if (stringArrayList2 == null) {
                    OperationKt.keyOrValueNotFoundError("android-support-nav:controller:backStackStates");
                    throw th;
                }
                for (String str : stringArrayList2) {
                    if (bundle.containsKey("android-support-nav:controller:backStackStates:" + str)) {
                        String m = CameraDevices$CC.m("android-support-nav:controller:backStackStates:", str);
                        ArrayList parcelableArrayList2 = Build.VERSION.SDK_INT >= 34 ? Api33Impl.getParcelableArrayList(bundle, m, Handshake.Companion.getJavaClass(Reflection.getOrCreateKotlinClass(Bundle.class))) : bundle.getParcelableArrayList(m);
                        if (parcelableArrayList2 == null) {
                            OperationKt.keyOrValueNotFoundError(m);
                            throw th;
                        }
                        ArrayDeque arrayDeque = new ArrayDeque(parcelableArrayList2.size());
                        Iterator it = parcelableArrayList2.iterator();
                        while (it.hasNext()) {
                            arrayDeque.addLast(new NavBackStackEntryState((Bundle) it.next()));
                        }
                        linkedHashMap.put(str, arrayDeque);
                    }
                }
            }
        }
        if (bundle != null) {
            boolean z = bundle.getBoolean("android-support-nav:controller:deepLinkHandled", false);
            Boolean valueOf = (z || !bundle.getBoolean("android-support-nav:controller:deepLinkHandled", true)) ? Boolean.valueOf(z) : th;
            this.deepLinkHandled = valueOf != 0 ? valueOf.booleanValue() : false;
        }
    }

    public final Bundle saveState() {
        Bundle bundle;
        NavControllerImpl navControllerImpl = this.impl;
        LinkedHashMap linkedHashMap = navControllerImpl.backStackStates;
        ArrayDeque arrayDeque = navControllerImpl.backQueue;
        LinkedHashMap linkedHashMap2 = navControllerImpl.backStackMap;
        ArrayList arrayList = new ArrayList();
        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        for (Map.Entry entry : MapsKt__MapsKt.toMap(navControllerImpl._navigatorProvider._navigators).entrySet()) {
            String str = (String) entry.getKey();
            Bundle onSaveState = ((Navigator) entry.getValue()).onSaveState();
            if (onSaveState != null) {
                arrayList.add(str);
                str.getClass();
                bundleOf.putBundle(str, onSaveState);
            }
        }
        if (arrayList.isEmpty()) {
            bundle = null;
        } else {
            bundle = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            IntRectKt.m767putStringListimpl(bundleOf, "android-support-nav:controller:navigatorState:names", arrayList);
            bundle.putBundle("android-support-nav:controller:navigatorState", bundleOf);
        }
        if (!arrayDeque.isEmpty()) {
            if (bundle == null) {
                bundle = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                navBackStackEntry.getClass();
                SharingConfig sharingConfig = new SharingConfig(navBackStackEntry, navBackStackEntry.destination.impl.id);
                Bundle bundleOf2 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                String str2 = (String) sharingConfig.upstream;
                str2.getClass();
                bundleOf2.putString("nav-entry-state:id", str2);
                bundleOf2.putInt("nav-entry-state:destination-id", sharingConfig.extraBufferCapacity);
                Bundle bundle2 = (Bundle) sharingConfig.onBufferOverflow;
                if (bundle2 == null) {
                    bundle2 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                }
                bundleOf2.putBundle("nav-entry-state:args", bundle2);
                Bundle bundle3 = (Bundle) sharingConfig.context;
                bundle3.getClass();
                bundleOf2.putBundle("nav-entry-state:saved-state", bundle3);
                arrayList2.add(bundleOf2);
            }
            bundle.putParcelableArrayList("android-support-nav:controller:backStack", arrayList2);
        }
        if (!linkedHashMap2.isEmpty()) {
            if (bundle == null) {
                bundle = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            int[] iArr = new int[linkedHashMap2.size()];
            ArrayList arrayList3 = new ArrayList();
            int i = 0;
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                int intValue = ((Number) entry2.getKey()).intValue();
                String str3 = (String) entry2.getValue();
                int i2 = i + 1;
                iArr[i] = intValue;
                if (str3 == null) {
                    str3 = "";
                }
                arrayList3.add(str3);
                i = i2;
            }
            bundle.putIntArray("android-support-nav:controller:backStackDestIds", iArr);
            IntRectKt.m767putStringListimpl(bundle, "android-support-nav:controller:backStackIds", arrayList3);
        }
        if (!linkedHashMap.isEmpty()) {
            if (bundle == null) {
                bundle = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            ArrayList arrayList4 = new ArrayList();
            for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                String str4 = (String) entry3.getKey();
                ArrayDeque arrayDeque2 = (ArrayDeque) entry3.getValue();
                arrayList4.add(str4);
                ArrayList<? extends Parcelable> arrayList5 = new ArrayList<>();
                Iterator it2 = arrayDeque2.iterator();
                while (it2.hasNext()) {
                    SharingConfig sharingConfig2 = ((NavBackStackEntryState) it2.next()).impl;
                    sharingConfig2.getClass();
                    Bundle bundleOf3 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    String str5 = (String) sharingConfig2.upstream;
                    str5.getClass();
                    bundleOf3.putString("nav-entry-state:id", str5);
                    bundleOf3.putInt("nav-entry-state:destination-id", sharingConfig2.extraBufferCapacity);
                    Bundle bundle4 = (Bundle) sharingConfig2.onBufferOverflow;
                    if (bundle4 == null) {
                        bundle4 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    bundleOf3.putBundle("nav-entry-state:args", bundle4);
                    Bundle bundle5 = (Bundle) sharingConfig2.context;
                    bundle5.getClass();
                    bundleOf3.putBundle("nav-entry-state:saved-state", bundle5);
                    arrayList5.add(bundleOf3);
                }
                bundle.putParcelableArrayList("android-support-nav:controller:backStackStates:" + str4, arrayList5);
            }
            IntRectKt.m767putStringListimpl(bundle, "android-support-nav:controller:backStackStates", arrayList4);
        }
        if (this.deepLinkHandled) {
            if (bundle == null) {
                bundle = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            bundle.putBoolean("android-support-nav:controller:deepLinkHandled", this.deepLinkHandled);
        }
        return bundle;
    }

    public final void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        lifecycleOwner.getClass();
        NavControllerImpl navControllerImpl = this.impl;
        FragmentNavigator$$ExternalSyntheticLambda0 fragmentNavigator$$ExternalSyntheticLambda0 = navControllerImpl.lifecycleObserver;
        if (lifecycleOwner.equals(navControllerImpl.lifecycleOwner)) {
            return;
        }
        LifecycleOwner lifecycleOwner2 = navControllerImpl.lifecycleOwner;
        if (lifecycleOwner2 != null && (lifecycle = lifecycleOwner2.getLifecycle()) != null) {
            lifecycle.removeObserver(fragmentNavigator$$ExternalSyntheticLambda0);
        }
        navControllerImpl.lifecycleOwner = lifecycleOwner;
        lifecycleOwner.getLifecycle().addObserver(fragmentNavigator$$ExternalSyntheticLambda0);
    }

    public final void setViewModelStore(ViewModelStore viewModelStore) {
        viewModelStore.getClass();
        NavControllerImpl navControllerImpl = this.impl;
        navControllerImpl.getClass();
        if (Intrinsics.areEqual(navControllerImpl.viewModel, Operation$State.getInstance(viewModelStore))) {
            return;
        }
        if (navControllerImpl.backQueue.isEmpty()) {
            navControllerImpl.viewModel = Operation$State.getInstance(viewModelStore);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ViewModelStore should be set before setGraph call");
        }
    }

    public static void navigate$default(NavHostController navHostController, String str) {
        navHostController.getClass();
        navHostController.impl.navigate$navigation_runtime_release(str, null);
    }

    public final void navigate(String str, Function1 function1) {
        NavControllerImpl navControllerImpl = this.impl;
        navControllerImpl.getClass();
        navControllerImpl.navigate$navigation_runtime_release(str, Validate.navOptions(function1));
    }
}
