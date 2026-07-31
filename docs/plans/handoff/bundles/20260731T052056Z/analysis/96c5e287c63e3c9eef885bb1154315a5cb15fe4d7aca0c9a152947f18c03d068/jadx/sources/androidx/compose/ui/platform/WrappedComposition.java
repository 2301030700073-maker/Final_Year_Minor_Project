package androidx.compose.ui.platform;

import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.datastore.core.SimpleActor$1;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WrappedComposition implements Composition, LifecycleEventObserver {
    public LifecycleRegistry addedToLifecycle;
    public boolean disposed;
    public ComposableLambdaImpl lastContent = ComposableSingletons$Wrapper_androidKt.f12lambda$1759434350;
    public final CompositionImpl original;
    public final AndroidComposeView owner;

    public WrappedComposition(AndroidComposeView androidComposeView, CompositionImpl compositionImpl) {
        this.owner = androidComposeView;
        this.original = compositionImpl;
    }

    @Override // androidx.compose.runtime.Composition
    public final void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.owner.getView().setTag(R.id.wrapped_composition_tag, null);
            LifecycleRegistry lifecycleRegistry = this.addedToLifecycle;
            if (lifecycleRegistry != null) {
                lifecycleRegistry.removeObserver(this);
            }
            this.addedToLifecycle = null;
        }
        this.original.dispose();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            dispose();
        } else {
            if (lifecycle$Event != Lifecycle$Event.ON_CREATE || this.disposed) {
                return;
            }
            setContent(this.lastContent);
        }
    }

    public final void setContent(Function2 function2) {
        this.owner.setOnReadyForComposition(new SimpleActor$1(9, this, (ComposableLambdaImpl) function2));
    }
}
