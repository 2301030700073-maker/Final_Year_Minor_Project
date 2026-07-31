package com.fsck.k9.view;

import android.R;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import com.fsck.k9.ui.compose.SimpleHighlightView;
import com.fsck.k9.ui.compose.SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class HighlightDialogFragment extends DialogFragment {
    public SimpleHighlightView highlightView;

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        SimpleHighlightView simpleHighlightView = this.highlightView;
        if (simpleHighlightView != null) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(simpleHighlightView, "alpha", 0.0f).setDuration(simpleHighlightView.fadeOutMillis);
            duration.getClass();
            duration.addListener(new SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1(simpleHighlightView, 1));
            duration.start();
            this.highlightView = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        View currentFocus;
        super.onStart();
        AppCompatActivity activity = getActivity();
        if (activity != null && (currentFocus = activity.getCurrentFocus()) != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        if (this.mArguments.containsKey("highlighted_view")) {
            AppCompatActivity activity2 = getActivity();
            if (activity2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("fragment must be attached to set highlight!");
                return;
            }
            if (this.highlightView == null) {
                View findViewById = activity2.findViewById(this.mArguments.getInt("highlighted_view"));
                int i = SimpleHighlightView.$r8$clinit;
                findViewById.getClass();
                SimpleHighlightView simpleHighlightView = new SimpleHighlightView(activity2);
                simpleHighlightView.setTarget(findViewById);
                ViewGroup viewGroup = (ViewGroup) activity2.findViewById(R.id.content);
                viewGroup.getClass();
                simpleHighlightView.setParent(viewGroup);
                viewGroup.addView(simpleHighlightView, viewGroup.getChildCount());
                if (simpleHighlightView.getMeasuredHeight() > 0 && simpleHighlightView.getMeasuredWidth() > 0) {
                    simpleHighlightView.updateBitmap();
                }
                ObjectAnimator duration = ObjectAnimator.ofFloat(simpleHighlightView, "alpha", 0.0f, 1.0f).setDuration(simpleHighlightView.fadeInMillis);
                duration.getClass();
                duration.addListener(new SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1(simpleHighlightView, 0));
                duration.start();
                this.highlightView = simpleHighlightView;
            }
        }
        Dialog dialog = this.mDialog;
        if (dialog == null) {
            return;
        }
        dialog.getWindow().setDimAmount(0.25f);
    }
}
