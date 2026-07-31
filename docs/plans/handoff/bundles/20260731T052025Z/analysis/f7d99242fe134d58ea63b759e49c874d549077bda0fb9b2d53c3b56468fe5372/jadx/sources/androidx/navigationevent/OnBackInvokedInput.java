package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.ui.window.Api33Impl$$ExternalSyntheticLambda0;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OnBackInvokedInput extends NavigationEventInput {
    public boolean backInvokedCallbackRegistered;
    public final OnBackInvokedCallback onBackInvokedCallback;
    public final int onBackInvokedCallbackPriority;
    public final OnBackInvokedDispatcher onBackInvokedDispatcher;

    public OnBackInvokedInput(OnBackInvokedDispatcher onBackInvokedDispatcher, int i) {
        this.onBackInvokedDispatcher = onBackInvokedDispatcher;
        this.onBackInvokedCallbackPriority = i;
        this.onBackInvokedCallback = Build.VERSION.SDK_INT == 33 ? new Api33Impl$$ExternalSyntheticLambda0(3, this) : new OnBackAnimationCallback() { // from class: androidx.navigationevent.OnBackInvokedInput$createOnBackAnimationCallback$1
            public final void onBackCancelled() {
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                Dispatcher dispatcher = onBackInvokedInput.dispatcher;
                if (dispatcher == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This input is not added to any dispatcher.");
                    return;
                }
                if (!onBackInvokedInput.isPredictiveBackInProgress) {
                    dispatcher.dispatchOnStarted$navigationevent(onBackInvokedInput, null);
                }
                NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
                navigationEventProcessor.getClass();
                if (onBackInvokedInput.equals(navigationEventProcessor.inProgressInput) && -1 == navigationEventProcessor.inProgressDirection) {
                    NavigationEventHandler navigationEventHandler = navigationEventProcessor.inProgressHandler;
                    if (navigationEventHandler == null) {
                        navigationEventHandler = navigationEventProcessor.resolveEnabledHandler(-1);
                    }
                    navigationEventProcessor.inProgressHandler = null;
                    navigationEventProcessor.inProgressDirection = 0;
                    navigationEventProcessor.inProgressInput = null;
                    if (navigationEventHandler != null) {
                        navigationEventHandler.onBackCancelled();
                    }
                    StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
                    stateFlowImpl.getClass();
                    stateFlowImpl.updateState(null, NavigationEventTransitionState$Idle.INSTANCE);
                }
                onBackInvokedInput.isPredictiveBackInProgress = false;
            }

            public final void onBackInvoked() {
                OnBackInvokedInput.this.dispatchOnBackCompleted();
            }

            public final void onBackProgressed(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent navigationEvent = NavigationEventKt.toNavigationEvent(backEvent);
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                Dispatcher dispatcher = onBackInvokedInput.dispatcher;
                if (dispatcher == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This input is not added to any dispatcher.");
                    return;
                }
                if (onBackInvokedInput.isPredictiveBackInProgress) {
                    NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
                    navigationEventProcessor.getClass();
                    if (onBackInvokedInput.equals(navigationEventProcessor.inProgressInput) && -1 == navigationEventProcessor.inProgressDirection) {
                        NavigationEventHandler navigationEventHandler = navigationEventProcessor.inProgressHandler;
                        if (navigationEventHandler == null) {
                            navigationEventHandler = navigationEventProcessor.resolveEnabledHandler(-1);
                        }
                        if (navigationEventHandler != null) {
                            navigationEventHandler.onBackProgressed(navigationEvent);
                        }
                        StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
                        NavigationEventTransitionState$InProgress navigationEventTransitionState$InProgress = new NavigationEventTransitionState$InProgress(navigationEvent);
                        stateFlowImpl.getClass();
                        stateFlowImpl.updateState(null, navigationEventTransitionState$InProgress);
                    }
                }
            }

            public final void onBackStarted(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent navigationEvent = NavigationEventKt.toNavigationEvent(backEvent);
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                Dispatcher dispatcher = onBackInvokedInput.dispatcher;
                if (dispatcher == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This input is not added to any dispatcher.");
                } else {
                    if (onBackInvokedInput.isPredictiveBackInProgress) {
                        return;
                    }
                    dispatcher.dispatchOnStarted$navigationevent(onBackInvokedInput, navigationEvent);
                    onBackInvokedInput.isPredictiveBackInProgress = true;
                }
            }
        };
    }

    @Override // androidx.navigationevent.NavigationEventInput
    public final void onHasEnabledHandlersChanged(boolean z) {
        OnBackInvokedCallback onBackInvokedCallback = this.onBackInvokedCallback;
        if (z && !this.backInvokedCallbackRegistered) {
            this.onBackInvokedDispatcher.registerOnBackInvokedCallback(this.onBackInvokedCallbackPriority, onBackInvokedCallback);
            this.backInvokedCallbackRegistered = true;
        } else {
            if (z || !this.backInvokedCallbackRegistered) {
                return;
            }
            this.onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
            this.backInvokedCallbackRegistered = false;
        }
    }
}
