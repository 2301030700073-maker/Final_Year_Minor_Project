package androidx.navigationevent;

import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavigationEventInput {
    public ImageLoader$Builder dispatcher;
    public boolean isPredictiveBackInProgress;

    public final void dispatchOnBackCompleted() {
        ImageLoader$Builder imageLoader$Builder = this.dispatcher;
        if (imageLoader$Builder == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This input is not added to any dispatcher.");
            return;
        }
        if (!this.isPredictiveBackInProgress) {
            imageLoader$Builder.dispatchOnStarted$navigationevent(this, null);
        }
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) imageLoader$Builder.defaults;
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = (OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) imageLoader$Builder.application;
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
            navigationEventProcessor._transitionState.updateState(null, NavigationEventTransitionState$Idle.INSTANCE);
        }
        this.isPredictiveBackInProgress = false;
    }

    public void onHasEnabledHandlersChanged(boolean z) {
    }
}
