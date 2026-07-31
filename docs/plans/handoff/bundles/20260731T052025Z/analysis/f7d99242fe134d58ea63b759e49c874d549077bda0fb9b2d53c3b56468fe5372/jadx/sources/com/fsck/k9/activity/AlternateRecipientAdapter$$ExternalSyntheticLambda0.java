package com.fsck.k9.activity;

import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import androidx.appcompat.widget.SwitchCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel;
import app.k9mail.feature.settings.p000import.ui.OAuthFlowActivity;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog;
import com.fsck.k9.R;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment;
import com.fsck.k9.ui.settings.account.AutocryptPreferEncryptDialogFragment;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.ClearTextEndIconDelegate;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.textfield.PasswordToggleEndIconDelegate;
import com.google.android.material.textview.MaterialTextView;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlternateRecipientAdapter$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ AlternateRecipientAdapter$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        boolean z = false;
        Continuation continuation = null;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                AlternateRecipientAdapter alternateRecipientAdapter = (AlternateRecipientAdapter) obj;
                RecipientSelectView recipientSelectView = alternateRecipientAdapter.listener;
                RecipientSelectView.Recipient recipient = alternateRecipientAdapter.currentRecipient;
                recipientSelectView.getClass();
                ((ClipboardManager) CloseableKt.get$default(ClipboardManager.class)).setText(recipientSelectView.getContext().getResources().getString(R.string.clipboard_label_name_and_email_address), recipient.address.toString());
                return;
            case 1:
                OAuthFlowActivity oAuthFlowActivity = (OAuthFlowActivity) obj;
                Button button = oAuthFlowActivity.signInButton;
                if (button == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("signInButton");
                    throw null;
                }
                button.setVisibility(8);
                ProgressBar progressBar = oAuthFlowActivity.signInProgress;
                if (progressBar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("signInProgress");
                    throw null;
                }
                progressBar.setVisibility(0);
                MaterialTextView materialTextView = oAuthFlowActivity.errorText;
                if (materialTextView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("errorText");
                    throw null;
                }
                materialTextView.setText("");
                AuthViewModel authViewModel = (AuthViewModel) oAuthFlowActivity.authViewModel$delegate.getValue();
                LegacyAccountDto legacyAccountDto = authViewModel.account;
                if (legacyAccountDto != null) {
                    JobKt.launch$default(ViewModelKt.getViewModelScope(authViewModel), null, null, new BlockRunner$maybeRun$1(authViewModel, legacyAccountDto, continuation, 27), 3);
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                    return;
                }
            case 2:
                ToolbarBottomSheetDialog toolbarBottomSheetDialog = (ToolbarBottomSheetDialog) obj;
                if (toolbarBottomSheetDialog.isShowing()) {
                    toolbarBottomSheetDialog.cancel();
                    return;
                }
                return;
            case 3:
                ((MessageDetailsFragment) obj).dismissAllowingStateLoss();
                return;
            case 4:
                MaterialCheckBox materialCheckBox = ((AutocryptPreferEncryptDialogFragment) obj).preferEncryptCheckbox;
                if (materialCheckBox != null) {
                    materialCheckBox.performClick();
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("preferEncryptCheckbox");
                    throw null;
                }
            case 5:
                ((SwitchCompat) obj).toggle();
                return;
            case 6:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) obj;
                EditText editText = clearTextEndIconDelegate.editText;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (view.hasFocus()) {
                    clearTextEndIconDelegate.editText.requestFocus();
                }
                if (text != null) {
                    text.clear();
                }
                clearTextEndIconDelegate.refreshIconState();
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((DropdownMenuEndIconDelegate) obj).showHideDropdown();
                return;
            default:
                PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = (PasswordToggleEndIconDelegate) obj;
                EditText editText2 = passwordToggleEndIconDelegate.editText;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = passwordToggleEndIconDelegate.editText;
                if (editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    z = true;
                }
                EditText editText4 = passwordToggleEndIconDelegate.editText;
                if (z) {
                    editText4.setTransformationMethod(null);
                } else {
                    editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    passwordToggleEndIconDelegate.editText.setSelection(selectionEnd);
                }
                passwordToggleEndIconDelegate.refreshIconState();
                return;
        }
    }
}
