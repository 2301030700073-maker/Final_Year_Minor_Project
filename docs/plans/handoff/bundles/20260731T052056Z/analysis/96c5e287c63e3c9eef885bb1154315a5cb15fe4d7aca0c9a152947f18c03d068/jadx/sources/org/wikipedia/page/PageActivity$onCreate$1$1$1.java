package org.wikipedia.page;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.pager.DefaultPagerState;
import java.util.Calendar;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import org.wikipedia.commons.FilePageViewModel;
import org.wikipedia.commons.ImagePreviewViewModel;
import org.wikipedia.createaccount.CreateAccountActivityViewModel;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.templates.TemplatesSearchViewModel;
import org.wikipedia.feed.onthisday.OnThisDayViewModel;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.gallery.GalleryViewModel;
import org.wikipedia.history.HistoryViewModel;
import org.wikipedia.language.LangLinksViewModel;
import org.wikipedia.language.addlanguages.AddLanguagesViewModel;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListPreviewSaveDialogView;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.savedpages.SavedPageSyncService;
import org.wikipedia.search.RecentSearchesFragment;
import org.wikipedia.search.SearchFragment;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageActivity$onCreate$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageActivity$onCreate$1$1$1(Object obj, Object obj2, Continuation continuation, int i) {
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
                PageActivity$onCreate$1$1$1 pageActivity$onCreate$1$1$1 = new PageActivity$onCreate$1$1$1(0, (PageActivity) obj2, continuation);
                pageActivity$onCreate$1$1$1.L$0 = obj;
                return pageActivity$onCreate$1$1$1;
            case 1:
                return new PageActivity$onCreate$1$1$1((Ref$ObjectRef) this.L$0, (FilePageViewModel) obj2, continuation, 1);
            case 2:
                return new PageActivity$onCreate$1$1$1((Ref$ObjectRef) this.L$0, (ImagePreviewViewModel) obj2, continuation, 2);
            case 3:
                return new PageActivity$onCreate$1$1$1(3, (CreateAccountActivityViewModel) obj2, continuation);
            case 4:
                return new PageActivity$onCreate$1$1$1(4, (MwServiceError) obj2, continuation);
            case 5:
                return new PageActivity$onCreate$1$1$1((String) this.L$0, (Ref$ObjectRef) obj2, continuation, 5);
            case 6:
                PageActivity$onCreate$1$1$1 pageActivity$onCreate$1$1$12 = new PageActivity$onCreate$1$1$1(6, (DescriptionEditFragment) obj2, continuation);
                pageActivity$onCreate$1$1$12.L$0 = obj;
                return pageActivity$onCreate$1$1$12;
            case 7:
                return new PageActivity$onCreate$1$1$1(7, (DonationReminderViewModel) obj2, continuation);
            case 8:
                PageActivity$onCreate$1$1$1 pageActivity$onCreate$1$1$13 = new PageActivity$onCreate$1$1$1(8, (EditSectionActivity) obj2, continuation);
                pageActivity$onCreate$1$1$13.L$0 = obj;
                return pageActivity$onCreate$1$1$13;
            case 9:
                return new PageActivity$onCreate$1$1$1((PageTitle) this.L$0, (TemplatesSearchViewModel) obj2, continuation, 9);
            case 10:
                return new PageActivity$onCreate$1$1$1((LazyListState) this.L$0, (List) obj2, continuation, 10);
            case 11:
                return new PageActivity$onCreate$1$1$1((OnThisDayViewModel) this.L$0, (Calendar) obj2, continuation, 11);
            case 12:
                return new PageActivity$onCreate$1$1$1((DefaultPagerState) this.L$0, (Function0) obj2, continuation, 12);
            case IMAGE_VALUE:
                return new PageActivity$onCreate$1$1$1((PersonalizationViewModel) this.L$0, (PageTitle) obj2, continuation, 13);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new PageActivity$onCreate$1$1$1((PersonalizationViewModel) this.L$0, (OnboardingTopic) obj2, continuation, 14);
            case 15:
                return new PageActivity$onCreate$1$1$1(15, (GalleryViewModel) obj2, continuation);
            case LAZY_VERTICAL_GRID_VALUE:
                return new PageActivity$onCreate$1$1$1((List) this.L$0, (HistoryViewModel) obj2, continuation, 16);
            case VERTICAL_GRID_ITEM_VALUE:
                return new PageActivity$onCreate$1$1$1((LangLinksViewModel) this.L$0, (String) obj2, continuation, 17);
            case RADIO_GROUP_VALUE:
                PageActivity$onCreate$1$1$1 pageActivity$onCreate$1$1$14 = new PageActivity$onCreate$1$1$1(18, (AddLanguagesViewModel) obj2, continuation);
                pageActivity$onCreate$1$1$14.L$0 = obj;
                return pageActivity$onCreate$1$1$14;
            case RADIO_BUTTON_VALUE:
                return new PageActivity$onCreate$1$1$1((PageTitle) this.L$0, (PageAvailableOfflineHandler$Callback) obj2, continuation, 19);
            case RADIO_ROW_VALUE:
                return new PageActivity$onCreate$1$1$1((PageTitle) this.L$0, (SearchFragment$$ExternalSyntheticLambda1) obj2, continuation, 20);
            case RADIO_COLUMN_VALUE:
                return new PageActivity$onCreate$1$1$1((PageFragment) this.L$0, (PageTitle) obj2, continuation, 21);
            case SIZE_BOX_VALUE:
                return new PageActivity$onCreate$1$1$1((ReadingListPage) this.L$0, (PageTitle) obj2, continuation, 22);
            case 23:
                return new PageActivity$onCreate$1$1$1((ReadingList) this.L$0, (List) obj2, continuation, 23);
            case 24:
                return new PageActivity$onCreate$1$1$1((String) this.L$0, (ReadingListBehaviorsUtil.SearchCallback) obj2, continuation, 24);
            case 25:
                return new PageActivity$onCreate$1$1$1(25, (ReadingListPreviewSaveDialogView) obj2, continuation);
            case 26:
                return new PageActivity$onCreate$1$1$1((Dispatcher$promoteAndExecute$Effects) this.L$0, (RemoveFromReadingListsDialog$Callback) obj2, continuation, 26);
            case 27:
                return new PageActivity$onCreate$1$1$1((SavedPageSyncService) this.L$0, (PageTitle) obj2, continuation, 27);
            case 28:
                return new PageActivity$onCreate$1$1$1((RecentSearchesFragment.RecentSearchItemViewHolder) this.L$0, (RecentSearchesFragment) obj2, continuation, 28);
            default:
                return new PageActivity$onCreate$1$1$1((String) this.L$0, (SearchFragment) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((PageActivity$onCreate$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x021e, code lost:
    
        if (r0 == r2) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0206, code lost:
    
        if (r5 == r2) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        if (r2 == r1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0516, code lost:
    
        if (r2 == r1) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x057d, code lost:
    
        if (r0 == r1) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0597, code lost:
    
        if (r0 == r1) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c0, code lost:
    
        if (r2 == r1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x0aa1, code lost:
    
        if (r0 == r2) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:525:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0a60, code lost:
    
        if (r3 == r2) goto L428;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0ad5  */
    /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r2v50, types: [java.lang.Object, java.util.Map] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 3130
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.PageActivity$onCreate$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageActivity$onCreate$1$1$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
