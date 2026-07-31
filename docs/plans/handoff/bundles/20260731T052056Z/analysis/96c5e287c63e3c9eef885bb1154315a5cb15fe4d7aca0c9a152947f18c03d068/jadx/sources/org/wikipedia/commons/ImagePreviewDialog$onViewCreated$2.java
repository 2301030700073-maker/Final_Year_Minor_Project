package org.wikipedia.commons;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.ChannelFlowCollector;
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
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImagePreviewDialog$onViewCreated$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ImagePreviewDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImagePreviewDialog$onViewCreated$2(ImagePreviewDialog imagePreviewDialog, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = imagePreviewDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ImagePreviewDialog imagePreviewDialog = this.this$0;
        switch (i) {
            case 0:
                return new ImagePreviewDialog$onViewCreated$2(imagePreviewDialog, continuation, 0);
            default:
                return new ImagePreviewDialog$onViewCreated$2(imagePreviewDialog, continuation, 1);
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
        return ((ImagePreviewDialog$onViewCreated$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        ImagePreviewDialog imagePreviewDialog = this.this$0;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    DonateDialog$onCreateView$3.AnonymousClass1 anonymousClass1 = new DonateDialog$onCreateView$3.AnonymousClass1(12, imagePreviewDialog, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(imagePreviewDialog, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
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
                    ReadonlyStateFlow readonlyStateFlow = imagePreviewDialog.getViewModel().uiState;
                    ChannelFlowCollector channelFlowCollector = new ChannelFlowCollector(10, imagePreviewDialog);
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(channelFlowCollector, this) == coroutineSingletons2) {
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
