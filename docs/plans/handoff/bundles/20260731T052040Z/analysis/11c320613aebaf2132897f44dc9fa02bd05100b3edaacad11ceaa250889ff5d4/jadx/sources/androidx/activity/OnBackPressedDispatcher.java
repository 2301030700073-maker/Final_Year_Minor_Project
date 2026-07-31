package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.activity.OnBackPressedCallback;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.OnBackInvokedDefaultInput;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.PlaybackException;
import kotlin.SynchronizedLazyImpl;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final SynchronizedLazyImpl eventInput$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(this, 1));
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

    public final void setOnBackInvokedDispatcher(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        getEventInput().dispatcher.addInput(new OnBackInvokedDefaultInput(onBackInvokedDispatcher, 0), 1);
        getEventInput().dispatcher.addInput(new OnBackInvokedDefaultInput(onBackInvokedDispatcher, PlaybackException.CUSTOM_ERROR_CODE_BASE), 0);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OnBackPressedEventInput extends NavigationEventInput {
        public final Dispatcher dispatcher;

        public OnBackPressedEventInput(OnBackPressedDispatcher onBackPressedDispatcher) {
            Dispatcher dispatcher = new Dispatcher(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(onBackPressedDispatcher, 0));
            dispatcher.addInput(this);
            this.dispatcher = dispatcher;
        }

        @Override // androidx.navigationevent.NavigationEventInput
        public final void onHasEnabledHandlersChanged(boolean z) {
        }
    }
}
