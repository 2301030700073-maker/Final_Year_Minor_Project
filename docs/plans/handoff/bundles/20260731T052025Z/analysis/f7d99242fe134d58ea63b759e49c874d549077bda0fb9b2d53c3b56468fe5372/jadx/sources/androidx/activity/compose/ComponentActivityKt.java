package androidx.activity.compose;

import android.R;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.ui.base.BaseActivity;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ComponentActivityKt {
    public static final ViewGroup.LayoutParams DefaultActivityContentLayoutParams = new ViewGroup.LayoutParams(-2, -2);

    public static void setContent$default(BaseActivity baseActivity, ComposableLambdaImpl composableLambdaImpl) {
        View childAt = ((ViewGroup) baseActivity.getWindow().getDecorView().findViewById(R.id.content)).getChildAt(0);
        ComposeView composeView = childAt instanceof ComposeView ? (ComposeView) childAt : null;
        if (composeView != null) {
            composeView.setParentCompositionContext(null);
            composeView.setContent(composableLambdaImpl);
            return;
        }
        ComposeView composeView2 = new ComposeView(baseActivity, null, 0, 6, null);
        composeView2.setParentCompositionContext(null);
        composeView2.setContent(composableLambdaImpl);
        View decorView = baseActivity.getWindow().getDecorView();
        if (ViewModelKt.get(decorView) == null) {
            decorView.setTag(com.fsck.k9.R.id.view_tree_lifecycle_owner, baseActivity);
        }
        if (ViewModelKt.m801get(decorView) == null) {
            decorView.setTag(com.fsck.k9.R.id.view_tree_view_model_store_owner, baseActivity);
        }
        if (Validate.get(decorView) == null) {
            decorView.setTag(com.fsck.k9.R.id.view_tree_saved_state_registry_owner, baseActivity);
        }
        baseActivity.setContentView(composeView2, DefaultActivityContentLayoutParams);
    }
}
