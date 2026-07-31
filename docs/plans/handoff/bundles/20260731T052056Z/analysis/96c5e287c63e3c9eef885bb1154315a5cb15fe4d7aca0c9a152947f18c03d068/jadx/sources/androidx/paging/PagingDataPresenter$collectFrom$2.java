package androidx.paging;

import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import android.view.View;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.contextmenu.internal.FloatingTextActionModeCallback;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.preference.PreferenceManager;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.categories.db.CategoryDao_Impl;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.db.HistoryEntryDao_Impl;
import org.wikipedia.offline.db.OfflineObjectDao_Impl;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl$$ExternalSyntheticLambda12;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingDataPresenter$collectFrom$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Object $pagingData;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PagingDataPresenter$collectFrom$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$pagingData = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$pagingData;
        Object obj3 = this.this$0;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                return new PagingDataPresenter$collectFrom$2((AsyncPagingDataDiffer$presenter$1) obj3, (PagingData) obj2, continuation, 0).invokeSuspend(unit);
            case 1:
                return new PagingDataPresenter$collectFrom$2((AndroidTextContextMenuToolbarProvider) obj3, (TextContextMenuDataProvider) obj2, continuation, 1).invokeSuspend(unit);
            case 2:
                return new PagingDataPresenter$collectFrom$2((BasicTextContextMenuProvider) obj3, (BasicTextContextMenuProvider.SessionImpl) obj2, continuation, 2).invokeSuspend(unit);
            case 3:
                return new PagingDataPresenter$collectFrom$2((RoomDatabase) obj3, (Function1) obj2, continuation, 3).invokeSuspend(unit);
            case 4:
                return new PagingDataPresenter$collectFrom$2((FlowCollector) obj3, (Ref$ObjectRef) obj2, continuation, 4).invokeSuspend(unit);
            case 5:
                return new PagingDataPresenter$collectFrom$2((CategoryDao_Impl) obj3, (List) obj2, continuation, 5).invokeSuspend(unit);
            case 6:
                return new PagingDataPresenter$collectFrom$2((HistoryEntryDao_Impl) obj3, (List) obj2, continuation, 6).invokeSuspend(unit);
            case 7:
                return new PagingDataPresenter$collectFrom$2((HistoryEntryDao_Impl) obj3, (HistoryEntry) obj2, continuation, 7).invokeSuspend(unit);
            case 8:
                return new PagingDataPresenter$collectFrom$2((OfflineObjectDao_Impl) obj3, (ArrayList) obj2, continuation, 8).invokeSuspend(unit);
            default:
                return new PagingDataPresenter$collectFrom$2((ReadingListPageDao_Impl) obj3, (PageTitle) obj2, continuation, 9).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.os.Handler] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.preference.PreferenceManager] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Handler handler;
        AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$pagingData;
        Object obj3 = this.this$0;
        int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                PagingData pagingData = (PagingData) obj2;
                AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = (AsyncPagingDataDiffer$presenter$1) obj3;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                UiReceiver uiReceiver = pagingData.uiReceiver;
                UiReceiver uiReceiver2 = asyncPagingDataDiffer$presenter$1.uiReceiver;
                asyncPagingDataDiffer$presenter$1.uiReceiver = uiReceiver;
                if (uiReceiver2 instanceof PagingDataPresenter$InitialUiReceiver) {
                    PagingDataPresenter$InitialUiReceiver pagingDataPresenter$InitialUiReceiver = (PagingDataPresenter$InitialUiReceiver) uiReceiver2;
                    if (pagingDataPresenter$InitialUiReceiver.shouldRetry) {
                        uiReceiver.retry();
                    }
                    if (pagingDataPresenter$InitialUiReceiver.shouldRefresh) {
                        uiReceiver.refresh();
                    }
                }
                Flow flow = pagingData.flow;
                ThumbNode$onAttach$1.AnonymousClass1 anonymousClass1 = new ThumbNode$onAttach$1.AnonymousClass1(10, asyncPagingDataDiffer$presenter$1, pagingData);
                this.label = 1;
                return flow.collect(anonymousClass1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 1:
                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) obj3;
                PreferenceManager preferenceManager = androidTextContextMenuToolbarProvider.snapshotStateObserver;
                View view = androidTextContextMenuToolbarProvider.view;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                int i5 = 3;
                try {
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl textContextMenuSessionImpl = new AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl();
                        TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj2;
                        AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl textActionModeCallbackImpl2 = new AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl(textContextMenuSessionImpl, new AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 0), new AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 1), view);
                        Function1 function1 = androidTextContextMenuToolbarProvider.callbackInjector;
                        if (function1 != null && (textActionModeCallbackImpl = (AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl) function1.invoke(textActionModeCallbackImpl2)) != null) {
                            textActionModeCallbackImpl2 = textActionModeCallbackImpl;
                        }
                        Looper myLooper = Looper.myLooper();
                        Handler handler2 = view.getHandler();
                        if (myLooper != (handler2 != null ? handler2.getLooper() : null)) {
                            Processor$$ExternalSyntheticLambda1 processor$$ExternalSyntheticLambda1 = androidTextContextMenuToolbarProvider.startActionModeRunnable;
                            if (processor$$ExternalSyntheticLambda1 == null) {
                                processor$$ExternalSyntheticLambda1 = new Processor$$ExternalSyntheticLambda1(androidTextContextMenuToolbarProvider, textActionModeCallbackImpl2, textContextMenuSessionImpl, i2);
                                androidTextContextMenuToolbarProvider.startActionModeRunnable = processor$$ExternalSyntheticLambda1;
                            }
                            view.post(processor$$ExternalSyntheticLambda1);
                        } else {
                            ActionMode startActionMode = view.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl2), 1);
                            if (startActionMode == null) {
                                return unit;
                            }
                            androidTextContextMenuToolbarProvider.actionMode = startActionMode;
                        }
                        this.label = 1;
                        Object receive = textContextMenuSessionImpl.channel.receive(this);
                        if (receive != coroutineSingletons2) {
                            receive = unit;
                        }
                        if (receive == coroutineSingletons2) {
                            return coroutineSingletons2;
                        }
                    } else {
                        if (i4 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    if (Looper.myLooper() != (handler != 0 ? handler.getLooper() : null)) {
                        Runnable runnable = androidTextContextMenuToolbarProvider.finishActionModeRunnable;
                        if (runnable == null) {
                            runnable = new Task$$ExternalSyntheticLambda0(i5, androidTextContextMenuToolbarProvider);
                            androidTextContextMenuToolbarProvider.finishActionModeRunnable = runnable;
                        }
                        view.post(runnable);
                    } else {
                        ActionMode actionMode = androidTextContextMenuToolbarProvider.actionMode;
                        if (actionMode != null) {
                            actionMode.finish();
                        }
                    }
                    Processor$$ExternalSyntheticLambda1 processor$$ExternalSyntheticLambda12 = androidTextContextMenuToolbarProvider.startActionModeRunnable;
                    if (processor$$ExternalSyntheticLambda12 != null) {
                        view.removeCallbacks(processor$$ExternalSyntheticLambda12);
                    }
                    androidTextContextMenuToolbarProvider.actionMode = null;
                    return unit;
                } finally {
                    preferenceManager.clear();
                    Looper myLooper2 = Looper.myLooper();
                    handler = view.getHandler();
                    if (myLooper2 != (handler != null ? handler.getLooper() : null)) {
                        Runnable runnable2 = androidTextContextMenuToolbarProvider.finishActionModeRunnable;
                        if (runnable2 == null) {
                            runnable2 = new Task$$ExternalSyntheticLambda0(i5, androidTextContextMenuToolbarProvider);
                            androidTextContextMenuToolbarProvider.finishActionModeRunnable = runnable2;
                        }
                        view.post(runnable2);
                    } else {
                        ActionMode actionMode2 = androidTextContextMenuToolbarProvider.actionMode;
                        if (actionMode2 != null) {
                            actionMode2.finish();
                        }
                    }
                    Processor$$ExternalSyntheticLambda1 processor$$ExternalSyntheticLambda13 = androidTextContextMenuToolbarProvider.startActionModeRunnable;
                    if (processor$$ExternalSyntheticLambda13 != null) {
                        view.removeCallbacks(processor$$ExternalSyntheticLambda13);
                    }
                    androidTextContextMenuToolbarProvider.actionMode = null;
                }
            case 2:
                BasicTextContextMenuProvider.SessionImpl sessionImpl = (BasicTextContextMenuProvider.SessionImpl) obj2;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = ((BasicTextContextMenuProvider) obj3).session$delegate;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                try {
                    if (i6 == 0) {
                        ResultKt.throwOnFailure(obj);
                        parcelableSnapshotMutableState.setValue(sessionImpl);
                        this.label = 1;
                        Object receive2 = sessionImpl.channel.receive(this);
                        if (receive2 != coroutineSingletons3) {
                            receive2 = unit;
                        }
                        if (receive2 == coroutineSingletons3) {
                            return coroutineSingletons3;
                        }
                    } else {
                        if (i6 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return unit;
                } finally {
                    parcelableSnapshotMutableState.setValue(null);
                }
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                RoomDatabase roomDatabase = (RoomDatabase) obj3;
                DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1(roomDatabase, continuation, (Function1) obj2, i2);
                this.label = 1;
                Object useConnection = roomDatabase.useConnection(false, dBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1, this);
                return useConnection == coroutineSingletons4 ? coroutineSingletons4 : useConnection;
            case 4:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i8 = this.label;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) obj3;
                    Symbol symbol = CombineKt.NULL;
                    Object obj4 = ref$ObjectRef.element;
                    if (obj4 == symbol) {
                        obj4 = null;
                    }
                    this.label = 1;
                    if (flowCollector.emit(obj4, this) == coroutineSingletons5) {
                        return coroutineSingletons5;
                    }
                } else {
                    if (i8 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ref$ObjectRef.element = null;
                return unit;
            case 5:
                CoroutineSingletons coroutineSingletons6 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return ViewSizeResolver$CC.upsertAll$suspendImpl((CategoryDao_Impl) obj3, (List) obj2, this) == coroutineSingletons6 ? coroutineSingletons6 : unit;
                }
                if (i9 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 6:
                CoroutineSingletons coroutineSingletons7 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return Service.CC.insert$suspendImpl((HistoryEntryDao_Impl) obj3, (List) obj2, this) == coroutineSingletons7 ? coroutineSingletons7 : unit;
                }
                if (i10 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 7:
                CoroutineSingletons coroutineSingletons8 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    Object upsert$suspendImpl = Service.CC.upsert$suspendImpl((HistoryEntryDao_Impl) obj3, (HistoryEntry) obj2, this);
                    return upsert$suspendImpl == coroutineSingletons8 ? coroutineSingletons8 : upsert$suspendImpl;
                }
                if (i11 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 8:
                CoroutineSingletons coroutineSingletons9 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i12 = this.label;
                if (i12 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return Service.CC.deleteObjectsForPageId$suspendImpl((OfflineObjectDao_Impl) obj3, (ArrayList) obj2, this) == coroutineSingletons9 ? coroutineSingletons9 : unit;
                }
                if (i12 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                CoroutineSingletons coroutineSingletons10 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i13 = this.label;
                if (i13 != 0) {
                    if (i13 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadingListPageDao_Impl readingListPageDao_Impl = (ReadingListPageDao_Impl) obj3;
                PageTitle pageTitle = (PageTitle) obj2;
                this.label = 1;
                WikiSite wikiSite = pageTitle.wikiSite;
                Object performSuspending = ExceptionsKt.performSuspending(readingListPageDao_Impl.__db, true, false, new ReadingListPageDao_Impl$$ExternalSyntheticLambda12(readingListPageDao_Impl, wikiSite, wikiSite.languageCode, pageTitle.namespace(), pageTitle.getPrefixedText(), 0), this);
                return performSuspending == coroutineSingletons10 ? coroutineSingletons10 : performSuspending;
        }
    }
}
