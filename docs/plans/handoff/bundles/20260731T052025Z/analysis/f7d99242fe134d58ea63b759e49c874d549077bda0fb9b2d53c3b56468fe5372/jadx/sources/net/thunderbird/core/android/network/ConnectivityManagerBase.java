package net.thunderbird.core.android.network;

import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.controller.push.PushController$connectivityChangeListener$1;
import com.fsck.k9.controller.push.PushController$init$2;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ConnectivityManagerBase {
    public final CopyOnWriteArraySet listeners = new CopyOnWriteArraySet();

    public abstract boolean isNetworkAvailable();

    public final synchronized void notifyOnConnectivityChanged() {
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            PushController pushController = ((PushController$connectivityChangeListener$1) it.next()).this$0;
            JobKt.launch$default(pushController.coroutineScope, pushController.coroutineDispatcher, null, new PushController$init$2(pushController, null, 4), 2);
        }
    }

    public final synchronized void notifyOnConnectivityLost() {
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((PushController$connectivityChangeListener$1) it.next()).this$0.launchUpdatePushers();
        }
    }

    public abstract void start();

    public abstract void stop();
}
