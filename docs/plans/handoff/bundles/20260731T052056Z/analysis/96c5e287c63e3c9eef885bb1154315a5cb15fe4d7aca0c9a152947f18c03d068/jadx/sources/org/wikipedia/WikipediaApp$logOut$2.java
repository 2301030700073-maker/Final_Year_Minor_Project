package org.wikipedia;

import com.airbnb.lottie.compose.LottieAnimatableImpl;
import com.airbnb.lottie.compose.LottieCancellationBehavior;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.Flow;
import org.wikipedia.alphaupdater.AlphaUpdateChecker;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.history.HistoryViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikipediaApp$logOut$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int I$0;
    public Object L$0;
    public Object L$1;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikipediaApp$logOut$2(LottieCancellationBehavior lottieCancellationBehavior, Job job, int i, LottieAnimatableImpl lottieAnimatableImpl, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.L$0 = lottieCancellationBehavior;
        this.this$0 = job;
        this.label = i;
        this.L$1 = lottieAnimatableImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new WikipediaApp$logOut$2((WikipediaApp) this.this$0, continuation);
            case 1:
                return new WikipediaApp$logOut$2((LottieCancellationBehavior) this.L$0, (Job) this.this$0, this.label, (LottieAnimatableImpl) this.L$1, continuation);
            case 2:
                return new WikipediaApp$logOut$2((Flow[]) this.L$0, this.label, (AtomicInteger) this.this$0, (BufferedChannel) this.L$1, continuation);
            case 3:
                WikipediaApp$logOut$2 wikipediaApp$logOut$2 = new WikipediaApp$logOut$2((SyntaxHighlighter) this.this$0, (String) this.L$1, this.label, continuation);
                wikipediaApp$logOut$2.L$0 = obj;
                return wikipediaApp$logOut$2;
            case 4:
                return new WikipediaApp$logOut$2((PersonalizationViewModel) this.this$0, (OnboardingTopic) this.L$1, continuation, 4);
            case 5:
                return new WikipediaApp$logOut$2((OnThisDayGameViewModel) this.L$1, this.label, continuation);
            case 6:
                return new WikipediaApp$logOut$2((List) this.this$0, (HistoryViewModel) this.L$1, continuation, 6);
            default:
                return new WikipediaApp$logOut$2((AlphaUpdateChecker) this.L$1, continuation);
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
        return ((WikipediaApp$logOut$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x053c  */
    /* JADX WARN: Removed duplicated region for block: B:254:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r39) {
        /*
            Method dump skipped, instructions count: 1538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.WikipediaApp$logOut$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WikipediaApp$logOut$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.L$1 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikipediaApp$logOut$2(WikipediaApp wikipediaApp, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.this$0 = wikipediaApp;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikipediaApp$logOut$2(AlphaUpdateChecker alphaUpdateChecker, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 7;
        this.L$1 = alphaUpdateChecker;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikipediaApp$logOut$2(SyntaxHighlighter syntaxHighlighter, String str, int i, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.this$0 = syntaxHighlighter;
        this.L$1 = str;
        this.label = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikipediaApp$logOut$2(OnThisDayGameViewModel onThisDayGameViewModel, int i, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 5;
        this.L$1 = onThisDayGameViewModel;
        this.label = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikipediaApp$logOut$2(Flow[] flowArr, int i, AtomicInteger atomicInteger, BufferedChannel bufferedChannel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.L$0 = flowArr;
        this.label = i;
        this.this$0 = atomicInteger;
        this.L$1 = bufferedChannel;
    }
}
