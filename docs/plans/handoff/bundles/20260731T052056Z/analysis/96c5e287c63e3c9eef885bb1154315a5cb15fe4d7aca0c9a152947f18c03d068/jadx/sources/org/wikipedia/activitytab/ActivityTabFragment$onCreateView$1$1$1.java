package org.wikipedia.activitytab;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.dataclient.mwapi.MwNotLoggedInException;
import org.wikipedia.events.LoggedInEvent;
import org.wikipedia.events.LoggedOutEvent;
import org.wikipedia.events.LoggedOutInBackgroundEvent;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTabFragment$onCreateView$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public final /* synthetic */ ActivityTabFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ActivityTabFragment$onCreateView$1$1$1(ActivityTabFragment activityTabFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = activityTabFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ActivityTabFragment activityTabFragment = this.this$0;
        switch (i) {
            case 0:
                ActivityTabFragment$onCreateView$1$1$1 activityTabFragment$onCreateView$1$1$1 = new ActivityTabFragment$onCreateView$1$1$1(activityTabFragment, continuation, 0);
                activityTabFragment$onCreateView$1$1$1.L$0 = obj;
                return activityTabFragment$onCreateView$1$1$1;
            default:
                ActivityTabFragment$onCreateView$1$1$1 activityTabFragment$onCreateView$1$1$12 = new ActivityTabFragment$onCreateView$1$1$1(activityTabFragment, continuation, 1);
                activityTabFragment$onCreateView$1$1$12.L$0 = obj;
                return activityTabFragment$onCreateView$1$1$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((ActivityTabFragment$onCreateView$1$1$1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((ActivityTabFragment$onCreateView$1$1$1) create((UiState) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ActivityTabFragment activityTabFragment = this.this$0;
        Object obj2 = this.L$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if ((obj2 instanceof LoggedInEvent) || (obj2 instanceof LoggedOutEvent) || (obj2 instanceof LoggedOutInBackgroundEvent)) {
                    activityTabFragment.getViewModel().loadAll();
                    break;
                }
                break;
            default:
                UiState uiState = (UiState) obj2;
                ResultKt.throwOnFailure(obj);
                if ((uiState instanceof UiState.Error) && (((UiState.Error) uiState).error instanceof MwNotLoggedInException)) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    Jsoup.getInstance();
                    WikipediaApp.resetAfterLogOut();
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setQueueLoggedOutInBackgroundDialog(true);
                    FlowEventBus.post(new LoggedOutInBackgroundEvent());
                    activityTabFragment.requireActivity().getWindow().getDecorView().post(new MainFragment$$ExternalSyntheticLambda5(2, activityTabFragment));
                    break;
                }
                break;
        }
        return unit;
    }
}
