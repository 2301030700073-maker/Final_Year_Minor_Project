package org.wikipedia.views;

import android.view.View;
import android.widget.ScrollView;
import androidx.appcompat.app.AppCompatActivity;
import org.wikipedia.databinding.ActivityTalkReplyBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SurveyDialog$$ExternalSyntheticLambda3 implements View.OnFocusChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTalkReplyBinding f$0;
    public final /* synthetic */ AppCompatActivity f$1;

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda3(int i, AppCompatActivity appCompatActivity, ActivityTalkReplyBinding activityTalkReplyBinding) {
        this.$r8$classId = i;
        this.f$0 = activityTalkReplyBinding;
        this.f$1 = appCompatActivity;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i = this.$r8$classId;
        final AppCompatActivity appCompatActivity = this.f$1;
        final ActivityTalkReplyBinding activityTalkReplyBinding = this.f$0;
        switch (i) {
            case 0:
                if (z) {
                    final int i2 = 0;
                    ((ScrollView) activityTalkReplyBinding.editKeyboardOverlay).postDelayed(new Runnable() { // from class: org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i3 = i2;
                            ActivityTalkReplyBinding activityTalkReplyBinding2 = activityTalkReplyBinding;
                            AppCompatActivity appCompatActivity2 = appCompatActivity;
                            switch (i3) {
                                case 0:
                                    if (!appCompatActivity2.isDestroyed()) {
                                        ((ScrollView) activityTalkReplyBinding2.editKeyboardOverlay).fullScroll(130);
                                        break;
                                    }
                                    break;
                                default:
                                    if (!appCompatActivity2.isDestroyed()) {
                                        ((ScrollView) activityTalkReplyBinding2.editKeyboardOverlay).fullScroll(130);
                                        break;
                                    }
                                    break;
                            }
                        }
                    }, 200L);
                    break;
                }
                break;
            default:
                if (z) {
                    final int i3 = 1;
                    ((ScrollView) activityTalkReplyBinding.editKeyboardOverlay).postDelayed(new Runnable() { // from class: org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i32 = i3;
                            ActivityTalkReplyBinding activityTalkReplyBinding2 = activityTalkReplyBinding;
                            AppCompatActivity appCompatActivity2 = appCompatActivity;
                            switch (i32) {
                                case 0:
                                    if (!appCompatActivity2.isDestroyed()) {
                                        ((ScrollView) activityTalkReplyBinding2.editKeyboardOverlay).fullScroll(130);
                                        break;
                                    }
                                    break;
                                default:
                                    if (!appCompatActivity2.isDestroyed()) {
                                        ((ScrollView) activityTalkReplyBinding2.editKeyboardOverlay).fullScroll(130);
                                        break;
                                    }
                                    break;
                            }
                        }
                    }, 200L);
                    break;
                }
                break;
        }
    }
}
