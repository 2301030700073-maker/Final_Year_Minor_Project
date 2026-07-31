package com.fsck.k9.activity.compose;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.FingerprintDialogFragment;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.view.HighlightDialogFragment;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PgpEnabledErrorDialog extends HighlightDialogFragment {
    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AppCompatActivity activity = getActivity();
        boolean z = this.mArguments.getBoolean("is_gotit");
        View inflate = LayoutInflater.from(activity).inflate(R.layout.openpgp_enabled_error_dialog, (ViewGroup) null);
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity());
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = inflate;
        materialAlertDialogBuilder.setNegativeButton(z ? R.string.openpgp_enabled_error_gotit : R.string.openpgp_enabled_error_back, new MessageCompose.AnonymousClass10(1));
        materialAlertDialogBuilder.setPositiveButton(R.string.openpgp_enabled_error_disable, new FingerprintDialogFragment.AnonymousClass2(this, 3));
        return materialAlertDialogBuilder.create();
    }
}
