package org.wikipedia.login;

import android.view.KeyEvent;
import android.widget.TextView;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.media.AvPlayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LoginActivity$$ExternalSyntheticLambda5 implements TextView.OnEditorActionListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LoginActivity$$ExternalSyntheticLambda5(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        DescriptionEditView.Callback callback;
        int i2 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i2) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) obj;
                int i3 = LoginActivity.$r8$clinit;
                if (i != 6) {
                    break;
                } else {
                    loginActivity.validateThenLogin();
                    break;
                }
            case 1:
                DescriptionEditView descriptionEditView = (DescriptionEditView) obj;
                if (i != 6) {
                    int i4 = DescriptionEditView.$r8$clinit;
                    break;
                } else if (descriptionEditView.binding.viewDescriptionEditSaveButton.isEnabled() && (callback = descriptionEditView.callback) != null) {
                    ((AvPlayer) callback).onSaveClick();
                    break;
                }
                break;
            case 2:
                EditSummaryFragment editSummaryFragment = (EditSummaryFragment) obj;
                if ((keyEvent != null && keyEvent.getKeyCode() == 66) || i == 6) {
                    ((EditSectionActivity) editSummaryFragment.requireActivity()).clickNextButton();
                    break;
                }
                break;
            default:
                ResetPasswordActivity resetPasswordActivity = (ResetPasswordActivity) obj;
                int i5 = ResetPasswordActivity.$r8$clinit;
                if (i != 6) {
                    break;
                } else {
                    resetPasswordActivity.validateThenLogin$1();
                    break;
                }
        }
        return false;
    }
}
