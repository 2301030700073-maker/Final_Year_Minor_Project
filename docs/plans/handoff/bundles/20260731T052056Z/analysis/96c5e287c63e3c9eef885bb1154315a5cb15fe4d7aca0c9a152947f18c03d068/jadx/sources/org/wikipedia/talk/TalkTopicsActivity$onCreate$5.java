package org.wikipedia.talk;

import android.content.Intent;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.view.ActionMode;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.ui.node.NodeChain;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.events.ChangeTextSizeEvent;
import org.wikipedia.events.WebViewInvalidateEvent;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.talk.TalkTopicsViewModel;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment$onViewCreated$2;
import org.wikipedia.theme.ThemeChooserDialog;
import org.wikipedia.theme.ThemeFittingRoomFragment;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda3;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicsActivity$onCreate$5 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ TalkTopicsActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsActivity$onCreate$5(TalkTopicsActivity talkTopicsActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = talkTopicsActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        TalkTopicsActivity talkTopicsActivity = this.this$0;
        switch (i) {
            case 0:
                return new TalkTopicsActivity$onCreate$5(talkTopicsActivity, continuation, 0);
            case 1:
                return new TalkTopicsActivity$onCreate$5(talkTopicsActivity, continuation, 1);
            default:
                return new TalkTopicsActivity$onCreate$5(talkTopicsActivity, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((TalkTopicsActivity$onCreate$5) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final int i2 = 0;
        final TalkTopicsActivity talkTopicsActivity = this.this$0;
        final int i3 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(i2, talkTopicsActivity, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(talkTopicsActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    int i6 = TalkTopicsActivity.$r8$clinit;
                    StateFlowImpl stateFlowImpl = talkTopicsActivity.getViewModel().uiState;
                    FlowCollector flowCollector = new FlowCollector() { // from class: org.wikipedia.talk.TalkTopicsActivity$onCreate$5$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            ThreadItem threadItem;
                            Object obj3;
                            int i7 = i2;
                            Unit unit = Unit.INSTANCE;
                            switch (i7) {
                                case 0:
                                    TalkTopicsViewModel.UiState uiState = (TalkTopicsViewModel.UiState) obj2;
                                    boolean z = uiState instanceof TalkTopicsViewModel.UiState.UpdateNamespace;
                                    TalkTopicsActivity talkTopicsActivity2 = talkTopicsActivity;
                                    if (z) {
                                        PageTitle pageTitle = ((TalkTopicsViewModel.UiState.UpdateNamespace) uiState).pageTitle;
                                        int i8 = TalkTopicsActivity.$r8$clinit;
                                        talkTopicsActivity2.setToolbarTitle(pageTitle);
                                    } else if (uiState instanceof TalkTopicsViewModel.UiState.LoadTopic) {
                                        TalkTopicsViewModel.UiState.LoadTopic loadTopic = (TalkTopicsViewModel.UiState.LoadTopic) uiState;
                                        PageTitle pageTitle2 = loadTopic.pageTitle;
                                        List<ThreadItem> list = loadTopic.threadItems;
                                        int i9 = TalkTopicsActivity.$r8$clinit;
                                        TalkTopicsActivity.HeaderItemAdapter headerItemAdapter = talkTopicsActivity2.talkTopicItemAdapter;
                                        NodeChain nodeChain = talkTopicsActivity2.binding;
                                        if (nodeChain == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        if (((RecyclerView) nodeChain.current).getAdapter() == null) {
                                            NodeChain nodeChain2 = talkTopicsActivity2.binding;
                                            if (nodeChain2 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            RecyclerView recyclerView = (RecyclerView) nodeChain2.current;
                                            ConcatAdapter concatAdapter = talkTopicsActivity2.concatAdapter;
                                            concatAdapter.addAdapter(0, talkTopicsActivity2.headerAdapter);
                                            concatAdapter.addAdapter(1, headerItemAdapter);
                                            recyclerView.setAdapter(concatAdapter);
                                        }
                                        if (talkTopicsActivity2.getIntent().getBooleanExtra("goToTopic", false)) {
                                            talkTopicsActivity2.getIntent().putExtra("goToTopic", false);
                                            String str = pageTitle2.fragment;
                                            if (str == null || str.length() == 0) {
                                                threadItem = null;
                                                obj3 = null;
                                            } else {
                                                threadItem = null;
                                                obj3 = null;
                                                for (ThreadItem threadItem2 : list) {
                                                    if (threadItem == null) {
                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                        if (!StringUtil.addUnderscores(StringUtil.fromHtml(threadItem2.html).toString()).equals(pageTitle2.fragment) && !Intrinsics.areEqual(threadItem2.name, pageTitle2.fragment)) {
                                                            SequenceBuilderIterator it = UnsignedKt.iterator((Function2) threadItem2.getAllReplies().reader);
                                                            while (true) {
                                                                if (it.hasNext()) {
                                                                    Object next = it.next();
                                                                    if (Intrinsics.areEqual(((ThreadItem) next).id, pageTitle2.fragment)) {
                                                                        obj3 = next;
                                                                    }
                                                                } else {
                                                                    obj3 = null;
                                                                }
                                                            }
                                                            if (obj3 == null) {
                                                            }
                                                        }
                                                        threadItem = threadItem2;
                                                    }
                                                }
                                            }
                                            if (threadItem != null) {
                                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = talkTopicsActivity2.requestGoToTopic;
                                                String str2 = threadItem.name;
                                                String str3 = threadItem.id;
                                                ThreadItem threadItem3 = (ThreadItem) obj3;
                                                String str4 = threadItem3 != null ? threadItem3.id : null;
                                                String str5 = talkTopicsActivity2.getViewModel().currentSearchQuery;
                                                Constants.InvokeSource invokeSource = talkTopicsActivity2.invokeSource;
                                                if (invokeSource == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                    throw null;
                                                }
                                                str2.getClass();
                                                str3.getClass();
                                                Intent putExtra = new Intent(talkTopicsActivity2, (Class<?>) TalkTopicActivity.class).putExtra("title", pageTitle2).putExtra("topicName", str2).putExtra("topicId", str3).putExtra("replyId", str4).putExtra("searchQuery", str5).putExtra("invokeSource", invokeSource);
                                                putExtra.getClass();
                                                activityResultRegistry$register$2.launch(putExtra, null);
                                                talkTopicsActivity2.overridePendingTransition(0, 0);
                                            }
                                        }
                                        talkTopicsActivity2.goToTopic = false;
                                        if (list.isEmpty()) {
                                            talkTopicsActivity2.updateOnEmpty();
                                        } else {
                                            NodeChain nodeChain3 = talkTopicsActivity2.binding;
                                            if (nodeChain3 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) nodeChain3.outerCoordinator).setVisibility(8);
                                            NodeChain nodeChain4 = talkTopicsActivity2.binding;
                                            if (nodeChain4 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((FrameLayout) nodeChain4.layoutNode).setVisibility(8);
                                            ActionMode actionMode = talkTopicsActivity2.actionMode;
                                            NodeChain nodeChain5 = talkTopicsActivity2.binding;
                                            if (actionMode != null) {
                                                if (nodeChain5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain5.tail).performMotion(1);
                                            } else {
                                                if (nodeChain5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain5.tail).performMotion(0);
                                                NodeChain nodeChain6 = talkTopicsActivity2.binding;
                                                if (nodeChain6 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain6.tail).setEnabled(true);
                                                NodeChain nodeChain7 = talkTopicsActivity2.binding;
                                                if (nodeChain7 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain7.tail).setAlpha(1.0f);
                                            }
                                            headerItemAdapter.notifyDataSetChanged();
                                        }
                                        NodeChain nodeChain8 = talkTopicsActivity2.binding;
                                        if (nodeChain8 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((ProgressBar) nodeChain8.head).setVisibility(8);
                                        talkTopicsActivity2.invalidateOptionsMenu();
                                        talkTopicsActivity2.setToolbarTitle(pageTitle2);
                                    } else if (uiState instanceof TalkTopicsViewModel.UiState.LoadError) {
                                        Throwable th = ((TalkTopicsViewModel.UiState.LoadError) uiState).throwable;
                                        int i10 = TalkTopicsActivity.$r8$clinit;
                                        NodeChain nodeChain9 = talkTopicsActivity2.binding;
                                        if (nodeChain9 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((ProgressBar) nodeChain9.head).setVisibility(8);
                                        NodeChain nodeChain10 = talkTopicsActivity2.binding;
                                        if (nodeChain10 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        RecyclerView.Adapter adapter = ((RecyclerView) nodeChain10.current).getAdapter();
                                        if (adapter != null) {
                                            adapter.notifyDataSetChanged();
                                        }
                                        if ((th instanceof HttpStatusException) && ((HttpStatusException) th).code == 404) {
                                            talkTopicsActivity2.updateOnEmpty();
                                            talkTopicsActivity2.invalidateOptionsMenu();
                                        } else {
                                            NodeChain nodeChain11 = talkTopicsActivity2.binding;
                                            if (nodeChain11 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((ExtendedFloatingActionButton) nodeChain11.tail).performMotion(1);
                                            NodeChain nodeChain12 = talkTopicsActivity2.binding;
                                            if (nodeChain12 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((FrameLayout) nodeChain12.layoutNode).setVisibility(0);
                                            NodeChain nodeChain13 = talkTopicsActivity2.binding;
                                            if (nodeChain13 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) nodeChain13.outerCoordinator).setVisibility(0);
                                            NodeChain nodeChain14 = talkTopicsActivity2.binding;
                                            if (nodeChain14 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) nodeChain14.outerCoordinator).setError(th, null);
                                        }
                                    }
                                    return unit;
                                default:
                                    TalkTopicsViewModel.ActionState actionState = (TalkTopicsViewModel.ActionState) obj2;
                                    boolean z2 = actionState instanceof TalkTopicsViewModel.ActionState.UndoEdit;
                                    TalkTopicsActivity talkTopicsActivity3 = talkTopicsActivity;
                                    if (z2) {
                                        TalkTopicsViewModel.ActionState.UndoEdit undoEdit = (TalkTopicsViewModel.ActionState.UndoEdit) actionState;
                                        CharSequence charSequence = undoEdit.undoneSubject;
                                        CharSequence charSequence2 = undoEdit.undoneBody;
                                        int i11 = TalkTopicsActivity.$r8$clinit;
                                        ActivityResultRegistry$register$2 activityResultRegistry$register$22 = talkTopicsActivity3.requestNewTopic;
                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                        activityResultRegistry$register$22.launch(UserTalkPopupHelper.newIntent$default(talkTopicsActivity3, talkTopicsActivity3.getViewModel().pageTitle, null, null, Constants.InvokeSource.TALK_TOPICS_ACTIVITY, charSequence, charSequence2, null, 0L, 0L, false, false, 8064), null);
                                    } else if (actionState instanceof TalkTopicsViewModel.ActionState.DoWatch) {
                                        String str6 = ((TalkTopicsViewModel.ActionState.DoWatch) actionState).message;
                                        int i12 = TalkTopicsActivity.$r8$clinit;
                                        FragmentManagerImpl supportFragmentManager = talkTopicsActivity3.getSupportFragmentManager();
                                        PageTitle pageTitle3 = talkTopicsActivity3.getViewModel().pageTitle;
                                        boolean z3 = talkTopicsActivity3.getViewModel().isWatched;
                                        pageTitle3.getClass();
                                        str6.getClass();
                                        if (z3) {
                                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(talkTopicsActivity3, str6, 0, 12);
                                            makeSnackbar$default.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new PageItemView$$ExternalSyntheticLambda3(2, supportFragmentManager, pageTitle3));
                                            makeSnackbar$default.show();
                                        } else {
                                            ShareUtil.showMessage(talkTopicsActivity3, str6, 0);
                                        }
                                        talkTopicsActivity3.invalidateOptionsMenu();
                                    } else if (actionState instanceof TalkTopicsViewModel.ActionState.OnError) {
                                        ShareUtil.showError$default(talkTopicsActivity3, ((TalkTopicsViewModel.ActionState.OnError) actionState).throwable);
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (stateFlowImpl.collect(flowCollector, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    int i8 = TalkTopicsActivity.$r8$clinit;
                    StateFlowImpl stateFlowImpl2 = talkTopicsActivity.getViewModel().actionState;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: org.wikipedia.talk.TalkTopicsActivity$onCreate$5$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            ThreadItem threadItem;
                            Object obj3;
                            int i72 = i3;
                            Unit unit = Unit.INSTANCE;
                            switch (i72) {
                                case 0:
                                    TalkTopicsViewModel.UiState uiState = (TalkTopicsViewModel.UiState) obj2;
                                    boolean z = uiState instanceof TalkTopicsViewModel.UiState.UpdateNamespace;
                                    TalkTopicsActivity talkTopicsActivity2 = talkTopicsActivity;
                                    if (z) {
                                        PageTitle pageTitle = ((TalkTopicsViewModel.UiState.UpdateNamespace) uiState).pageTitle;
                                        int i82 = TalkTopicsActivity.$r8$clinit;
                                        talkTopicsActivity2.setToolbarTitle(pageTitle);
                                    } else if (uiState instanceof TalkTopicsViewModel.UiState.LoadTopic) {
                                        TalkTopicsViewModel.UiState.LoadTopic loadTopic = (TalkTopicsViewModel.UiState.LoadTopic) uiState;
                                        PageTitle pageTitle2 = loadTopic.pageTitle;
                                        List<ThreadItem> list = loadTopic.threadItems;
                                        int i9 = TalkTopicsActivity.$r8$clinit;
                                        TalkTopicsActivity.HeaderItemAdapter headerItemAdapter = talkTopicsActivity2.talkTopicItemAdapter;
                                        NodeChain nodeChain = talkTopicsActivity2.binding;
                                        if (nodeChain == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        if (((RecyclerView) nodeChain.current).getAdapter() == null) {
                                            NodeChain nodeChain2 = talkTopicsActivity2.binding;
                                            if (nodeChain2 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            RecyclerView recyclerView = (RecyclerView) nodeChain2.current;
                                            ConcatAdapter concatAdapter = talkTopicsActivity2.concatAdapter;
                                            concatAdapter.addAdapter(0, talkTopicsActivity2.headerAdapter);
                                            concatAdapter.addAdapter(1, headerItemAdapter);
                                            recyclerView.setAdapter(concatAdapter);
                                        }
                                        if (talkTopicsActivity2.getIntent().getBooleanExtra("goToTopic", false)) {
                                            talkTopicsActivity2.getIntent().putExtra("goToTopic", false);
                                            String str = pageTitle2.fragment;
                                            if (str == null || str.length() == 0) {
                                                threadItem = null;
                                                obj3 = null;
                                            } else {
                                                threadItem = null;
                                                obj3 = null;
                                                for (ThreadItem threadItem2 : list) {
                                                    if (threadItem == null) {
                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                        if (!StringUtil.addUnderscores(StringUtil.fromHtml(threadItem2.html).toString()).equals(pageTitle2.fragment) && !Intrinsics.areEqual(threadItem2.name, pageTitle2.fragment)) {
                                                            SequenceBuilderIterator it = UnsignedKt.iterator((Function2) threadItem2.getAllReplies().reader);
                                                            while (true) {
                                                                if (it.hasNext()) {
                                                                    Object next = it.next();
                                                                    if (Intrinsics.areEqual(((ThreadItem) next).id, pageTitle2.fragment)) {
                                                                        obj3 = next;
                                                                    }
                                                                } else {
                                                                    obj3 = null;
                                                                }
                                                            }
                                                            if (obj3 == null) {
                                                            }
                                                        }
                                                        threadItem = threadItem2;
                                                    }
                                                }
                                            }
                                            if (threadItem != null) {
                                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = talkTopicsActivity2.requestGoToTopic;
                                                String str2 = threadItem.name;
                                                String str3 = threadItem.id;
                                                ThreadItem threadItem3 = (ThreadItem) obj3;
                                                String str4 = threadItem3 != null ? threadItem3.id : null;
                                                String str5 = talkTopicsActivity2.getViewModel().currentSearchQuery;
                                                Constants.InvokeSource invokeSource = talkTopicsActivity2.invokeSource;
                                                if (invokeSource == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                    throw null;
                                                }
                                                str2.getClass();
                                                str3.getClass();
                                                Intent putExtra = new Intent(talkTopicsActivity2, (Class<?>) TalkTopicActivity.class).putExtra("title", pageTitle2).putExtra("topicName", str2).putExtra("topicId", str3).putExtra("replyId", str4).putExtra("searchQuery", str5).putExtra("invokeSource", invokeSource);
                                                putExtra.getClass();
                                                activityResultRegistry$register$2.launch(putExtra, null);
                                                talkTopicsActivity2.overridePendingTransition(0, 0);
                                            }
                                        }
                                        talkTopicsActivity2.goToTopic = false;
                                        if (list.isEmpty()) {
                                            talkTopicsActivity2.updateOnEmpty();
                                        } else {
                                            NodeChain nodeChain3 = talkTopicsActivity2.binding;
                                            if (nodeChain3 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) nodeChain3.outerCoordinator).setVisibility(8);
                                            NodeChain nodeChain4 = talkTopicsActivity2.binding;
                                            if (nodeChain4 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((FrameLayout) nodeChain4.layoutNode).setVisibility(8);
                                            ActionMode actionMode = talkTopicsActivity2.actionMode;
                                            NodeChain nodeChain5 = talkTopicsActivity2.binding;
                                            if (actionMode != null) {
                                                if (nodeChain5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain5.tail).performMotion(1);
                                            } else {
                                                if (nodeChain5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain5.tail).performMotion(0);
                                                NodeChain nodeChain6 = talkTopicsActivity2.binding;
                                                if (nodeChain6 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain6.tail).setEnabled(true);
                                                NodeChain nodeChain7 = talkTopicsActivity2.binding;
                                                if (nodeChain7 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain7.tail).setAlpha(1.0f);
                                            }
                                            headerItemAdapter.notifyDataSetChanged();
                                        }
                                        NodeChain nodeChain8 = talkTopicsActivity2.binding;
                                        if (nodeChain8 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((ProgressBar) nodeChain8.head).setVisibility(8);
                                        talkTopicsActivity2.invalidateOptionsMenu();
                                        talkTopicsActivity2.setToolbarTitle(pageTitle2);
                                    } else if (uiState instanceof TalkTopicsViewModel.UiState.LoadError) {
                                        Throwable th = ((TalkTopicsViewModel.UiState.LoadError) uiState).throwable;
                                        int i10 = TalkTopicsActivity.$r8$clinit;
                                        NodeChain nodeChain9 = talkTopicsActivity2.binding;
                                        if (nodeChain9 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((ProgressBar) nodeChain9.head).setVisibility(8);
                                        NodeChain nodeChain10 = talkTopicsActivity2.binding;
                                        if (nodeChain10 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        RecyclerView.Adapter adapter = ((RecyclerView) nodeChain10.current).getAdapter();
                                        if (adapter != null) {
                                            adapter.notifyDataSetChanged();
                                        }
                                        if ((th instanceof HttpStatusException) && ((HttpStatusException) th).code == 404) {
                                            talkTopicsActivity2.updateOnEmpty();
                                            talkTopicsActivity2.invalidateOptionsMenu();
                                        } else {
                                            NodeChain nodeChain11 = talkTopicsActivity2.binding;
                                            if (nodeChain11 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((ExtendedFloatingActionButton) nodeChain11.tail).performMotion(1);
                                            NodeChain nodeChain12 = talkTopicsActivity2.binding;
                                            if (nodeChain12 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((FrameLayout) nodeChain12.layoutNode).setVisibility(0);
                                            NodeChain nodeChain13 = talkTopicsActivity2.binding;
                                            if (nodeChain13 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) nodeChain13.outerCoordinator).setVisibility(0);
                                            NodeChain nodeChain14 = talkTopicsActivity2.binding;
                                            if (nodeChain14 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) nodeChain14.outerCoordinator).setError(th, null);
                                        }
                                    }
                                    return unit;
                                default:
                                    TalkTopicsViewModel.ActionState actionState = (TalkTopicsViewModel.ActionState) obj2;
                                    boolean z2 = actionState instanceof TalkTopicsViewModel.ActionState.UndoEdit;
                                    TalkTopicsActivity talkTopicsActivity3 = talkTopicsActivity;
                                    if (z2) {
                                        TalkTopicsViewModel.ActionState.UndoEdit undoEdit = (TalkTopicsViewModel.ActionState.UndoEdit) actionState;
                                        CharSequence charSequence = undoEdit.undoneSubject;
                                        CharSequence charSequence2 = undoEdit.undoneBody;
                                        int i11 = TalkTopicsActivity.$r8$clinit;
                                        ActivityResultRegistry$register$2 activityResultRegistry$register$22 = talkTopicsActivity3.requestNewTopic;
                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                        activityResultRegistry$register$22.launch(UserTalkPopupHelper.newIntent$default(talkTopicsActivity3, talkTopicsActivity3.getViewModel().pageTitle, null, null, Constants.InvokeSource.TALK_TOPICS_ACTIVITY, charSequence, charSequence2, null, 0L, 0L, false, false, 8064), null);
                                    } else if (actionState instanceof TalkTopicsViewModel.ActionState.DoWatch) {
                                        String str6 = ((TalkTopicsViewModel.ActionState.DoWatch) actionState).message;
                                        int i12 = TalkTopicsActivity.$r8$clinit;
                                        FragmentManagerImpl supportFragmentManager = talkTopicsActivity3.getSupportFragmentManager();
                                        PageTitle pageTitle3 = talkTopicsActivity3.getViewModel().pageTitle;
                                        boolean z3 = talkTopicsActivity3.getViewModel().isWatched;
                                        pageTitle3.getClass();
                                        str6.getClass();
                                        if (z3) {
                                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(talkTopicsActivity3, str6, 0, 12);
                                            makeSnackbar$default.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new PageItemView$$ExternalSyntheticLambda3(2, supportFragmentManager, pageTitle3));
                                            makeSnackbar$default.show();
                                        } else {
                                            ShareUtil.showMessage(talkTopicsActivity3, str6, 0);
                                        }
                                        talkTopicsActivity3.invalidateOptionsMenu();
                                    } else if (actionState instanceof TalkTopicsViewModel.ActionState.OnError) {
                                        ShareUtil.showError$default(talkTopicsActivity3, ((TalkTopicsViewModel.ActionState.OnError) actionState).throwable);
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (stateFlowImpl2.collect(flowCollector2, this) == coroutineSingletons3) {
                        break;
                    }
                } else if (i7 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
        }
        return null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.talk.TalkTopicsActivity$onCreate$5$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(List list, PagerState pagerState, Continuation continuation) {
            super(2, continuation);
            this.$r8$classId = 5;
            this.L$0 = list;
            this.this$0 = pagerState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, (TalkTopicsActivity) obj2, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(1, (TalkTemplatesFragment) obj2, continuation);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                case 2:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(2, (ThemeChooserDialog) obj2, continuation);
                    anonymousClass13.L$0 = obj;
                    return anonymousClass13;
                case 3:
                    AnonymousClass1 anonymousClass14 = new AnonymousClass1(3, (ThemeFittingRoomFragment) obj2, continuation);
                    anonymousClass14.L$0 = obj;
                    return anonymousClass14;
                case 4:
                    AnonymousClass1 anonymousClass15 = new AnonymousClass1(4, (UserContribListViewModel) obj2, continuation);
                    anonymousClass15.L$0 = obj;
                    return anonymousClass15;
                default:
                    return new AnonymousClass1((List) this.L$0, (PagerState) obj2, continuation);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 1:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 2:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 3:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 4:
                    return ((AnonymousClass1) create((UserContribution) obj, (Continuation) obj2)).invokeSuspend(unit);
                default:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            int i2 = 2;
            Continuation continuation = null;
            int i3 = 3;
            int i4 = 1;
            Unit unit = Unit.INSTANCE;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    TalkTopicsActivity talkTopicsActivity = (TalkTopicsActivity) obj2;
                    AwaitKt.launch$default(coroutineScope, null, null, new TalkTopicsActivity$onCreate$5(talkTopicsActivity, continuation, i4), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new TalkTopicsActivity$onCreate$5(talkTopicsActivity, continuation, i2), 3);
                    return unit;
                case 1:
                    CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj2;
                    AwaitKt.launch$default(coroutineScope2, null, null, new TalkTemplatesFragment$onViewCreated$2(talkTemplatesFragment, continuation, i4), 3);
                    AwaitKt.launch$default(coroutineScope2, null, null, new TalkTemplatesFragment$onViewCreated$2(talkTemplatesFragment, continuation, i2), 3);
                    return unit;
                case 2:
                    Object obj3 = this.L$0;
                    ResultKt.throwOnFailure(obj);
                    if (obj3 instanceof WebViewInvalidateEvent) {
                        ThemeChooserDialog themeChooserDialog = (ThemeChooserDialog) obj2;
                        themeChooserDialog.updatingFont = false;
                        themeChooserDialog.updateComponents();
                    }
                    return unit;
                case 3:
                    ThemeFittingRoomFragment themeFittingRoomFragment = (ThemeFittingRoomFragment) obj2;
                    Object obj4 = this.L$0;
                    ResultKt.throwOnFailure(obj);
                    if (obj4 instanceof ChangeTextSizeEvent) {
                        themeFittingRoomFragment.updateTextSize$1();
                        MultipartBody.Builder builder = themeFittingRoomFragment._binding;
                        builder.getClass();
                        ((TextView) builder.type).post(new DeviceUtil$$ExternalSyntheticLambda1(i3));
                    }
                    return unit;
                case 4:
                    UserContribution userContribution = (UserContribution) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    UserContribListViewModel userContribListViewModel = (UserContribListViewModel) obj2;
                    return Boolean.valueOf(userContribListViewModel.currentQuery.length() <= 0 || StringsKt.contains(userContribution.comment, userContribListViewModel.currentQuery, true) || StringsKt.contains(userContribution.title, userContribListViewModel.currentQuery, true));
                default:
                    ResultKt.throwOnFailure(obj);
                    UriUtil.submit$default(238, null, "impression", null, ((YearInReviewScreenData) ((List) this.L$0).get(((PagerState) obj2).getCurrentPage())).slideName, null);
                    return unit;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(int i, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }
}
