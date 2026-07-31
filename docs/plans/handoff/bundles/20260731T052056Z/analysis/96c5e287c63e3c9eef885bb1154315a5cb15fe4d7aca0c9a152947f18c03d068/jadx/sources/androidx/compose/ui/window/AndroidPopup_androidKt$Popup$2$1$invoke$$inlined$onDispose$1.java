package androidx.compose.ui.window;

import android.view.ActionMode;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.platform.DisposableSaveableStateRegistry;
import androidx.preference.PreferenceManager;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ Object $popupLayout$inlined;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$popupLayout$inlined = obj;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        int i = this.$r8$classId;
        Object obj = this.$popupLayout$inlined;
        switch (i) {
            case 0:
                PopupLayout popupLayout = (PopupLayout) obj;
                popupLayout.disposeComposition();
                popupLayout.setTag(R.id.view_tree_lifecycle_owner, null);
                popupLayout.windowManager.removeViewImmediate(popupLayout);
                break;
            case 1:
                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = ((ActivityResultLauncherHolder) obj).launcher;
                if (activityResultRegistry$register$2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Launcher has not been initialized");
                    break;
                } else {
                    activityResultRegistry$register$2.unregister();
                    break;
                }
            case 2:
                ((SeekableTransitionState) ((BasePreferenceLoader) obj)).setSnapshotStateObserver$animation_core(null);
                break;
            case 3:
                ((LazyLayoutItemContentFactory.CachedItemContent) obj)._content = null;
                break;
            case 4:
                LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) obj;
                Latch latch = lazyLayoutPrefetchState.prefetchHandleProvider;
                if (latch != null) {
                    latch._isOpen = false;
                }
                lazyLayoutPrefetchState.prefetchHandleProvider = null;
                break;
            case 5:
                ((LazyLayoutPinnableItem) obj).isDisposed = true;
                break;
            case 6:
                ((TextFieldSelectionManager) obj).hideSelectionToolbar$foundation();
                break;
            case 7:
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) obj;
                PreferenceManager preferenceManager = androidTextContextMenuToolbarProvider.snapshotStateObserver;
                YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 = (YearInReviewGeoSlideKt$$ExternalSyntheticLambda5) preferenceManager.mOnDisplayPreferenceDialogListener;
                if (yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 != null) {
                    yearInReviewGeoSlideKt$$ExternalSyntheticLambda5.dispose();
                }
                preferenceManager.clear();
                ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
                androidTextContextMenuToolbarProvider.actionMode = null;
                break;
            case 8:
                BasicTextContextMenuProvider.SessionImpl sessionImpl = (BasicTextContextMenuProvider.SessionImpl) ((BasicTextContextMenuProvider) obj).session$delegate.getValue();
                if (sessionImpl != null) {
                    sessionImpl.close();
                    break;
                }
                break;
            case 9:
                SelectionManager selectionManager = (SelectionManager) obj;
                selectionManager.onRelease();
                selectionManager.hasFocus$delegate.setValue(Boolean.FALSE);
                break;
            case 10:
                CancellableContinuationImpl cancellableContinuationImpl = ((TooltipStateImpl) obj).job;
                if (cancellableContinuationImpl != null) {
                    cancellableContinuationImpl.cancel(null);
                    break;
                }
                break;
            case 11:
                ((DisposableSaveableStateRegistry) obj).onDispose.invoke();
                break;
            default:
                DialogWrapper dialogWrapper = (DialogWrapper) obj;
                dialogWrapper.dismiss();
                dialogWrapper.dialogLayout.disposeComposition();
                break;
        }
    }
}
