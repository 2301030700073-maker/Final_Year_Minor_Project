package org.wikipedia.feed.personalization;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1;
import coil3.network.NetworkHeaders;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedLazily;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.MultipartBody;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.personalization.interest.InterestUiState;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsViewModel;
import org.wikipedia.topics.ArticleTopic;
import org.wikipedia.topics.ArticleTopics;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersonalizationViewModel extends ViewModel {
    public static final TalkTopicsViewModel.Factory Factory;
    public StandaloneCoroutine articlesJob;
    public final ReadonlyStateFlow feedPreferenceUiState;
    public final MultipartBody.Builder homePreferenceRepository;
    public final Retrofit interestSelectionRepository;
    public final ReadonlyStateFlow interestUiState;
    public boolean interestsUpdated;
    public final StateFlowImpl state;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PersonalizationPage.values().length];
            try {
                iArr[PersonalizationPage.INTERESTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PersonalizationPage.HOME_PREFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[HomePreferenceType.values().length];
            try {
                iArr2[HomePreferenceType.COMMUNITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[HomePreferenceType.PERSONALIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(3);
        builder.addInitializer(Reflection.factory.getOrCreateKotlinClass(PersonalizationViewModel.class), new ForYouCardKt$$ExternalSyntheticLambda1(9));
        Factory = builder.build();
    }

    public PersonalizationViewModel(Retrofit retrofit, MultipartBody.Builder builder) {
        this.interestSelectionRepository = retrofit;
        this.homePreferenceRepository = builder;
        String str = ((WikiSite) retrofit.callAdapterFactories).languageCode;
        List list = ArticleTopics.all;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OnboardingTopic((ArticleTopic) it.next(), false));
        }
        Prefs prefs = Prefs.INSTANCE;
        HomePreferenceType homePreferenceSelection = Prefs.getHomePreferenceSelection();
        EmptyList emptyList = EmptyList.INSTANCE;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new PersonalizedViewModelState(arrayList, emptyList, false, null, EmptySet.INSTANCE, emptyList, EmptyMap.INSTANCE, str, homePreferenceSelection, emptyList, false, null, emptyList, false, null));
        this.state = MutableStateFlow;
        ConflatedEventBus$special$$inlined$mapNotNull$1 conflatedEventBus$special$$inlined$mapNotNull$1 = new ConflatedEventBus$special$$inlined$mapNotNull$1(MutableStateFlow, 1);
        CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(this);
        InterestUiState interestUiState = ((PersonalizedViewModelState) MutableStateFlow.getValue()).toInterestUiState();
        StartedLazily startedLazily = SharingStarted.Companion.Eagerly;
        this.interestUiState = StateFlowKt.stateIn(conflatedEventBus$special$$inlined$mapNotNull$1, viewModelScope, startedLazily, interestUiState);
        this.feedPreferenceUiState = StateFlowKt.stateIn(new ConflatedEventBus$special$$inlined$mapNotNull$1(MutableStateFlow, 2), ViewModelKt.getViewModelScope(this), startedLazily, ((PersonalizedViewModelState) MutableStateFlow.getValue()).toFeedPreferenceUiState());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(1:(13:11|12|13|14|(5:21|22|23|(1:(1:25))|29)|31|(1:32)|35|(1:37)(1:38)|22|23|(0)|29)(2:40|41))(2:42|43))(3:48|49|(2:51|46)(1:52))|44|(11:47|14|(7:16|19|21|22|23|(0)|29)|31|(1:32)|35|(0)(0)|22|23|(0)|29)|46))|55|6|7|(0)(0)|44|(0)|46) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0036, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00dc, code lost:
    
        r2 = new kotlin.Result.Failure(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e7 A[LOOP:0: B:25:0x00e7->B:28:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:12:0x0031, B:14:0x007f, B:16:0x0087, B:19:0x008e, B:21:0x009e, B:31:0x00a2, B:32:0x00a4, B:35:0x00cb, B:37:0x00d3, B:38:0x00d7, B:43:0x0045, B:44:0x0067, B:49:0x004c), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d7 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:12:0x0031, B:14:0x007f, B:16:0x0087, B:19:0x008e, B:21:0x009e, B:31:0x00a2, B:32:0x00a4, B:35:0x00cb, B:37:0x00d3, B:38:0x00d7, B:43:0x0045, B:44:0x0067, B:49:0x004c), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initialize(kotlin.coroutines.jvm.internal.ContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.personalization.PersonalizationViewModel.initialize(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void loadArticlesByTopic(OnboardingTopic onboardingTopic) {
        if (((PersonalizedViewModelState) this.state.getValue()).articles.isEmpty()) {
            StandaloneCoroutine standaloneCoroutine = this.articlesJob;
            Continuation continuation = null;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            this.articlesJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(this, 0), null, new PageActivity$onCreate$1$1$1(this, onboardingTopic, continuation, 14), 2);
        }
    }

    public final void loadInitialArticles() {
        if (((PersonalizedViewModelState) this.state.getValue()).articles.isEmpty()) {
            StandaloneCoroutine standaloneCoroutine = this.articlesJob;
            Continuation continuation = null;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            this.articlesJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(this, 4), null, new PersonalizationViewModel$loadInitialArticles$2(this, continuation, 0), 2);
        }
    }
}
