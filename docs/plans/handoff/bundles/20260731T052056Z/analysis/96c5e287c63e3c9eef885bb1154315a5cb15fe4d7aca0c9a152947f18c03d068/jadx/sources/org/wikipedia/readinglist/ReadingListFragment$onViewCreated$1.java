package org.wikipedia.readinglist;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$2;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.snackbar.Snackbar;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.events.NewRecommendedReadingListEvent;
import org.wikipedia.events.PageDownloadEvent;
import org.wikipedia.main.MainActivity;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.sync.ReadingListSyncEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.SearchEmptyView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.yearinreview.YearInReviewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListFragment$onViewCreated$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ReadingListFragment this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ ReadingListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(ReadingListFragment readingListFragment, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = readingListFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(readingListFragment, continuation, 0);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                default:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(readingListFragment, continuation, 1);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            switch (i) {
                case 0:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
                default:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    break;
            }
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            int i2 = 1;
            Unit unit = Unit.INSTANCE;
            Object obj2 = this.L$0;
            switch (i) {
                case 0:
                    CoroutineScope coroutineScope = (CoroutineScope) obj2;
                    ResultKt.throwOnFailure(obj);
                    Continuation continuation = null;
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, i2), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 2), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 3), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 4), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 5), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 6), 3);
                    AwaitKt.launch$default(coroutineScope, null, null, new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 7), 3);
                    break;
                default:
                    ResultKt.throwOnFailure(obj);
                    if (!(obj2 instanceof ReadingListSyncEvent)) {
                        if (obj2 instanceof PageDownloadEvent) {
                            ReadingListPage readingListPage = ((PageDownloadEvent) obj2).page;
                            Iterator it = readingListFragment.displayedLists.iterator();
                            int i3 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    Object next = it.next();
                                    if (!(next instanceof ReadingListPage) || ((ReadingListPage) next).id != readingListPage.id) {
                                        i3++;
                                    }
                                } else {
                                    i3 = -1;
                                }
                            }
                            if (i3 >= 0) {
                                Object obj3 = readingListFragment.displayedLists.get(i3);
                                if (obj3 instanceof ReadingListPage) {
                                    ((ReadingListPage) obj3).downloadProgress = readingListPage.downloadProgress;
                                    readingListFragment.adapter.notifyItemChanged(i3 + 1);
                                    break;
                                }
                            }
                        }
                    } else {
                        readingListFragment.updateReadingListData();
                        break;
                    }
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReadingListFragment$onViewCreated$1(ReadingListFragment readingListFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = readingListFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ReadingListFragment readingListFragment = this.this$0;
        switch (i) {
            case 0:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 0);
            case 1:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 1);
            case 2:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 2);
            case 3:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 3);
            case 4:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 4);
            case 5:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 5);
            case 6:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 6);
            default:
                return new ReadingListFragment$onViewCreated$1(readingListFragment, continuation, 7);
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
        return ((ReadingListFragment$onViewCreated$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final int i2 = 0;
        Unit unit = Unit.INSTANCE;
        final ReadingListFragment readingListFragment = this.this$0;
        final int i3 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(readingListFragment, continuation, i2);
                this.label = 1;
                return ViewModelKt.repeatOnLifecycle(readingListFragment, lifecycle$State, anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlySharedFlow readonlySharedFlow = readingListFragment.getViewModel().updateListByIdFlow;
                    FlowCollector flowCollector = new FlowCollector() { // from class: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i6 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            ReadingListFragment readingListFragment2 = readingListFragment;
                            switch (i6) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Success)) {
                                        if (resource instanceof Resource.Error) {
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding = readingListFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding.loginButton).setRefreshing(false);
                                        ReadingList readingList = (ReadingList) ((Resource.Success) resource).data;
                                        readingListFragment2.readingList = readingList;
                                        if (readingList != null) {
                                            ActivityLoginBinding activityLoginBinding2 = readingListFragment2._binding;
                                            activityLoginBinding2.getClass();
                                            ((SearchEmptyView) activityLoginBinding2.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 1:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource2).throwable;
                                            L.e(th);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th);
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList2 = (ReadingList) ((Resource.Success) resource2).data;
                                        readingListFragment2.readingList = readingList2;
                                        if (readingList2 != null) {
                                            Context requireContext = readingListFragment2.requireContext();
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(readingList2.pages.size(), "ReadingList.ListItemCount:", ".receive_preview")));
                                            ActivityLoginBinding activityLoginBinding3 = readingListFragment2._binding;
                                            activityLoginBinding3.getClass();
                                            ((SearchEmptyView) activityLoginBinding3.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList2.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 2:
                                    Resource resource3 = (Resource) obj2;
                                    if (!(resource3 instanceof Resource.Success)) {
                                        if (resource3 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource3).throwable;
                                            L.e(th2);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        if (readingListFragment2.isRecommendedList()) {
                                            WikiGamesEvent.submit$default("add_list_new", "rrl_discover", null, null, new Integer(((ReadingList) ((Resource.Success) resource3).data).pages.size()), null, null, null, 492);
                                        }
                                        AppCompatActivity requireActivity = readingListFragment2.requireActivity();
                                        int i7 = MainActivity.$r8$clinit;
                                        requireActivity.startActivity(UriUtil.newIntent(readingListFragment2.requireContext()).addFlags(67108864).putExtra("previewSavedReadingList", true));
                                        readingListFragment2.requireActivity().finish();
                                        break;
                                    }
                                    break;
                                case 3:
                                    Resource resource4 = (Resource) obj2;
                                    if (!(resource4 instanceof Resource.Success)) {
                                        if (resource4 instanceof Resource.Error) {
                                            Throwable th3 = ((Resource.Error) resource4).throwable;
                                            L.e(th3);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th3);
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList3 = readingListFragment2.readingList;
                                        if (readingList3 != null) {
                                            List list = (List) ((Resource.Success) resource4).data;
                                            readingList3.pages.removeAll(list);
                                            List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                            ReadingListBehaviorsUtil.showDeletePagesUndoSnackbar(readingListFragment2.requireActivity(), readingList3, list, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment2, 17));
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    Resource resource5 = (Resource) obj2;
                                    if (!(resource5 instanceof Resource.Loading)) {
                                        if (!(resource5 instanceof Resource.Success)) {
                                            if (resource5 instanceof Resource.Error) {
                                                Throwable th4 = ((Resource.Error) resource5).throwable;
                                                L.e(th4);
                                                ActivityLoginBinding activityLoginBinding4 = readingListFragment2._binding;
                                                activityLoginBinding4.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding4.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding5 = readingListFragment2._binding;
                                                activityLoginBinding5.getClass();
                                                ((WikiErrorView) activityLoginBinding5.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding6 = readingListFragment2._binding;
                                                activityLoginBinding6.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding6.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding7 = readingListFragment2._binding;
                                                activityLoginBinding7.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding8 = readingListFragment2._binding;
                                                activityLoginBinding8.getClass();
                                                ((WikiErrorView) activityLoginBinding8.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 2));
                                                ActivityLoginBinding activityLoginBinding9 = readingListFragment2._binding;
                                                activityLoginBinding9.getClass();
                                                ((WikiErrorView) activityLoginBinding9.viewLoginError).setError(th4, null);
                                                break;
                                            }
                                        } else {
                                            readingListFragment2.readingList = (ReadingList) ((Resource.Success) resource5).data;
                                            ActivityLoginBinding activityLoginBinding10 = readingListFragment2._binding;
                                            activityLoginBinding10.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding10.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding11 = readingListFragment2._binding;
                                            activityLoginBinding11.getClass();
                                            ((WikiErrorView) activityLoginBinding11.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding12 = readingListFragment2._binding;
                                            activityLoginBinding12.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding12.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding13 = readingListFragment2._binding;
                                            activityLoginBinding13.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding14 = readingListFragment2._binding;
                                            activityLoginBinding14.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding14.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            if (readingListFragment2.isRecommendedList()) {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (!Prefs.isRecommendedReadingListOnboardingShown()) {
                                                    readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                                    Integer valueOf = Integer.valueOf(Prefs.getRecommendedReadingListArticlesNumber());
                                                    String string = readingListFragment2.getString(Prefs.getRecommendedReadingListUpdateFrequency().getSnackbarStringRes());
                                                    string.getClass();
                                                    Locale locale = Locale.getDefault();
                                                    locale.getClass();
                                                    String lowerCase = string.toLowerCase(locale);
                                                    lowerCase.getClass();
                                                    String string2 = readingListFragment2.getString(R.string.recommended_reading_list_page_snackbar, valueOf, lowerCase);
                                                    string2.getClass();
                                                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(readingListFragment2.requireActivity(), string2, 0, 12);
                                                    makeSnackbar$default.setAction(R.string.recommended_reading_list_page_snackbar_action, new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 1));
                                                    makeSnackbar$default.show();
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                                                }
                                            }
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
                                            FlowEventBus.post(new NewRecommendedReadingListEvent());
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding15 = readingListFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding15.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding16 = readingListFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((WikiErrorView) activityLoginBinding16.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding17 = readingListFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding17.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding18 = readingListFragment2._binding;
                                        activityLoginBinding18.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding18.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource6 = (Resource) obj2;
                                    if (!(resource6 instanceof Resource.Loading)) {
                                        if (!(resource6 instanceof Resource.Success)) {
                                            if (resource6 instanceof Resource.Error) {
                                                Throwable th5 = ((Resource.Error) resource6).throwable;
                                                L.e(th5);
                                                ActivityLoginBinding activityLoginBinding19 = readingListFragment2._binding;
                                                activityLoginBinding19.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding19.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding20 = readingListFragment2._binding;
                                                activityLoginBinding20.getClass();
                                                ((WikiErrorView) activityLoginBinding20.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding21 = readingListFragment2._binding;
                                                activityLoginBinding21.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding21.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding22 = readingListFragment2._binding;
                                                activityLoginBinding22.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding22.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding23 = readingListFragment2._binding;
                                                activityLoginBinding23.getClass();
                                                ((WikiErrorView) activityLoginBinding23.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 3));
                                                ActivityLoginBinding activityLoginBinding24 = readingListFragment2._binding;
                                                activityLoginBinding24.getClass();
                                                ((WikiErrorView) activityLoginBinding24.viewLoginError).setError(th5, null);
                                                break;
                                            }
                                        } else {
                                            ReadingList readingList4 = (ReadingList) ((Resource.Success) resource6).data;
                                            readingListFragment2.readingList = readingList4;
                                            ActivityLoginBinding activityLoginBinding25 = readingListFragment2._binding;
                                            activityLoginBinding25.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding25.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding26 = readingListFragment2._binding;
                                            activityLoginBinding26.getClass();
                                            ((WikiErrorView) activityLoginBinding26.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding27 = readingListFragment2._binding;
                                            activityLoginBinding27.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding27.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding28 = readingListFragment2._binding;
                                            activityLoginBinding28.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding28.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding29 = readingListFragment2._binding;
                                            activityLoginBinding29.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding29.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                                            YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                                            if (yearInReviewModel != null) {
                                                linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, 0, true, 524287));
                                                Prefs.setYearInReviewModelData(linkedHashMap);
                                            }
                                            ReadingListFragmentViewModel viewModel = readingListFragment2.getViewModel();
                                            readingList4.getClass();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList4, viewModel, null, 25), 2);
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding30 = readingListFragment2._binding;
                                        activityLoginBinding30.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding30.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding31 = readingListFragment2._binding;
                                        activityLoginBinding31.getClass();
                                        ((WikiErrorView) activityLoginBinding31.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding32 = readingListFragment2._binding;
                                        activityLoginBinding32.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding32.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding33 = readingListFragment2._binding;
                                        activityLoginBinding33.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding33.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    if (readonlySharedFlow.$$delegate_0.collect(flowCollector, this) == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i5 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlySharedFlow readonlySharedFlow2 = readingListFragment.getViewModel().updateListFlow;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            ReadingListFragment readingListFragment2 = readingListFragment;
                            switch (i62) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Success)) {
                                        if (resource instanceof Resource.Error) {
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding = readingListFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding.loginButton).setRefreshing(false);
                                        ReadingList readingList = (ReadingList) ((Resource.Success) resource).data;
                                        readingListFragment2.readingList = readingList;
                                        if (readingList != null) {
                                            ActivityLoginBinding activityLoginBinding2 = readingListFragment2._binding;
                                            activityLoginBinding2.getClass();
                                            ((SearchEmptyView) activityLoginBinding2.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 1:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource2).throwable;
                                            L.e(th);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th);
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList2 = (ReadingList) ((Resource.Success) resource2).data;
                                        readingListFragment2.readingList = readingList2;
                                        if (readingList2 != null) {
                                            Context requireContext = readingListFragment2.requireContext();
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(readingList2.pages.size(), "ReadingList.ListItemCount:", ".receive_preview")));
                                            ActivityLoginBinding activityLoginBinding3 = readingListFragment2._binding;
                                            activityLoginBinding3.getClass();
                                            ((SearchEmptyView) activityLoginBinding3.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList2.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 2:
                                    Resource resource3 = (Resource) obj2;
                                    if (!(resource3 instanceof Resource.Success)) {
                                        if (resource3 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource3).throwable;
                                            L.e(th2);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        if (readingListFragment2.isRecommendedList()) {
                                            WikiGamesEvent.submit$default("add_list_new", "rrl_discover", null, null, new Integer(((ReadingList) ((Resource.Success) resource3).data).pages.size()), null, null, null, 492);
                                        }
                                        AppCompatActivity requireActivity = readingListFragment2.requireActivity();
                                        int i7 = MainActivity.$r8$clinit;
                                        requireActivity.startActivity(UriUtil.newIntent(readingListFragment2.requireContext()).addFlags(67108864).putExtra("previewSavedReadingList", true));
                                        readingListFragment2.requireActivity().finish();
                                        break;
                                    }
                                    break;
                                case 3:
                                    Resource resource4 = (Resource) obj2;
                                    if (!(resource4 instanceof Resource.Success)) {
                                        if (resource4 instanceof Resource.Error) {
                                            Throwable th3 = ((Resource.Error) resource4).throwable;
                                            L.e(th3);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th3);
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList3 = readingListFragment2.readingList;
                                        if (readingList3 != null) {
                                            List list = (List) ((Resource.Success) resource4).data;
                                            readingList3.pages.removeAll(list);
                                            List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                            ReadingListBehaviorsUtil.showDeletePagesUndoSnackbar(readingListFragment2.requireActivity(), readingList3, list, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment2, 17));
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    Resource resource5 = (Resource) obj2;
                                    if (!(resource5 instanceof Resource.Loading)) {
                                        if (!(resource5 instanceof Resource.Success)) {
                                            if (resource5 instanceof Resource.Error) {
                                                Throwable th4 = ((Resource.Error) resource5).throwable;
                                                L.e(th4);
                                                ActivityLoginBinding activityLoginBinding4 = readingListFragment2._binding;
                                                activityLoginBinding4.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding4.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding5 = readingListFragment2._binding;
                                                activityLoginBinding5.getClass();
                                                ((WikiErrorView) activityLoginBinding5.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding6 = readingListFragment2._binding;
                                                activityLoginBinding6.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding6.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding7 = readingListFragment2._binding;
                                                activityLoginBinding7.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding8 = readingListFragment2._binding;
                                                activityLoginBinding8.getClass();
                                                ((WikiErrorView) activityLoginBinding8.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 2));
                                                ActivityLoginBinding activityLoginBinding9 = readingListFragment2._binding;
                                                activityLoginBinding9.getClass();
                                                ((WikiErrorView) activityLoginBinding9.viewLoginError).setError(th4, null);
                                                break;
                                            }
                                        } else {
                                            readingListFragment2.readingList = (ReadingList) ((Resource.Success) resource5).data;
                                            ActivityLoginBinding activityLoginBinding10 = readingListFragment2._binding;
                                            activityLoginBinding10.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding10.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding11 = readingListFragment2._binding;
                                            activityLoginBinding11.getClass();
                                            ((WikiErrorView) activityLoginBinding11.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding12 = readingListFragment2._binding;
                                            activityLoginBinding12.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding12.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding13 = readingListFragment2._binding;
                                            activityLoginBinding13.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding14 = readingListFragment2._binding;
                                            activityLoginBinding14.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding14.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            if (readingListFragment2.isRecommendedList()) {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (!Prefs.isRecommendedReadingListOnboardingShown()) {
                                                    readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                                    Integer valueOf = Integer.valueOf(Prefs.getRecommendedReadingListArticlesNumber());
                                                    String string = readingListFragment2.getString(Prefs.getRecommendedReadingListUpdateFrequency().getSnackbarStringRes());
                                                    string.getClass();
                                                    Locale locale = Locale.getDefault();
                                                    locale.getClass();
                                                    String lowerCase = string.toLowerCase(locale);
                                                    lowerCase.getClass();
                                                    String string2 = readingListFragment2.getString(R.string.recommended_reading_list_page_snackbar, valueOf, lowerCase);
                                                    string2.getClass();
                                                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(readingListFragment2.requireActivity(), string2, 0, 12);
                                                    makeSnackbar$default.setAction(R.string.recommended_reading_list_page_snackbar_action, new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 1));
                                                    makeSnackbar$default.show();
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                                                }
                                            }
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
                                            FlowEventBus.post(new NewRecommendedReadingListEvent());
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding15 = readingListFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding15.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding16 = readingListFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((WikiErrorView) activityLoginBinding16.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding17 = readingListFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding17.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding18 = readingListFragment2._binding;
                                        activityLoginBinding18.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding18.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource6 = (Resource) obj2;
                                    if (!(resource6 instanceof Resource.Loading)) {
                                        if (!(resource6 instanceof Resource.Success)) {
                                            if (resource6 instanceof Resource.Error) {
                                                Throwable th5 = ((Resource.Error) resource6).throwable;
                                                L.e(th5);
                                                ActivityLoginBinding activityLoginBinding19 = readingListFragment2._binding;
                                                activityLoginBinding19.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding19.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding20 = readingListFragment2._binding;
                                                activityLoginBinding20.getClass();
                                                ((WikiErrorView) activityLoginBinding20.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding21 = readingListFragment2._binding;
                                                activityLoginBinding21.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding21.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding22 = readingListFragment2._binding;
                                                activityLoginBinding22.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding22.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding23 = readingListFragment2._binding;
                                                activityLoginBinding23.getClass();
                                                ((WikiErrorView) activityLoginBinding23.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 3));
                                                ActivityLoginBinding activityLoginBinding24 = readingListFragment2._binding;
                                                activityLoginBinding24.getClass();
                                                ((WikiErrorView) activityLoginBinding24.viewLoginError).setError(th5, null);
                                                break;
                                            }
                                        } else {
                                            ReadingList readingList4 = (ReadingList) ((Resource.Success) resource6).data;
                                            readingListFragment2.readingList = readingList4;
                                            ActivityLoginBinding activityLoginBinding25 = readingListFragment2._binding;
                                            activityLoginBinding25.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding25.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding26 = readingListFragment2._binding;
                                            activityLoginBinding26.getClass();
                                            ((WikiErrorView) activityLoginBinding26.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding27 = readingListFragment2._binding;
                                            activityLoginBinding27.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding27.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding28 = readingListFragment2._binding;
                                            activityLoginBinding28.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding28.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding29 = readingListFragment2._binding;
                                            activityLoginBinding29.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding29.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                                            YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                                            if (yearInReviewModel != null) {
                                                linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, 0, true, 524287));
                                                Prefs.setYearInReviewModelData(linkedHashMap);
                                            }
                                            ReadingListFragmentViewModel viewModel = readingListFragment2.getViewModel();
                                            readingList4.getClass();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList4, viewModel, null, 25), 2);
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding30 = readingListFragment2._binding;
                                        activityLoginBinding30.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding30.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding31 = readingListFragment2._binding;
                                        activityLoginBinding31.getClass();
                                        ((WikiErrorView) activityLoginBinding31.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding32 = readingListFragment2._binding;
                                        activityLoginBinding32.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding32.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding33 = readingListFragment2._binding;
                                        activityLoginBinding33.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding33.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    if (readonlySharedFlow2.$$delegate_0.collect(flowCollector2, this) == coroutineSingletons3) {
                        return coroutineSingletons3;
                    }
                } else {
                    if (i6 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlySharedFlow readonlySharedFlow3 = readingListFragment.getViewModel().saveReadingListFlow;
                    final int i8 = 2;
                    FlowCollector flowCollector3 = new FlowCollector() { // from class: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i8;
                            Unit unit2 = Unit.INSTANCE;
                            ReadingListFragment readingListFragment2 = readingListFragment;
                            switch (i62) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Success)) {
                                        if (resource instanceof Resource.Error) {
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding = readingListFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding.loginButton).setRefreshing(false);
                                        ReadingList readingList = (ReadingList) ((Resource.Success) resource).data;
                                        readingListFragment2.readingList = readingList;
                                        if (readingList != null) {
                                            ActivityLoginBinding activityLoginBinding2 = readingListFragment2._binding;
                                            activityLoginBinding2.getClass();
                                            ((SearchEmptyView) activityLoginBinding2.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 1:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource2).throwable;
                                            L.e(th);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th);
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList2 = (ReadingList) ((Resource.Success) resource2).data;
                                        readingListFragment2.readingList = readingList2;
                                        if (readingList2 != null) {
                                            Context requireContext = readingListFragment2.requireContext();
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(readingList2.pages.size(), "ReadingList.ListItemCount:", ".receive_preview")));
                                            ActivityLoginBinding activityLoginBinding3 = readingListFragment2._binding;
                                            activityLoginBinding3.getClass();
                                            ((SearchEmptyView) activityLoginBinding3.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList2.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 2:
                                    Resource resource3 = (Resource) obj2;
                                    if (!(resource3 instanceof Resource.Success)) {
                                        if (resource3 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource3).throwable;
                                            L.e(th2);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        if (readingListFragment2.isRecommendedList()) {
                                            WikiGamesEvent.submit$default("add_list_new", "rrl_discover", null, null, new Integer(((ReadingList) ((Resource.Success) resource3).data).pages.size()), null, null, null, 492);
                                        }
                                        AppCompatActivity requireActivity = readingListFragment2.requireActivity();
                                        int i72 = MainActivity.$r8$clinit;
                                        requireActivity.startActivity(UriUtil.newIntent(readingListFragment2.requireContext()).addFlags(67108864).putExtra("previewSavedReadingList", true));
                                        readingListFragment2.requireActivity().finish();
                                        break;
                                    }
                                    break;
                                case 3:
                                    Resource resource4 = (Resource) obj2;
                                    if (!(resource4 instanceof Resource.Success)) {
                                        if (resource4 instanceof Resource.Error) {
                                            Throwable th3 = ((Resource.Error) resource4).throwable;
                                            L.e(th3);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th3);
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList3 = readingListFragment2.readingList;
                                        if (readingList3 != null) {
                                            List list = (List) ((Resource.Success) resource4).data;
                                            readingList3.pages.removeAll(list);
                                            List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                            ReadingListBehaviorsUtil.showDeletePagesUndoSnackbar(readingListFragment2.requireActivity(), readingList3, list, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment2, 17));
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    Resource resource5 = (Resource) obj2;
                                    if (!(resource5 instanceof Resource.Loading)) {
                                        if (!(resource5 instanceof Resource.Success)) {
                                            if (resource5 instanceof Resource.Error) {
                                                Throwable th4 = ((Resource.Error) resource5).throwable;
                                                L.e(th4);
                                                ActivityLoginBinding activityLoginBinding4 = readingListFragment2._binding;
                                                activityLoginBinding4.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding4.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding5 = readingListFragment2._binding;
                                                activityLoginBinding5.getClass();
                                                ((WikiErrorView) activityLoginBinding5.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding6 = readingListFragment2._binding;
                                                activityLoginBinding6.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding6.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding7 = readingListFragment2._binding;
                                                activityLoginBinding7.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding8 = readingListFragment2._binding;
                                                activityLoginBinding8.getClass();
                                                ((WikiErrorView) activityLoginBinding8.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 2));
                                                ActivityLoginBinding activityLoginBinding9 = readingListFragment2._binding;
                                                activityLoginBinding9.getClass();
                                                ((WikiErrorView) activityLoginBinding9.viewLoginError).setError(th4, null);
                                                break;
                                            }
                                        } else {
                                            readingListFragment2.readingList = (ReadingList) ((Resource.Success) resource5).data;
                                            ActivityLoginBinding activityLoginBinding10 = readingListFragment2._binding;
                                            activityLoginBinding10.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding10.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding11 = readingListFragment2._binding;
                                            activityLoginBinding11.getClass();
                                            ((WikiErrorView) activityLoginBinding11.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding12 = readingListFragment2._binding;
                                            activityLoginBinding12.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding12.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding13 = readingListFragment2._binding;
                                            activityLoginBinding13.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding14 = readingListFragment2._binding;
                                            activityLoginBinding14.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding14.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            if (readingListFragment2.isRecommendedList()) {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (!Prefs.isRecommendedReadingListOnboardingShown()) {
                                                    readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                                    Integer valueOf = Integer.valueOf(Prefs.getRecommendedReadingListArticlesNumber());
                                                    String string = readingListFragment2.getString(Prefs.getRecommendedReadingListUpdateFrequency().getSnackbarStringRes());
                                                    string.getClass();
                                                    Locale locale = Locale.getDefault();
                                                    locale.getClass();
                                                    String lowerCase = string.toLowerCase(locale);
                                                    lowerCase.getClass();
                                                    String string2 = readingListFragment2.getString(R.string.recommended_reading_list_page_snackbar, valueOf, lowerCase);
                                                    string2.getClass();
                                                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(readingListFragment2.requireActivity(), string2, 0, 12);
                                                    makeSnackbar$default.setAction(R.string.recommended_reading_list_page_snackbar_action, new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 1));
                                                    makeSnackbar$default.show();
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                                                }
                                            }
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
                                            FlowEventBus.post(new NewRecommendedReadingListEvent());
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding15 = readingListFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding15.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding16 = readingListFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((WikiErrorView) activityLoginBinding16.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding17 = readingListFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding17.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding18 = readingListFragment2._binding;
                                        activityLoginBinding18.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding18.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource6 = (Resource) obj2;
                                    if (!(resource6 instanceof Resource.Loading)) {
                                        if (!(resource6 instanceof Resource.Success)) {
                                            if (resource6 instanceof Resource.Error) {
                                                Throwable th5 = ((Resource.Error) resource6).throwable;
                                                L.e(th5);
                                                ActivityLoginBinding activityLoginBinding19 = readingListFragment2._binding;
                                                activityLoginBinding19.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding19.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding20 = readingListFragment2._binding;
                                                activityLoginBinding20.getClass();
                                                ((WikiErrorView) activityLoginBinding20.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding21 = readingListFragment2._binding;
                                                activityLoginBinding21.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding21.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding22 = readingListFragment2._binding;
                                                activityLoginBinding22.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding22.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding23 = readingListFragment2._binding;
                                                activityLoginBinding23.getClass();
                                                ((WikiErrorView) activityLoginBinding23.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 3));
                                                ActivityLoginBinding activityLoginBinding24 = readingListFragment2._binding;
                                                activityLoginBinding24.getClass();
                                                ((WikiErrorView) activityLoginBinding24.viewLoginError).setError(th5, null);
                                                break;
                                            }
                                        } else {
                                            ReadingList readingList4 = (ReadingList) ((Resource.Success) resource6).data;
                                            readingListFragment2.readingList = readingList4;
                                            ActivityLoginBinding activityLoginBinding25 = readingListFragment2._binding;
                                            activityLoginBinding25.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding25.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding26 = readingListFragment2._binding;
                                            activityLoginBinding26.getClass();
                                            ((WikiErrorView) activityLoginBinding26.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding27 = readingListFragment2._binding;
                                            activityLoginBinding27.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding27.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding28 = readingListFragment2._binding;
                                            activityLoginBinding28.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding28.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding29 = readingListFragment2._binding;
                                            activityLoginBinding29.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding29.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                                            YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                                            if (yearInReviewModel != null) {
                                                linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, 0, true, 524287));
                                                Prefs.setYearInReviewModelData(linkedHashMap);
                                            }
                                            ReadingListFragmentViewModel viewModel = readingListFragment2.getViewModel();
                                            readingList4.getClass();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList4, viewModel, null, 25), 2);
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding30 = readingListFragment2._binding;
                                        activityLoginBinding30.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding30.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding31 = readingListFragment2._binding;
                                        activityLoginBinding31.getClass();
                                        ((WikiErrorView) activityLoginBinding31.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding32 = readingListFragment2._binding;
                                        activityLoginBinding32.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding32.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding33 = readingListFragment2._binding;
                                        activityLoginBinding33.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding33.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    if (readonlySharedFlow3.$$delegate_0.collect(flowCollector3, this) == coroutineSingletons4) {
                        return coroutineSingletons4;
                    }
                } else {
                    if (i7 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            case 4:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlySharedFlow readonlySharedFlow4 = readingListFragment.getViewModel().deleteSelectedPagesFlow;
                    final int i10 = 3;
                    FlowCollector flowCollector4 = new FlowCollector() { // from class: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i10;
                            Unit unit2 = Unit.INSTANCE;
                            ReadingListFragment readingListFragment2 = readingListFragment;
                            switch (i62) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Success)) {
                                        if (resource instanceof Resource.Error) {
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding = readingListFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding.loginButton).setRefreshing(false);
                                        ReadingList readingList = (ReadingList) ((Resource.Success) resource).data;
                                        readingListFragment2.readingList = readingList;
                                        if (readingList != null) {
                                            ActivityLoginBinding activityLoginBinding2 = readingListFragment2._binding;
                                            activityLoginBinding2.getClass();
                                            ((SearchEmptyView) activityLoginBinding2.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 1:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource2).throwable;
                                            L.e(th);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th);
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList2 = (ReadingList) ((Resource.Success) resource2).data;
                                        readingListFragment2.readingList = readingList2;
                                        if (readingList2 != null) {
                                            Context requireContext = readingListFragment2.requireContext();
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(readingList2.pages.size(), "ReadingList.ListItemCount:", ".receive_preview")));
                                            ActivityLoginBinding activityLoginBinding3 = readingListFragment2._binding;
                                            activityLoginBinding3.getClass();
                                            ((SearchEmptyView) activityLoginBinding3.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList2.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 2:
                                    Resource resource3 = (Resource) obj2;
                                    if (!(resource3 instanceof Resource.Success)) {
                                        if (resource3 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource3).throwable;
                                            L.e(th2);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        if (readingListFragment2.isRecommendedList()) {
                                            WikiGamesEvent.submit$default("add_list_new", "rrl_discover", null, null, new Integer(((ReadingList) ((Resource.Success) resource3).data).pages.size()), null, null, null, 492);
                                        }
                                        AppCompatActivity requireActivity = readingListFragment2.requireActivity();
                                        int i72 = MainActivity.$r8$clinit;
                                        requireActivity.startActivity(UriUtil.newIntent(readingListFragment2.requireContext()).addFlags(67108864).putExtra("previewSavedReadingList", true));
                                        readingListFragment2.requireActivity().finish();
                                        break;
                                    }
                                    break;
                                case 3:
                                    Resource resource4 = (Resource) obj2;
                                    if (!(resource4 instanceof Resource.Success)) {
                                        if (resource4 instanceof Resource.Error) {
                                            Throwable th3 = ((Resource.Error) resource4).throwable;
                                            L.e(th3);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th3);
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList3 = readingListFragment2.readingList;
                                        if (readingList3 != null) {
                                            List list = (List) ((Resource.Success) resource4).data;
                                            readingList3.pages.removeAll(list);
                                            List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                            ReadingListBehaviorsUtil.showDeletePagesUndoSnackbar(readingListFragment2.requireActivity(), readingList3, list, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment2, 17));
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    Resource resource5 = (Resource) obj2;
                                    if (!(resource5 instanceof Resource.Loading)) {
                                        if (!(resource5 instanceof Resource.Success)) {
                                            if (resource5 instanceof Resource.Error) {
                                                Throwable th4 = ((Resource.Error) resource5).throwable;
                                                L.e(th4);
                                                ActivityLoginBinding activityLoginBinding4 = readingListFragment2._binding;
                                                activityLoginBinding4.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding4.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding5 = readingListFragment2._binding;
                                                activityLoginBinding5.getClass();
                                                ((WikiErrorView) activityLoginBinding5.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding6 = readingListFragment2._binding;
                                                activityLoginBinding6.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding6.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding7 = readingListFragment2._binding;
                                                activityLoginBinding7.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding8 = readingListFragment2._binding;
                                                activityLoginBinding8.getClass();
                                                ((WikiErrorView) activityLoginBinding8.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 2));
                                                ActivityLoginBinding activityLoginBinding9 = readingListFragment2._binding;
                                                activityLoginBinding9.getClass();
                                                ((WikiErrorView) activityLoginBinding9.viewLoginError).setError(th4, null);
                                                break;
                                            }
                                        } else {
                                            readingListFragment2.readingList = (ReadingList) ((Resource.Success) resource5).data;
                                            ActivityLoginBinding activityLoginBinding10 = readingListFragment2._binding;
                                            activityLoginBinding10.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding10.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding11 = readingListFragment2._binding;
                                            activityLoginBinding11.getClass();
                                            ((WikiErrorView) activityLoginBinding11.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding12 = readingListFragment2._binding;
                                            activityLoginBinding12.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding12.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding13 = readingListFragment2._binding;
                                            activityLoginBinding13.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding14 = readingListFragment2._binding;
                                            activityLoginBinding14.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding14.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            if (readingListFragment2.isRecommendedList()) {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (!Prefs.isRecommendedReadingListOnboardingShown()) {
                                                    readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                                    Integer valueOf = Integer.valueOf(Prefs.getRecommendedReadingListArticlesNumber());
                                                    String string = readingListFragment2.getString(Prefs.getRecommendedReadingListUpdateFrequency().getSnackbarStringRes());
                                                    string.getClass();
                                                    Locale locale = Locale.getDefault();
                                                    locale.getClass();
                                                    String lowerCase = string.toLowerCase(locale);
                                                    lowerCase.getClass();
                                                    String string2 = readingListFragment2.getString(R.string.recommended_reading_list_page_snackbar, valueOf, lowerCase);
                                                    string2.getClass();
                                                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(readingListFragment2.requireActivity(), string2, 0, 12);
                                                    makeSnackbar$default.setAction(R.string.recommended_reading_list_page_snackbar_action, new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 1));
                                                    makeSnackbar$default.show();
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                                                }
                                            }
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
                                            FlowEventBus.post(new NewRecommendedReadingListEvent());
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding15 = readingListFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding15.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding16 = readingListFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((WikiErrorView) activityLoginBinding16.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding17 = readingListFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding17.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding18 = readingListFragment2._binding;
                                        activityLoginBinding18.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding18.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource6 = (Resource) obj2;
                                    if (!(resource6 instanceof Resource.Loading)) {
                                        if (!(resource6 instanceof Resource.Success)) {
                                            if (resource6 instanceof Resource.Error) {
                                                Throwable th5 = ((Resource.Error) resource6).throwable;
                                                L.e(th5);
                                                ActivityLoginBinding activityLoginBinding19 = readingListFragment2._binding;
                                                activityLoginBinding19.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding19.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding20 = readingListFragment2._binding;
                                                activityLoginBinding20.getClass();
                                                ((WikiErrorView) activityLoginBinding20.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding21 = readingListFragment2._binding;
                                                activityLoginBinding21.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding21.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding22 = readingListFragment2._binding;
                                                activityLoginBinding22.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding22.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding23 = readingListFragment2._binding;
                                                activityLoginBinding23.getClass();
                                                ((WikiErrorView) activityLoginBinding23.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 3));
                                                ActivityLoginBinding activityLoginBinding24 = readingListFragment2._binding;
                                                activityLoginBinding24.getClass();
                                                ((WikiErrorView) activityLoginBinding24.viewLoginError).setError(th5, null);
                                                break;
                                            }
                                        } else {
                                            ReadingList readingList4 = (ReadingList) ((Resource.Success) resource6).data;
                                            readingListFragment2.readingList = readingList4;
                                            ActivityLoginBinding activityLoginBinding25 = readingListFragment2._binding;
                                            activityLoginBinding25.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding25.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding26 = readingListFragment2._binding;
                                            activityLoginBinding26.getClass();
                                            ((WikiErrorView) activityLoginBinding26.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding27 = readingListFragment2._binding;
                                            activityLoginBinding27.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding27.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding28 = readingListFragment2._binding;
                                            activityLoginBinding28.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding28.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding29 = readingListFragment2._binding;
                                            activityLoginBinding29.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding29.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                                            YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                                            if (yearInReviewModel != null) {
                                                linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, 0, true, 524287));
                                                Prefs.setYearInReviewModelData(linkedHashMap);
                                            }
                                            ReadingListFragmentViewModel viewModel = readingListFragment2.getViewModel();
                                            readingList4.getClass();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList4, viewModel, null, 25), 2);
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding30 = readingListFragment2._binding;
                                        activityLoginBinding30.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding30.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding31 = readingListFragment2._binding;
                                        activityLoginBinding31.getClass();
                                        ((WikiErrorView) activityLoginBinding31.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding32 = readingListFragment2._binding;
                                        activityLoginBinding32.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding32.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding33 = readingListFragment2._binding;
                                        activityLoginBinding33.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding33.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    if (readonlySharedFlow4.$$delegate_0.collect(flowCollector4, this) == coroutineSingletons5) {
                        return coroutineSingletons5;
                    }
                } else {
                    if (i9 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            case 5:
                CoroutineSingletons coroutineSingletons6 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = readingListFragment.getViewModel().recommendedListFlow;
                    final int i12 = 4;
                    FlowCollector flowCollector5 = new FlowCollector() { // from class: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i12;
                            Unit unit2 = Unit.INSTANCE;
                            ReadingListFragment readingListFragment2 = readingListFragment;
                            switch (i62) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Success)) {
                                        if (resource instanceof Resource.Error) {
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding = readingListFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding.loginButton).setRefreshing(false);
                                        ReadingList readingList = (ReadingList) ((Resource.Success) resource).data;
                                        readingListFragment2.readingList = readingList;
                                        if (readingList != null) {
                                            ActivityLoginBinding activityLoginBinding2 = readingListFragment2._binding;
                                            activityLoginBinding2.getClass();
                                            ((SearchEmptyView) activityLoginBinding2.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 1:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource2).throwable;
                                            L.e(th);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th);
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList2 = (ReadingList) ((Resource.Success) resource2).data;
                                        readingListFragment2.readingList = readingList2;
                                        if (readingList2 != null) {
                                            Context requireContext = readingListFragment2.requireContext();
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(readingList2.pages.size(), "ReadingList.ListItemCount:", ".receive_preview")));
                                            ActivityLoginBinding activityLoginBinding3 = readingListFragment2._binding;
                                            activityLoginBinding3.getClass();
                                            ((SearchEmptyView) activityLoginBinding3.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList2.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 2:
                                    Resource resource3 = (Resource) obj2;
                                    if (!(resource3 instanceof Resource.Success)) {
                                        if (resource3 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource3).throwable;
                                            L.e(th2);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        if (readingListFragment2.isRecommendedList()) {
                                            WikiGamesEvent.submit$default("add_list_new", "rrl_discover", null, null, new Integer(((ReadingList) ((Resource.Success) resource3).data).pages.size()), null, null, null, 492);
                                        }
                                        AppCompatActivity requireActivity = readingListFragment2.requireActivity();
                                        int i72 = MainActivity.$r8$clinit;
                                        requireActivity.startActivity(UriUtil.newIntent(readingListFragment2.requireContext()).addFlags(67108864).putExtra("previewSavedReadingList", true));
                                        readingListFragment2.requireActivity().finish();
                                        break;
                                    }
                                    break;
                                case 3:
                                    Resource resource4 = (Resource) obj2;
                                    if (!(resource4 instanceof Resource.Success)) {
                                        if (resource4 instanceof Resource.Error) {
                                            Throwable th3 = ((Resource.Error) resource4).throwable;
                                            L.e(th3);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th3);
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList3 = readingListFragment2.readingList;
                                        if (readingList3 != null) {
                                            List list = (List) ((Resource.Success) resource4).data;
                                            readingList3.pages.removeAll(list);
                                            List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                            ReadingListBehaviorsUtil.showDeletePagesUndoSnackbar(readingListFragment2.requireActivity(), readingList3, list, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment2, 17));
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    Resource resource5 = (Resource) obj2;
                                    if (!(resource5 instanceof Resource.Loading)) {
                                        if (!(resource5 instanceof Resource.Success)) {
                                            if (resource5 instanceof Resource.Error) {
                                                Throwable th4 = ((Resource.Error) resource5).throwable;
                                                L.e(th4);
                                                ActivityLoginBinding activityLoginBinding4 = readingListFragment2._binding;
                                                activityLoginBinding4.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding4.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding5 = readingListFragment2._binding;
                                                activityLoginBinding5.getClass();
                                                ((WikiErrorView) activityLoginBinding5.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding6 = readingListFragment2._binding;
                                                activityLoginBinding6.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding6.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding7 = readingListFragment2._binding;
                                                activityLoginBinding7.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding8 = readingListFragment2._binding;
                                                activityLoginBinding8.getClass();
                                                ((WikiErrorView) activityLoginBinding8.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 2));
                                                ActivityLoginBinding activityLoginBinding9 = readingListFragment2._binding;
                                                activityLoginBinding9.getClass();
                                                ((WikiErrorView) activityLoginBinding9.viewLoginError).setError(th4, null);
                                                break;
                                            }
                                        } else {
                                            readingListFragment2.readingList = (ReadingList) ((Resource.Success) resource5).data;
                                            ActivityLoginBinding activityLoginBinding10 = readingListFragment2._binding;
                                            activityLoginBinding10.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding10.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding11 = readingListFragment2._binding;
                                            activityLoginBinding11.getClass();
                                            ((WikiErrorView) activityLoginBinding11.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding12 = readingListFragment2._binding;
                                            activityLoginBinding12.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding12.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding13 = readingListFragment2._binding;
                                            activityLoginBinding13.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding14 = readingListFragment2._binding;
                                            activityLoginBinding14.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding14.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            if (readingListFragment2.isRecommendedList()) {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (!Prefs.isRecommendedReadingListOnboardingShown()) {
                                                    readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                                    Integer valueOf = Integer.valueOf(Prefs.getRecommendedReadingListArticlesNumber());
                                                    String string = readingListFragment2.getString(Prefs.getRecommendedReadingListUpdateFrequency().getSnackbarStringRes());
                                                    string.getClass();
                                                    Locale locale = Locale.getDefault();
                                                    locale.getClass();
                                                    String lowerCase = string.toLowerCase(locale);
                                                    lowerCase.getClass();
                                                    String string2 = readingListFragment2.getString(R.string.recommended_reading_list_page_snackbar, valueOf, lowerCase);
                                                    string2.getClass();
                                                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(readingListFragment2.requireActivity(), string2, 0, 12);
                                                    makeSnackbar$default.setAction(R.string.recommended_reading_list_page_snackbar_action, new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 1));
                                                    makeSnackbar$default.show();
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                                                }
                                            }
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
                                            FlowEventBus.post(new NewRecommendedReadingListEvent());
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding15 = readingListFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding15.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding16 = readingListFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((WikiErrorView) activityLoginBinding16.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding17 = readingListFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding17.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding18 = readingListFragment2._binding;
                                        activityLoginBinding18.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding18.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource6 = (Resource) obj2;
                                    if (!(resource6 instanceof Resource.Loading)) {
                                        if (!(resource6 instanceof Resource.Success)) {
                                            if (resource6 instanceof Resource.Error) {
                                                Throwable th5 = ((Resource.Error) resource6).throwable;
                                                L.e(th5);
                                                ActivityLoginBinding activityLoginBinding19 = readingListFragment2._binding;
                                                activityLoginBinding19.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding19.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding20 = readingListFragment2._binding;
                                                activityLoginBinding20.getClass();
                                                ((WikiErrorView) activityLoginBinding20.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding21 = readingListFragment2._binding;
                                                activityLoginBinding21.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding21.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding22 = readingListFragment2._binding;
                                                activityLoginBinding22.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding22.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding23 = readingListFragment2._binding;
                                                activityLoginBinding23.getClass();
                                                ((WikiErrorView) activityLoginBinding23.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 3));
                                                ActivityLoginBinding activityLoginBinding24 = readingListFragment2._binding;
                                                activityLoginBinding24.getClass();
                                                ((WikiErrorView) activityLoginBinding24.viewLoginError).setError(th5, null);
                                                break;
                                            }
                                        } else {
                                            ReadingList readingList4 = (ReadingList) ((Resource.Success) resource6).data;
                                            readingListFragment2.readingList = readingList4;
                                            ActivityLoginBinding activityLoginBinding25 = readingListFragment2._binding;
                                            activityLoginBinding25.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding25.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding26 = readingListFragment2._binding;
                                            activityLoginBinding26.getClass();
                                            ((WikiErrorView) activityLoginBinding26.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding27 = readingListFragment2._binding;
                                            activityLoginBinding27.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding27.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding28 = readingListFragment2._binding;
                                            activityLoginBinding28.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding28.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding29 = readingListFragment2._binding;
                                            activityLoginBinding29.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding29.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                                            YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                                            if (yearInReviewModel != null) {
                                                linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, 0, true, 524287));
                                                Prefs.setYearInReviewModelData(linkedHashMap);
                                            }
                                            ReadingListFragmentViewModel viewModel = readingListFragment2.getViewModel();
                                            readingList4.getClass();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList4, viewModel, null, 25), 2);
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding30 = readingListFragment2._binding;
                                        activityLoginBinding30.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding30.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding31 = readingListFragment2._binding;
                                        activityLoginBinding31.getClass();
                                        ((WikiErrorView) activityLoginBinding31.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding32 = readingListFragment2._binding;
                                        activityLoginBinding32.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding32.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding33 = readingListFragment2._binding;
                                        activityLoginBinding33.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding33.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(flowCollector5, this) == coroutineSingletons6) {
                        return coroutineSingletons6;
                    }
                } else {
                    if (i11 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            case 6:
                CoroutineSingletons coroutineSingletons7 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i13 = this.label;
                if (i13 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow2 = readingListFragment.getViewModel().yirListFlow;
                    final int i14 = 5;
                    FlowCollector flowCollector6 = new FlowCollector() { // from class: org.wikipedia.readinglist.ReadingListFragment$onViewCreated$1$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i14;
                            Unit unit2 = Unit.INSTANCE;
                            ReadingListFragment readingListFragment2 = readingListFragment;
                            switch (i62) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (!(resource instanceof Resource.Success)) {
                                        if (resource instanceof Resource.Error) {
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding = readingListFragment2._binding;
                                        activityLoginBinding.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding.loginButton).setRefreshing(false);
                                        ReadingList readingList = (ReadingList) ((Resource.Success) resource).data;
                                        readingListFragment2.readingList = readingList;
                                        if (readingList != null) {
                                            ActivityLoginBinding activityLoginBinding2 = readingListFragment2._binding;
                                            activityLoginBinding2.getClass();
                                            ((SearchEmptyView) activityLoginBinding2.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 1:
                                    Resource resource2 = (Resource) obj2;
                                    if (!(resource2 instanceof Resource.Success)) {
                                        if (resource2 instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource2).throwable;
                                            L.e(th);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th);
                                            readingListFragment2.requireActivity().finish();
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList2 = (ReadingList) ((Resource.Success) resource2).data;
                                        readingListFragment2.readingList = readingList2;
                                        if (readingList2 != null) {
                                            Context requireContext = readingListFragment2.requireContext();
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(readingList2.pages.size(), "ReadingList.ListItemCount:", ".receive_preview")));
                                            ActivityLoginBinding activityLoginBinding3 = readingListFragment2._binding;
                                            activityLoginBinding3.getClass();
                                            ((SearchEmptyView) activityLoginBinding3.loginPrimaryContainer).setEmptyText(readingListFragment2.getString(R.string.search_reading_list_no_results, readingList2.getTitle()));
                                        }
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                    }
                                    break;
                                case 2:
                                    Resource resource3 = (Resource) obj2;
                                    if (!(resource3 instanceof Resource.Success)) {
                                        if (resource3 instanceof Resource.Error) {
                                            Throwable th2 = ((Resource.Error) resource3).throwable;
                                            L.e(th2);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th2);
                                            break;
                                        }
                                    } else {
                                        if (readingListFragment2.isRecommendedList()) {
                                            WikiGamesEvent.submit$default("add_list_new", "rrl_discover", null, null, new Integer(((ReadingList) ((Resource.Success) resource3).data).pages.size()), null, null, null, 492);
                                        }
                                        AppCompatActivity requireActivity = readingListFragment2.requireActivity();
                                        int i72 = MainActivity.$r8$clinit;
                                        requireActivity.startActivity(UriUtil.newIntent(readingListFragment2.requireContext()).addFlags(67108864).putExtra("previewSavedReadingList", true));
                                        readingListFragment2.requireActivity().finish();
                                        break;
                                    }
                                    break;
                                case 3:
                                    Resource resource4 = (Resource) obj2;
                                    if (!(resource4 instanceof Resource.Success)) {
                                        if (resource4 instanceof Resource.Error) {
                                            Throwable th3 = ((Resource.Error) resource4).throwable;
                                            L.e(th3);
                                            ShareUtil.showError$default(readingListFragment2.requireActivity(), th3);
                                            break;
                                        }
                                    } else {
                                        ReadingList readingList3 = readingListFragment2.readingList;
                                        if (readingList3 != null) {
                                            List list = (List) ((Resource.Success) resource4).data;
                                            readingList3.pages.removeAll(list);
                                            List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                            ReadingListBehaviorsUtil.showDeletePagesUndoSnackbar(readingListFragment2.requireActivity(), readingList3, list, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment2, 17));
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                    }
                                    break;
                                case 4:
                                    Resource resource5 = (Resource) obj2;
                                    if (!(resource5 instanceof Resource.Loading)) {
                                        if (!(resource5 instanceof Resource.Success)) {
                                            if (resource5 instanceof Resource.Error) {
                                                Throwable th4 = ((Resource.Error) resource5).throwable;
                                                L.e(th4);
                                                ActivityLoginBinding activityLoginBinding4 = readingListFragment2._binding;
                                                activityLoginBinding4.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding4.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding5 = readingListFragment2._binding;
                                                activityLoginBinding5.getClass();
                                                ((WikiErrorView) activityLoginBinding5.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding6 = readingListFragment2._binding;
                                                activityLoginBinding6.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding6.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding7 = readingListFragment2._binding;
                                                activityLoginBinding7.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding8 = readingListFragment2._binding;
                                                activityLoginBinding8.getClass();
                                                ((WikiErrorView) activityLoginBinding8.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 2));
                                                ActivityLoginBinding activityLoginBinding9 = readingListFragment2._binding;
                                                activityLoginBinding9.getClass();
                                                ((WikiErrorView) activityLoginBinding9.viewLoginError).setError(th4, null);
                                                break;
                                            }
                                        } else {
                                            readingListFragment2.readingList = (ReadingList) ((Resource.Success) resource5).data;
                                            ActivityLoginBinding activityLoginBinding10 = readingListFragment2._binding;
                                            activityLoginBinding10.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding10.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding11 = readingListFragment2._binding;
                                            activityLoginBinding11.getClass();
                                            ((WikiErrorView) activityLoginBinding11.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding12 = readingListFragment2._binding;
                                            activityLoginBinding12.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding12.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding13 = readingListFragment2._binding;
                                            activityLoginBinding13.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding14 = readingListFragment2._binding;
                                            activityLoginBinding14.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding14.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            if (readingListFragment2.isRecommendedList()) {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (!Prefs.isRecommendedReadingListOnboardingShown()) {
                                                    readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                                    Integer valueOf = Integer.valueOf(Prefs.getRecommendedReadingListArticlesNumber());
                                                    String string = readingListFragment2.getString(Prefs.getRecommendedReadingListUpdateFrequency().getSnackbarStringRes());
                                                    string.getClass();
                                                    Locale locale = Locale.getDefault();
                                                    locale.getClass();
                                                    String lowerCase = string.toLowerCase(locale);
                                                    lowerCase.getClass();
                                                    String string2 = readingListFragment2.getString(R.string.recommended_reading_list_page_snackbar, valueOf, lowerCase);
                                                    string2.getClass();
                                                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(readingListFragment2.requireActivity(), string2, 0, 12);
                                                    makeSnackbar$default.setAction(R.string.recommended_reading_list_page_snackbar_action, new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 1));
                                                    makeSnackbar$default.show();
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_onboarding_shown, true);
                                                }
                                            }
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
                                            FlowEventBus.post(new NewRecommendedReadingListEvent());
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding15 = readingListFragment2._binding;
                                        activityLoginBinding15.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding15.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding16 = readingListFragment2._binding;
                                        activityLoginBinding16.getClass();
                                        ((WikiErrorView) activityLoginBinding16.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding17 = readingListFragment2._binding;
                                        activityLoginBinding17.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding17.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding18 = readingListFragment2._binding;
                                        activityLoginBinding18.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding18.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                                default:
                                    Resource resource6 = (Resource) obj2;
                                    if (!(resource6 instanceof Resource.Loading)) {
                                        if (!(resource6 instanceof Resource.Success)) {
                                            if (resource6 instanceof Resource.Error) {
                                                Throwable th5 = ((Resource.Error) resource6).throwable;
                                                L.e(th5);
                                                ActivityLoginBinding activityLoginBinding19 = readingListFragment2._binding;
                                                activityLoginBinding19.getClass();
                                                ((LinearProgressIndicator) activityLoginBinding19.viewProgressBar).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding20 = readingListFragment2._binding;
                                                activityLoginBinding20.getClass();
                                                ((WikiErrorView) activityLoginBinding20.viewLoginError).setVisibility(0);
                                                ActivityLoginBinding activityLoginBinding21 = readingListFragment2._binding;
                                                activityLoginBinding21.getClass();
                                                ((ReadingListHeaderView) activityLoginBinding21.loginPasswordInput).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding22 = readingListFragment2._binding;
                                                activityLoginBinding22.getClass();
                                                ((WikiSwipeRefreshLayout) activityLoginBinding22.loginButton).setVisibility(8);
                                                ActivityLoginBinding activityLoginBinding23 = readingListFragment2._binding;
                                                activityLoginBinding23.getClass();
                                                ((WikiErrorView) activityLoginBinding23.viewLoginError).setBackClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(readingListFragment2, 3));
                                                ActivityLoginBinding activityLoginBinding24 = readingListFragment2._binding;
                                                activityLoginBinding24.getClass();
                                                ((WikiErrorView) activityLoginBinding24.viewLoginError).setError(th5, null);
                                                break;
                                            }
                                        } else {
                                            ReadingList readingList4 = (ReadingList) ((Resource.Success) resource6).data;
                                            readingListFragment2.readingList = readingList4;
                                            ActivityLoginBinding activityLoginBinding25 = readingListFragment2._binding;
                                            activityLoginBinding25.getClass();
                                            ((LinearProgressIndicator) activityLoginBinding25.viewProgressBar).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding26 = readingListFragment2._binding;
                                            activityLoginBinding26.getClass();
                                            ((WikiErrorView) activityLoginBinding26.viewLoginError).setVisibility(8);
                                            ActivityLoginBinding activityLoginBinding27 = readingListFragment2._binding;
                                            activityLoginBinding27.getClass();
                                            ((ReadingListHeaderView) activityLoginBinding27.loginPasswordInput).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding28 = readingListFragment2._binding;
                                            activityLoginBinding28.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding28.loginButton).setVisibility(0);
                                            ActivityLoginBinding activityLoginBinding29 = readingListFragment2._binding;
                                            activityLoginBinding29.getClass();
                                            ((WikiSwipeRefreshLayout) activityLoginBinding29.loginButton).setRefreshing(false);
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            Prefs prefs3 = Prefs.INSTANCE;
                                            LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
                                            YearInReviewModel yearInReviewModel = (YearInReviewModel) linkedHashMap.get(2025);
                                            if (yearInReviewModel != null) {
                                                linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel, 0, true, 524287));
                                                Prefs.setYearInReviewModelData(linkedHashMap);
                                            }
                                            ReadingListFragmentViewModel viewModel = readingListFragment2.getViewModel();
                                            readingList4.getClass();
                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new RealImageLoader$execute$2(readingList4, viewModel, null, 25), 2);
                                            break;
                                        }
                                    } else {
                                        ActivityLoginBinding activityLoginBinding30 = readingListFragment2._binding;
                                        activityLoginBinding30.getClass();
                                        ((LinearProgressIndicator) activityLoginBinding30.viewProgressBar).setVisibility(0);
                                        ActivityLoginBinding activityLoginBinding31 = readingListFragment2._binding;
                                        activityLoginBinding31.getClass();
                                        ((WikiErrorView) activityLoginBinding31.viewLoginError).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding32 = readingListFragment2._binding;
                                        activityLoginBinding32.getClass();
                                        ((ReadingListHeaderView) activityLoginBinding32.loginPasswordInput).setVisibility(8);
                                        ActivityLoginBinding activityLoginBinding33 = readingListFragment2._binding;
                                        activityLoginBinding33.getClass();
                                        ((WikiSwipeRefreshLayout) activityLoginBinding33.loginButton).setVisibility(8);
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(flowCollector6, this) == coroutineSingletons7) {
                        return coroutineSingletons7;
                    }
                } else {
                    if (i13 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            default:
                CoroutineSingletons coroutineSingletons8 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i15 = this.label;
                if (i15 != 0) {
                    if (i15 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow readonlySharedFlow5 = FlowEventBus.events;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(readingListFragment, continuation, i3);
                this.label = 1;
                return StateFlowKt.collectLatest(readonlySharedFlow5, anonymousClass12, this) == coroutineSingletons8 ? coroutineSingletons8 : unit;
        }
    }
}
