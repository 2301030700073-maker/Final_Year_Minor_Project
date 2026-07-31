package net.newpipe.app;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.platform.DisposableSaveableStateRegistry;
import androidx.compose.ui.window.DialogWrapper;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider$$ExternalSyntheticLambda1;
import coil3.memory.MemoryCacheService;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $windowController$inlined;

    public /* synthetic */ ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1(Object obj, int i) {
        this.$r8$classId = i;
        this.$windowController$inlined = obj;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        int i = this.$r8$classId;
        Object obj = this.$windowController$inlined;
        switch (i) {
            case 0:
                ((MemoryCacheService) obj).setAppearanceLightStatusBars(false);
                break;
            case 1:
                ((SeekableTransitionState) obj).setSnapshotStateObserver$animation_core(null);
                break;
            case 2:
                ((LazyLayoutItemContentFactory.CachedItemContent) obj)._content = null;
                break;
            case 3:
                LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) obj;
                Latch latch = lazyLayoutPrefetchState.prefetchHandleProvider;
                if (latch != null) {
                    latch._isOpen = false;
                }
                lazyLayoutPrefetchState.prefetchHandleProvider = null;
                break;
            case 4:
                ((LazyLayoutPinnableItem) obj).isDisposed = true;
                break;
            case 5:
                ((DisposableSaveableStateRegistry) obj).onDispose.invoke();
                break;
            case 6:
                DialogWrapper dialogWrapper = (DialogWrapper) obj;
                dialogWrapper.dismiss();
                dialogWrapper.dialogLayout.disposeComposition();
                break;
            default:
                AutoCloseable autoCloseable = (ViewModelStoreProvider$$ExternalSyntheticLambda1) obj;
                if (!(autoCloseable instanceof AutoCloseable)) {
                    if (!(autoCloseable instanceof ExecutorService)) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                        break;
                    } else {
                        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
                        break;
                    }
                } else {
                    autoCloseable.close();
                    break;
                }
        }
    }
}
