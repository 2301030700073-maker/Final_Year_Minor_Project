package androidx.paging;

import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.paging.LoadState;
import androidx.paging.PagingData;
import androidx.paging.ViewportHint;
import androidx.room.Room;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedLazily;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FlowExtKt {
    public static final Object NULL = new Object();

    public static final void addSeparatorPage(List list, Object obj, TransformablePage transformablePage, TransformablePage transformablePage2, int i, int i2) {
        list.getClass();
        int[] iArr = transformablePage != null ? transformablePage.originalPageOffsets : null;
        int[] iArr2 = transformablePage2 != null ? transformablePage2.originalPageOffsets : null;
        if (iArr != null && iArr2 != null) {
            int[] plus = ArraysKt___ArraysKt.plus(iArr, iArr2);
            LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(plus.length));
            for (int i3 : plus) {
                linkedHashSet.add(Integer.valueOf(i3));
            }
            iArr = CollectionsKt.toIntArray(CollectionsKt.sorted(CollectionsKt.toList(linkedHashSet)));
        } else if (iArr == null && iArr2 != null) {
            iArr = iArr2;
        } else if (iArr == null || iArr2 != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Separator page expected adjacentPageBefore or adjacentPageAfter, but both were null.");
            return;
        }
        if (obj == null) {
            return;
        }
        list.add(new TransformablePage(iArr, Room.listOf(obj), i, Room.listOf(Integer.valueOf(i2))));
    }

    public static final ReadonlySharedFlow cachedIn(Flow flow, CloseableCoroutineScope closeableCoroutineScope) {
        flow.getClass();
        int i = 1;
        Continuation continuation = null;
        Flow simpleChannelFlow = simpleChannelFlow(new FlowExtKt$simpleRunningReduce$1(flow, new FlowKt__ZipKt$combine$1$1(i, closeableCoroutineScope, continuation), continuation, i));
        int i2 = 3;
        int i3 = 0;
        CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$2 = new CachedPagingDataKt$cachedIn$2(i2, i3, continuation);
        simpleChannelFlow.getClass();
        SharingConfig configureSharing$FlowKt__ShareKt = StateFlowKt.configureSharing$FlowKt__ShareKt(new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new CachedPagingDataKt$cachedIn$4(2, i3, continuation), new SafeFlow(i, new SafeFlow(i3, new FlowExtKt$simpleRunningReduce$1(simpleChannelFlow, cachedPagingDataKt$cachedIn$2, continuation, i3)))), new CachedPagingDataKt$cachedIn$5(i2, i3, continuation)));
        SharedFlowImpl MutableSharedFlow = StateFlowKt.MutableSharedFlow(1, configureSharing$FlowKt__ShareKt.extraBufferCapacity, (BufferOverflow) configureSharing$FlowKt__ShareKt.onBufferOverflow);
        CoroutineContext coroutineContext = (CoroutineContext) configureSharing$FlowKt__ShareKt.context;
        Flow flow2 = (Flow) configureSharing$FlowKt__ShareKt.upstream;
        Symbol symbol = StateFlowKt.NO_VALUE;
        StartedLazily startedLazily = SharingStarted.Companion.Eagerly;
        StartedLazily startedLazily2 = SharingStarted.Companion.Lazily;
        AwaitKt.launch(closeableCoroutineScope, coroutineContext, startedLazily2 != startedLazily ? CoroutineStart.UNDISPATCHED : CoroutineStart.DEFAULT, new FlowExtKt$simpleScan$1(startedLazily2, flow2, MutableSharedFlow, symbol, (Continuation) null));
        return new ReadonlySharedFlow(MutableSharedFlow);
    }

    public static final LoadState computeHelperState(LoadState loadState, LoadState loadState2, LoadState loadState3, LoadState loadState4) {
        return loadState4 == null ? loadState3 : loadState instanceof LoadState.Loading ? ((loadState2 instanceof LoadState.NotLoading) && (loadState4 instanceof LoadState.NotLoading)) ? loadState4 : loadState4 instanceof LoadState.Error ? loadState4 : loadState : loadState4;
    }

    public static final PagingData filter(PagingData pagingData, Function2 function2) {
        pagingData.getClass();
        return new PagingData(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(pagingData.flow, function2, 1), pagingData.uiReceiver, pagingData.hintReceiver, PagingData.AnonymousClass1.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00b0 -> B:10:0x0037). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object insertInternalSeparators(androidx.paging.TransformablePage r10, kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1 r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt.insertInternalSeparators(androidx.paging.TransformablePage, kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static PagingData insertSeparators$default(PagingData pagingData, Function3 function3) {
        TerminalSeparatorType terminalSeparatorType = TerminalSeparatorType.FULLY_COMPLETE;
        pagingData.getClass();
        terminalSeparatorType.getClass();
        Flow flow = pagingData.flow;
        flow.getClass();
        return new PagingData(new Prefs$observeKeys$$inlined$filter$1(1, flow, new SeparatorState(terminalSeparatorType, new FlowKt__ZipKt$combine$1$1(function3, (Continuation) null, 3))), pagingData.uiReceiver, pagingData.hintReceiver, PagingData.AnonymousClass1.INSTANCE);
    }

    public static final PagingData map(PagingData pagingData, Function2 function2) {
        return new PagingData(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(pagingData.flow, function2, 2), pagingData.uiReceiver, pagingData.hintReceiver, PagingData.AnonymousClass1.INSTANCE);
    }

    public static final boolean shouldPrioritizeOver(ViewportHint viewportHint, ViewportHint viewportHint2, LoadType loadType) {
        viewportHint.getClass();
        loadType.getClass();
        if (viewportHint2 == null) {
            return true;
        }
        if ((viewportHint2 instanceof ViewportHint.Initial) && (viewportHint instanceof ViewportHint.Access)) {
            return true;
        }
        if ((viewportHint instanceof ViewportHint.Initial) && (viewportHint2 instanceof ViewportHint.Access)) {
            return false;
        }
        return (viewportHint.originalPageOffsetFirst == viewportHint2.originalPageOffsetFirst && viewportHint.originalPageOffsetLast == viewportHint2.originalPageOffsetLast && viewportHint2.presentedItemsBeyondAnchor$paging_common(loadType) <= viewportHint.presentedItemsBeyondAnchor$paging_common(loadType)) ? false : true;
    }

    public static final Flow simpleChannelFlow(Function2 function2) {
        int i = 0;
        return StateFlowKt.buffer$default(new SafeFlow(i, new SimpleChannelFlowKt$simpleChannelFlow$1(function2, (Continuation) null, i)), -2);
    }
}
