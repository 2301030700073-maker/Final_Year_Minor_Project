package app.k9mail.ui.utils.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ToolbarBottomSheetDialogFragment extends AppCompatDialogFragment {
    public boolean waitingForDismissAllowingStateLoss;

    @Override // androidx.fragment.app.DialogFragment
    public final void dismiss() {
        if (tryDismissWithAnimation(false)) {
            return;
        }
        dismissInternal(false, false);
    }

    public final void dismissAfterAnimation() {
        if (this.waitingForDismissAllowingStateLoss) {
            super.dismissAllowingStateLoss();
        } else {
            dismissInternal(false, false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final void dismissAllowingStateLoss() {
        if (tryDismissWithAnimation(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog getDialog() {
        return (ToolbarBottomSheetDialog) this.mDialog;
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return new ToolbarBottomSheetDialog(requireContext(), this.mTheme);
    }

    public final boolean tryDismissWithAnimation(boolean z) {
        ToolbarBottomSheetDialog toolbarBottomSheetDialog = (ToolbarBottomSheetDialog) this.mDialog;
        if (toolbarBottomSheetDialog != null) {
            LayoutAwareBottomSheetBehavior behavior = toolbarBottomSheetDialog.getBehavior();
            if (behavior.hideable && toolbarBottomSheetDialog.isDismissWithAnimation) {
                this.waitingForDismissAllowingStateLoss = z;
                if (behavior.state == 5) {
                    dismissAfterAnimation();
                } else {
                    ToolbarBottomSheetDialog toolbarBottomSheetDialog2 = (ToolbarBottomSheetDialog) this.mDialog;
                    if (toolbarBottomSheetDialog2 != null) {
                        LayoutAwareBottomSheetBehavior layoutAwareBottomSheetBehavior = toolbarBottomSheetDialog2.internalBehavior;
                        if (layoutAwareBottomSheetBehavior == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                            return false;
                        }
                        ((BottomSheetBehavior) layoutAwareBottomSheetBehavior).callbacks.remove(toolbarBottomSheetDialog2.cancelDialogCallback);
                    }
                    ToolbarBottomSheetDialog$cancelDialogCallback$1 toolbarBottomSheetDialog$cancelDialogCallback$1 = new ToolbarBottomSheetDialog$cancelDialogCallback$1(1, this);
                    ArrayList arrayList = ((BottomSheetBehavior) behavior).callbacks;
                    if (!arrayList.contains(toolbarBottomSheetDialog$cancelDialogCallback$1)) {
                        arrayList.add(toolbarBottomSheetDialog$cancelDialogCallback$1);
                    }
                    behavior.setState(5);
                }
                return true;
            }
        }
        return false;
    }
}
