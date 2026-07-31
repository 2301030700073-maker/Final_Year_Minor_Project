package androidx.navigationevent;

import androidx.navigationevent.NavigationEventTransitionState;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.EmptyList;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NavigationEventHandler {
    public List backInfo;
    public NavigationEventInfo currentInfo;
    public Dispatcher dispatcher;
    public List forwardInfo;
    public boolean isBackEnabled;
    public boolean isForwardEnabled;
    public NavigationEventTransitionState transitionState;

    public NavigationEventHandler(NavigationEventInfo navigationEventInfo, boolean z) {
        navigationEventInfo.getClass();
        this.currentInfo = navigationEventInfo;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.backInfo = emptyList;
        this.forwardInfo = emptyList;
        this.transitionState = NavigationEventTransitionState.Idle.INSTANCE;
        this.isBackEnabled = z;
        this.isForwardEnabled = false;
    }

    public abstract void onBackCancelled();

    public abstract void onBackCompleted();

    public abstract void onBackProgressed(NavigationEvent navigationEvent);

    public abstract void onBackStarted(NavigationEvent navigationEvent);

    public final void remove() {
        Dispatcher dispatcher = this.dispatcher;
        if (dispatcher == null || !((LinkedHashSet) dispatcher.runningAsyncCalls).remove(this)) {
            return;
        }
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
        navigationEventProcessor.getClass();
        if (equals(navigationEventProcessor.inProgressHandler)) {
            int i = navigationEventProcessor.inProgressDirection;
            NavigationEventTransitionState.Idle idle = NavigationEventTransitionState.Idle.INSTANCE;
            if (i == -1) {
                this.transitionState = idle;
                onBackCancelled();
            } else if (i == 1) {
                this.transitionState = idle;
                onForwardCancelled();
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

    public void onForwardCancelled() {
    }
}
