package org.wikipedia.talk;

import android.content.Intent;
import android.view.View;
import androidx.activity.result.ActivityResultRegistry$register$2;
import okhttp3.Headers;
import org.wikipedia.Constants;
import org.wikipedia.notifications.NotificationActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicsActivity$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkTopicsActivity f$0;

    public /* synthetic */ TalkTopicsActivity$$ExternalSyntheticLambda0(TalkTopicsActivity talkTopicsActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = talkTopicsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        TalkTopicsActivity talkTopicsActivity = this.f$0;
        switch (i) {
            case 0:
                int i2 = TalkTopicsActivity.$r8$clinit;
                talkTopicsActivity.finish();
                break;
            case 1:
                int i3 = TalkTopicsActivity.$r8$clinit;
                talkTopicsActivity.resetViews();
                talkTopicsActivity.getViewModel().loadTopics();
                break;
            case 2:
                TalkTopicsActivity talkTopicsActivity2 = this.f$0;
                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = talkTopicsActivity2.requestNewTopic;
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                activityResultRegistry$register$2.launch(UserTalkPopupHelper.newIntent$default(talkTopicsActivity2, talkTopicsActivity2.getViewModel().pageTitle, null, null, Constants.InvokeSource.TALK_TOPICS_ACTIVITY, null, null, null, 0L, 0L, false, false, 8160), null);
                break;
            case 3:
                int i4 = TalkTopicsActivity.$r8$clinit;
                if (Headers.Companion.isLoggedIn()) {
                    talkTopicsActivity.startActivity(new Intent(talkTopicsActivity, (Class<?>) NotificationActivity.class));
                    break;
                }
                break;
            default:
                if (talkTopicsActivity.actionMode == null) {
                    talkTopicsActivity.actionMode = talkTopicsActivity.startSupportActionMode(talkTopicsActivity.searchActionModeCallback);
                    break;
                }
                break;
        }
    }
}
