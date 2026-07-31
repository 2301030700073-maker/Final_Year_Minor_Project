package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetDisplayAccounts$invoke$$inlined$flatMapLatest$2 extends SuspendLambda implements Function3 {
    public final /* synthetic */ boolean $showUnifiedAccount$inlined;
    public /* synthetic */ FlowCollector L$0;
    public /* synthetic */ Object L$1;
    public int label;
    public final /* synthetic */ GetDisplayAccounts this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetDisplayAccounts$invoke$$inlined$flatMapLatest$2(Continuation continuation, GetDisplayAccounts getDisplayAccounts, boolean z) {
        super(3, continuation);
        this.this$0 = getDisplayAccounts;
        this.$showUnifiedAccount$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        GetDisplayAccounts$invoke$$inlined$flatMapLatest$2 getDisplayAccounts$invoke$$inlined$flatMapLatest$2 = new GetDisplayAccounts$invoke$$inlined$flatMapLatest$2((Continuation) obj3, this.this$0, this.$showUnifiedAccount$inlined);
        getDisplayAccounts$invoke$$inlined$flatMapLatest$2.L$0 = (FlowCollector) obj;
        getDisplayAccounts$invoke$$inlined$flatMapLatest$2.L$1 = obj2;
        return getDisplayAccounts$invoke$$inlined$flatMapLatest$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector = this.L$0;
        Object obj2 = this.L$1;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Map map = (Map) obj2;
            List<LegacyAccountDto> list = CollectionsKt.toList(map.keySet());
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (LegacyAccountDto legacyAccountDto : list) {
                GetDisplayAccounts getDisplayAccounts = this.this$0;
                getDisplayAccounts.getClass();
                arrayList.add(FlowKt.flowOn(FlowKt.callbackFlow(new StringResourcesKt$stringResource$str$3$1(getDisplayAccounts, legacyAccountDto, null, 9)), getDisplayAccounts.coroutineContext));
            }
            GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1 getDisplayAccounts$invoke$lambda$1$$inlined$combine$1 = new GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1((Flow[]) CollectionsKt.toList(arrayList).toArray(new Flow[0]), this.$showUnifiedAccount$inlined, this.this$0, list, map);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 1;
            Object emitAll = FlowKt.emitAll(this, getDisplayAccounts$invoke$lambda$1$$inlined$combine$1, flowCollector);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (emitAll == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
