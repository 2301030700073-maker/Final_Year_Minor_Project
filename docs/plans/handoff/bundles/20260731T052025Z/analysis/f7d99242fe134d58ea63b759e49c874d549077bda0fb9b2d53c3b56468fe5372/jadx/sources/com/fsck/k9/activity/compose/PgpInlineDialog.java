package com.fsck.k9.activity.compose;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AlertController;
import androidx.biometric.FingerprintDialogFragment;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.view.HighlightDialogFragment;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PgpInlineDialog extends HighlightDialogFragment {
    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.openpgp_inline_dialog, (ViewGroup) null);
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity());
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = inflate;
        if (this.mArguments.getInt("first_time") != 0) {
            materialAlertDialogBuilder.setPositiveButton(R.string.openpgp_inline_ok, new MessageCompose.AnonymousClass10(3));
        } else {
            int i = 4;
            materialAlertDialogBuilder.setPositiveButton(R.string.openpgp_inline_disable, new FingerprintDialogFragment.AnonymousClass2(this, i));
            materialAlertDialogBuilder.setNegativeButton(R.string.openpgp_inline_keep_enabled, new MessageCompose.AnonymousClass10(i));
        }
        return materialAlertDialogBuilder.create();
    }
}
