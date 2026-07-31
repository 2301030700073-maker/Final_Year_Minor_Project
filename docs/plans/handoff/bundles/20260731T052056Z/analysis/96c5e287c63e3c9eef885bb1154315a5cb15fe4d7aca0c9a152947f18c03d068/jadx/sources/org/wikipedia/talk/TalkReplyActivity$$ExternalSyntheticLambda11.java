package org.wikipedia.talk;

import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.views.UserMentionEditText;
import org.wikipedia.views.UserMentionInputView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkReplyActivity$$ExternalSyntheticLambda11 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkReplyActivity f$0;

    public /* synthetic */ TalkReplyActivity$$ExternalSyntheticLambda11(TalkReplyActivity talkReplyActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = talkReplyActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        TalkReplyActivity talkReplyActivity = this.f$0;
        switch (i) {
            case 0:
                ActivityTalkReplyBinding activityTalkReplyBinding = talkReplyActivity.binding;
                if (activityTalkReplyBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                UserMentionEditText editText = ((UserMentionInputView) activityTalkReplyBinding.replyInputView).getEditText();
                editText.getClass();
                Object systemService = editText.getContext().getSystemService("input_method");
                systemService.getClass();
                ((InputMethodManager) systemService).showSoftInput(editText, 1);
                return;
            case 1:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                if (talkReplyActivity.isDestroyed() || talkReplyActivity.userMentionScrolled) {
                    return;
                }
                ActivityTalkReplyBinding activityTalkReplyBinding2 = talkReplyActivity.binding;
                if (activityTalkReplyBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((ScrollView) activityTalkReplyBinding2.talkScrollContainer).smoothScrollTo(0, ((FrameLayout) activityTalkReplyBinding2.rootView).getHeight() * 4);
                talkReplyActivity.userMentionScrolled = true;
                return;
            case 2:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                if (talkReplyActivity.isDestroyed()) {
                    return;
                }
                ActivityTalkReplyBinding activityTalkReplyBinding3 = talkReplyActivity.binding;
                if (activityTalkReplyBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((UserMentionInputView) activityTalkReplyBinding3.replyInputView).getEditText().requestFocus();
                ActivityTalkReplyBinding activityTalkReplyBinding4 = talkReplyActivity.binding;
                if (activityTalkReplyBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                UserMentionEditText editText2 = ((UserMentionInputView) activityTalkReplyBinding4.replyInputView).getEditText();
                editText2.getClass();
                Object systemService2 = editText2.getContext().getSystemService("input_method");
                systemService2.getClass();
                ((InputMethodManager) systemService2).showSoftInput(editText2, 1);
                ActivityTalkReplyBinding activityTalkReplyBinding5 = talkReplyActivity.binding;
                if (activityTalkReplyBinding5 != null) {
                    ((ScrollView) activityTalkReplyBinding5.talkScrollContainer).postDelayed(new TalkReplyActivity$$ExternalSyntheticLambda11(talkReplyActivity, 3), 500L);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            default:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                if (talkReplyActivity.isDestroyed()) {
                    return;
                }
                ActivityTalkReplyBinding activityTalkReplyBinding6 = talkReplyActivity.binding;
                if (activityTalkReplyBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ScrollView scrollView = (ScrollView) activityTalkReplyBinding6.talkScrollContainer;
                scrollView.smoothScrollTo(0, scrollView.getHeight() * 4);
                return;
        }
    }
}
