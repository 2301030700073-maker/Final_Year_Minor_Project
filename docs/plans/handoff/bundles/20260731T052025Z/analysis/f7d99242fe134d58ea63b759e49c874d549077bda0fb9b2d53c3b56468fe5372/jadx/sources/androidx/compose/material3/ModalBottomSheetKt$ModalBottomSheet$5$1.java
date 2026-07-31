package androidx.compose.material3;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModalBottomSheetKt$ModalBottomSheet$5$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SheetState $sheetState;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ModalBottomSheetKt$ModalBottomSheet$5$1(SheetState sheetState, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$sheetState = sheetState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SheetState sheetState = this.$sheetState;
        switch (i) {
            case 0:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 0);
            case 1:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 1);
            case 2:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 2);
            case 3:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 3);
            case 4:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 4);
            case 5:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 5);
            case 6:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 6);
            default:
                return new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, continuation, 7);
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
        return ((ModalBottomSheetKt$ModalBottomSheet$5$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SheetState sheetState = this.$sheetState;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.show(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 1:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.partialExpand(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 2:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.hide(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 3:
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.hide(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 4:
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.expand(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 5:
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.show(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i7 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 6:
                int i8 = this.label;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.expand(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i8 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (sheetState.partialExpand(this) == coroutineSingletons) {
                        break;
                    }
                } else if (i9 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }
}
