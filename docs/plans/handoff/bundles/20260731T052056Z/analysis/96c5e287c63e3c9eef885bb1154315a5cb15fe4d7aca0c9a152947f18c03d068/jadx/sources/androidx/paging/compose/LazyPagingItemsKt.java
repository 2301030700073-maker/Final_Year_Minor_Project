package androidx.paging.compose;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.paging.LoadState;
import androidx.paging.LoadStates;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyPagingItemsKt {
    public static final LoadStates InitialLoadStates;

    static {
        LoadState.NotLoading notLoading = new LoadState.NotLoading(false);
        InitialLoadStates = new LoadStates(LoadState.Loading.INSTANCE, notLoading, notLoading);
    }

    public static final LazyPagingItems collectAsLazyPagingItems(Flow flow, GapComposer gapComposer) {
        boolean changed = gapComposer.changed(flow);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer$Companion.Empty;
        if (changed || rememberedValue == obj) {
            rememberedValue = new LazyPagingItems(flow);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        LazyPagingItems lazyPagingItems = (LazyPagingItems) rememberedValue;
        Object obj2 = EmptyCoroutineContext.INSTANCE;
        boolean changedInstance = gapComposer.changedInstance(obj2) | gapComposer.changedInstance(lazyPagingItems);
        Object rememberedValue2 = gapComposer.rememberedValue();
        Continuation continuation = null;
        if (changedInstance || rememberedValue2 == obj) {
            rememberedValue2 = new LazyPagingItemsKt$collectAsLazyPagingItems$1$1(lazyPagingItems, continuation, 0);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.LaunchedEffect(gapComposer, lazyPagingItems, (Function2) rememberedValue2);
        boolean changedInstance2 = gapComposer.changedInstance(obj2) | gapComposer.changedInstance(lazyPagingItems);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue3 == obj) {
            rememberedValue3 = new LazyPagingItemsKt$collectAsLazyPagingItems$1$1(lazyPagingItems, continuation, 1);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Updater.LaunchedEffect(gapComposer, lazyPagingItems, (Function2) rememberedValue3);
        return lazyPagingItems;
    }
}
