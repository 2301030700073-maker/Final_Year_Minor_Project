package androidx.navigationevent;

import coil3.ImageLoader$Builder;
import java.util.LinkedHashSet;
import kotlin.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavigationEventHandler {
    public TuplesKt currentInfo;
    public ImageLoader$Builder dispatcher;
    public boolean isBackEnabled;

    public abstract void onBackCancelled();

    public abstract void onBackCompleted();

    public abstract void onBackProgressed(NavigationEvent navigationEvent);

    public abstract void onBackStarted(NavigationEvent navigationEvent);

    public final void remove() {
        ImageLoader$Builder imageLoader$Builder = this.dispatcher;
        if (imageLoader$Builder == null || !((LinkedHashSet) imageLoader$Builder.componentRegistry).remove(this)) {
            return;
        }
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) imageLoader$Builder.defaults;
        if (equals(navigationEventProcessor.inProgressHandler)) {
            if (navigationEventProcessor.inProgressDirection == -1) {
                onBackCancelled();
            }
            navigationEventProcessor.inProgressHandler = null;
            navigationEventProcessor.inProgressDirection = 0;
            navigationEventProcessor.inProgressInput = null;
        }
        navigationEventProcessor.overlayHandlers.remove(this);
        navigationEventProcessor.defaultHandlers.remove(this);
        this.dispatcher = null;
        navigationEventProcessor.refreshEnabledHandlers();
    }

    public final void setBackEnabled(boolean z) {
        if (this.isBackEnabled == z) {
            return;
        }
        this.isBackEnabled = z;
        ImageLoader$Builder imageLoader$Builder = this.dispatcher;
        if (imageLoader$Builder != null) {
            ((NavigationEventProcessor) imageLoader$Builder.defaults).refreshEnabledHandlers();
        }
    }
}
