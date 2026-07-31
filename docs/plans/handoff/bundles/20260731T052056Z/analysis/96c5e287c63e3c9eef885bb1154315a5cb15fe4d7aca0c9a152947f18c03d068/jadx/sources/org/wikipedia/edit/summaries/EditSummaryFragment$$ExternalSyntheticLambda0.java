package org.wikipedia.edit.summaries;

import android.os.Build;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.ui.node.NodeChain;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditSummaryFragment$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditSummaryFragment f$0;

    public /* synthetic */ EditSummaryFragment$$ExternalSyntheticLambda0(EditSummaryFragment editSummaryFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = editSummaryFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        EditSummaryFragment editSummaryFragment = this.f$0;
        switch (i) {
            case 0:
                editSummaryFragment.requireActivity().invalidateOptionsMenu();
                NodeChain nodeChain = editSummaryFragment._binding;
                nodeChain.getClass();
                ((MaterialAutoCompleteTextView) nodeChain.innerCoordinator).requestFocus();
                NodeChain nodeChain2 = editSummaryFragment._binding;
                nodeChain2.getClass();
                MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) nodeChain2.innerCoordinator;
                Object systemService = materialAutoCompleteTextView.getContext().getSystemService("input_method");
                systemService.getClass();
                ((InputMethodManager) systemService).showSoftInput(materialAutoCompleteTextView, 1);
                break;
            default:
                Window window = editSummaryFragment.requireActivity().getWindow();
                window.getClass();
                HintHandler hintHandler = new HintHandler(window.getDecorView());
                int i2 = Build.VERSION.SDK_INT;
                (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                editSummaryFragment.requireActivity().invalidateOptionsMenu();
                break;
        }
    }
}
