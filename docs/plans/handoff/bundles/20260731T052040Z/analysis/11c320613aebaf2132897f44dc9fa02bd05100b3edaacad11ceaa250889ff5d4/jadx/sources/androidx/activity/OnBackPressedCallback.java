package androidx.activity;

import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {
    public boolean isEnabled;
    public final ArrayList eventHandlers = new ArrayList();
    public final CopyOnWriteArrayList closeables = new CopyOnWriteArrayList();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OnBackPressedEventHandler extends NavigationEventHandler {
        public boolean isLifecycleActive;
        public final OnBackPressedCallback onBackPressedCallback;

        public OnBackPressedEventHandler(OnBackPressedCallback onBackPressedCallback, OnBackPressedCallbackInfo onBackPressedCallbackInfo) {
            super(onBackPressedCallbackInfo, onBackPressedCallback.isEnabled);
            this.onBackPressedCallback = onBackPressedCallback;
            this.isLifecycleActive = true;
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackCancelled() {
            this.onBackPressedCallback.handleOnBackCancelled();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackCompleted() {
            this.onBackPressedCallback.handleOnBackPressed();
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackProgressed(NavigationEvent navigationEvent) {
            this.onBackPressedCallback.handleOnBackProgressed(new BackEventCompat(navigationEvent));
        }

        @Override // androidx.navigationevent.NavigationEventHandler
        public final void onBackStarted(NavigationEvent navigationEvent) {
            navigationEvent.getClass();
            this.onBackPressedCallback.handleOnBackStarted(new BackEventCompat(navigationEvent));
        }

        public final void setLifecycleActive(boolean z) {
            this.isLifecycleActive = z;
            setBackEnabled(z && this.onBackPressedCallback.isEnabled);
        }
    }

    public OnBackPressedCallback(boolean z) {
        this.isEnabled = z;
    }

    public abstract void handleOnBackPressed();

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
        Iterator it = this.eventHandlers.iterator();
        while (it.hasNext()) {
            OnBackPressedEventHandler onBackPressedEventHandler = (OnBackPressedEventHandler) it.next();
            onBackPressedEventHandler.setBackEnabled(onBackPressedEventHandler.isLifecycleActive && z);
        }
    }

    public void handleOnBackCancelled() {
    }

    public void handleOnBackProgressed(BackEventCompat backEventCompat) {
    }

    public void handleOnBackStarted(BackEventCompat backEventCompat) {
    }
}
