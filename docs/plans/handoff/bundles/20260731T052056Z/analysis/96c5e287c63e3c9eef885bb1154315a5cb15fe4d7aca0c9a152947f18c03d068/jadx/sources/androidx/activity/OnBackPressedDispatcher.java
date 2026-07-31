package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.OnBackInvokedDefaultInput;
import coil3.ImageLoader$Builder;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final SynchronizedLazyImpl eventInput$delegate = new SynchronizedLazyImpl(new NavBackStackEntry$$ExternalSyntheticLambda0(1, this));
    public final Runnable fallbackOnBackPressed;

    public OnBackPressedDispatcher(Runnable runnable) {
        this.fallbackOnBackPressed = runnable;
    }

    public final void addCallback(FragmentManager$1 fragmentManager$1, LifecycleOwner lifecycleOwner) {
        fragmentManager$1.getClass();
        final LifecycleRegistry lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.state == Lifecycle$State.DESTROYED) {
            return;
        }
        OnBackPressedCallback$OnBackPressedEventHandler onBackPressedCallback$OnBackPressedEventHandler = new OnBackPressedCallback$OnBackPressedEventHandler(fragmentManager$1, new OnBackPressedCallbackInfo(fragmentManager$1, lifecycleOwner));
        fragmentManager$1.eventHandlers.add(onBackPressedCallback$OnBackPressedEventHandler);
        onBackPressedCallback$OnBackPressedEventHandler.setLifecycleActive(false);
        ImageLoader$Builder.addHandler$default(getEventInput().dispatcher, onBackPressedCallback$OnBackPressedEventHandler);
        final DefaultLifecycleObserverAdapter defaultLifecycleObserverAdapter = new DefaultLifecycleObserverAdapter(onBackPressedCallback$OnBackPressedEventHandler, this, lifecycle);
        lifecycle.addObserver(defaultLifecycleObserverAdapter);
        fragmentManager$1.closeables.add(new AutoCloseable() { // from class: androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda1
            @Override // java.lang.AutoCloseable
            public final void close() {
                LifecycleRegistry.this.removeObserver(defaultLifecycleObserverAdapter);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OnBackPressedEventInput extends NavigationEventInput {
        public final ImageLoader$Builder dispatcher;

        public OnBackPressedEventInput(OnBackPressedDispatcher onBackPressedDispatcher) {
            ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(0, onBackPressedDispatcher));
            imageLoader$Builder.addInput(this);
            this.dispatcher = imageLoader$Builder;
        }

        @Override // androidx.navigationevent.NavigationEventInput
        public final void onHasEnabledHandlersChanged(boolean z) {
        }
    }
}
