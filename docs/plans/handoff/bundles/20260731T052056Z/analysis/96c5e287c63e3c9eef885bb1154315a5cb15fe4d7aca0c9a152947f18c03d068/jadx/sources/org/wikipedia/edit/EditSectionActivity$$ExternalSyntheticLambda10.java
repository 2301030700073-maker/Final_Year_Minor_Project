package org.wikipedia.edit;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditSectionActivity$$ExternalSyntheticLambda10 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditSectionActivity f$0;

    public /* synthetic */ EditSectionActivity$$ExternalSyntheticLambda10(EditSectionActivity editSectionActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = editSectionActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ActivityLoginBinding activityLoginBinding = this.f$0.binding;
                if (activityLoginBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer;
                Object systemService = syntaxHighlightableEditText.getContext().getSystemService("input_method");
                systemService.getClass();
                ((InputMethodManager) systemService).showSoftInput(syntaxHighlightableEditText, 1);
                return;
            default:
                int i = EditSectionActivity.$r8$clinit;
                EditSectionActivity editSectionActivity = this.f$0;
                View findViewById = editSectionActivity.findViewById(R.id.menu_edit_notices);
                if (editSectionActivity.isDestroyed() || findViewById == null) {
                    return;
                }
                String string = editSectionActivity.getString(R.string.edit_notices_tooltip);
                string.getClass();
                ShareUtil.showTooltip$default(editSectionActivity, findViewById, string, false, false, 224);
                return;
        }
    }
}
