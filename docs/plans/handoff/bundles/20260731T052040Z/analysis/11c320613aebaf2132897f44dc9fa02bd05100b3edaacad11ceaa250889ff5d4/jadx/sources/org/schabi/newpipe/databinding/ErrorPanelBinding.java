package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ErrorPanelBinding implements ViewBinding {
    public final /* synthetic */ int $r8$classId;
    public final LinearLayout rootView;

    public /* synthetic */ ErrorPanelBinding(LinearLayout linearLayout, int i) {
        this.$r8$classId = i;
        this.rootView = linearLayout;
    }

    public static ErrorPanelBinding bind(View view) {
        int i = R.id.error_action_button;
        if (((Button) Options.Companion.findChildViewById(R.id.error_action_button, view)) != null) {
            i = R.id.error_message_service_explanation_view;
            if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.error_message_service_explanation_view, view)) != null) {
                i = R.id.error_message_service_info_view;
                if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.error_message_service_info_view, view)) != null) {
                    i = R.id.error_message_view;
                    if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.error_message_view, view)) != null) {
                        i = R.id.error_open_in_browser;
                        if (((Button) Options.Companion.findChildViewById(R.id.error_open_in_browser, view)) != null) {
                            i = R.id.error_retry_button;
                            if (((Button) Options.Companion.findChildViewById(R.id.error_retry_button, view)) != null) {
                                return new ErrorPanelBinding((LinearLayout) view, 0);
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        int i = this.$r8$classId;
        return this.rootView;
    }
}
