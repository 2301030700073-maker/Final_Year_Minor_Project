package app.k9mail.ui.utils.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutAwareBottomSheetBehavior<V extends View> extends BottomSheetBehavior<V> {
    public final LinkedHashSet callbacks;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutAwareBottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.callbacks = new LinkedHashSet();
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        super.onLayoutChild(coordinatorLayout, view, i);
        for (ToolbarBottomSheetDialog.ToolbarVisibilityCallback toolbarVisibilityCallback : this.callbacks) {
            toolbarVisibilityCallback.getClass();
            toolbarVisibilityCallback.handleToolbarVisibility(view);
        }
        return true;
    }
}
