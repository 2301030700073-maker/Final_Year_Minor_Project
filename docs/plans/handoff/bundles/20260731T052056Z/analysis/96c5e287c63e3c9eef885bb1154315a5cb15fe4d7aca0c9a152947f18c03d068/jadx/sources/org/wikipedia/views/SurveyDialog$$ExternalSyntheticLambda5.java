package org.wikipedia.views;

import android.view.View;
import android.widget.RadioGroup;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import coil3.RealImageLoader$execute$result$1;
import java.util.List;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SurveyDialog$$ExternalSyntheticLambda5 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ AppCompatActivity f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda5(Object obj, Object obj2, AppCompatActivity appCompatActivity, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = appCompatActivity;
        this.f$3 = obj3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Integer num = null;
        Object obj = this.f$3;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ActivityTalkReplyBinding activityTalkReplyBinding = (ActivityTalkReplyBinding) obj3;
                HomeFragment$$ExternalSyntheticLambda1 homeFragment$$ExternalSyntheticLambda1 = (HomeFragment$$ExternalSyntheticLambda1) obj2;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj;
                int checkedRadioButtonId = ((RadioGroup) activityTalkReplyBinding.editKeyboardOverlayFormatting).getCheckedRadioButtonId();
                if (checkedRadioButtonId == R.id.optionVerySatisfied) {
                    num = 1;
                } else if (checkedRadioButtonId == R.id.optionSatisfied) {
                    num = 2;
                } else if (checkedRadioButtonId == R.id.optionNeutral) {
                    num = 3;
                } else if (checkedRadioButtonId == R.id.optionUnsatisfied) {
                    num = 4;
                } else if (checkedRadioButtonId == R.id.optionVeryUnsatisfied) {
                    num = 5;
                }
                homeFragment$$ExternalSyntheticLambda1.invoke(num, String.valueOf(((PlainPasteEditText) activityTalkReplyBinding.replySubjectText).getText()));
                ShareUtil.showMessage(this.f$2, R.string.survey_dialog_submitted_snackbar);
                AlertDialog alertDialog = (AlertDialog) ref$ObjectRef.element;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                    break;
                }
                break;
            case 1:
                ReadingListBehaviorsUtil.SnackbarCallback snackbarCallback = (ReadingListBehaviorsUtil.SnackbarCallback) obj;
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new RealImageLoader$execute$result$1((List) obj3, (ReadingList) obj2, this.f$2, snackbarCallback, null, 18), 2);
                break;
            default:
                ReadingListBehaviorsUtil.SnackbarCallback snackbarCallback2 = (ReadingListBehaviorsUtil.SnackbarCallback) obj;
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new LongPressMenu$show$1$1((List) obj3, (ReadingListPage) obj2, this.f$2, snackbarCallback2, null, 6), 2);
                break;
        }
    }
}
