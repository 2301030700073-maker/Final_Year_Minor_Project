package org.wikipedia.donate;

import android.content.Context;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.ui.focus.FocusRequester;
import androidx.datastore.core.State;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.glance.appwidget.LayoutConfiguration;
import androidx.glance.appwidget.proto.LayoutProto$LayoutConfig;
import androidx.glance.session.SessionManagerImpl$scope$1;
import androidx.glance.session.SessionWorker;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.AsyncPagingDataDiffer;
import androidx.paging.ChannelFlowCollector;
import androidx.paging.PagingDataEvent$Refresh;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.commons.ImagePreviewDialog;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.language.addlanguages.AddLanguagesViewModel;
import org.wikipedia.main.MainFragment;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.readinglist.ReadingListFragmentViewModel;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.settings.SettingsFragment;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;
import org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonateDialog$onCreateView$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ DonateDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DonateDialog$onCreateView$3(DonateDialog donateDialog, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = donateDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DonateDialog donateDialog = this.this$0;
        switch (i) {
            case 0:
                return new DonateDialog$onCreateView$3(donateDialog, continuation, 0);
            default:
                return new DonateDialog$onCreateView$3(donateDialog, continuation, 1);
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
        return ((DonateDialog$onCreateView$3) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        DonateDialog donateDialog = this.this$0;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, donateDialog, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(donateDialog, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ReadonlyStateFlow readonlyStateFlow = ((DonateViewModel) donateDialog.viewModel$delegate.getValue()).uiState;
                    ChannelFlowCollector channelFlowCollector = new ChannelFlowCollector(11, donateDialog);
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(channelFlowCollector, this) == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.donate.DonateDialog$onCreateView$3$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public /* synthetic */ Object L$0;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(Object obj, Object obj2, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.L$0 = obj;
            this.this$0 = obj2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, (DonateDialog) obj2, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                case 1:
                    AnonymousClass1 anonymousClass12 = new AnonymousClass1(1, (CursorAnimationState) obj2, continuation);
                    anonymousClass12.L$0 = obj;
                    return anonymousClass12;
                case 2:
                    AnonymousClass1 anonymousClass13 = new AnonymousClass1(2, (State) obj2, continuation);
                    anonymousClass13.L$0 = obj;
                    return anonymousClass13;
                case 3:
                    AnonymousClass1 anonymousClass14 = new AnonymousClass1(3, (ArrayList) obj2, continuation);
                    anonymousClass14.L$0 = obj;
                    return anonymousClass14;
                case 4:
                    AnonymousClass1 anonymousClass15 = new AnonymousClass1(4, (Set) obj2, continuation);
                    anonymousClass15.L$0 = obj;
                    return anonymousClass15;
                case 5:
                    AnonymousClass1 anonymousClass16 = new AnonymousClass1(5, (LayoutConfiguration) obj2, continuation);
                    anonymousClass16.L$0 = obj;
                    return anonymousClass16;
                case 6:
                    AnonymousClass1 anonymousClass17 = new AnonymousClass1(6, (SessionWorker) obj2, continuation);
                    anonymousClass17.L$0 = obj;
                    return anonymousClass17;
                case 7:
                    AnonymousClass1 anonymousClass18 = new AnonymousClass1(7, (LifecycleCoroutineScopeImpl) obj2, continuation);
                    anonymousClass18.L$0 = obj;
                    return anonymousClass18;
                case 8:
                    return new AnonymousClass1((PagingDataEvent$Refresh) this.L$0, (AsyncPagingDataDiffer) obj2, continuation, 8);
                case 9:
                    AnonymousClass1 anonymousClass19 = new AnonymousClass1(9, (Function2) obj2, continuation);
                    anonymousClass19.L$0 = obj;
                    return anonymousClass19;
                case 10:
                    AnonymousClass1 anonymousClass110 = new AnonymousClass1(10, (Function0) obj2, continuation);
                    anonymousClass110.L$0 = obj;
                    return anonymousClass110;
                case 11:
                    AnonymousClass1 anonymousClass111 = new AnonymousClass1(11, (FilePageFragment) obj2, continuation);
                    anonymousClass111.L$0 = obj;
                    return anonymousClass111;
                case 12:
                    AnonymousClass1 anonymousClass112 = new AnonymousClass1(12, (ImagePreviewDialog) obj2, continuation);
                    anonymousClass112.L$0 = obj;
                    return anonymousClass112;
                case IMAGE_VALUE:
                    return new AnonymousClass1((Context) this.L$0, (FocusRequester) obj2, continuation, 13);
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    AnonymousClass1 anonymousClass113 = new AnonymousClass1(14, (CreateAccountActivity) obj2, continuation);
                    anonymousClass113.L$0 = obj;
                    return anonymousClass113;
                case 15:
                    AnonymousClass1 anonymousClass114 = new AnonymousClass1(15, (OnThisDayFragment) obj2, continuation);
                    anonymousClass114.L$0 = obj;
                    return anonymousClass114;
                case LAZY_VERTICAL_GRID_VALUE:
                    AnonymousClass1 anonymousClass115 = new AnonymousClass1(16, (GalleryActivity) obj2, continuation);
                    anonymousClass115.L$0 = obj;
                    return anonymousClass115;
                case VERTICAL_GRID_ITEM_VALUE:
                    AnonymousClass1 anonymousClass116 = new AnonymousClass1(17, (GalleryItemFragment) obj2, continuation);
                    anonymousClass116.L$0 = obj;
                    return anonymousClass116;
                case RADIO_GROUP_VALUE:
                    return new AnonymousClass1((AddLanguagesViewModel) this.L$0, (String) obj2, continuation, 18);
                case RADIO_BUTTON_VALUE:
                    AnonymousClass1 anonymousClass117 = new AnonymousClass1(19, (MainFragment) obj2, continuation);
                    anonymousClass117.L$0 = obj;
                    return anonymousClass117;
                case RADIO_ROW_VALUE:
                    AnonymousClass1 anonymousClass118 = new AnonymousClass1(20, (EditHistoryListViewModel) obj2, continuation);
                    anonymousClass118.L$0 = obj;
                    return anonymousClass118;
                case RADIO_COLUMN_VALUE:
                    AnonymousClass1 anonymousClass119 = new AnonymousClass1(21, (RandomActivity) obj2, continuation);
                    anonymousClass119.L$0 = obj;
                    return anonymousClass119;
                case SIZE_BOX_VALUE:
                    return new AnonymousClass1((ReadingListFragmentViewModel) this.L$0, (Throwable) obj2, continuation, 22);
                case 23:
                    AnonymousClass1 anonymousClass120 = new AnonymousClass1(23, (ReadingListsFragment) obj2, continuation);
                    anonymousClass120.L$0 = obj;
                    return anonymousClass120;
                case 24:
                    AnonymousClass1 anonymousClass121 = new AnonymousClass1(24, (SettingsFragment) obj2, continuation);
                    anonymousClass121.L$0 = obj;
                    return anonymousClass121;
                case 25:
                    AnonymousClass1 anonymousClass122 = new AnonymousClass1(25, (List) obj2, continuation);
                    anonymousClass122.L$0 = obj;
                    return anonymousClass122;
                case 26:
                    return new AnonymousClass1((CategoryDeveloperPlayGroundViewModel) this.L$0, (List) obj2, continuation, 26);
                case 27:
                    AnonymousClass1 anonymousClass123 = new AnonymousClass1(27, (SuggestedEditsCardsItemFragment) obj2, continuation);
                    anonymousClass123.L$0 = obj;
                    return anonymousClass123;
                case 28:
                    AnonymousClass1 anonymousClass124 = new AnonymousClass1(28, (SuggestedEditsImageTagsFragment) obj2, continuation);
                    anonymousClass124.L$0 = obj;
                    return anonymousClass124;
                default:
                    AnonymousClass1 anonymousClass125 = new AnonymousClass1(29, (SuggestedEditsRecentEditsViewModel) obj2, continuation);
                    anonymousClass125.L$0 = obj;
                    return anonymousClass125;
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
                    return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 2:
                    return ((AnonymousClass1) create((State) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 3:
                    return ((AnonymousClass1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 4:
                    return ((AnonymousClass1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 5:
                    return ((AnonymousClass1) create((LayoutProto$LayoutConfig) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 6:
                    return ((AnonymousClass1) create((SessionManagerImpl$scope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 7:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 8:
                    return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 9:
                    return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 10:
                    return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                case 11:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 12:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case IMAGE_VALUE:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 15:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case LAZY_VERTICAL_GRID_VALUE:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case VERTICAL_GRID_ITEM_VALUE:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case RADIO_GROUP_VALUE:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case RADIO_BUTTON_VALUE:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case RADIO_ROW_VALUE:
                    return ((AnonymousClass1) create((MwQueryPage.Revision) obj, (Continuation) obj2)).invokeSuspend(unit);
                case RADIO_COLUMN_VALUE:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case SIZE_BOX_VALUE:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 23:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 24:
                    ((AnonymousClass1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 25:
                    ((AnonymousClass1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 26:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 27:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                case 28:
                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                    return unit;
                default:
                    return ((AnonymousClass1) create((MwQueryResult.RecentChange) obj, (Continuation) obj2)).invokeSuspend(unit);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x005e, code lost:
        
            if (kotlin.text.StringsKt.contains(r14, r7.currentQuery, true) != false) goto L16;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:278:0x0677  */
        /* JADX WARN: Type inference failed for: r15v4, types: [java.util.Locale$Builder] */
        /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.coroutines.Continuation] */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v16 */
        /* JADX WARN: Type inference failed for: r5v17 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r5v6 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 1852
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.DonateDialog$onCreateView$3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(int i, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }
}
