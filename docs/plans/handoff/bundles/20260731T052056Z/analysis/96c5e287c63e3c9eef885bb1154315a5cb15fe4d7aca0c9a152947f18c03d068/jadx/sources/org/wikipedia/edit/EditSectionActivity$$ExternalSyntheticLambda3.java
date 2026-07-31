package org.wikipedia.edit;

import android.view.ActionMode;
import android.view.MenuItem;
import android.view.View;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.lifecycle.ViewModelKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditSectionActivity$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditSectionActivity f$0;

    public /* synthetic */ EditSectionActivity$$ExternalSyntheticLambda3(EditSectionActivity editSectionActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = editSectionActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        EditSectionActivity editSectionActivity = this.f$0;
        switch (i) {
            case 0:
                ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                if (activityLoginBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((WikiErrorView) activityLoginBinding.viewLoginError).setVisibility(8);
                CaptchaHandler captchaHandler = editSectionActivity.captchaHandler;
                if (captchaHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
                captchaHandler.requestNewCaptcha();
                if (editSectionActivity.getViewModel().sectionWikitext == null) {
                    editSectionActivity.displaySectionText();
                    return;
                } else {
                    EditSectionViewModel viewModel = editSectionActivity.getViewModel();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 1), null, new ThumbNode$onAttach$1(29, viewModel, null), 2);
                    return;
                }
            case 1:
                int i2 = EditSectionActivity.$r8$clinit;
                editSectionActivity.getOnBackPressedDispatcher().onBackPressed();
                return;
            case 2:
                int i3 = EditSectionActivity.$r8$clinit;
                ActionMode actionMode = editSectionActivity.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
                editSectionActivity.actionMode = null;
                return;
            default:
                int i4 = EditSectionActivity.$r8$clinit;
                Object tag = view.getTag();
                tag.getClass();
                editSectionActivity.onOptionsItemSelected((MenuItem) tag);
                return;
        }
    }
}
