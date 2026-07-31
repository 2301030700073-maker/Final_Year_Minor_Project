package androidx.compose.ui.window;

import android.app.Activity;
import android.view.ActionMode;
import android.view.View;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;
import androidx.compose.material3.ModalBottomSheetDialogWrapper;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.platform.DisposableSaveableStateRegistry;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.R;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnsqueryresult.DnsQueryResult;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Launcher has not been initialized");
                    break;
                } else {
                    activityResultRegistry$register$2.unregister();
                    break;
                }
            case 2:
                ((SeekableTransitionState) ((DnsQueryResult) obj)).setSnapshotStateObserver$animation_core(null);
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) obj;
                SnapshotStateObserver snapshotStateObserver = androidTextContextMenuToolbarProvider.snapshotStateObserver;
                OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = snapshotStateObserver.applyUnsubscribe;
                if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 != null) {
                    onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.dispose();
                }
                snapshotStateObserver.clear();
                ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
                androidTextContextMenuToolbarProvider.actionMode = null;
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                BasicTextContextMenuProvider.SessionImpl sessionImpl = (BasicTextContextMenuProvider.SessionImpl) ((BasicTextContextMenuProvider) obj).session$delegate.getValue();
                if (sessionImpl != null) {
                    sessionImpl.close();
                    break;
                }
                break;
            case 9:
                ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1 exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1 = (ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1) obj;
                View view = exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1.$view;
                if (exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1.isListeningToGlobalLayout) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1);
                    exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1.isListeningToGlobalLayout = false;
                }
                view.removeOnAttachStateChangeListener(exposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1);
                break;
            case 10:
                ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper = (ModalBottomSheetDialogWrapper) obj;
                modalBottomSheetDialogWrapper.dismiss();
                modalBottomSheetDialogWrapper.dialogLayout.disposeComposition();
                break;
            case 11:
                CancellableContinuationImpl cancellableContinuationImpl = ((TooltipStateImpl) obj).job;
                if (cancellableContinuationImpl != null) {
                    cancellableContinuationImpl.cancel(null);
                    break;
                }
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((DisposableSaveableStateRegistry) obj).onDispose.invoke();
                break;
            case 13:
                DialogWrapper dialogWrapper = (DialogWrapper) obj;
                dialogWrapper.dismiss();
                dialogWrapper.dialogLayout.disposeComposition();
                break;
            default:
                Util.setSecure((Activity) obj, false);
                break;
        }
    }
}
