package net.thunderbird.feature.mail.message.composer.dialog;

import android.app.Dialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.DialogFragment;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SentFolderNotFoundConfirmationDialogFragment extends DialogFragment {
    public static final Factory Factory = new Factory();
    public final Lazy themeProvider$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new GapPending$keyMap$2(15, this));

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory {
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        String string = requireArguments().getString("SetupArchiveFolderDialogFragmentFactory_accountUuid");
        if (string == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("The SetupArchiveFolderDialogFragmentFactory_accountUuid argument is missing from the arguments bundle.");
            return null;
        }
        Dialog dialog = this.mDialog;
        int i = 1;
        if (dialog != null) {
            dialog.requestWindowFeature(1);
        }
        ComposeView composeView = new ComposeView(requireContext(), null, 0, 6, null);
        composeView.setContent(new ComposableLambdaImpl(1176783044, new SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0(this, string, i), true));
        return composeView;
    }
}
