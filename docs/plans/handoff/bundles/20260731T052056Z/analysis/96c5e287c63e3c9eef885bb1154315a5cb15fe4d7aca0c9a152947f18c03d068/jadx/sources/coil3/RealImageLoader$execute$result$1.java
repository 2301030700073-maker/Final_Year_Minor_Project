package coil3;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import androidx.compose.foundation.relocation.BringIntoViewRequesterImpl;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.compose.ComposeNavigator;
import androidx.room.Room;
import coil3.request.ImageRequest;
import coil3.size.Size;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditViewModel;
import org.wikipedia.language.LangLinksViewModel;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewViewModel;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.db.ReadingListDao_Impl;
import org.wikipedia.readinglist.db.ReadingListDao_Impl$updateLists$2;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.search.SearchResults;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.search.StandardSearchRepository$search$2$2;
import org.wikipedia.talk.TalkReplyViewModel;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.util.ShareUtil$shareImage$2$uri$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealImageLoader$execute$result$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $cachedPlaceholder;
    public /* synthetic */ Object $eventListener;
    public final /* synthetic */ int $r8$classId;
    public Object $request;
    public Object $size;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RealImageLoader$execute$result$1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$request = obj;
        this.this$0 = obj2;
        this.$size = obj3;
        this.$eventListener = obj4;
        this.$cachedPlaceholder = obj5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x0295, code lost:
    
        if (kotlinx.coroutines.AwaitKt.awaitAll(r2, r17) != r4) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0069, code lost:
    
        if (r5 == r4) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0272 A[LOOP:7: B:108:0x026c->B:110:0x0272, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x023d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$language$LangLinksViewModel$fetchAllData$2(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$result$1.invokeSuspend$org$wikipedia$language$LangLinksViewModel$fetchAllData$2(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0093, code lost:
    
        if (r0 == r6) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
    
        if (r4 == r6) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c7, code lost:
    
        if (r7.markPagesForDeletion(r9, r13, true, r19) == r6) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$deletePages$1(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$result$1.invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$deletePages$1(java.lang.Object):java.lang.Object");
    }

    private final Object invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$renameReadingList$1$1$onSuccess$1(Object obj) {
        ReadingList readingList = (ReadingList) this.$request;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        Unit unit = Unit.INSTANCE;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String str = (String) this.this$0;
            readingList.getClass();
            str.getClass();
            readingList.listTitle = str;
            readingList.description = (String) this.$size;
            readingList.dirty = true;
            AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
            ReadingListDao_Impl readingListDao = Cookie.Companion.getInstance().readingListDao();
            this.label = 1;
            readingListDao.getClass();
            Object performInTransactionSuspending = ExceptionsKt.performInTransactionSuspending(readingListDao.__db, this, new ReadingListDao_Impl$updateLists$2(readingListDao, Room.listOf(readingList), true, null));
            if (performInTransactionSuspending != coroutineSingletons) {
                performInTransactionSuspending = unit;
            }
            if (performInTransactionSuspending != coroutineSingletons) {
                performInTransactionSuspending = unit;
            }
            if (performInTransactionSuspending == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        if (!Okio__OkioKt.isStarted((AppCompatActivity) this.$eventListener)) {
            return unit;
        }
        ((ReadingListBehaviorsUtil.Callback) this.$cachedPlaceholder).onCompleted();
        return unit;
    }

    private final Object invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1$1(Object obj) {
        ArrayList arrayList;
        ReadingList readingList = (ReadingList) this.$size;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            List<ReadingListPage> list = (List) this.this$0;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (ReadingListPage readingListPage : list) {
                readingListPage.getClass();
                WikiSite wikiSite = readingListPage.wiki;
                String str = readingListPage.lang;
                wikiSite.getClass();
                str.getClass();
                wikiSite.languageCode = str;
                arrayList2.add(new ReadingListPage(new PageTitle(readingListPage.apiTitle, wikiSite, readingListPage.thumbUrl, readingListPage.description, readingListPage.displayTitle)));
            }
            AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
            ReadingListPageDao_Impl readingListPageDao = Cookie.Companion.getInstance().readingListPageDao();
            this.$request = arrayList2;
            this.label = 1;
            if (readingListPageDao.addPagesToList(readingList, arrayList2, true, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            arrayList = arrayList2;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            arrayList = (ArrayList) this.$request;
            ResultKt.throwOnFailure(obj);
        }
        boolean isStarted = Okio__OkioKt.isStarted((AppCompatActivity) this.$eventListener);
        Unit unit = Unit.INSTANCE;
        if (!isStarted) {
            return unit;
        }
        readingList.pages.addAll(arrayList);
        ((ReadingListBehaviorsUtil.SnackbarCallback) this.$cachedPlaceholder).onUndoDeleteClicked();
        return unit;
    }

    private final Object invokeSuspend$org$wikipedia$search$StandardSearchRepository$search$2(Object obj) {
        String str = (String) this.$eventListener;
        WikiSite wikiSite = (WikiSite) this.$size;
        CoroutineScope coroutineScope = (CoroutineScope) this.$request;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        int i2 = 1;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Continuation continuation = null;
            List listOf = Room.listOf((Object[]) new Deferred[]{AwaitKt.async$default(coroutineScope, null, new ShareUtil$shareImage$2$uri$1((ByteString.Companion) this.this$0, wikiSite, str, continuation, 9), 3), AwaitKt.async$default(coroutineScope, null, new StandardSearchRepository$search$2$2(wikiSite, str, continuation, 0), 3), AwaitKt.async$default(coroutineScope, null, new StandardSearchRepository$search$2$2(wikiSite, str, continuation, i2), 3)});
            this.$request = null;
            this.label = 1;
            obj = AwaitKt.awaitAll(listOf, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        ArrayList arrayList = (ArrayList) this.$cachedPlaceholder;
        Iterator it = ((Iterable) obj).iterator();
        while (it.hasNext()) {
            arrayList.addAll(CollectionsKt.take(((SearchResults) it.next()).results, 1));
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$cachedPlaceholder;
        switch (i) {
            case 0:
                return new RealImageLoader$execute$result$1((ImageRequest) this.$request, (RealImageLoader) this.this$0, (Size) this.$size, (EventListener$Companion$NONE$1) this.$eventListener, (Image) obj2, continuation, 0);
            case 1:
                return new RealImageLoader$execute$result$1((SeekableTransitionState) this.$size, this.$eventListener, (Transition) obj2, continuation, 1);
            case 2:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$1 = new RealImageLoader$execute$result$1((PointerInputScope) this.this$0, (TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.AnonymousClass1) this.$size, (SearchResultsScreenKt$$ExternalSyntheticLambda2) this.$eventListener, (PressGestureScopeImpl) obj2, continuation, 2);
                realImageLoader$execute$result$1.$request = obj;
                return realImageLoader$execute$result$1;
            case 3:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$12 = new RealImageLoader$execute$result$1((TrackpadScrollingLogic) this.$size, (ScrollingLogic) this.$eventListener, (Ref$ObjectRef) obj2, continuation, 3);
                realImageLoader$execute$result$12.this$0 = obj;
                return realImageLoader$execute$result$12;
            case 4:
                return new RealImageLoader$execute$result$1((LegacyTextFieldState) this.$request, (MutableState) this.this$0, (TextInputService) this.$size, (TextFieldSelectionManager) this.$eventListener, (ImeOptions) obj2, continuation, 4);
            case 5:
                return new RealImageLoader$execute$result$1((BringIntoViewRequesterImpl) this.$request, (TextFieldValue) this.this$0, (LegacyTextFieldState) this.$size, (TextLayoutResultProxy) this.$eventListener, (OffsetMapping) obj2, continuation, 5);
            case 6:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$13 = new RealImageLoader$execute$result$1((AndroidPlatformTextInputSession) this.this$0, (Function1) this.$size, (AndroidLegacyPlatformTextInputServiceAdapter) this.$eventListener, (LegacyAdaptingPlatformTextInputModifierNode) obj2, continuation, 6);
                realImageLoader$execute$result$13.$request = obj;
                return realImageLoader$execute$result$13;
            case 7:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$14 = new RealImageLoader$execute$result$1((Recomposer) this.$size, (Recomposer$runRecomposeAndApplyChanges$2) this.$eventListener, (MonotonicFrameClock) obj2, continuation, 7);
                realImageLoader$execute$result$14.this$0 = obj;
                return realImageLoader$execute$result$14;
            case 8:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$15 = new RealImageLoader$execute$result$1(8, (Function0) obj2, continuation);
                realImageLoader$execute$result$15.$eventListener = obj;
                return realImageLoader$execute$result$15;
            case 9:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$16 = new RealImageLoader$execute$result$1((List) this.$eventListener, (ArrayList) obj2, continuation);
                realImageLoader$execute$result$16.$size = obj;
                return realImageLoader$execute$result$16;
            case 10:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$17 = new RealImageLoader$execute$result$1((Function2) this.this$0, (TimeSource$Companion$$ExternalSyntheticLambda0) this.$size, (CoroutineScope) this.$eventListener, (AtomicReference) obj2, continuation, 10);
                realImageLoader$execute$result$17.$request = obj;
                return realImageLoader$execute$result$17;
            case 11:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$18 = new RealImageLoader$execute$result$1((LifecycleRegistry) this.this$0, (Lifecycle$State) this.$size, (CoroutineContext) this.$eventListener, (ReadonlyStateFlow) obj2, continuation, 11);
                realImageLoader$execute$result$18.$request = obj;
                return realImageLoader$execute$result$18;
            case 12:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$19 = new RealImageLoader$execute$result$1((ComposeNavigator) this.this$0, (MutableState) this.$size, (ParcelableSnapshotMutableFloatState) this.$eventListener, (MutableState) obj2, continuation, 12);
                realImageLoader$execute$result$19.$request = obj;
                return realImageLoader$execute$result$19;
            case IMAGE_VALUE:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$110 = new RealImageLoader$execute$result$1(13, (DescriptionEditViewModel) obj2, continuation);
                realImageLoader$execute$result$110.$eventListener = obj;
                return realImageLoader$execute$result$110;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$111 = new RealImageLoader$execute$result$1(14, (LangLinksViewModel) obj2, continuation);
                realImageLoader$execute$result$111.$eventListener = obj;
                return realImageLoader$execute$result$111;
            case 15:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$112 = new RealImageLoader$execute$result$1(15, (LinkPreviewViewModel) obj2, continuation);
                realImageLoader$execute$result$112.$eventListener = obj;
                return realImageLoader$execute$result$112;
            case LAZY_VERTICAL_GRID_VALUE:
                return new RealImageLoader$execute$result$1((List) this.$request, (ReadingListPage) this.this$0, (AppCompatActivity) this.$size, (ReadingListBehaviorsUtil.SnackbarCallback) this.$eventListener, (ReadingListBehaviorsUtil.Callback) obj2, continuation, 16);
            case VERTICAL_GRID_ITEM_VALUE:
                return new RealImageLoader$execute$result$1((ReadingList) this.$request, (String) this.this$0, (String) this.$size, (AppCompatActivity) this.$eventListener, (ReadingListBehaviorsUtil.Callback) obj2, continuation, 17);
            case RADIO_GROUP_VALUE:
                return new RealImageLoader$execute$result$1((List) this.this$0, (ReadingList) this.$size, (AppCompatActivity) this.$eventListener, (ReadingListBehaviorsUtil.SnackbarCallback) obj2, continuation, 18);
            case RADIO_BUTTON_VALUE:
                RealImageLoader$execute$result$1 realImageLoader$execute$result$113 = new RealImageLoader$execute$result$1((ByteString.Companion) this.this$0, (WikiSite) this.$size, (String) this.$eventListener, (ArrayList) obj2, continuation, 19);
                realImageLoader$execute$result$113.$request = obj;
                return realImageLoader$execute$result$113;
            default:
                return new RealImageLoader$execute$result$1((TalkTemplate) this.$request, (TalkReplyViewModel) this.this$0, (String) this.$size, (String) this.$eventListener, (String) obj2, continuation, 20);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((RealImageLoader$execute$result$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x061d: IF  (r5v12 ?? I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) != (r3 I:??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:300:0x0624 (LINE:1566), block:B:298:0x061d */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x04bb A[Catch: all -> 0x0451, TRY_LEAVE, TryCatch #1 {all -> 0x0451, blocks: (B:204:0x0469, B:205:0x04b1, B:207:0x04a0, B:212:0x04bb, B:217:0x044d, B:219:0x0486), top: B:196:0x0437 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x059e A[Catch: all -> 0x0501, TryCatch #0 {all -> 0x0501, blocks: (B:237:0x04fc, B:264:0x058f, B:266:0x059e, B:268:0x05ac, B:270:0x05b2, B:272:0x05b8, B:274:0x05bc, B:276:0x05bf, B:281:0x05c2, B:283:0x05c5), top: B:233:0x04ee }] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x05e0  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0822  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0990  */
    /* JADX WARN: Type inference failed for: r1v12, types: [org.wikipedia.settings.BasePreferenceLoader] */
    /* JADX WARN: Type inference failed for: r2v62, types: [androidx.compose.runtime.snapshots.ObserverHandle, int] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v29, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r4v34, types: [java.lang.Object, kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r4v73 */
    /* JADX WARN: Type inference failed for: r4v74 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v19, types: [androidx.appcompat.widget.PopupMenu$1] */
    /* JADX WARN: Type inference failed for: r5v22, types: [androidx.appcompat.widget.PopupMenu$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v52 */
    /* JADX WARN: Type inference failed for: r5v53 */
    /* JADX WARN: Type inference failed for: r7v43, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:188:0x04b9 -> B:189:0x04a0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:195:0x04cd -> B:189:0x04a0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:351:0x07ec -> B:341:0x07ee). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 2762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$result$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RealImageLoader$execute$result$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$cachedPlaceholder = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RealImageLoader$execute$result$1(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$size = obj2;
        this.$eventListener = obj3;
        this.$cachedPlaceholder = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RealImageLoader$execute$result$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$size = obj;
        this.$eventListener = obj2;
        this.$cachedPlaceholder = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$result$1(List list, ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 9;
        this.$eventListener = list;
        this.$cachedPlaceholder = arrayList;
    }
}
