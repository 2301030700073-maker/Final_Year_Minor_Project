package androidx.compose.runtime;

import android.os.Build;
import android.util.Log;
import androidx.compose.runtime.Recomposer;
import androidx.paging.PageEvent;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.SharingCommand;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.TimelineDisplayItem;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.dataclient.mwapi.MwNotLoggedInException;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.events.LoggedOutInBackgroundEvent;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Recomposer$join$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Recomposer$join$2(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                Recomposer$join$2 recomposer$join$2 = new Recomposer$join$2(2, 0, continuation);
                recomposer$join$2.L$0 = obj;
                return recomposer$join$2;
            case 1:
                Recomposer$join$2 recomposer$join$22 = new Recomposer$join$2(2, 1, continuation);
                recomposer$join$22.L$0 = obj;
                return recomposer$join$22;
            case 2:
                Recomposer$join$2 recomposer$join$23 = new Recomposer$join$2(2, 2, continuation);
                recomposer$join$23.L$0 = obj;
                return recomposer$join$23;
            case 3:
                Recomposer$join$2 recomposer$join$24 = new Recomposer$join$2(2, 3, continuation);
                recomposer$join$24.L$0 = obj;
                return recomposer$join$24;
            case 4:
                Recomposer$join$2 recomposer$join$25 = new Recomposer$join$2(2, 4, continuation);
                recomposer$join$25.L$0 = obj;
                return recomposer$join$25;
            case 5:
                Recomposer$join$2 recomposer$join$26 = new Recomposer$join$2(2, 5, continuation);
                recomposer$join$26.L$0 = obj;
                return recomposer$join$26;
            case 6:
                Recomposer$join$2 recomposer$join$27 = new Recomposer$join$2(2, 6, continuation);
                recomposer$join$27.L$0 = obj;
                return recomposer$join$27;
            case 7:
                Recomposer$join$2 recomposer$join$28 = new Recomposer$join$2(2, 7, continuation);
                recomposer$join$28.L$0 = obj;
                return recomposer$join$28;
            default:
                Recomposer$join$2 recomposer$join$29 = new Recomposer$join$2(2, 8, continuation);
                recomposer$join$29.L$0 = obj;
                return recomposer$join$29;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((Recomposer$join$2) create((Recomposer.State) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((Recomposer$join$2) create((IndexedValue) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                ((Recomposer$join$2) create((PageEvent) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 3:
                return ((Recomposer$join$2) create((SharingCommand) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((Recomposer$join$2) create(obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((Recomposer$join$2) create((MwQueryPage.Revision) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((Recomposer$join$2) create((MwQueryResult.RecentChange) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 7:
                return ((Recomposer$join$2) create((UserContribution) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                ((Recomposer$join$2) create((UiState) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(((Recomposer.State) this.L$0) == Recomposer.State.ShutDown);
            case 1:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(((IndexedValue) this.L$0) != null);
            case 2:
                ResultKt.throwOnFailure(obj);
                PageEvent pageEvent = (PageEvent) this.L$0;
                if (Build.ID != null && Log.isLoggable("Paging", 2)) {
                    r2 = true;
                }
                if (r2) {
                    Log.v("Paging", "Sent " + pageEvent, null);
                }
                return unit;
            case 3:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(((SharingCommand) this.L$0) != SharingCommand.START);
            case 4:
                Object obj2 = this.L$0;
                ResultKt.throwOnFailure(obj);
                if (obj2 instanceof TimelineItem) {
                    return new TimelineDisplayItem.TimelineEntry((TimelineItem) obj2);
                }
                obj2.getClass();
                return (TimelineDisplayItem) obj2;
            case 5:
                MwQueryPage.Revision revision = (MwQueryPage.Revision) this.L$0;
                ResultKt.throwOnFailure(obj);
                return new EditHistoryListViewModel.EditHistoryItem(revision);
            case 6:
                MwQueryResult.RecentChange recentChange = (MwQueryResult.RecentChange) this.L$0;
                ResultKt.throwOnFailure(obj);
                return new SuggestedEditsRecentEditsViewModel.RecentEditsItem(recentChange);
            case 7:
                UserContribution userContribution = (UserContribution) this.L$0;
                ResultKt.throwOnFailure(obj);
                return new UserContribListViewModel.UserContribItem(userContribution);
            default:
                UiState uiState = (UiState) this.L$0;
                ResultKt.throwOnFailure(obj);
                if ((uiState instanceof UiState.Error) && (((UiState.Error) uiState).error instanceof MwNotLoggedInException)) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    Jsoup.getInstance();
                    WikipediaApp.resetAfterLogOut();
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setQueueLoggedOutInBackgroundDialog(true);
                    FlowEventBus.post(new LoggedOutInBackgroundEvent());
                }
                return unit;
        }
    }
}
