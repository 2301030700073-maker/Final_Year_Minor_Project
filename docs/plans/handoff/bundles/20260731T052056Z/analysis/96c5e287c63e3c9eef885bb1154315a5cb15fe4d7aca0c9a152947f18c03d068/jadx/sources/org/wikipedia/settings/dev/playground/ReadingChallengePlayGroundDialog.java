package org.wikipedia.settings.dev.playground;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import kotlin.Metadata;
import org.wikipedia.R;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingChallengePlayGroundDialog extends ExtendedBottomSheetDialogFragment {
    public ReadingChallengePlayGroundDialog() {
        super(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        ReadingChallengeWidgetRepository readingChallengeWidgetRepository = new ReadingChallengeWidgetRepository(requireContext());
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new RandomActivity$$ExternalSyntheticLambda1(11, readingChallengeWidgetRepository, this), true, -1801204478));
        return composeView;
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        View findViewById;
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog == null || (findViewById = dialog.findViewById(R.id.design_bottom_sheet)) == null) {
            return;
        }
        BottomSheetBehavior.from(findViewById).draggable = false;
    }
}
