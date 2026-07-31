package androidx.compose.material3;

import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SpringSpec;
import com.fsck.k9.ui.choosefolder.ChooseFolderViewModel;
import com.fsck.k9.ui.choosefolder.DisplayMode;
import java.util.LinkedHashSet;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.SharedFlowImpl;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnackbarHostKt$animatedScale$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $animation;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object $scale;
    public final /* synthetic */ boolean $visible;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedScale$1$1(DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl, Continuation continuation, boolean z, LinkedHashSet linkedHashSet) {
        super(2, continuation);
        this.$scale = deferredUseCaseCameraRequestControl;
        this.$visible = z;
        this.$animation = linkedHashSet;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        boolean z = this.$visible;
        Object obj2 = this.$animation;
        Object obj3 = this.$scale;
        switch (i) {
            case 0:
                return new SnackbarHostKt$animatedScale$1$1((Animatable) obj3, z, (SpringSpec) obj2, continuation);
            case 1:
                return new SnackbarHostKt$animatedScale$1$1((DeferredUseCaseCameraRequestControl) obj3, continuation, z, (LinkedHashSet) obj2);
            default:
                return new SnackbarHostKt$animatedScale$1$1((ChooseFolderViewModel) obj3, (LegacyAccountDto) obj2, z, continuation);
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
        return ((SnackbarHostKt$animatedScale$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = this.$visible;
        Object obj2 = this.$animation;
        Object obj3 = this.$scale;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = (Animatable) obj3;
                    float f = z ? 1.0f : 0.8f;
                    this.label = 1;
                    if (Animatable.animateTo$default(animatable, new Float(f), (SpringSpec) obj2, null, this, 12) == coroutineSingletons) {
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
                    Deferred updateRepeatingRequestAsync = DeferredUseCaseCameraRequestControl.access$getOrCreateImpl((DeferredUseCaseCameraRequestControl) obj3).updateRepeatingRequestAsync((LinkedHashSet) obj2, z);
                    this.label = 1;
                    Object awaitInternal = ((CompletableDeferredImpl) updateRepeatingRequestAsync).awaitInternal(this);
                    if (awaitInternal == coroutineSingletons) {
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
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    SharedFlowImpl sharedFlowImpl = ((ChooseFolderViewModel) obj3).inputFlow;
                    DisplayMode displayMode = new DisplayMode((LegacyAccountDto) obj2, z);
                    this.label = 1;
                    if (sharedFlowImpl.emit(displayMode, this) == coroutineSingletons) {
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
        }
        return coroutineSingletons;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedScale$1$1(Animatable animatable, boolean z, SpringSpec springSpec, Continuation continuation) {
        super(2, continuation);
        this.$scale = animatable;
        this.$visible = z;
        this.$animation = springSpec;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedScale$1$1(ChooseFolderViewModel chooseFolderViewModel, LegacyAccountDto legacyAccountDto, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$scale = chooseFolderViewModel;
        this.$animation = legacyAccountDto;
        this.$visible = z;
    }
}
