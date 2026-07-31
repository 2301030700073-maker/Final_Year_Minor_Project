package androidx.paging;

import android.os.Build;
import android.util.Log;
import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.paging.PageEvent;
import androidx.paging.compose.LazyPagingItems;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexingIterable;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AsyncPagingDataDiffer$presenter$1 {
    public final /* synthetic */ int $r8$classId;
    public final SharedFlowImpl _onPagesUpdatedFlow;
    public final HintHandler collectFromRunner;
    public final SVG combinedLoadStatesCollection;
    public HintHandler hintReceiver;
    public final StateFlowImpl inGetItem;
    public volatile int lastAccessedIndex;
    public volatile boolean lastAccessedIndexUnfulfilled;
    public final ReadonlyStateFlow loadStateFlow;
    public final CoroutineContext mainContext;
    public final IndexingIterable onPagesUpdatedListeners;
    public PageStore pageStore;
    public final /* synthetic */ Object this$0;
    public UiReceiver uiReceiver;

    public AsyncPagingDataDiffer$presenter$1(CoroutineContext coroutineContext, PagingData pagingData) {
        PageStore pageStore;
        PageEvent.Insert insert;
        coroutineContext.getClass();
        this.mainContext = coroutineContext;
        this.uiReceiver = new PagingDataPresenter$InitialUiReceiver();
        PageStore pageStore2 = PageStore.INITIAL;
        PageEvent.Insert insert2 = pagingData != null ? (PageEvent.Insert) pagingData.cachedPageEvent.invoke() : null;
        if (insert2 != null) {
            pageStore = new PageStore(insert2);
        } else {
            pageStore = PageStore.INITIAL;
            pageStore.getClass();
        }
        this.pageStore = pageStore;
        SVG svg = new SVG(22);
        if (pagingData != null && (insert = (PageEvent.Insert) pagingData.cachedPageEvent.invoke()) != null) {
            svg.set(insert.sourceLoadStates, insert.mediatorLoadStates);
        }
        this.combinedLoadStatesCollection = svg;
        IndexingIterable indexingIterable = new IndexingIterable();
        this.onPagesUpdatedListeners = indexingIterable;
        this.collectFromRunner = new HintHandler(28);
        this.inGetItem = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        this.loadStateFlow = (ReadonlyStateFlow) svg.idToElementMap;
        this._onPagesUpdatedFlow = StateFlowKt.MutableSharedFlow(0, 64, BufferOverflow.DROP_OLDEST);
        ((CopyOnWriteArrayList) indexingIterable.iteratorFactory).add(new Worker$$ExternalSyntheticLambda0(3, this));
    }

    public final Object get(int i) {
        Object value;
        Object value2;
        StateFlowImpl stateFlowImpl = this.inGetItem;
        do {
            value = stateFlowImpl.getValue();
            ((Boolean) value).getClass();
        } while (!stateFlowImpl.compareAndSet(value, Boolean.TRUE));
        this.lastAccessedIndexUnfulfilled = true;
        this.lastAccessedIndex = i;
        Object obj = null;
        if (Build.ID != null && Log.isLoggable("Paging", 2)) {
            Log.v("Paging", "Accessing item index[" + i + ']', null);
        }
        HintHandler hintHandler = this.hintReceiver;
        if (hintHandler != null) {
            hintHandler.processHint(this.pageStore.createAccessHintForIndex(i));
        }
        PageStore pageStore = this.pageStore;
        if (i < 0) {
            pageStore.getClass();
        } else if (i < pageStore.getSize()) {
            int i2 = i - pageStore.placeholdersBefore;
            if (i2 >= 0 && i2 < pageStore.dataCount) {
                obj = pageStore.getItem(i2);
            }
            Object obj2 = obj;
            StateFlowImpl stateFlowImpl2 = this.inGetItem;
            do {
                value2 = stateFlowImpl2.getValue();
                ((Boolean) value2).getClass();
            } while (!stateFlowImpl2.compareAndSet(value2, Boolean.FALSE));
            return obj2;
        }
        TimeSource$Companion$$ExternalSyntheticLambda0.m(pageStore.getSize(), Animation.CC.m20m(i, "Index: ", ", Size: "));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0121 A[Catch: CancellationException -> 0x005a, TryCatch #0 {CancellationException -> 0x005a, blocks: (B:11:0x004f, B:13:0x00b7, B:15:0x00bb, B:17:0x00c2, B:19:0x00cf, B:21:0x00d3, B:22:0x00d9, B:24:0x00e9, B:26:0x00ed, B:27:0x00f3, B:29:0x0121, B:30:0x013b, B:34:0x014b, B:35:0x0153, B:37:0x0159, B:39:0x015d), top: B:10:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014b A[Catch: CancellationException -> 0x005a, TryCatch #0 {CancellationException -> 0x005a, blocks: (B:11:0x004f, B:13:0x00b7, B:15:0x00bb, B:17:0x00c2, B:19:0x00cf, B:21:0x00d3, B:22:0x00d9, B:24:0x00e9, B:26:0x00ed, B:27:0x00f3, B:29:0x0121, B:30:0x013b, B:34:0x014b, B:35:0x0153, B:37:0x0159, B:39:0x015d), top: B:10:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object presentNewList(java.util.List r18, int r19, int r20, boolean r21, androidx.paging.LoadStates r22, androidx.paging.LoadStates r23, androidx.paging.HintHandler r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.AsyncPagingDataDiffer$presenter$1.presentNewList(java.util.List, int, int, boolean, androidx.paging.LoadStates, androidx.paging.LoadStates, androidx.paging.HintHandler, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:6|(2:8|(7:10|11|12|(1:(9:15|16|17|18|(7:20|(2:(1:23)|24)(1:(2:67|(1:69)))|25|(1:27)(1:65)|(1:29)(1:(1:64))|(1:32)|33)(20:70|(1:72)|73|(1:75)|76|(1:78)|79|(1:81)|82|(1:84)|85|(1:87)|88|(1:90)|91|(1:93)|94|(1:96)|97|(1:99)(1:(1:101)))|34|(1:36)(3:39|(3:42|(5:45|(1:47)(1:60)|48|(1:57)(2:54|55)|43)|61)|62)|37|38)(3:103|104|105))(2:106|(2:108|(2:110|(2:112|113)(1:114))(2:115|(2:117|(2:119|120)(1:121))(10:122|123|(2:125|126)|17|18|(0)(0)|34|(0)(0)|37|38)))(2:127|(5:129|(1:131)|(1:133)|134|(2:136|137)(1:(2:139|140)(1:141)))(2:142|(5:144|(1:146)|(1:148)|149|(2:151|152)(1:(2:154|155)(1:156)))(2:157|(4:159|(1:161)(1:(1:168))|162|(2:164|165)(1:166))(2:169|(5:171|(1:173)(1:(1:182))|(1:175)|176|(2:178|179)(1:180))(3:183|104|105))))))|184|185|186))|187|11|12|(0)(0)|184|185|186) */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object presentPagingDataEvent(androidx.paging.FlowExtKt r17, kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.AsyncPagingDataDiffer$presenter$1.presentPagingDataEvent(androidx.paging.FlowExtKt, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void refresh() {
        if (Build.ID != null && Log.isLoggable("Paging", 3)) {
            Log.d("Paging", "Refresh signal received", null);
        }
        this.uiReceiver.refresh();
    }

    public final ItemSnapshotList snapshot() {
        PageStore pageStore = this.pageStore;
        int i = pageStore.placeholdersBefore;
        int i2 = pageStore.placeholdersAfter;
        ArrayList arrayList = pageStore.pages;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList2, ((TransformablePage) it.next()).data);
        }
        return new ItemSnapshotList(arrayList2, i, i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$presenter$1(AsyncPagingDataDiffer asyncPagingDataDiffer, CoroutineContext coroutineContext) {
        this(coroutineContext, (PagingData) null);
        this.$r8$classId = 0;
        this.this$0 = asyncPagingDataDiffer;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$presenter$1(LazyPagingItems lazyPagingItems, CoroutineContext coroutineContext, PagingData pagingData) {
        this(coroutineContext, pagingData);
        this.$r8$classId = 1;
        this.this$0 = lazyPagingItems;
    }
}
