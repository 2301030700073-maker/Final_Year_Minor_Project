package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.Toolbar$Api33Impl$$ExternalSyntheticLambda0;
import androidx.navigationevent.NavigationEventTransitionState;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class OnBackInvokedInput extends NavigationEventInput {
    public boolean backInvokedCallbackRegistered;
    public final OnBackInvokedCallback onBackInvokedCallback;
    public final int onBackInvokedCallbackPriority;
    public final OnBackInvokedDispatcher onBackInvokedDispatcher;

    public OnBackInvokedInput(OnBackInvokedDispatcher onBackInvokedDispatcher, int i) {
        this.onBackInvokedDispatcher = onBackInvokedDispatcher;
        this.onBackInvokedCallbackPriority = i;
        this.onBackInvokedCallback = Build.VERSION.SDK_INT == 33 ? new Toolbar$Api33Impl$$ExternalSyntheticLambda0(this, 2) : new OnBackAnimationCallback() { // from class: androidx.navigationevent.OnBackInvokedInput$createOnBackAnimationCallback$1
            public final void onBackCancelled() {
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                Dispatcher dispatcher = onBackInvokedInput.dispatcher;
                if (dispatcher == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This input is not added to any dispatcher.");
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
                    NavigationEventTransitionState.Idle idle = NavigationEventTransitionState.Idle.INSTANCE;
                    if (navigationEventHandler != null) {
                        navigationEventHandler.transitionState = idle;
                        navigationEventHandler.onBackCancelled();
                    }
                    StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
                    stateFlowImpl.getClass();
                    stateFlowImpl.updateState(null, idle);
                }
                onBackInvokedInput.isPredictiveBackInProgress = false;
            }

            public final void onBackInvoked() {
                OnBackInvokedInput.this.dispatchOnBackCompleted();
            }

            public final void onBackProgressed(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent NavigationEvent = NavigationEvent_androidKt.NavigationEvent(backEvent);
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                Dispatcher dispatcher = onBackInvokedInput.dispatcher;
                if (dispatcher == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This input is not added to any dispatcher.");
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
                            navigationEventHandler.transitionState = new NavigationEventTransitionState.InProgress(NavigationEvent, -1);
                            navigationEventHandler.onBackProgressed(NavigationEvent);
                        }
                        StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
                        NavigationEventTransitionState.InProgress inProgress = new NavigationEventTransitionState.InProgress(NavigationEvent, -1);
                        stateFlowImpl.getClass();
                        stateFlowImpl.updateState(null, inProgress);
                    }
                }
            }

            public final void onBackStarted(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent NavigationEvent = NavigationEvent_androidKt.NavigationEvent(backEvent);
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                Dispatcher dispatcher = onBackInvokedInput.dispatcher;
                if (dispatcher == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This input is not added to any dispatcher.");
                } else {
                    if (onBackInvokedInput.isPredictiveBackInProgress) {
                        return;
                    }
                    dispatcher.dispatchOnStarted$navigationevent(onBackInvokedInput, NavigationEvent);
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
