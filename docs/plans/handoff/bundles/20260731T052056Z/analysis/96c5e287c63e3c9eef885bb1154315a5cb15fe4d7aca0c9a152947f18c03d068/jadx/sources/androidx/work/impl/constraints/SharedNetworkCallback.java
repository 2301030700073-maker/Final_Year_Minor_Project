package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.ConstraintsState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static NetworkCapabilities cachedCapabilities;
    public static boolean capabilitiesInitialized;
    public static Boolean isBlocked;
    public static final SharedNetworkCallback INSTANCE = new SharedNetworkCallback();
    public static final Object requestsLock = new Object();
    public static final LinkedHashMap requests = new LinkedHashMap();

    public static Recomposer$$ExternalSyntheticLambda6 addCallback(ConnectivityManager connectivityManager, NetworkRequest networkRequest, NavController$$ExternalSyntheticLambda3 navController$$ExternalSyntheticLambda3) {
        synchronized (requestsLock) {
            try {
                LinkedHashMap linkedHashMap = requests;
                boolean isEmpty = linkedHashMap.isEmpty();
                linkedHashMap.put(navController$$ExternalSyntheticLambda3, networkRequest);
                if (isEmpty) {
                    Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register shared callback");
                    connectivityManager.registerDefaultNetworkCallback(INSTANCE);
                } else if (capabilitiesInitialized && isBlocked != null) {
                    Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController send initial capabilities");
                    NetworkCapabilities networkCapabilities = cachedCapabilities;
                    INSTANCE.getClass();
                    Boolean bool = isBlocked;
                    bool.getClass();
                    navController$$ExternalSyntheticLambda3.invoke(!bool.booleanValue() && networkRequest.canBeSatisfiedBy(networkCapabilities) ? ConstraintsState.ConstraintsMet.INSTANCE : new ConstraintsState.ConstraintsNotMet(7));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new Recomposer$$ExternalSyntheticLambda6(26, navController$$ExternalSyntheticLambda3, connectivityManager);
    }

    public static void dispatchOnConstraintState() {
        ArrayList arrayList = new ArrayList();
        synchronized (requestsLock) {
            try {
                if (capabilitiesInitialized && isBlocked != null) {
                    for (Map.Entry entry : requests.entrySet()) {
                        Function1 function1 = (Function1) entry.getKey();
                        NetworkRequest networkRequest = (NetworkRequest) entry.getValue();
                        SharedNetworkCallback sharedNetworkCallback = INSTANCE;
                        NetworkCapabilities networkCapabilities = cachedCapabilities;
                        sharedNetworkCallback.getClass();
                        Boolean bool = isBlocked;
                        bool.getClass();
                        arrayList.add(new Pair(function1, !bool.booleanValue() && networkRequest.canBeSatisfiedBy(networkCapabilities) ? ConstraintsState.ConstraintsMet.INSTANCE : new ConstraintsState.ConstraintsNotMet(7)));
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        ((Function1) pair.first).invoke((ConstraintsState) pair.second);
                    }
                    return;
                }
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "Not dispatching constraint state yet: isBlocked=" + isBlocked + ", capabilitiesInitialized=" + capabilitiesInitialized);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onBlockedStatusChanged(Network network, boolean z) {
        network.getClass();
        Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onBlockedStatusChanged callback " + z);
        synchronized (requestsLock) {
            if (Intrinsics.areEqual(isBlocked, Boolean.valueOf(z))) {
                return;
            }
            isBlocked = Boolean.valueOf(z);
            dispatchOnConstraintState();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        network.getClass();
        networkCapabilities.getClass();
        Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (requestsLock) {
            cachedCapabilities = networkCapabilities;
            capabilitiesInitialized = true;
        }
        dispatchOnConstraintState();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        network.getClass();
        Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
        synchronized (requestsLock) {
            cachedCapabilities = null;
            Iterator it = requests.keySet().iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(new ConstraintsState.ConstraintsNotMet(7));
            }
        }
    }
}
