package androidx.navigationevent;

import androidx.collection.MutableOrderedScatterSet;
import androidx.work.OperationKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavigationEventHandler {
    public OperationKt currentInfo;
    public Dispatcher dispatcher;
    public boolean isBackEnabled;

    public abstract void onBackCancelled();

    public abstract void onBackCompleted();

    public abstract void onBackProgressed(NavigationEvent navigationEvent);

    public abstract void onBackStarted(NavigationEvent navigationEvent);

    public final void remove() {
        Dispatcher dispatcher = this.dispatcher;
        if (dispatcher == null || !((MutableOrderedScatterSet) dispatcher.runningAsyncCalls).remove(this)) {
            return;
        }
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
        navigationEventProcessor.getClass();
        if (equals(navigationEventProcessor.inProgressHandler)) {
            if (navigationEventProcessor.inProgressDirection == -1) {
                onBackCancelled();
            }
            navigationEventProcessor.inProgressHandler = null;
            navigationEventProcessor.inProgressDirection = 0;
            navigationEventProcessor.inProgressInput = null;
        }
        navigationEventProcessor.overlayHandlers.remove(this);
        navigationEventProcessor.defaultHandlers.remove(this);
        this.dispatcher = null;
        navigationEventProcessor.refreshEnabledHandlers();
    }

    public final void setBackEnabled(boolean z) {
        NavigationEventProcessor navigationEventProcessor;
        if (this.isBackEnabled == z) {
            return;
        }
        this.isBackEnabled = z;
        Dispatcher dispatcher = this.dispatcher;
        if (dispatcher == null || (navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls) == null) {
            return;
        }
        navigationEventProcessor.refreshEnabledHandlers();
    }
}
