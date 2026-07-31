package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.ui.window.Api33Impl$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                ImageLoader$Builder imageLoader$Builder = onBackInvokedInput.dispatcher;
                if (imageLoader$Builder == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This input is not added to any dispatcher.");
                    return;
                }
                if (!onBackInvokedInput.isPredictiveBackInProgress) {
                    imageLoader$Builder.dispatchOnStarted$navigationevent(onBackInvokedInput, null);
                }
                NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) imageLoader$Builder.defaults;
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
                    navigationEventProcessor._transitionState.updateState(null, NavigationEventTransitionState$Idle.INSTANCE);
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
                ImageLoader$Builder imageLoader$Builder = onBackInvokedInput.dispatcher;
                if (imageLoader$Builder == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This input is not added to any dispatcher.");
                    return;
                }
                if (onBackInvokedInput.isPredictiveBackInProgress) {
                    NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) imageLoader$Builder.defaults;
                    if (onBackInvokedInput.equals(navigationEventProcessor.inProgressInput) && -1 == navigationEventProcessor.inProgressDirection) {
                        NavigationEventHandler navigationEventHandler = navigationEventProcessor.inProgressHandler;
                        if (navigationEventHandler == null) {
                            navigationEventHandler = navigationEventProcessor.resolveEnabledHandler(-1);
                        }
                        if (navigationEventHandler != null) {
                            navigationEventHandler.onBackProgressed(NavigationEvent);
                        }
                        navigationEventProcessor._transitionState.updateState(null, new NavigationEventTransitionState$InProgress(NavigationEvent));
                    }
                }
            }

            public final void onBackStarted(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent NavigationEvent = NavigationEvent_androidKt.NavigationEvent(backEvent);
                OnBackInvokedInput onBackInvokedInput = OnBackInvokedInput.this;
                ImageLoader$Builder imageLoader$Builder = onBackInvokedInput.dispatcher;
                if (imageLoader$Builder == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This input is not added to any dispatcher.");
                } else {
                    if (onBackInvokedInput.isPredictiveBackInProgress) {
                        return;
                    }
                    imageLoader$Builder.dispatchOnStarted$navigationevent(onBackInvokedInput, NavigationEvent);
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
