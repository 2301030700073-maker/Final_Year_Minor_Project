package org.wikipedia.feed;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.TypedValue;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.pager.PagerLayoutIntervalContent;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntSize;
import androidx.paging.compose.LazyPagingItems;
import androidx.room.Room;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.IndividualNetworkCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import coil3.disk.DiskLruCache$launchCleanup$1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.time.LocalDate;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.StatusLine;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.components.error.ComposeErrorType;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.donate.donationreminder.OptionItem;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.model.WikiGameCard;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.onboarding.InitialOnboardingActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda29 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda29(String str, Integer num, Function1 function1) {
        this.$r8$classId = 16;
        this.f$1 = str;
        this.f$2 = num;
        this.f$0 = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r5v4, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r5v7, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Rect rect;
        int i;
        int i2 = this.$r8$classId;
        int i3 = 3;
        ?? r5 = 0;
        r5 = 0;
        r5 = 0;
        r5 = 0;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$2;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                ((Function1) obj3).invoke((String) obj2);
                ((MutableState) obj).setValue(Boolean.FALSE);
                return unit;
            case 1:
                ContentInViewNode contentInViewNode = (ContentInViewNode) obj3;
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj2;
                BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) obj;
                LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo = contentInViewNode.bringIntoViewRequests;
                while (true) {
                    MutableVector mutableVector = lazyLayoutBeyondBoundsInfo.beyondBoundsItems;
                    int i4 = mutableVector.size;
                    if (i4 != 0) {
                        if (i4 == 0) {
                            Gson$$ExternalSyntheticBUOutline0.m$3("MutableVector is empty.");
                            return null;
                        }
                        Rect rect2 = (Rect) ((ContentInViewNode.Request) mutableVector.content[i4 - 1]).currentBounds.invoke();
                        if (rect2 == null ? true : ContentInViewNode.m62isMaxVisibleEQwtKw$default(contentInViewNode, rect2, 0L, 0L, 3)) {
                            MutableVector mutableVector2 = lazyLayoutBeyondBoundsInfo.beyondBoundsItems;
                            ((ContentInViewNode.Request) mutableVector2.removeAt(mutableVector2.size - 1)).continuation.resumeWith(unit);
                        }
                    }
                }
                if (contentInViewNode.trackingFocusedChild && (rect = (Rect) contentInViewNode.getFocusedRect.invoke()) != null && ContentInViewNode.m62isMaxVisibleEQwtKw$default(contentInViewNode, rect, 0L, 0L, 3)) {
                    contentInViewNode.trackingFocusedChild = false;
                }
                updatableAnimationState.value = contentInViewNode.m63calculateScrollDeltaI_oMVgE(bringIntoViewSpec, 0L);
                return unit;
            case 2:
                LazyListState lazyListState = (LazyListState) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) ((DerivedSnapshotState) obj3).getValue();
                return new LazyListItemProviderImpl(lazyListState, lazyListIntervalContent, (LazyItemScopeImpl) obj, new StatusLine((IntRange) lazyListState.scrollPosition.nearestRangeState.getValue(), lazyListIntervalContent));
            case 3:
                return new PagerLayoutIntervalContent((Function4) ((MutableState) obj).getValue(), (Function1) ((MutableState) obj3).getValue(), ((Number) ((Function0) obj2).invoke()).intValue());
            case 4:
                BringIntoViewResponderNode bringIntoViewResponderNode = (BringIntoViewResponderNode) obj3;
                Rect bringIntoView$localRect = BringIntoViewResponderNode.bringIntoView$localRect(bringIntoViewResponderNode, (NodeCoordinator) obj2, (KTypeImpl$arguments$2) obj);
                if (bringIntoView$localRect == null) {
                    return null;
                }
                ContentInViewNode contentInViewNode2 = bringIntoViewResponderNode.responder;
                if (IntSize.m721equalsimpl0(contentInViewNode2.viewportSize, -1L)) {
                    InlineClassHelperKt.throwIllegalStateException("Expected BringIntoViewRequester to not be used before parents are placed.");
                }
                return bringIntoView$localRect.m393translatek4lQ0M(contentInViewNode2.m67relocationOffsetfbGrOKE(bringIntoView$localRect, contentInViewNode2.m64getViewportSizeOrZeroYbymL2g$foundation(), 0L) ^ (-9223372034707292160L));
            case 5:
                TooltipStateImpl tooltipStateImpl = (TooltipStateImpl) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                MutableState mutableState = (MutableState) obj;
                if (tooltipStateImpl.isVisible()) {
                    AwaitKt.launch$default(coroutineScope, null, null, new DiskLruCache$launchCleanup$1(i3, tooltipStateImpl, r5), 3);
                    mutableState.setValue(Boolean.FALSE);
                }
                return unit;
            case 6:
                GapComposer gapComposer = (GapComposer) obj3;
                ChangeList changeList = (ChangeList) obj2;
                SlotReader slotReader = (SlotReader) obj;
                ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.changeList;
                try {
                    composerChangeListWriter.changeList = changeList;
                    SlotReader slotReader2 = gapComposer.reader;
                    int[] iArr = gapComposer.nodeCountOverrides;
                    MutableIntObjectMap mutableIntObjectMap = gapComposer.providerUpdates;
                    gapComposer.nodeCountOverrides = null;
                    gapComposer.providerUpdates = null;
                    try {
                        gapComposer.reader = slotReader;
                        boolean z = composerChangeListWriter.implicitRootStart;
                        try {
                            composerChangeListWriter.implicitRootStart = false;
                            gapComposer.invokeMovableContentLambda(null, null);
                            return unit;
                        } finally {
                            composerChangeListWriter.implicitRootStart = z;
                        }
                    } finally {
                        gapComposer.reader = slotReader2;
                        gapComposer.nodeCountOverrides = iArr;
                        gapComposer.providerUpdates = mutableIntObjectMap;
                    }
                } finally {
                    composerChangeListWriter.changeList = changeList2;
                }
            case 7:
                GapAnchor gapAnchor = (GapAnchor) obj3;
                SlotWriter slotWriter = (SlotWriter) obj2;
                OperationErrorContext operationErrorContext = (OperationErrorContext) obj;
                if (gapAnchor != null) {
                    slotWriter.advanceBy(slotWriter.anchorIndex(gapAnchor) - slotWriter.currentGroup);
                }
                List buildTrace = UuidKt.buildTrace(slotWriter, null, slotWriter.currentGroup, null);
                ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) CollectionsKt.lastOrNull(buildTrace);
                Integer num = composeStackTraceFrame != null ? composeStackTraceFrame.groupOffset : null;
                List buildStackTrace = operationErrorContext.buildStackTrace(num);
                if (num != null && !buildStackTrace.isEmpty()) {
                    buildStackTrace = CollectionsKt.plus((Collection) Room.listOf(new ComposeStackTraceFrame(((ComposeStackTraceFrame) CollectionsKt.first(buildStackTrace)).groupKey, null, num)), (Iterable) CollectionsKt.drop(buildStackTrace));
                }
                return new ComposeStackTrace(CollectionsKt.plus((Collection) buildTrace, (Iterable) buildStackTrace), operationErrorContext.getSourceInformationEnabled());
            case 8:
                ((AwaiterQueue$Awaiter) obj3).cancel();
                AtomicInt atomicInt = (AtomicInt) ((Request.Builder) obj2).headers;
                int i5 = ((Ref$IntRef) obj).element;
                do {
                    i = atomicInt.get();
                } while (!atomicInt.compareAndSet(i, ((i >>> 27) & 15) == i5 ? i - 1 : i));
                return unit;
            case 9:
                ConnectivityManager connectivityManager = (ConnectivityManager) obj2;
                IndividualNetworkCallback individualNetworkCallback = (IndividualNetworkCallback) obj;
                if (((Ref$BooleanRef) obj3).element) {
                    Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister callback");
                    connectivityManager.unregisterNetworkCallback(individualNetworkCallback);
                }
                return unit;
            case 10:
                Headers.Companion companion = ((CertificatePinner) obj3).certificateChainCleaner;
                companion.getClass();
                return companion.clean(((Address) obj).url.host, ((Handshake) obj2).peerCertificates());
            case 11:
                ActivityTabFragment activityTabFragment = (ActivityTabFragment) obj3;
                ((MutableState) obj).setValue(Boolean.TRUE);
                activityTabFragment.getViewModel().shouldRefreshTimelineSilently = false;
                ((LazyPagingItems) obj2).pagingDataPresenter.refresh();
                activityTabFragment.getViewModel().loadAll();
                return unit;
            case 12:
                WikiErrorClickEvents wikiErrorClickEvents = (WikiErrorClickEvents) obj2;
                ComposeErrorType composeErrorType = (ComposeErrorType) obj;
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick((Context) obj3, "errorButton");
                if ((composeErrorType instanceof ComposeErrorType.UserPageMissing) || (composeErrorType instanceof ComposeErrorType.PageMissing) || (composeErrorType instanceof ComposeErrorType.Generic)) {
                    if (wikiErrorClickEvents != null) {
                        r5 = wikiErrorClickEvents.backClickListener;
                    }
                } else if (composeErrorType instanceof ComposeErrorType.LoggedOut) {
                    if (wikiErrorClickEvents != null) {
                        r5 = wikiErrorClickEvents.loginClickListener;
                    }
                } else if (!(composeErrorType instanceof ComposeErrorType.Empty)) {
                    if (!(composeErrorType instanceof ComposeErrorType.Retry) && !(composeErrorType instanceof ComposeErrorType.Offline) && !(composeErrorType instanceof ComposeErrorType.Timeout)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    if (wikiErrorClickEvents != null) {
                        r5 = wikiErrorClickEvents.retryClickListener;
                    }
                }
                if (r5 != 0) {
                    r5.invoke();
                }
                return unit;
            case IMAGE_VALUE:
                ((Function1) obj3).invoke((OptionItem) obj2);
                ((MutableState) obj).setValue(Boolean.FALSE);
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                Function1 function1 = (Function1) obj3;
                Function1 function12 = (Function1) obj2;
                MutableState mutableState2 = (MutableState) obj;
                if (((String) mutableState2.getValue()).length() == 0) {
                    function1.invoke("");
                } else {
                    function12.invoke((String) mutableState2.getValue());
                }
                return unit;
            case 15:
                ((Function2) obj3).invoke((ForYouModule.Games) obj2, (WikiGameCard) obj);
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                WikiGamesEvent.submit$default(572, null, (Integer) obj, "play_click", "games_hub", null, (String) obj2, "archive");
                ((Function1) obj3).invoke(OnThisDayGameAction.Play.INSTANCE);
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj2;
                int i6 = InitialOnboardingActivity.$r8$clinit;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                ((MutableState) obj).setValue(Jsoup.getInstance().currentTheme);
                TypedValue typedValue = new TypedValue();
                if (!((InitialOnboardingActivity) obj3).getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue != null) {
                    parcelableSnapshotMutableIntState.setIntValue(typedValue.data);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                return null;
            case RADIO_GROUP_VALUE:
                ((Function1) obj3).invoke((LazyStaggeredGridState) obj2);
                WikiGamesEvent.submit$default("random_confirm_click", "rrl_interests_select", null, null, null, null, null, null, 508);
                ((MutableState) obj).setValue(Boolean.FALSE);
                return unit;
            case RADIO_BUTTON_VALUE:
                ((Function2) obj3).invoke((String) ((MutableState) obj).getValue(), (String) ((MutableState) obj2).getValue());
                return unit;
            case RADIO_ROW_VALUE:
                ReadingChallengeOnboardingActivity readingChallengeOnboardingActivity = (ReadingChallengeOnboardingActivity) obj3;
                CoroutineScope coroutineScope2 = (CoroutineScope) obj2;
                MutableState mutableState3 = (MutableState) obj;
                int i7 = ReadingChallengeOnboardingActivity.$r8$clinit;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(readingChallengeOnboardingActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "join_challenge", null, null, 246);
                }
                if (Headers.Companion.isLoggedIn()) {
                    Prefs prefs = Prefs.INSTANCE;
                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, true);
                    String localDate = LocalDate.now().toString();
                    localDate.getClass();
                    PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate);
                    AwaitKt.launch$default(coroutineScope2, null, null, new SyntaxHighlighter.AnonymousClass2(20, readingChallengeOnboardingActivity, (Continuation) r5), 3);
                } else {
                    mutableState3.setValue(Boolean.TRUE);
                }
                return unit;
            case RADIO_COLUMN_VALUE:
                List list = (List) obj3;
                PagerState pagerState = (PagerState) obj2;
                UriUtil.submit$default(238, null, "next_click", null, ((YearInReviewScreenData) list.get(pagerState.getCurrentPage())).slideName, null);
                ((Function2) obj).invoke(pagerState, list.get(pagerState.getCurrentPage()));
                return unit;
            case SIZE_BOX_VALUE:
                UriUtil.submit$default(238, null, "close_click", null, ((YearInReviewScreenData) ((List) obj3).get(((PagerState) obj2).getCurrentPage())).slideName, null);
                ((Function0) obj).invoke();
                return unit;
            default:
                ((Function1) obj3).invoke(((YearInReviewScreenData) ((List) obj2).get(((PagerState) obj).getCurrentPage())).slideName);
                return unit;
        }
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda29(MutableState mutableState, MutableState mutableState2, Function0 function0) {
        this.$r8$classId = 3;
        this.f$2 = mutableState;
        this.f$0 = mutableState2;
        this.f$1 = function0;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda29(Object obj, MutableState mutableState, MutableState mutableState2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = mutableState;
        this.f$1 = mutableState2;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda29(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda29(GapComposer gapComposer, ChangeList changeList, SlotReader slotReader, MovableContentStateReference movableContentStateReference) {
        this.$r8$classId = 6;
        this.f$0 = gapComposer;
        this.f$1 = changeList;
        this.f$2 = slotReader;
    }
}
