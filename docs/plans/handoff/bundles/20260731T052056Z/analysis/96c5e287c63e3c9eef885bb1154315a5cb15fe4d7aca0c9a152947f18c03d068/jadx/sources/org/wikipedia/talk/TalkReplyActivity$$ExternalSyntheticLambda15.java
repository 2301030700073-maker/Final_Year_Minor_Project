package org.wikipedia.talk;

import android.content.DialogInterface;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkReplyActivity$$ExternalSyntheticLambda15 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkReplyActivity f$0;

    public /* synthetic */ TalkReplyActivity$$ExternalSyntheticLambda15(TalkReplyActivity talkReplyActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = talkReplyActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        TalkReplyActivity talkReplyActivity = this.f$0;
        switch (i2) {
            case 0:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                talkReplyActivity.launchLogin$1(true);
                dialogInterface.dismiss();
                break;
            case 1:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                talkReplyActivity.sendPatrollerExperienceEvent$2("publish_exit", "");
                talkReplyActivity.finish();
                break;
            default:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                talkReplyActivity.sendPatrollerExperienceEvent$2("publish_exit_cancel", "");
                break;
        }
    }
}
