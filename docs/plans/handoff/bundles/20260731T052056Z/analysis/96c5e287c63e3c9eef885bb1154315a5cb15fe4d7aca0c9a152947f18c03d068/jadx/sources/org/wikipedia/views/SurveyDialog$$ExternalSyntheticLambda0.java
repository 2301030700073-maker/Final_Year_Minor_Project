package org.wikipedia.views;

import android.view.View;
import android.widget.ScrollView;
import com.google.android.material.textfield.ClearTextEndIconDelegate;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.edit.SyntaxHighlightViewAdapter;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SurveyDialog$$ExternalSyntheticLambda0 implements View.OnFocusChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ActivityTalkReplyBinding activityTalkReplyBinding = (ActivityTalkReplyBinding) obj;
                if (z) {
                    ((ScrollView) activityTalkReplyBinding.editKeyboardOverlay).postDelayed(new MainFragment$$ExternalSyntheticLambda5(17, activityTalkReplyBinding), 200L);
                    break;
                }
                break;
            case 1:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) obj;
                clearTextEndIconDelegate.animateIcon(clearTextEndIconDelegate.shouldBeVisible());
                break;
            case 2:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) obj;
                dropdownMenuEndIconDelegate.editTextHasFocus = z;
                dropdownMenuEndIconDelegate.refreshIconState();
                if (!z) {
                    dropdownMenuEndIconDelegate.setEndIconChecked(false);
                    dropdownMenuEndIconDelegate.dropdownPopupDirty = false;
                    break;
                }
                break;
            default:
                ((BaseActivity) ((SyntaxHighlightViewAdapter) obj).activity).getWindow().getDecorView().requestApplyInsets();
                break;
        }
    }
}
