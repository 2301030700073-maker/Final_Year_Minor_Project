package org.wikipedia.talk;

import android.content.Intent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.node.NodeChain;
import androidx.lifecycle.ViewModelKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 implements LinkMovementMethodExt.UrlHandler, SwipeRefreshLayout.OnRefreshListener, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkTopicsActivity f$0;

    public /* synthetic */ TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(TalkTopicsActivity talkTopicsActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = talkTopicsActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent intent;
        CharSequence charSequenceExtra;
        CharSequence charSequenceExtra2;
        int i = this.$r8$classId;
        TalkTopicsActivity talkTopicsActivity = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 3:
                int i2 = TalkTopicsActivity.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == -1 && (intent = activityResult.data) != null && intent.hasExtra("activity_result_lang_position_data")) {
                    int intExtra = intent.getIntExtra("activity_result_lang_position_data", 0);
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    if (intExtra < ((ArrayList) ViewSizeResolver$CC.m785m()).size()) {
                        String valueFor = talkTopicsActivity.getViewModel().pageTitle.namespace() == Namespace.USER ? UserAliasData.valueFor((String) ((ArrayList) ViewSizeResolver$CC.m785m()).get(intExtra)) : talkTopicsActivity.getViewModel().pageTitle.namespace() == Namespace.USER_TALK ? UserTalkAliasData.valueFor((String) ((ArrayList) ViewSizeResolver$CC.m785m()).get(intExtra)) : talkTopicsActivity.getViewModel().pageTitle.getNamespace();
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        String substringAfter$default = StringsKt.substringAfter$default(talkTopicsActivity.getViewModel().pageTitle.getPrefixedText(), ':');
                        WikiSite.Companion companion = WikiSite.Companion;
                        String str = (String) ((ArrayList) ViewSizeResolver$CC.m785m()).get(intExtra);
                        companion.getClass();
                        PageTitle pageTitle = new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(str), substringAfter$default, null, null, null, null, null);
                        talkTopicsActivity.resetViews();
                        TalkTopicsViewModel viewModel = talkTopicsActivity.getViewModel();
                        viewModel.pageTitle = PageTitle.copy$default(pageTitle);
                        viewModel.loadTopics();
                        return;
                    }
                    return;
                }
                return;
            case 4:
                int i3 = TalkTopicsActivity.$r8$clinit;
                activityResult.getClass();
                Intent intent2 = activityResult.data;
                int i4 = activityResult.resultCode;
                final TalkTopicsActivity talkTopicsActivity2 = this.f$0;
                if (i4 != 1) {
                    talkTopicsActivity2.getViewModel().loadTopics();
                    return;
                }
                final long longExtra = intent2 != null ? intent2.getLongExtra("newRevisionId", 0L) : 0L;
                final CharSequence charSequence = (intent2 == null || (charSequenceExtra2 = intent2.getCharSequenceExtra("subject")) == null) ? "" : charSequenceExtra2;
                final CharSequence charSequence2 = (intent2 == null || (charSequenceExtra = intent2.getCharSequenceExtra("body")) == null) ? "" : charSequenceExtra;
                if (longExtra > 0) {
                    String string = talkTopicsActivity2.getString(R.string.talk_new_topic_submitted);
                    string.getClass();
                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(talkTopicsActivity2, string, 0, 12);
                    NodeChain nodeChain = talkTopicsActivity2.binding;
                    if (nodeChain == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    makeSnackbar$default.setAnchorView((ExtendedFloatingActionButton) nodeChain.tail);
                    makeSnackbar$default.setAction(R.string.talk_snackbar_undo, new View.OnClickListener() { // from class: org.wikipedia.talk.TalkTopicsActivity$$ExternalSyntheticLambda11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            TalkTopicsActivity talkTopicsActivity3 = TalkTopicsActivity.this;
                            NodeChain nodeChain2 = talkTopicsActivity3.binding;
                            if (nodeChain2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                throw null;
                            }
                            ((ExtendedFloatingActionButton) nodeChain2.tail).setEnabled(false);
                            NodeChain nodeChain3 = talkTopicsActivity3.binding;
                            if (nodeChain3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                throw null;
                            }
                            ((ExtendedFloatingActionButton) nodeChain3.tail).setAlpha(0.5f);
                            NodeChain nodeChain4 = talkTopicsActivity3.binding;
                            if (nodeChain4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                throw null;
                            }
                            ((ProgressBar) nodeChain4.head).setVisibility(0);
                            NodeChain nodeChain5 = talkTopicsActivity3.binding;
                            if (nodeChain5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                throw null;
                            }
                            ((FrameLayout) nodeChain5.layoutNode).setVisibility(0);
                            TalkTopicsViewModel viewModel2 = talkTopicsActivity3.getViewModel();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), viewModel2.actionHandler, null, new TalkTopicsViewModel$undoSave$1(viewModel2, longExtra, charSequence, charSequence2, null, 0), 2);
                        }
                    });
                    makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(talkTopicsActivity2, 3));
                    makeSnackbar$default.show();
                    talkTopicsActivity2.getViewModel().loadTopics();
                    return;
                }
                return;
            case 5:
                int i5 = TalkTopicsActivity.$r8$clinit;
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    talkTopicsActivity.getViewModel().loadTopics();
                    return;
                }
                return;
            default:
                int i6 = TalkTopicsActivity.$r8$clinit;
                activityResult.getClass();
                talkTopicsActivity.finish();
                return;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        TalkTopicsActivity talkTopicsActivity = this.f$0;
        NodeChain nodeChain = talkTopicsActivity.binding;
        if (nodeChain == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((WikiSwipeRefreshLayout) nodeChain.buffer).setRefreshing(false);
        talkTopicsActivity.resetViews();
        talkTopicsActivity.getViewModel().loadTopics();
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = TalkTopicsActivity.$r8$clinit;
        this.f$0.goToPage();
    }

    public void sortByClicked(int i) {
        int i2 = TalkTopicsActivity.$r8$clinit;
        TalkTopicsActivity talkTopicsActivity = this.f$0;
        TalkTopicsViewModel viewModel = talkTopicsActivity.getViewModel();
        viewModel.currentSortMode = i;
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setInt(R.string.preference_key_talk_topics_sort_mode, i);
        viewModel.sortAndFilterThreadItems();
        talkTopicsActivity.talkTopicItemAdapter.notifyDataSetChanged();
    }
}
