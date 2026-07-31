package org.wikipedia.page;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "ExtendedBottomSheetDialog", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class ExtendedBottomSheetDialogFragment extends BottomSheetDialogFragment {
    public final boolean startExpanded;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ExtendedBottomSheetDialog extends BottomSheetDialog {
        @Override // android.app.Dialog, android.view.Window.Callback
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            motionEvent.getClass();
            Window window = getWindow();
            if (window != null) {
                NodeTraversor.dispatchTouchEvent(window, motionEvent);
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    public ExtendedBottomSheetDialogFragment(boolean z) {
        this.startExpanded = z;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
        Context requireContext = requireContext();
        companion.getClass();
        BreadCrumbLogEvent.Companion.logScreenShown(requireContext, this);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        return new ExtendedBottomSheetDialog(requireContext(), this.mTheme);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        View findViewById;
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                Context requireContext = requireContext();
                TypedValue typedValue = new TypedValue();
                if (!requireContext.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                    return;
                }
                int i = typedValue.data;
                if (Build.VERSION.SDK_INT >= 26) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    boolean z = Jsoup.getInstance().currentTheme.isDark() || i == -16777216;
                    window.setNavigationBarColor(i);
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i2 = Build.VERSION.SDK_INT;
                    (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightNavigationBars(!z);
                }
            }
            if (!this.startExpanded || (findViewById = dialog.findViewById(R.id.design_bottom_sheet)) == null) {
                return;
            }
            BottomSheetBehavior.from(findViewById).setState(3);
        }
    }

    public ExtendedBottomSheetDialogFragment() {
        this(false);
    }
}
