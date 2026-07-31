package app.k9mail.feature.settings.p000import.ui;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.GetTargetFragmentUsageViolation;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.account.AutocryptPreferEncryptDialogFragment;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputEditText;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PasswordPromptDialogFragment$$ExternalSyntheticLambda0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DialogFragment f$0;

    public /* synthetic */ PasswordPromptDialogFragment$$ExternalSyntheticLambda0(DialogFragment dialogFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = dialogFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        DialogFragment dialogFragment = this.f$0;
        switch (i2) {
            case 0:
                PasswordPromptDialogFragment passwordPromptDialogFragment = (PasswordPromptDialogFragment) dialogFragment;
                View view = passwordPromptDialogFragment.dialogView;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("dialogView");
                    throw null;
                }
                View findViewById = view.findViewById(R.id.incomingServerPassword);
                findViewById.getClass();
                TextInputEditText textInputEditText = (TextInputEditText) findViewById;
                View view2 = passwordPromptDialogFragment.dialogView;
                if (view2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("dialogView");
                    throw null;
                }
                View findViewById2 = view2.findViewById(R.id.outgoingServerPassword);
                findViewById2.getClass();
                TextInputEditText textInputEditText2 = (TextInputEditText) findViewById2;
                View view3 = passwordPromptDialogFragment.dialogView;
                if (view3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("dialogView");
                    throw null;
                }
                View findViewById3 = view3.findViewById(R.id.useSamePasswordCheckbox);
                findViewById3.getClass();
                MaterialCheckBox materialCheckBox = (MaterialCheckBox) findViewById3;
                String valueOf = !passwordPromptDialogFragment.inputIncomingServerPassword ? null : String.valueOf(textInputEditText.getText());
                String valueOf2 = !passwordPromptDialogFragment.inputOutgoingServerPassword ? null : materialCheckBox.isChecked() ? valueOf : String.valueOf(textInputEditText2.getText());
                String str = passwordPromptDialogFragment.accountUuid;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("accountUuid");
                    throw null;
                }
                Intent intent = new Intent();
                intent.putExtra("accountUuid", str);
                intent.putExtra("incomingServerPassword", valueOf);
                intent.putExtra("outgoingServerPassword", valueOf2);
                Fragment targetFragment = passwordPromptDialogFragment.getTargetFragment(true);
                targetFragment.getClass();
                FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
                FragmentStrictMode.logIfDebuggingEnabled(new GetTargetFragmentUsageViolation(passwordPromptDialogFragment, "Attempting to get target request code from fragment " + passwordPromptDialogFragment));
                FragmentStrictMode.getNearestPolicy(passwordPromptDialogFragment).getClass();
                targetFragment.onActivityResult(passwordPromptDialogFragment.mTargetRequestCode, -1, intent);
                return;
            case 1:
                dialogInterface.getClass();
                ((AutocryptPreferEncryptDialogFragment) dialogFragment).mWhichButtonClicked = i;
                return;
            default:
                dialogInterface.getClass();
                ((AutocryptPreferEncryptDialogFragment) dialogFragment).mWhichButtonClicked = i;
                return;
        }
    }
}
