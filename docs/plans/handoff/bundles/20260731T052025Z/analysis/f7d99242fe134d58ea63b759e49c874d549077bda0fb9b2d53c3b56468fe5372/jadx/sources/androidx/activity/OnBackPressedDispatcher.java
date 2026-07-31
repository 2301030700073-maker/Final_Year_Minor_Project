package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.activity.OnBackPressedCallback;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.OnBackInvokedDefaultInput;
import kotlin.SynchronizedLazyImpl;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final SynchronizedLazyImpl eventInput$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(0, this));
    public final Runnable fallbackOnBackPressed;

    public OnBackPressedDispatcher(Runnable runnable) {
        this.fallbackOnBackPressed = runnable;
    }

    public final void addCallback(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner) {
        onBackPressedCallback.getClass();
        final Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (((LifecycleRegistry) lifecycle).state == Lifecycle.State.DESTROYED) {
            return;
        }
        OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedCallback.OnBackPressedEventHandler(onBackPressedCallback, new OnBackPressedCallbackInfo(onBackPressedCallback, lifecycleOwner));
        onBackPressedCallback.eventHandlers.add(onBackPressedEventHandler);
        onBackPressedEventHandler.setLifecycleActive(false);
        Dispatcher.addHandler$default(getEventInput().dispatcher, onBackPressedEventHandler);
        final DefaultLifecycleObserverAdapter defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(onBackPressedEventHandler, this, lifecycle);
        lifecycle.addObserver(defaultLifecycleObserverAdapter);
        onBackPressedCallback.closeables.add(new AutoCloseable() { // from class: androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda1
            @Override // java.lang.AutoCloseable
            public final void close() {
                Lifecycle.this.removeObserver(defaultLifecycleObserverAdapter);
            }
        });
    }

    public final OnBackPressedEventInput getEventInput() {
        return (OnBackPressedEventInput) this.eventInput$delegate.getValue();
    }

    public final void onBackPressed() {
        getEventInput().dispatchOnBackCompleted();
    }

    public final void setOnBackInvokedDispatcher(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        getEventInput().dispatcher.addInput(new OnBackInvokedDefaultInput(onBackInvokedDispatcher, 0), 1);
        getEventInput().dispatcher.addInput(new OnBackInvokedDefaultInput(onBackInvokedDispatcher, 1000000), 0);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackPressedEventInput extends NavigationEventInput {
        public final Dispatcher dispatcher;

        public OnBackPressedEventInput(OnBackPressedDispatcher onBackPressedDispatcher) {
            Dispatcher dispatcher = new Dispatcher(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(0, onBackPressedDispatcher));
            dispatcher.addInput(this);
            this.dispatcher = dispatcher;
        }

        @Override // androidx.navigationevent.NavigationEventInput
        public final void onHasEnabledHandlersChanged(boolean z) {
        }
    }
}
