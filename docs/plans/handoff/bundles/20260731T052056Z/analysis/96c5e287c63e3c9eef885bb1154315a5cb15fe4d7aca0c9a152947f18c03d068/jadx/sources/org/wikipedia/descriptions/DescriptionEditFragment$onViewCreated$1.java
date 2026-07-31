package org.wikipedia.descriptions;

import android.os.Bundle;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.ShareUtil$shareImage$2$uri$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptionEditFragment$onViewCreated$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Bundle $savedInstanceState;
    public int label;
    public final /* synthetic */ DescriptionEditFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DescriptionEditFragment$onViewCreated$1(DescriptionEditFragment descriptionEditFragment, Bundle bundle, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = descriptionEditFragment;
        this.$savedInstanceState = bundle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Bundle bundle = this.$savedInstanceState;
        DescriptionEditFragment descriptionEditFragment = this.this$0;
        switch (i) {
            case 0:
                return new DescriptionEditFragment$onViewCreated$1(descriptionEditFragment, bundle, continuation, 0);
            default:
                return new DescriptionEditFragment$onViewCreated$1(descriptionEditFragment, bundle, continuation, 1);
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
        return ((DescriptionEditFragment$onViewCreated$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Bundle bundle = this.$savedInstanceState;
        DescriptionEditFragment descriptionEditFragment = this.this$0;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    ShareUtil$shareImage$2$uri$1 shareUtil$shareImage$2$uri$1 = new ShareUtil$shareImage$2$uri$1(descriptionEditFragment, bundle, continuation, 6);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(descriptionEditFragment, lifecycle$State, shareUtil$shareImage$2$uri$1, this) == coroutineSingletons) {
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
                    ReadonlyStateFlow readonlyStateFlow = descriptionEditFragment.getViewModel$1().loadPageSummaryState;
                    ThumbNode$onAttach$1.AnonymousClass1 anonymousClass1 = new ThumbNode$onAttach$1.AnonymousClass1(16, descriptionEditFragment, bundle);
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(anonymousClass1, this) == coroutineSingletons2) {
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
}
