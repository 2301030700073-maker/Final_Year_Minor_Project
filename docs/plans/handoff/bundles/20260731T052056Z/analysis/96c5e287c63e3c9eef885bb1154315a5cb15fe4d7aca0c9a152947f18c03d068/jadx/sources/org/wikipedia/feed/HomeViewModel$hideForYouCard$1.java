package org.wikipedia.feed;

import androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.settings.SettingsRepository;
import org.wikipedia.settings.SettingsRepository$addHiddenCard$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$hideForYouCard$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ForYouCard $card;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeViewModel$hideForYouCard$1(ForYouCard forYouCard, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$card = forYouCard;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new HomeViewModel$hideForYouCard$1(this.$card, continuation, 0);
            default:
                return new HomeViewModel$hideForYouCard$1(this.$card, continuation, 1);
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
        return ((HomeViewModel$hideForYouCard$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        ForYouCard forYouCard = this.$card;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SettingsRepository settingsRepository = SettingsRepository.INSTANCE;
                String hideKey = forYouCard.getHideKey();
                this.label = 1;
                Object updateData = SettingsRepository.dataStore.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1(new SettingsRepository$addHiddenCard$2(hideKey, 0, null), (Continuation) null, 3), this);
                if (updateData != coroutineSingletons) {
                    updateData = unit;
                }
                return updateData == coroutineSingletons ? coroutineSingletons : unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SettingsRepository settingsRepository2 = SettingsRepository.INSTANCE;
                String hideKey2 = forYouCard.getHideKey();
                this.label = 1;
                Object updateData2 = SettingsRepository.dataStore.updateData(new SimpleChannelFlowKt$simpleChannelFlow$1(new SettingsRepository$addHiddenCard$2(hideKey2, 2, null), (Continuation) null, 3), this);
                if (updateData2 != coroutineSingletons2) {
                    updateData2 = unit;
                }
                return updateData2 == coroutineSingletons2 ? coroutineSingletons2 : unit;
        }
    }
}
