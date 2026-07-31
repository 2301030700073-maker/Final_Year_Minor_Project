package androidx.compose.runtime;

import android.net.ConnectivityManager;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.text.AnnotatedString;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.navigation.NavController$NavControllerNavigatorState;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.SharedNetworkCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Recomposer$$ExternalSyntheticLambda6 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Recomposer$$ExternalSyntheticLambda6(TextLinkScope textLinkScope, AnnotatedString.Range range, AndroidUriHandler androidUriHandler) {
        this.$r8$classId = 12;
        this.f$0 = range;
        this.f$1 = androidUriHandler;
    }

    private final Object invoke$androidx$work$impl$constraints$SharedNetworkCallback$$ExternalSyntheticLambda0() {
        NavController$$ExternalSyntheticLambda3 navController$$ExternalSyntheticLambda3 = (NavController$$ExternalSyntheticLambda3) this.f$0;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f$1;
        synchronized (SharedNetworkCallback.requestsLock) {
            LinkedHashMap linkedHashMap = SharedNetworkCallback.requests;
            linkedHashMap.remove(navController$$ExternalSyntheticLambda3);
            if (linkedHashMap.isEmpty()) {
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister shared callback");
                connectivityManager.unregisterNetworkCallback(SharedNetworkCallback.INSTANCE);
                SharedNetworkCallback.isBlocked = null;
                SharedNetworkCallback.cachedCapabilities = null;
                SharedNetworkCallback.capabilitiesInitialized = false;
            }
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0() {
        BaseConstraintController baseConstraintController = (BaseConstraintController) this.f$0;
        BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = (BaseConstraintController$track$1$listener$1) this.f$1;
        ConstraintTracker constraintTracker = baseConstraintController.tracker;
        constraintTracker.getClass();
        synchronized (constraintTracker.lock) {
            if (constraintTracker.listeners.remove(baseConstraintController$track$1$listener$1) && constraintTracker.listeners.isEmpty()) {
                constraintTracker.stopTracking();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013d  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke() {
        /*
            Method dump skipped, instructions count: 1324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6.invoke():java.lang.Object");
    }

    public /* synthetic */ Recomposer$$ExternalSyntheticLambda6(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    public /* synthetic */ Recomposer$$ExternalSyntheticLambda6(NavController$NavControllerNavigatorState navController$NavControllerNavigatorState, NavBackStackEntry navBackStackEntry, boolean z) {
        this.$r8$classId = 24;
        this.f$0 = navController$NavControllerNavigatorState;
        this.f$1 = navBackStackEntry;
    }
}
