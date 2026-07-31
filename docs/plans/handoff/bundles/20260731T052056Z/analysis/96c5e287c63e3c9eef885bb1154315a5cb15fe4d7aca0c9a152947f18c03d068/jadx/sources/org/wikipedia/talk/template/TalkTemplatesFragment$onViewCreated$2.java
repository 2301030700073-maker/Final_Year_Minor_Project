package org.wikipedia.talk.template;

import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.view.ActionMode;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.snackbar.Snackbar;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsActivity$onCreate$5;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment.RecyclerAdapter;
import org.wikipedia.talk.template.TalkTemplatesViewModel;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTemplatesFragment$onViewCreated$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ TalkTemplatesFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTemplatesFragment$onViewCreated$2(TalkTemplatesFragment talkTemplatesFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = talkTemplatesFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        TalkTemplatesFragment talkTemplatesFragment = this.this$0;
        switch (i) {
            case 0:
                return new TalkTemplatesFragment$onViewCreated$2(talkTemplatesFragment, continuation, 0);
            case 1:
                return new TalkTemplatesFragment$onViewCreated$2(talkTemplatesFragment, continuation, 1);
            default:
                return new TalkTemplatesFragment$onViewCreated$2(talkTemplatesFragment, continuation, 2);
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
        return ((TalkTemplatesFragment$onViewCreated$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final TalkTemplatesFragment talkTemplatesFragment = this.this$0;
        final int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    TalkTopicsActivity$onCreate$5.AnonymousClass1 anonymousClass1 = new TalkTopicsActivity$onCreate$5.AnonymousClass1(i2, talkTemplatesFragment, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(talkTemplatesFragment, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = talkTemplatesFragment.getViewModel().uiState;
                    final int i5 = 0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: org.wikipedia.talk.template.TalkTemplatesFragment$onViewCreated$2$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i6 = i5;
                            Unit unit = Unit.INSTANCE;
                            TalkTemplatesFragment talkTemplatesFragment2 = talkTemplatesFragment;
                            switch (i6) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (resource instanceof Resource.Loading) {
                                        ActivityLoginBinding activityLoginBinding = talkTemplatesFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((LinearLayout) activityLoginBinding.login2faText).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding2 = talkTemplatesFragment2._binding;
                                        activityLoginBinding2.getClass();
                                        ((RecyclerView) activityLoginBinding2.loginButton).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding3 = talkTemplatesFragment2._binding;
                                        activityLoginBinding3.getClass();
                                        ((WikiErrorView) activityLoginBinding3.viewLoginError).setVisibility(8);
                                    } else if (resource instanceof Resource.Success) {
                                        ActivityLoginBinding activityLoginBinding4 = talkTemplatesFragment2._binding;
                                        activityLoginBinding4.getClass();
                                        ((RecyclerView) activityLoginBinding4.loginButton).setHasFixedSize(true);
                                        talkTemplatesFragment2.adapter = talkTemplatesFragment2.new RecyclerAdapter();
                                        ActivityLoginBinding activityLoginBinding5 = talkTemplatesFragment2._binding;
                                        activityLoginBinding5.getClass();
                                        RecyclerView recyclerView = (RecyclerView) activityLoginBinding5.loginButton;
                                        TalkTemplatesFragment.RecyclerAdapter recyclerAdapter = talkTemplatesFragment2.adapter;
                                        if (recyclerAdapter == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                            throw null;
                                        }
                                        recyclerView.setAdapter(recyclerAdapter);
                                        ActivityLoginBinding activityLoginBinding6 = talkTemplatesFragment2._binding;
                                        activityLoginBinding6.getClass();
                                        RecyclerView recyclerView2 = (RecyclerView) activityLoginBinding6.loginButton;
                                        talkTemplatesFragment2.requireContext();
                                        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                        ActivityLoginBinding activityLoginBinding7 = talkTemplatesFragment2._binding;
                                        activityLoginBinding7.getClass();
                                        ((RecyclerView) activityLoginBinding7.loginButton).addItemDecoration(new DrawableItemDecoration(talkTemplatesFragment2.requireContext(), true, false, 16));
                                        talkTemplatesFragment2.updateAndNotifyAdapter();
                                        talkTemplatesFragment2.updateToolbarEditButton();
                                        ActivityLoginBinding activityLoginBinding8 = talkTemplatesFragment2._binding;
                                        activityLoginBinding8.getClass();
                                        ((WikiErrorView) activityLoginBinding8.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding9 = talkTemplatesFragment2._binding;
                                        activityLoginBinding9.getClass();
                                        ((ProgressBar) activityLoginBinding9.loginUsernameText).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding10 = talkTemplatesFragment2._binding;
                                        activityLoginBinding10.getClass();
                                        if (((LinearLayout) activityLoginBinding10.login2faText).getVisibility() == 0) {
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("templates_empty_impression", "pt_templates", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                                        }
                                    } else if (resource instanceof Resource.Error) {
                                        Throwable th = ((Resource.Error) resource).throwable;
                                        ActivityLoginBinding activityLoginBinding11 = talkTemplatesFragment2._binding;
                                        activityLoginBinding11.getClass();
                                        ((ProgressBar) activityLoginBinding11.loginUsernameText).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding12 = talkTemplatesFragment2._binding;
                                        activityLoginBinding12.getClass();
                                        WikiErrorView wikiErrorView = (WikiErrorView) activityLoginBinding12.viewLoginError;
                                        int i7 = WikiErrorView.$r8$clinit;
                                        wikiErrorView.setError(th, null);
                                        ActivityLoginBinding activityLoginBinding13 = talkTemplatesFragment2._binding;
                                        activityLoginBinding13.getClass();
                                        ((WikiErrorView) activityLoginBinding13.viewLoginError).setVisibility(0);
                                    }
                                    return unit;
                                default:
                                    TalkTemplatesViewModel.ActionState actionState = (TalkTemplatesViewModel.ActionState) obj2;
                                    if (actionState instanceof TalkTemplatesViewModel.ActionState.Deleted) {
                                        int i8 = ((TalkTemplatesViewModel.ActionState.Deleted) actionState).size;
                                        Cookie.Companion.submitPatrollerActivityEvent("message_deleted_toast", "pt_templates", "");
                                        Cookie.Companion.submitPatrollerActivityEvent("delete_message_success", "pt_warning_messages", "");
                                        String quantityString = talkTemplatesFragment2.getResources().getQuantityString(R.plurals.talk_templates_message_deleted, i8);
                                        quantityString.getClass();
                                        ActivityLoginBinding activityLoginBinding14 = talkTemplatesFragment2._binding;
                                        activityLoginBinding14.getClass();
                                        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default((CoordinatorLayout) activityLoginBinding14.footerContainer, quantityString);
                                        makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new TalkTemplatesFragment$$ExternalSyntheticLambda2(talkTemplatesFragment2, 3));
                                        makeSnackbar$default.show();
                                        ActivityLoginBinding activityLoginBinding15 = talkTemplatesFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearLayout) activityLoginBinding15.login2faText).setVisibility(talkTemplatesFragment2.getViewModel().talkTemplatesList.isEmpty() ? 0 : 8);
                                        ActivityLoginBinding activityLoginBinding16 = talkTemplatesFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((RecyclerView) activityLoginBinding16.loginButton).setVisibility(talkTemplatesFragment2.getViewModel().talkTemplatesList.isEmpty() ? 8 : 0);
                                        ActivityLoginBinding activityLoginBinding17 = talkTemplatesFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        if (((LinearLayout) activityLoginBinding17.login2faText).getVisibility() == 0) {
                                            Cookie.Companion.submitPatrollerActivityEvent("templates_empty_impression", "pt_templates", "");
                                        }
                                        ActionMode actionMode = talkTemplatesFragment2.actionMode;
                                        if (actionMode != null) {
                                            actionMode.finish();
                                        }
                                        talkTemplatesFragment2.unselectAllTalkTemplates();
                                    } else if (actionState instanceof TalkTemplatesViewModel.ActionState.Error) {
                                        ShareUtil.showMessage(talkTemplatesFragment2, ((TalkTemplatesViewModel.ActionState.Error) actionState).throwable.toString());
                                    } else if (actionState instanceof TalkTemplatesViewModel.ActionState.Added) {
                                        talkTemplatesFragment2.updateAndNotifyAdapter();
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(flowCollector, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow2 = talkTemplatesFragment.getViewModel().actionState;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: org.wikipedia.talk.template.TalkTemplatesFragment$onViewCreated$2$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i2;
                            Unit unit = Unit.INSTANCE;
                            TalkTemplatesFragment talkTemplatesFragment2 = talkTemplatesFragment;
                            switch (i62) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (resource instanceof Resource.Loading) {
                                        ActivityLoginBinding activityLoginBinding = talkTemplatesFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((LinearLayout) activityLoginBinding.login2faText).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding2 = talkTemplatesFragment2._binding;
                                        activityLoginBinding2.getClass();
                                        ((RecyclerView) activityLoginBinding2.loginButton).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding3 = talkTemplatesFragment2._binding;
                                        activityLoginBinding3.getClass();
                                        ((WikiErrorView) activityLoginBinding3.viewLoginError).setVisibility(8);
                                    } else if (resource instanceof Resource.Success) {
                                        ActivityLoginBinding activityLoginBinding4 = talkTemplatesFragment2._binding;
                                        activityLoginBinding4.getClass();
                                        ((RecyclerView) activityLoginBinding4.loginButton).setHasFixedSize(true);
                                        talkTemplatesFragment2.adapter = talkTemplatesFragment2.new RecyclerAdapter();
                                        ActivityLoginBinding activityLoginBinding5 = talkTemplatesFragment2._binding;
                                        activityLoginBinding5.getClass();
                                        RecyclerView recyclerView = (RecyclerView) activityLoginBinding5.loginButton;
                                        TalkTemplatesFragment.RecyclerAdapter recyclerAdapter = talkTemplatesFragment2.adapter;
                                        if (recyclerAdapter == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                            throw null;
                                        }
                                        recyclerView.setAdapter(recyclerAdapter);
                                        ActivityLoginBinding activityLoginBinding6 = talkTemplatesFragment2._binding;
                                        activityLoginBinding6.getClass();
                                        RecyclerView recyclerView2 = (RecyclerView) activityLoginBinding6.loginButton;
                                        talkTemplatesFragment2.requireContext();
                                        recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                        ActivityLoginBinding activityLoginBinding7 = talkTemplatesFragment2._binding;
                                        activityLoginBinding7.getClass();
                                        ((RecyclerView) activityLoginBinding7.loginButton).addItemDecoration(new DrawableItemDecoration(talkTemplatesFragment2.requireContext(), true, false, 16));
                                        talkTemplatesFragment2.updateAndNotifyAdapter();
                                        talkTemplatesFragment2.updateToolbarEditButton();
                                        ActivityLoginBinding activityLoginBinding8 = talkTemplatesFragment2._binding;
                                        activityLoginBinding8.getClass();
                                        ((WikiErrorView) activityLoginBinding8.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding9 = talkTemplatesFragment2._binding;
                                        activityLoginBinding9.getClass();
                                        ((ProgressBar) activityLoginBinding9.loginUsernameText).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding10 = talkTemplatesFragment2._binding;
                                        activityLoginBinding10.getClass();
                                        if (((LinearLayout) activityLoginBinding10.login2faText).getVisibility() == 0) {
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("templates_empty_impression", "pt_templates", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                                        }
                                    } else if (resource instanceof Resource.Error) {
                                        Throwable th = ((Resource.Error) resource).throwable;
                                        ActivityLoginBinding activityLoginBinding11 = talkTemplatesFragment2._binding;
                                        activityLoginBinding11.getClass();
                                        ((ProgressBar) activityLoginBinding11.loginUsernameText).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding12 = talkTemplatesFragment2._binding;
                                        activityLoginBinding12.getClass();
                                        WikiErrorView wikiErrorView = (WikiErrorView) activityLoginBinding12.viewLoginError;
                                        int i7 = WikiErrorView.$r8$clinit;
                                        wikiErrorView.setError(th, null);
                                        ActivityLoginBinding activityLoginBinding13 = talkTemplatesFragment2._binding;
                                        activityLoginBinding13.getClass();
                                        ((WikiErrorView) activityLoginBinding13.viewLoginError).setVisibility(0);
                                    }
                                    return unit;
                                default:
                                    TalkTemplatesViewModel.ActionState actionState = (TalkTemplatesViewModel.ActionState) obj2;
                                    if (actionState instanceof TalkTemplatesViewModel.ActionState.Deleted) {
                                        int i8 = ((TalkTemplatesViewModel.ActionState.Deleted) actionState).size;
                                        Cookie.Companion.submitPatrollerActivityEvent("message_deleted_toast", "pt_templates", "");
                                        Cookie.Companion.submitPatrollerActivityEvent("delete_message_success", "pt_warning_messages", "");
                                        String quantityString = talkTemplatesFragment2.getResources().getQuantityString(R.plurals.talk_templates_message_deleted, i8);
                                        quantityString.getClass();
                                        ActivityLoginBinding activityLoginBinding14 = talkTemplatesFragment2._binding;
                                        activityLoginBinding14.getClass();
                                        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default((CoordinatorLayout) activityLoginBinding14.footerContainer, quantityString);
                                        makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new TalkTemplatesFragment$$ExternalSyntheticLambda2(talkTemplatesFragment2, 3));
                                        makeSnackbar$default.show();
                                        ActivityLoginBinding activityLoginBinding15 = talkTemplatesFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearLayout) activityLoginBinding15.login2faText).setVisibility(talkTemplatesFragment2.getViewModel().talkTemplatesList.isEmpty() ? 0 : 8);
                                        ActivityLoginBinding activityLoginBinding16 = talkTemplatesFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((RecyclerView) activityLoginBinding16.loginButton).setVisibility(talkTemplatesFragment2.getViewModel().talkTemplatesList.isEmpty() ? 8 : 0);
                                        ActivityLoginBinding activityLoginBinding17 = talkTemplatesFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        if (((LinearLayout) activityLoginBinding17.login2faText).getVisibility() == 0) {
                                            Cookie.Companion.submitPatrollerActivityEvent("templates_empty_impression", "pt_templates", "");
                                        }
                                        ActionMode actionMode = talkTemplatesFragment2.actionMode;
                                        if (actionMode != null) {
                                            actionMode.finish();
                                        }
                                        talkTemplatesFragment2.unselectAllTalkTemplates();
                                    } else if (actionState instanceof TalkTemplatesViewModel.ActionState.Error) {
                                        ShareUtil.showMessage(talkTemplatesFragment2, ((TalkTemplatesViewModel.ActionState.Error) actionState).throwable.toString());
                                    } else if (actionState instanceof TalkTemplatesViewModel.ActionState.Added) {
                                        talkTemplatesFragment2.updateAndNotifyAdapter();
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(flowCollector2, this) == coroutineSingletons3) {
                        break;
                    }
                } else if (i6 != 1) {
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
}
