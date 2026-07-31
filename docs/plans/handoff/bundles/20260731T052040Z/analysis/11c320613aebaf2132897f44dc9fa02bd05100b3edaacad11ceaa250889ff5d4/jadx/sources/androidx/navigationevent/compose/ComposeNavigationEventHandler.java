package androidx.navigationevent.compose;

import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInfo;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeNavigationEventHandler extends NavigationEventHandler {
    public Function0 currentOnBackCancelled;
    public Function0 currentOnBackCompleted;
    public Function0 currentOnForwardCancelled;
    public final DiskLruCache$$ExternalSyntheticLambda0 onTransitionStateChanged;

    public ComposeNavigationEventHandler(NavigationEventInfo navigationEventInfo, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0) {
        super(navigationEventInfo, false);
        this.onTransitionStateChanged = diskLruCache$$ExternalSyntheticLambda0;
        this.currentOnForwardCancelled = new UtilsKt$$ExternalSyntheticLambda0(6);
        this.currentOnBackCancelled = new UtilsKt$$ExternalSyntheticLambda0(6);
        this.currentOnBackCompleted = new UtilsKt$$ExternalSyntheticLambda0(6);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackCancelled() {
        this.onTransitionStateChanged.invoke(this.transitionState);
        this.currentOnBackCancelled.invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackCompleted() {
        this.onTransitionStateChanged.invoke(this.transitionState);
        this.currentOnBackCompleted.invoke();
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackProgressed(NavigationEvent navigationEvent) {
        this.onTransitionStateChanged.invoke(this.transitionState);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackStarted(NavigationEvent navigationEvent) {
        this.onTransitionStateChanged.invoke(this.transitionState);
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onForwardCancelled() {
        this.onTransitionStateChanged.invoke(this.transitionState);
        this.currentOnForwardCancelled.invoke();
    }
}
