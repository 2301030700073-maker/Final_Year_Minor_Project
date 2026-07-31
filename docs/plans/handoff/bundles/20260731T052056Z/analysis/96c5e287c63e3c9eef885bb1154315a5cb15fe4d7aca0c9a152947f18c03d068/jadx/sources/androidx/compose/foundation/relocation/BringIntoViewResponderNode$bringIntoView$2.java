package androidx.compose.foundation.relocation;

import android.content.Context;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.SingleRunner$runInIsolation$2;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.personalization.PersonalizationPage;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.feed.personalization.PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.feed.personalization.PersonalizationViewModel$loadInitialArticles$2;
import org.wikipedia.feed.personalization.PersonalizedViewModelState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode$bringIntoView$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $boundsProvider;
    public final /* synthetic */ Object $childCoordinates;
    public final /* synthetic */ Object $parentRect;
    public final /* synthetic */ int $r8$classId = 1;
    public /* synthetic */ Object L$0;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2(Context context, Map map, List list, DefaultPagerState defaultPagerState, PersonalizationViewModel personalizationViewModel, Continuation continuation) {
        super(2, continuation);
        this.L$0 = context;
        this.this$0 = map;
        this.$childCoordinates = list;
        this.$boundsProvider = defaultPagerState;
        this.$parentRect = personalizationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$parentRect;
        Object obj3 = this.$boundsProvider;
        Object obj4 = this.$childCoordinates;
        Object obj5 = this.this$0;
        switch (i) {
            case 0:
                BringIntoViewResponderNode$bringIntoView$2 bringIntoViewResponderNode$bringIntoView$2 = new BringIntoViewResponderNode$bringIntoView$2((BringIntoViewResponderNode) obj5, (NodeCoordinator) obj4, (KTypeImpl$arguments$2) obj3, (HomeScreenKt$$ExternalSyntheticLambda29) obj2, continuation);
                bringIntoViewResponderNode$bringIntoView$2.L$0 = obj;
                return bringIntoViewResponderNode$bringIntoView$2;
            default:
                return new BringIntoViewResponderNode$bringIntoView$2((Context) this.L$0, (Map) obj5, (List) obj4, (DefaultPagerState) obj3, (PersonalizationViewModel) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                return ((BringIntoViewResponderNode$bringIntoView$2) create(coroutineScope, continuation)).invokeSuspend(unit);
            default:
                ((BringIntoViewResponderNode$bringIntoView$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        int i2 = 11;
        Object obj2 = this.$parentRect;
        Object obj3 = this.this$0;
        Object obj4 = this.$childCoordinates;
        Object obj5 = this.$boundsProvider;
        int i3 = 3;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                BringIntoViewResponderNode bringIntoViewResponderNode = (BringIntoViewResponderNode) obj3;
                Continuation continuation = null;
                AwaitKt.launch$default(coroutineScope, null, null, new SingleRunner$runInIsolation$2(bringIntoViewResponderNode, (NodeCoordinator) obj4, (KTypeImpl$arguments$2) obj5, continuation, 12), 3);
                return AwaitKt.launch$default(coroutineScope, null, null, new SimpleActor$offer$2(bringIntoViewResponderNode, (HomeScreenKt$$ExternalSyntheticLambda29) obj2, continuation, i2), 3);
            default:
                DefaultPagerState defaultPagerState = (DefaultPagerState) obj5;
                List list = (List) obj4;
                ResultKt.throwOnFailure(obj);
                SVGAndroidRenderer instrument = ContextKt.getInstrument((Context) this.L$0);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "impression", (String) ((Map) obj3).get(list.get(defaultPagerState.getCurrentPage())), null, null, null, null, 252);
                }
                PersonalizationViewModel personalizationViewModel = (PersonalizationViewModel) obj2;
                PersonalizationPage personalizationPage = (PersonalizationPage) list.get(defaultPagerState.getCurrentPage());
                personalizationViewModel.getClass();
                personalizationPage.getClass();
                int i4 = PersonalizationViewModel.WhenMappings.$EnumSwitchMapping$0[personalizationPage.ordinal()];
                int i5 = 2;
                Continuation continuation2 = null;
                if (i4 == 1) {
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 11), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation2, i3), 2);
                } else if (i4 == 2) {
                    if (((PersonalizedViewModelState) personalizationViewModel.state.getValue()).communityContent.isEmpty()) {
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel, 3), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation2, i5), 2);
                    }
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel, 5), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation2, 4), 2);
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, KTypeImpl$arguments$2 kTypeImpl$arguments$2, HomeScreenKt$$ExternalSyntheticLambda29 homeScreenKt$$ExternalSyntheticLambda29, Continuation continuation) {
        super(2, continuation);
        this.this$0 = bringIntoViewResponderNode;
        this.$childCoordinates = nodeCoordinator;
        this.$boundsProvider = kTypeImpl$arguments$2;
        this.$parentRect = homeScreenKt$$ExternalSyntheticLambda29;
    }
}
