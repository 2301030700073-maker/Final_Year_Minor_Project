package coil3;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.paging.PageFetcher$flow$1;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.coroutines.Pool;
import androidx.work.Constraints;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundUpdater;
import coil3.compose.AsyncImagePainter;
import coil3.request.ImageRequest;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import okhttp3.Headers;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.donate.DonateViewModel;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.games.GamesHubViewModel;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.random.RandomViewModel;
import org.wikipedia.readinglist.AddToReadingListDialog;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListFragmentViewModel;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel;
import org.wikipedia.talk.TalkReplyViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealImageLoader$execute$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $request;
    public Object L$0;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RealImageLoader$execute$2(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
        this.$request = obj3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
    
        if (r15 == r3) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
    
        if (r15 == r3) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$togglePageOffline$1(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$2.invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$togglePageOffline$1(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
    
        if (r6.emit(r2, r5) == r1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
    
        if (r6.markPagesForDeletion(r2, r0, true, r5) == r1) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$deleteSelectedPages$2(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.L$0
            java.util.List r0 = (java.util.List) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r5.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L1f
            if (r2 == r4) goto L1b
            if (r2 != r3) goto L14
            kotlin.ResultKt.throwOnFailure(r6)
            goto L53
        L14:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L1b:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3f
        L1f:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r0.isEmpty()
            if (r6 != 0) goto L53
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r6 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r6 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListPageDao_Impl r6 = r6.readingListPageDao()
            java.lang.Object r2 = r5.this$0
            org.wikipedia.readinglist.database.ReadingList r2 = (org.wikipedia.readinglist.database.ReadingList) r2
            r5.label = r4
            java.lang.Object r6 = r6.markPagesForDeletion(r2, r0, r4, r5)
            if (r6 != r1) goto L3f
            goto L52
        L3f:
            java.lang.Object r6 = r5.$request
            org.wikipedia.readinglist.ReadingListFragmentViewModel r6 = (org.wikipedia.readinglist.ReadingListFragmentViewModel) r6
            kotlinx.coroutines.flow.SharedFlowImpl r6 = r6._deleteSelectedPagesFlow
            org.wikipedia.util.Resource$Success r2 = new org.wikipedia.util.Resource$Success
            r2.<init>(r0)
            r5.label = r3
            java.lang.Object r5 = r6.emit(r2, r5)
            if (r5 != r1) goto L53
        L52:
            return r1
        L53:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$2.invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$deleteSelectedPages$2(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0086, code lost:
    
        if (r10.emit(r2, r9) == r1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
    
        if (r10.addPagesToList(r0, r2, true, r9) == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$saveReadingList$2(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.this$0
            org.wikipedia.readinglist.database.ReadingList r0 = (org.wikipedia.readinglist.database.ReadingList) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r9.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L2b
            if (r2 == r6) goto L23
            if (r2 == r5) goto L1f
            if (r2 != r4) goto L19
            kotlin.ResultKt.throwOnFailure(r10)
            goto L89
        L19:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r3
        L1f:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6b
        L23:
            java.lang.Object r2 = r9.L$0
            org.wikipedia.readinglist.database.ReadingList r2 = (org.wikipedia.readinglist.database.ReadingList) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4c
        L2b:
            kotlin.ResultKt.throwOnFailure(r10)
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r10 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r10 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListDao_Impl r10 = r10.readingListDao()
            r9.L$0 = r0
            r9.label = r6
            androidx.room.RoomDatabase r2 = r10.__db
            org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0 r7 = new org.wikipedia.readinglist.db.ReadingListDao_Impl$$ExternalSyntheticLambda0
            r8 = 0
            r7.<init>(r10, r0, r8)
            java.lang.Object r10 = kotlin.ExceptionsKt.performSuspending(r2, r8, r6, r7, r9)
            if (r10 != r1) goto L4b
            goto L88
        L4b:
            r2 = r0
        L4c:
            java.lang.Number r10 = (java.lang.Number) r10
            long r7 = r10.longValue()
            r2.id = r7
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r10 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r10 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListPageDao_Impl r10 = r10.readingListPageDao()
            java.util.ArrayList r2 = r0.pages
            r9.L$0 = r3
            r9.label = r5
            java.lang.Object r10 = r10.addPagesToList(r0, r2, r6, r9)
            if (r10 != r1) goto L6b
            goto L88
        L6b:
            org.wikipedia.settings.Prefs r10 = org.wikipedia.settings.Prefs.INSTANCE
            long r2 = r0.id
            r10 = 2131887709(0x7f12065d, float:1.9410033E38)
            org.wikipedia.settings.PrefsIoUtil.setLong(r2, r10)
            java.lang.Object r10 = r9.$request
            org.wikipedia.readinglist.ReadingListFragmentViewModel r10 = (org.wikipedia.readinglist.ReadingListFragmentViewModel) r10
            kotlinx.coroutines.flow.SharedFlowImpl r10 = r10._saveReadingListFlow
            org.wikipedia.util.Resource$Success r2 = new org.wikipedia.util.Resource$Success
            r2.<init>(r0)
            r9.label = r4
            java.lang.Object r9 = r10.emit(r2, r9)
            if (r9 != r1) goto L89
        L88:
            return r1
        L89:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$2.invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$saveReadingList$2(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
    
        if (r11.emit(r1, r10) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        if (r12 == r0) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$updateList$2(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L1c
            if (r1 == r3) goto L17
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5e
        L11:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            return r4
        L17:
            kotlin.ResultKt.throwOnFailure(r12)
            r10 = r11
            goto L48
        L1c:
            kotlin.ResultKt.throwOnFailure(r12)
            org.wikipedia.settings.Prefs r12 = org.wikipedia.settings.Prefs.INSTANCE
            r12 = 2131887714(0x7f120662, float:1.9410043E38)
            java.lang.String r8 = org.wikipedia.settings.PrefsIoUtil.getString(r12, r4)
            if (r8 == 0) goto L5e
            int r12 = r8.length()
            if (r12 != 0) goto L31
            goto L5e
        L31:
            org.wikipedia.readinglist.ReadingListsReceiveHelper r5 = org.wikipedia.readinglist.ReadingListsReceiveHelper.INSTANCE
            java.lang.Object r12 = r11.L$0
            r6 = r12
            java.lang.String r6 = (java.lang.String) r6
            java.lang.Object r12 = r11.this$0
            r7 = r12
            java.lang.String r7 = (java.lang.String) r7
            r11.label = r3
            r9 = 1
            r10 = r11
            java.io.Serializable r12 = r5.receiveReadingLists(r6, r7, r8, r9, r10)
            if (r12 != r0) goto L48
            goto L5d
        L48:
            org.wikipedia.readinglist.database.ReadingList r12 = (org.wikipedia.readinglist.database.ReadingList) r12
            java.lang.Object r11 = r10.$request
            org.wikipedia.readinglist.ReadingListFragmentViewModel r11 = (org.wikipedia.readinglist.ReadingListFragmentViewModel) r11
            kotlinx.coroutines.flow.SharedFlowImpl r11 = r11._updateListFlow
            org.wikipedia.util.Resource$Success r1 = new org.wikipedia.util.Resource$Success
            r1.<init>(r12)
            r10.label = r2
            java.lang.Object r11 = r11.emit(r1, r10)
            if (r11 != r0) goto L5e
        L5d:
            return r0
        L5e:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$2.invokeSuspend$org$wikipedia$readinglist$ReadingListFragmentViewModel$updateList$2(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b8, code lost:
    
        if (r14 == r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ba, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x002a, code lost:
    
        if (r14 == r0) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invokeSuspend$org$wikipedia$suggestededits$SuggestedEditsImageTagsViewModel$publishImageTags$2(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L19
            if (r1 != r2) goto L13
            kotlin.ResultKt.throwOnFailure(r14)
            r11 = r13
            goto Lbb
        L13:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            return r4
        L19:
            kotlin.ResultKt.throwOnFailure(r14)
            goto L2e
        L1d:
            kotlin.ResultKt.throwOnFailure(r14)
            org.wikipedia.csrf.CsrfTokenClient r14 = org.wikipedia.csrf.CsrfTokenClient.INSTANCE
            org.wikipedia.dataclient.WikiSite r14 = org.wikipedia.Constants.commonsWikiSite
            r13.label = r3
            java.lang.Object r14 = org.wikipedia.csrf.CsrfTokenClient.getToken$default(r14, r13)
            if (r14 != r0) goto L2e
            goto Lba
        L2e:
            r7 = r14
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r14 = r13.L$0
            org.wikipedia.dataclient.mwapi.MwQueryPage r14 = (org.wikipedia.dataclient.mwapi.MwQueryPage) r14
            int r14 = r14.pageId
            java.lang.String r1 = "M"
            java.lang.String r6 = androidx.compose.animation.core.Animation.CC.m(r14, r1)
            java.lang.Object r14 = r13.this$0
            java.util.ArrayList r14 = (java.util.ArrayList) r14
            java.util.Iterator r14 = r14.iterator()
            java.lang.String r1 = "{\"claims\":["
            java.lang.String r5 = "/* add-depicts: "
        L4a:
            boolean r8 = r14.hasNext()
            if (r8 == 0) goto L9b
            java.lang.Object r8 = r14.next()
            org.wikipedia.suggestededits.ImageTag r8 = (org.wikipedia.suggestededits.ImageTag) r8
            java.lang.String r9 = ","
            if (r3 != 0) goto L5e
            java.lang.String r1 = r1.concat(r9)
        L5e:
            if (r3 != 0) goto L64
            java.lang.String r5 = r5.concat(r9)
        L64:
            java.lang.String r3 = r8.wikidataId
            java.util.UUID r10 = java.util.UUID.randomUUID()
            java.lang.String r11 = "{\"mainsnak\":{\"snaktype\":\"value\",\"property\":\"P180\",\"datavalue\":{\"value\":{\"entity-type\":\"item\",\"id\":\""
            java.lang.String r12 = "\"},\"type\":\"wikibase-entityid\"},\"datatype\":\"wikibase-item\"},\"type\":\"statement\",\"id\":\""
            java.lang.StringBuilder r1 = androidx.compose.ui.Modifier.CC.m352m(r1, r11, r3, r12, r6)
            java.lang.String r3 = "$"
            r1.append(r3)
            r1.append(r10)
            java.lang.String r3 = "\",\"rank\":\"normal\"}"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = r8.wikidataId
            java.lang.String r8 = r8.label
            java.lang.String r10 = "|"
            java.lang.String r11 = ""
            java.lang.String r8 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r8, r10, r11)
            java.lang.String r8 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r8, r9, r11)
            java.lang.String r5 = coil3.size.ViewSizeResolver$CC.m(r5, r3, r10, r8)
            r3 = 0
            goto L4a
        L9b:
            java.lang.String r14 = "]}"
            java.lang.String r8 = r1.concat(r14)
        */
        //  java.lang.String r14 = " */"
        /*
            java.lang.String r9 = r5.concat(r14)
            org.wikipedia.dataclient.ServiceFactory r14 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.WikiSite r14 = org.wikipedia.Constants.commonsWikiSite
            org.wikipedia.dataclient.Service r5 = org.wikipedia.dataclient.ServiceFactory.get(r14)
            r13.label = r2
            java.lang.String r10 = "app-image-tag-add"
            r11 = r13
            java.lang.Object r14 = r5.postEditEntity(r6, r7, r8, r9, r10, r11)
            if (r14 != r0) goto Lbb
        Lba:
            return r0
        Lbb:
            org.wikipedia.dataclient.wikidata.EntityPostResponse r14 = (org.wikipedia.dataclient.wikidata.EntityPostResponse) r14
            java.lang.Object r13 = r11.$request
            org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel r13 = (org.wikipedia.suggestededits.SuggestedEditsImageTagsViewModel) r13
            kotlinx.coroutines.flow.StateFlowImpl r13 = r13._actionState
            org.wikipedia.util.Resource$Success r0 = new org.wikipedia.util.Resource$Success
            org.wikipedia.dataclient.wikidata.Entities$Entity r14 = r14.entity
            r0.<init>(r14)
            r13.getClass()
            r13.updateState(r4, r0)
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$2.invokeSuspend$org$wikipedia$suggestededits$SuggestedEditsImageTagsViewModel$publishImageTags$2(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$request;
        switch (i) {
            case 0:
                RealImageLoader$execute$2 realImageLoader$execute$2 = new RealImageLoader$execute$2((RealImageLoader) this.this$0, (ImageRequest) obj2, continuation, 0);
                realImageLoader$execute$2.L$0 = obj;
                return realImageLoader$execute$2;
            case 1:
                RealImageLoader$execute$2 realImageLoader$execute$22 = new RealImageLoader$execute$2((TriggerBasedInvalidationTracker) obj2, continuation);
                realImageLoader$execute$22.L$0 = obj;
                return realImageLoader$execute$22;
            case 2:
                return new RealImageLoader$execute$2((Ref$ObjectRef) this.this$0, (Pool) obj2, continuation, 2);
            case 3:
                RealImageLoader$execute$2 realImageLoader$execute$23 = new RealImageLoader$execute$2((CompletableDeferredImpl) this.this$0, (Function2) obj2, continuation, 3);
                realImageLoader$execute$23.L$0 = obj;
                return realImageLoader$execute$23;
            case 4:
                RealImageLoader$execute$2 realImageLoader$execute$24 = new RealImageLoader$execute$2((Function2) this.this$0, (CallbackToFutureAdapter$Completer) obj2, continuation, 4);
                realImageLoader$execute$24.L$0 = obj;
                return realImageLoader$execute$24;
            case 5:
                return new RealImageLoader$execute$2((WorkerWrapper) this.L$0, (ListenableWorker) this.this$0, (WorkForegroundUpdater) obj2, continuation, 5);
            case 6:
                RealImageLoader$execute$2 realImageLoader$execute$25 = new RealImageLoader$execute$2((Constraints) this.this$0, (NetworkRequestConstraintController) obj2, continuation, 6);
                realImageLoader$execute$25.L$0 = obj;
                return realImageLoader$execute$25;
            case 7:
                return new RealImageLoader$execute$2((Headers.Builder) this.L$0, (WorkSpec) this.this$0, (OnConstraintsStateChangedListener) obj2, continuation, 7);
            case 8:
                return new RealImageLoader$execute$2((AsyncImagePainter) this.this$0, (AsyncImagePainter.Input) obj2, continuation, 8);
            case 9:
                RealImageLoader$execute$2 realImageLoader$execute$26 = new RealImageLoader$execute$2((FlowCollector) this.this$0, (ChannelFlow) obj2, continuation, 9);
                realImageLoader$execute$26.L$0 = obj;
                return realImageLoader$execute$26;
            case 10:
                RealImageLoader$execute$2 realImageLoader$execute$27 = new RealImageLoader$execute$2((PageFetcher$flow$1.AnonymousClass2) this.this$0, (FlowCollector) obj2, continuation, 10);
                realImageLoader$execute$27.L$0 = obj;
                return realImageLoader$execute$27;
            case 11:
                return new RealImageLoader$execute$2((MutableState) this.L$0, (MutableState) this.this$0, (ParcelableSnapshotMutableFloatState) obj2, continuation, 11);
            case 12:
                return new RealImageLoader$execute$2((DonateViewModel) this.this$0, (AppCompatActivity) obj2, continuation, 12);
            case IMAGE_VALUE:
                return new RealImageLoader$execute$2((String) this.L$0, (MwException) this.this$0, (EditSectionActivity) obj2, continuation, 13);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new RealImageLoader$execute$2((Ref$BooleanRef) this.L$0, (Function0) this.this$0, (MutableState) obj2, continuation, 14);
            case 15:
                RealImageLoader$execute$2 realImageLoader$execute$28 = new RealImageLoader$execute$2((GamesHubViewModel) this.this$0, (String) obj2, continuation, 15);
                realImageLoader$execute$28.L$0 = obj;
                return realImageLoader$execute$28;
            case LAZY_VERTICAL_GRID_VALUE:
                RealImageLoader$execute$2 realImageLoader$execute$29 = new RealImageLoader$execute$2((PageTitle) this.this$0, (PageFragment) obj2, continuation, 16);
                realImageLoader$execute$29.L$0 = obj;
                return realImageLoader$execute$29;
            case VERTICAL_GRID_ITEM_VALUE:
                return new RealImageLoader$execute$2((EditHistoryListViewModel) this.L$0, (String) this.this$0, (String) obj2, continuation, 17);
            case RADIO_GROUP_VALUE:
                return new RealImageLoader$execute$2((RandomViewModel) this.this$0, (PageTitle) obj2, continuation, 18);
            case RADIO_BUTTON_VALUE:
                return new RealImageLoader$execute$2((List) this.L$0, (AddToReadingListDialog) this.this$0, (ReadingList) obj2, continuation, 19);
            case RADIO_ROW_VALUE:
                return new RealImageLoader$execute$2((ReadingList) this.L$0, (ReadingList) this.this$0, (List) obj2, continuation, 20);
            case RADIO_COLUMN_VALUE:
                return new RealImageLoader$execute$2((List) this.L$0, (AppCompatActivity) this.this$0, (ReadingListBehaviorsUtil.Callback) obj2, continuation, 21);
            case SIZE_BOX_VALUE:
                return new RealImageLoader$execute$2((ReadingList) this.L$0, (AppCompatActivity) this.this$0, (ReadingListBehaviorsUtil.SnackbarCallback) obj2, continuation, 22);
            case 23:
                return new RealImageLoader$execute$2((ReadingListPage) this.L$0, (AppCompatActivity) this.this$0, (ReadingListBehaviorsUtil.Callback) obj2, continuation, 23);
            case 24:
                return new RealImageLoader$execute$2((List) this.L$0, (ReadingList) this.this$0, (ReadingListFragmentViewModel) obj2, continuation, 24);
            case 25:
                return new RealImageLoader$execute$2((ReadingList) this.this$0, (ReadingListFragmentViewModel) obj2, continuation, 25);
            case 26:
                return new RealImageLoader$execute$2((String) this.L$0, (String) this.this$0, (ReadingListFragmentViewModel) obj2, continuation, 26);
            case 27:
                return new RealImageLoader$execute$2((String) this.L$0, (String) this.this$0, (ReadingListsFragment) obj2, continuation, 27);
            case 28:
                return new RealImageLoader$execute$2((MwQueryPage) this.L$0, (ArrayList) this.this$0, (SuggestedEditsImageTagsViewModel) obj2, continuation, 28);
            default:
                return new RealImageLoader$execute$2((TalkReplyViewModel) this.L$0, (String) this.this$0, (String) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((RealImageLoader$execute$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:199:0x053a  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0812  */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r5v20, types: [androidx.compose.ui.graphics.painter.Painter] */
    /* JADX WARN: Type inference failed for: r5v82 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:179:0x0508 -> B:173:0x050c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 3132
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.RealImageLoader$execute$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$2(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.$request = triggerBasedInvalidationTracker;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RealImageLoader$execute$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$request = obj2;
    }
}
