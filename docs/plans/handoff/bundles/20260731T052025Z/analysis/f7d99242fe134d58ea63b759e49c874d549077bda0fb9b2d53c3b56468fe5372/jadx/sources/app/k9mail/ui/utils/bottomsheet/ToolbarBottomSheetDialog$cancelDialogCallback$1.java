package app.k9mail.ui.utils.bottomsheet;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ToolbarBottomSheetDialog$cancelDialogCallback$1 extends BottomSheetBehavior.BottomSheetCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ ToolbarBottomSheetDialog$cancelDialogCallback$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
    public final void onSlide(View view) {
        int i = this.$r8$classId;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
    public final void onStateChanged(View view, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.this$0;
        switch (i2) {
            case 0:
                if (i == 5) {
                    ((ToolbarBottomSheetDialog) obj).cancel();
                    break;
                }
                break;
            default:
                if (i == 5) {
                    ((ToolbarBottomSheetDialogFragment) obj).dismissAfterAnimation();
                    break;
                }
                break;
        }
    }

    private final void onSlide$app$k9mail$ui$utils$bottomsheet$ToolbarBottomSheetDialog$cancelDialogCallback$1(View view) {
    }

    private final void onSlide$app$k9mail$ui$utils$bottomsheet$ToolbarBottomSheetDialogFragment$BottomSheetDismissCallback(View view) {
    }
}
