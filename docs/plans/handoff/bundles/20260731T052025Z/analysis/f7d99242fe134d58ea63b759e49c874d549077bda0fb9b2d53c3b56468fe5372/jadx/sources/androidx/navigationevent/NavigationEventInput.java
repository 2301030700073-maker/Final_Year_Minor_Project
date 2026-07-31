package androidx.navigationevent;

import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavigationEventInput {
    public Dispatcher dispatcher;
    public boolean isPredictiveBackInProgress;

    public final void dispatchOnBackCompleted() {
        Dispatcher dispatcher = this.dispatcher;
        if (dispatcher == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This input is not added to any dispatcher.");
            return;
        }
        if (!this.isPredictiveBackInProgress) {
            dispatcher.dispatchOnStarted$navigationevent(this, null);
        }
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = (OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) dispatcher.executorServiceOrNull;
        navigationEventProcessor.getClass();
        if (equals(navigationEventProcessor.inProgressInput) && -1 == navigationEventProcessor.inProgressDirection) {
            NavigationEventHandler navigationEventHandler = navigationEventProcessor.inProgressHandler;
            if (navigationEventHandler == null) {
                navigationEventHandler = navigationEventProcessor.resolveEnabledHandler(-1);
            }
            navigationEventProcessor.inProgressHandler = null;
            navigationEventProcessor.inProgressDirection = 0;
            navigationEventProcessor.inProgressInput = null;
            if (navigationEventHandler == null) {
                ((OnBackPressedDispatcher) onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.f$0).fallbackOnBackPressed.run();
            } else {
                navigationEventHandler.onBackCompleted();
            }
            StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, NavigationEventTransitionState$Idle.INSTANCE);
        }
        this.isPredictiveBackInProgress = false;
    }

    public void onHasEnabledHandlersChanged(boolean z) {
    }
}
