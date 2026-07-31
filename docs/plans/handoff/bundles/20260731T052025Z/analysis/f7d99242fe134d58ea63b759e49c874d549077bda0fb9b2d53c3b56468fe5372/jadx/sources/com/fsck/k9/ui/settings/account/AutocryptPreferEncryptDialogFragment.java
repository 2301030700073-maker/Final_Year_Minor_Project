package com.fsck.k9.ui.settings.account;

import android.app.Dialog;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AlertController;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceDialogFragmentCompat;
import app.k9mail.feature.settings.p000import.ui.PasswordPromptDialogFragment$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.activity.AlternateRecipientAdapter$$ExternalSyntheticLambda0;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textview.MaterialTextView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptPreferEncryptDialogFragment extends PreferenceDialogFragmentCompat {
    public MaterialCheckBox preferEncryptCheckbox;

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        View inflate = getLayoutInflater().inflate(R.layout.dialog_autocrypt_prefer_encrypt, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.prefer_encrypt_learn_more);
        findViewById.getClass();
        ((MaterialTextView) findViewById).setMovementMethod(LinkMovementMethod.getInstance());
        View findViewById2 = inflate.findViewById(R.id.prefer_encrypt_check);
        DialogPreference preference = getPreference();
        preference.getClass();
        ((MaterialCheckBox) findViewById2).setChecked(((AutocryptPreferEncryptPreference) preference).isPreferEncryptEnabled);
        findViewById2.getClass();
        this.preferEncryptCheckbox = (MaterialCheckBox) findViewById2;
        inflate.findViewById(R.id.prefer_encrypt).setOnClickListener(new AlternateRecipientAdapter$$ExternalSyntheticLambda0(4, this));
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext());
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = inflate;
        materialAlertDialogBuilder.setPositiveButton(R.string.okay_action, new PasswordPromptDialogFragment$$ExternalSyntheticLambda0(this, 1));
        materialAlertDialogBuilder.setNegativeButton(R.string.cancel_action, new PasswordPromptDialogFragment$$ExternalSyntheticLambda0(this, 2));
        return materialAlertDialogBuilder.create();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        if (z) {
            DialogPreference preference = getPreference();
            preference.getClass();
            AutocryptPreferEncryptPreference autocryptPreferEncryptPreference = (AutocryptPreferEncryptPreference) preference;
            MaterialCheckBox materialCheckBox = this.preferEncryptCheckbox;
            if (materialCheckBox == null) {
                Intrinsics.throwUninitializedPropertyAccessException("preferEncryptCheckbox");
                throw null;
            }
            boolean isChecked = materialCheckBox.isChecked();
            autocryptPreferEncryptPreference.callChangeListener(Boolean.valueOf(isChecked));
            autocryptPreferEncryptPreference.isPreferEncryptEnabled = isChecked;
            autocryptPreferEncryptPreference.persistBoolean(isChecked);
            autocryptPreferEncryptPreference.setSummary(autocryptPreferEncryptPreference.isPreferEncryptEnabled ? autocryptPreferEncryptPreference.summaryOn : autocryptPreferEncryptPreference.summaryOff);
        }
    }
}
