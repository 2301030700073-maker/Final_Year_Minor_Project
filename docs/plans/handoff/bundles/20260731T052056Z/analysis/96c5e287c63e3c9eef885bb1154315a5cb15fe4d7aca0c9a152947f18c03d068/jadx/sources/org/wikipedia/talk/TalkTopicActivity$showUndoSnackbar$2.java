package org.wikipedia.talk;

import android.app.Activity;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import okhttp3.Headers;
import org.wikipedia.page.PageActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicActivity$showUndoSnackbar$2 extends Snackbar.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Activity this$0;

    public /* synthetic */ TalkTopicActivity$showUndoSnackbar$2(Activity activity, int i) {
        this.$r8$classId = i;
        this.this$0 = activity;
    }

    @Override // com.google.android.material.snackbar.Snackbar.Callback
    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
        int i = this.$r8$classId;
        Activity activity = this.this$0;
        switch (i) {
            case 0:
                TalkTopicActivity talkTopicActivity = (TalkTopicActivity) activity;
                if (!talkTopicActivity.isDestroyed()) {
                    Headers.Companion.maybeShowTempAccountWelcome(talkTopicActivity);
                    break;
                }
                break;
            case 1:
                PageActivity pageActivity = (PageActivity) activity;
                if (!pageActivity.isDestroyed()) {
                    Headers.Companion.maybeShowTempAccountWelcome(pageActivity);
                    break;
                }
                break;
            case 2:
                if (!activity.isDestroyed()) {
                    Headers.Companion.maybeShowTempAccountWelcome(activity);
                    break;
                }
                break;
            default:
                TalkTopicsActivity talkTopicsActivity = (TalkTopicsActivity) activity;
                if (!talkTopicsActivity.isDestroyed()) {
                    Headers.Companion.maybeShowTempAccountWelcome(talkTopicsActivity);
                    break;
                }
                break;
        }
    }
}
