package androidx.navigation.internal;

import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.renderer.MapRenderer;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$WhenMappings;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NavControllerImpl$$ExternalSyntheticLambda1 implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NavControllerImpl$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj;
                navControllerImpl.hostLifecycleState = lifecycle$Event.getTargetState();
                if (navControllerImpl._graph != null) {
                    Iterator it = CollectionsKt.toMutableList((Collection) navControllerImpl.backQueue).iterator();
                    while (it.hasNext()) {
                        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                        navBackStackEntry.getClass();
                        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.impl;
                        navBackStackEntryImpl.getClass();
                        NavBackStackEntry navBackStackEntry2 = navBackStackEntryImpl.entry;
                        Lifecycle$State targetState = lifecycle$Event.getTargetState();
                        targetState.getClass();
                        navBackStackEntry2.hostLifecycleState = targetState;
                        navBackStackEntryImpl.hostLifecycleState = lifecycle$Event.getTargetState();
                        navBackStackEntryImpl.updateState$navigation_common_release();
                    }
                    break;
                }
                break;
            case 1:
                ((Function1) obj).invoke(lifecycle$Event);
                break;
            case 2:
                SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) obj;
                if (lifecycle$Event != Lifecycle$Event.ON_START) {
                    if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                        savedStateRegistryImpl.isAllowingSavingState = false;
                        break;
                    }
                } else {
                    savedStateRegistryImpl.isAllowingSavingState = true;
                    break;
                }
                break;
            default:
                MapView mapView = (MapView) obj;
                switch (YearInReviewGeoSlideKt$WhenMappings.$EnumSwitchMapping$0[lifecycle$Event.ordinal()]) {
                    case 1:
                        mapView.getClass();
                        break;
                    case 2:
                        mapView.onStart();
                        break;
                    case 3:
                        MapRenderer mapRenderer = mapView.mapRenderer;
                        if (mapRenderer != null) {
                            mapRenderer.onResume();
                            break;
                        }
                        break;
                    case 4:
                        MapRenderer mapRenderer2 = mapView.mapRenderer;
                        if (mapRenderer2 != null) {
                            mapRenderer2.onPause();
                            break;
                        }
                        break;
                    case 5:
                        mapView.onStop();
                        break;
                    case 6:
                        mapView.onDestroy();
                        break;
                }
        }
    }
}
