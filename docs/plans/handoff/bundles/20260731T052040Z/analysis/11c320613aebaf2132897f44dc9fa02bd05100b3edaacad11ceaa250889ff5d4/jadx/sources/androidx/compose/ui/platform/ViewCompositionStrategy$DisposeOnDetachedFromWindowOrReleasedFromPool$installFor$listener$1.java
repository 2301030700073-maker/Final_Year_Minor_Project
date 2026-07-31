package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.core.view.ViewKt$ancestors$1;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import kotlin.sequences.EmptySequence;
import kotlin.sequences.MergingSequence;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ AbstractComposeView $view;

    public ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(AbstractComposeView abstractComposeView) {
        this.$view = abstractComposeView;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AbstractComposeView abstractComposeView = this.$view;
        ViewParent parent = abstractComposeView.getParent();
        for (Object obj : parent == null ? EmptySequence.INSTANCE : new MergingSequence(new Worker$$ExternalSyntheticLambda0(parent, 27), ViewKt$ancestors$1.INSTANCE, 1)) {
            if (obj instanceof View) {
                View view2 = (View) obj;
                view2.getClass();
                Object tag = view2.getTag(R.id.is_pooling_container_tag);
                Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
                if (bool != null ? bool.booleanValue() : false) {
                    return;
                }
            }
        }
        abstractComposeView.disposeComposition();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
