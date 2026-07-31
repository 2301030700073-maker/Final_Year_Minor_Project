package org.wikipedia.talk;

import android.content.Intent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.Constants;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicHolder extends RecyclerView.ViewHolder implements View.OnClickListener, SwipeableItemTouchHelperCallback.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityLoginBinding binding;
    public final AppCompatActivity context;
    public final Constants.InvokeSource invokeSource;
    public ThreadItem threadItem;
    public final TalkTopicsViewModel viewModel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicHolder(ActivityLoginBinding activityLoginBinding, AppCompatActivity appCompatActivity, TalkTopicsViewModel talkTopicsViewModel, Constants.InvokeSource invokeSource) {
        super((FrameLayout) activityLoginBinding.captchaContainer);
        talkTopicsViewModel.getClass();
        invokeSource.getClass();
        this.binding = activityLoginBinding;
        this.context = appCompatActivity;
        this.viewModel = talkTopicsViewModel;
        this.invokeSource = invokeSource;
    }

    @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
    public final boolean isSwipeable() {
        int i = TalkTopicActivity.$r8$clinit;
        if (this.threadItem != null) {
            return !UriUtil.isHeaderTemplate(r1);
        }
        Intrinsics.throwUninitializedPropertyAccessException("threadItem");
        throw null;
    }

    public final void markAsSeen(boolean z) {
        ThreadItem threadItem = this.threadItem;
        if (threadItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
            throw null;
        }
        WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0 = new WikiGames$$ExternalSyntheticLambda0(29, this);
        TalkTopicsViewModel talkTopicsViewModel = this.viewModel;
        talkTopicsViewModel.getClass();
        String threadSha$1 = TalkTopicsViewModel.threadSha$1(threadItem);
        if (threadSha$1 != null) {
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(talkTopicsViewModel), talkTopicsViewModel.actionHandler, null, new TalkTopicsViewModel$markAsSeen$1$1(talkTopicsViewModel, threadItem, z, threadSha$1, wikiGames$$ExternalSyntheticLambda0, null), 2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        markAsSeen(true);
        int i = TalkTopicActivity.$r8$clinit;
        TalkTopicsViewModel talkTopicsViewModel = this.viewModel;
        PageTitle pageTitle = talkTopicsViewModel.pageTitle;
        ThreadItem threadItem = this.threadItem;
        if (threadItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
            throw null;
        }
        String str = threadItem.name;
        String str2 = threadItem.id;
        String str3 = talkTopicsViewModel.currentSearchQuery;
        pageTitle.getClass();
        str.getClass();
        str2.getClass();
        Constants.InvokeSource invokeSource = this.invokeSource;
        invokeSource.getClass();
        AppCompatActivity appCompatActivity = this.context;
        Intent putExtra = new Intent(appCompatActivity, (Class<?>) TalkTopicActivity.class).putExtra("title", pageTitle).putExtra("topicName", str).putExtra("topicId", str2).putExtra("replyId", (String) null).putExtra("searchQuery", str3).putExtra("invokeSource", invokeSource);
        putExtra.getClass();
        appCompatActivity.startActivity(putExtra);
    }

    @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
    public final void onSwipe() {
        markAsSeen(false);
    }
}
