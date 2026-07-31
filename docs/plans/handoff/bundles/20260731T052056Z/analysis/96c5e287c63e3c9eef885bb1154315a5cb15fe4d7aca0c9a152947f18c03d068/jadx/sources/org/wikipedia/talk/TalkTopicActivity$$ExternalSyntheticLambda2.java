package org.wikipedia.talk;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.lifecycle.ViewModelKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.snackbar.Snackbar;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.R;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicActivity$$ExternalSyntheticLambda2 implements SwipeRefreshLayout.OnRefreshListener, LinkMovementMethodExt.UrlHandlerWithTextAndCoords, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkTopicActivity f$0;

    public /* synthetic */ TalkTopicActivity$$ExternalSyntheticLambda2(TalkTopicActivity talkTopicActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = talkTopicActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        TalkTopicActivity talkTopicActivity = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 2:
                int i2 = TalkTopicActivity.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    talkTopicActivity.loadTopics();
                    break;
                }
                break;
            case 3:
                int i3 = TalkTopicActivity.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    TalkTopicViewModel viewModel = talkTopicActivity.getViewModel();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1(viewModel, 2), null, new SyntaxHighlighter.AnonymousClass2(17, viewModel, (Continuation) null), 2);
                    ShareUtil.showMessage(talkTopicActivity, R.string.login_success_toast);
                    break;
                }
                break;
            default:
                int i4 = TalkTopicActivity.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    Intent intent = activityResult.data;
                    if (intent != null) {
                        talkTopicActivity.getViewModel().undoSubject = intent.getCharSequenceExtra("subject");
                        talkTopicActivity.getViewModel().undoBody = intent.getCharSequenceExtra("body");
                        talkTopicActivity.getViewModel().undoTopicId = intent.getStringExtra("topicId");
                        long longExtra = intent.getLongExtra("newRevisionId", -1L);
                        if (longExtra >= 0) {
                            String string = talkTopicActivity.getString(R.string.talk_response_submitted);
                            string.getClass();
                            int i5 = 0;
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(talkTopicActivity, string, 0, 12);
                            makeSnackbar$default.setAction(R.string.talk_snackbar_undo, new TalkTopicActivity$$ExternalSyntheticLambda11(i5, longExtra, talkTopicActivity));
                            makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(talkTopicActivity, i5));
                            makeSnackbar$default.show();
                        }
                    }
                    talkTopicActivity.loadTopics();
                    break;
                }
                break;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        int i = TalkTopicActivity.$r8$clinit;
        this.f$0.loadTopics();
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandlerWithTextAndCoords
    public void onUrlClick(int i, int i2, String str, String str2, String str3) {
        int i3 = TalkTopicActivity.$r8$clinit;
        TalkTopicActivity.TalkLinkHandler talkLinkHandler = this.f$0.linkHandler;
        if (talkLinkHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
            throw null;
        }
        talkLinkHandler.lastX = i;
        talkLinkHandler.lastY = i2;
        talkLinkHandler.onUrlClick(str, str2, str3);
    }
}
