package app.k9mail.feature.settings.p000import.ui;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AlertController;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.DialogFragment;
import com.fsck.k9.R;
import com.fsck.k9.activity.EditIdentity$$ExternalSyntheticLambda0;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textview.MaterialTextView;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PasswordPromptDialogFragment extends DialogFragment {
    public String accountUuid;
    public View dialogView;
    public boolean inputIncomingServerPassword;
    public boolean inputOutgoingServerPassword;

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Bundle bundle2 = this.mArguments;
        if (bundle2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Fragment arguments missing");
            return null;
        }
        String string = bundle2.getString("accountUuid");
        if (string == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing account UUID");
            return null;
        }
        this.accountUuid = string;
        String string2 = bundle2.getString("accountName");
        if (string2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing account name");
            return null;
        }
        String string3 = bundle2.getString("incomingServerName");
        String string4 = bundle2.getString("outgoingServerName");
        this.inputIncomingServerPassword = bundle2.getBoolean("inputIncomingServerPassword");
        boolean z = bundle2.getBoolean("inputOutgoingServerPassword");
        this.inputOutgoingServerPassword = z;
        boolean z2 = this.inputIncomingServerPassword;
        if (!z2 && !z) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Not prompting for any password");
            return null;
        }
        View inflate = LayoutInflater.from(requireContext()).inflate(R.layout.password_prompt_dialog, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.passwordPromptIntro);
        findViewById.getClass();
        MaterialTextView materialTextView = (MaterialTextView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.incomingServerName);
        findViewById2.getClass();
        MaterialTextView materialTextView2 = (MaterialTextView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.outgoingServerName);
        findViewById3.getClass();
        MaterialTextView materialTextView3 = (MaterialTextView) findViewById3;
        View findViewById4 = inflate.findViewById(R.id.useSamePasswordCheckbox);
        findViewById4.getClass();
        MaterialCheckBox materialCheckBox = (MaterialCheckBox) findViewById4;
        View findViewById5 = inflate.findViewById(R.id.incomingServerGroup);
        findViewById5.getClass();
        Group group = (Group) findViewById5;
        View findViewById6 = inflate.findViewById(R.id.outgoingServerGroup);
        findViewById6.getClass();
        Group group2 = (Group) findViewById6;
        materialTextView.setText(getResources().getQuantityString(R.plurals.settings_import_password_prompt, (z2 && z) ? 2 : 1, string2));
        materialTextView2.setText(getString(R.string.settings_import_server_name_format, string3));
        materialTextView3.setText(getString(R.string.settings_import_server_name_format, string4));
        group.setVisibility(!z2 ? 8 : 0);
        group2.setVisibility(!z ? 8 : 0);
        if (z2 && z) {
            materialCheckBox.setChecked(true);
            group2.setVisibility(8);
            materialCheckBox.setOnCheckedChangeListener(new EditIdentity$$ExternalSyntheticLambda0(1, group2));
        } else {
            materialCheckBox.setVisibility(8);
        }
        this.dialogView = inflate;
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext());
        View view = this.dialogView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
            throw null;
        }
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = view;
        materialAlertDialogBuilder.setPositiveButton(R.string.okay_action, new PasswordPromptDialogFragment$$ExternalSyntheticLambda0(this, 0));
        materialAlertDialogBuilder.setNegativeButton(R.string.cancel_action, null);
        return materialAlertDialogBuilder.create();
    }
}
