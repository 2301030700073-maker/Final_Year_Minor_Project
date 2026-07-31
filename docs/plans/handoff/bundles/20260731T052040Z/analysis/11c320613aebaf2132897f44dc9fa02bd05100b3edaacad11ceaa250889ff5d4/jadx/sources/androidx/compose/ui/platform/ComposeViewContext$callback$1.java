package androidx.compose.ui.platform;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.view.ViewTreeObserver;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import coil3.memory.MemoryCacheService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeViewContext$callback$1 implements ComponentCallbacks2, ViewTreeObserver.OnWindowFocusChangeListener {
    public final /* synthetic */ ComposeViewContext this$0;

    public ComposeViewContext$callback$1(ComposeViewContext composeViewContext) {
        this.this$0 = composeViewContext;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.this$0.onConfigurationChanged$ui(configuration);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        ComposeViewContext composeViewContext = this.this$0;
        composeViewContext.imageVectorCache.values.clear();
        MemoryCacheService memoryCacheService = composeViewContext.resourceIdCache;
        synchronized (memoryCacheService) {
            ((MutableIntObjectMap) memoryCacheService.imageLoader).clear();
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        ComposeViewContext composeViewContext = this.this$0;
        composeViewContext.imageVectorCache.values.clear();
        MemoryCacheService memoryCacheService = composeViewContext.resourceIdCache;
        synchronized (memoryCacheService) {
            ((MutableIntObjectMap) memoryCacheService.imageLoader).clear();
        }
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        ((ParcelableSnapshotMutableState) this.this$0.windowInfo.this$0).setValue(Boolean.valueOf(z));
    }
}
