package org.wikipedia.descriptions;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import org.wikipedia.R;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditLicenseView;
import org.wikipedia.util.ShareUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DescriptionEditFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback, DescriptionEditLicenseView.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DescriptionEditFragment f$0;

    public /* synthetic */ DescriptionEditFragment$$ExternalSyntheticLambda0(DescriptionEditFragment descriptionEditFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = descriptionEditFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        DescriptionEditFragment descriptionEditFragment = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 0:
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    OkHttpCall.AnonymousClass1 anonymousClass1 = descriptionEditFragment._binding;
                    anonymousClass1.getClass();
                    DescriptionEditView descriptionEditView = (DescriptionEditView) anonymousClass1.this$0;
                    OkHttpCall.AnonymousClass1 anonymousClass12 = descriptionEditFragment._binding;
                    anonymousClass12.getClass();
                    descriptionEditView.loadReviewContent(((DescriptionEditView) anonymousClass12.this$0).showingReviewContent());
                    ShareUtil.showMessage(R.string.login_success_toast, descriptionEditFragment);
                    break;
                }
                break;
            case 1:
                activityResult.getClass();
                DescriptionEditFragment.Callback callback = descriptionEditFragment.callback();
                if (callback != null) {
                    DescriptionEditActivity descriptionEditActivity = (DescriptionEditActivity) callback;
                    descriptionEditActivity.setResult(1);
                    descriptionEditActivity.finish();
                    break;
                }
                break;
            default:
                activityResult.getClass();
                Intent intent = activityResult.data;
                ArrayList<String> stringArrayListExtra = intent != null ? intent.getStringArrayListExtra("android.speech.extra.RESULTS") : null;
                if (activityResult.resultCode == -1 && stringArrayListExtra != null) {
                    String str = (String) CollectionsKt.first((List) stringArrayListExtra);
                    OkHttpCall.AnonymousClass1 anonymousClass13 = descriptionEditFragment._binding;
                    anonymousClass13.getClass();
                    ((DescriptionEditView) anonymousClass13.this$0).setDescription(str);
                    break;
                }
                break;
        }
    }
}
