package org.wikipedia.feed.personalization;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicsViewModel;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersonalizationViewModel$loadInitialArticles$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ PersonalizationViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PersonalizationViewModel$loadInitialArticles$2(PersonalizationViewModel personalizationViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = personalizationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PersonalizationViewModel personalizationViewModel = this.this$0;
        switch (i) {
            case 0:
                return new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation, 0);
            case 1:
                return new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation, 1);
            case 2:
                return new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation, 2);
            case 3:
                return new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation, 3);
            default:
                return new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel, continuation, 4);
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
        return ((PersonalizationViewModel$loadInitialArticles$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object loadInitialArticles;
        Object value2;
        PersonalizedViewModelState personalizedViewModelState;
        Object value3;
        Object value4;
        Object communityPreviewContent;
        Object value5;
        Object value6;
        Object personalizedPreviewContent;
        Object value7;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        PersonalizationViewModel personalizationViewModel = this.this$0;
        switch (i) {
            case 0:
                StateFlowImpl stateFlowImpl = personalizationViewModel.state;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value, null, true, null, null, null, null, null, null, false, null, null, false, null, 32755)));
                    Retrofit retrofit = personalizationViewModel.interestSelectionRepository;
                    this.label = 1;
                    loadInitialArticles = retrofit.loadInitialArticles(this);
                    if (loadInitialArticles == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    loadInitialArticles = obj;
                }
                List list = (List) loadInitialArticles;
                do {
                    value2 = stateFlowImpl.getValue();
                    personalizedViewModelState = (PersonalizedViewModelState) value2;
                } while (!stateFlowImpl.compareAndSet(value2, PersonalizedViewModelState.copy$default(personalizedViewModelState, CollectionsKt.toList(CollectionsKt.toMutableSet(UuidKt.plus(personalizedViewModelState.selectedArticles, (Iterable) list))), false, null, null, null, null, null, null, false, null, null, false, null, 32761)));
                return unit;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    personalizationViewModel.interestsUpdated = true;
                    TalkTopicsViewModel.Factory factory = PersonalizationViewModel.Factory;
                    Prefs prefs = Prefs.INSTANCE;
                    PrefsIoUtil.setString(R.string.preference_key_home_for_you_modules_today, "");
                    Retrofit retrofit3 = personalizationViewModel.interestSelectionRepository;
                    this.label = 1;
                    if (retrofit3.deleteAllInterests(this) == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                StateFlowImpl stateFlowImpl2 = personalizationViewModel.state;
                do {
                    value3 = stateFlowImpl2.getValue();
                } while (!stateFlowImpl2.compareAndSet(value3, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value3, null, false, null, EmptySet.INSTANCE, EmptyList.INSTANCE, EmptyMap.INSTANCE, null, null, false, null, null, false, null, 32643)));
                return unit;
            case 2:
                StateFlowImpl stateFlowImpl3 = personalizationViewModel.state;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    do {
                        value4 = stateFlowImpl3.getValue();
                    } while (!stateFlowImpl3.compareAndSet(value4, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value4, null, false, null, null, null, null, null, null, true, null, null, false, null, 29695)));
                    MultipartBody.Builder builder = personalizationViewModel.homePreferenceRepository;
                    this.label = 1;
                    communityPreviewContent = builder.getCommunityPreviewContent(this);
                    if (communityPreviewContent == coroutineSingletons3) {
                        return coroutineSingletons3;
                    }
                } else {
                    if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    communityPreviewContent = obj;
                }
                List list2 = (List) communityPreviewContent;
                do {
                    value5 = stateFlowImpl3.getValue();
                } while (!stateFlowImpl3.compareAndSet(value5, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value5, null, false, null, null, null, null, null, list2, false, null, null, false, null, 31231)));
                return unit;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    TalkTopicsViewModel.Factory factory2 = PersonalizationViewModel.Factory;
                    return personalizationViewModel.initialize(this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
                }
                if (i5 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                StateFlowImpl stateFlowImpl4 = personalizationViewModel.state;
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    do {
                        value6 = stateFlowImpl4.getValue();
                    } while (!stateFlowImpl4.compareAndSet(value6, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value6, null, false, null, null, null, null, null, null, false, null, null, true, null, 8191)));
                    MultipartBody.Builder builder2 = personalizationViewModel.homePreferenceRepository;
                    Set set = ((PersonalizedViewModelState) stateFlowImpl4.getValue()).selectedArticles;
                    Map map = ((PersonalizedViewModelState) stateFlowImpl4.getValue()).topicPreviewContent;
                    this.label = 1;
                    personalizedPreviewContent = builder2.getPersonalizedPreviewContent(set, map, this);
                    if (personalizedPreviewContent == coroutineSingletons5) {
                        return coroutineSingletons5;
                    }
                } else {
                    if (i6 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    personalizedPreviewContent = obj;
                }
                List list3 = (List) personalizedPreviewContent;
                do {
                    value7 = stateFlowImpl4.getValue();
                } while (!stateFlowImpl4.compareAndSet(value7, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value7, null, false, null, null, null, null, null, null, false, null, list3, false, null, 20479)));
                return unit;
        }
    }
}
