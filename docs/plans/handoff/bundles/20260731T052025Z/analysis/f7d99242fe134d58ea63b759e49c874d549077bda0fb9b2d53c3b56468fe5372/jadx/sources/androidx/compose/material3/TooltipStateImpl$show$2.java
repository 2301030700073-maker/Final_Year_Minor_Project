package androidx.compose.material3;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.AnchoredDraggableState$$ExternalSyntheticLambda0;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TooltipStateImpl$show$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Object $cancellableShow;
    public final /* synthetic */ Object $mutatePriority;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TooltipStateImpl$show$2(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$cancellableShow = obj2;
        this.$mutatePriority = obj3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.$cancellableShow;
        Object obj2 = this.$mutatePriority;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                return new TooltipStateImpl$show$2((TooltipStateImpl) obj3, (DataStoreImpl$doWithWriteFileLock$2) obj, (MutatePriority) obj2, continuation, 0);
            case 1:
                return new TooltipStateImpl$show$2((UseCaseCameraRequestControlImpl) obj3, (Map) obj, (Config.OptionPriority) obj2, continuation, 1);
            case 2:
                return new TooltipStateImpl$show$2((UseCaseCameraRequestControlImpl) obj3, (Camera2ImplConfig) obj, (Map) obj2, continuation, 2);
            default:
                return new TooltipStateImpl$show$2((AnchoredDraggableState) obj3, this.$cancellableShow, (Function4) obj2, continuation, 3);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
        }
        return ((TooltipStateImpl$show$2) create(continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$mutatePriority;
        Object obj3 = this.$cancellableShow;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Object obj4 = this.this$0;
        Continuation continuation = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        switch (i) {
            case 0:
                MutatePriority mutatePriority = (MutatePriority) obj2;
                DataStoreImpl$doWithWriteFileLock$2 dataStoreImpl$doWithWriteFileLock$2 = (DataStoreImpl$doWithWriteFileLock$2) obj3;
                TooltipStateImpl tooltipStateImpl = (TooltipStateImpl) obj4;
                int i2 = this.label;
                MutatePriority mutatePriority2 = MutatePriority.PreventUserInput;
                try {
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        ThumbNode$onAttach$1 thumbNode$onAttach$1 = new ThumbNode$onAttach$1((Object) dataStoreImpl$doWithWriteFileLock$2, (Continuation) (objArr == true ? 1 : 0), 26);
                        this.label = 2;
                        if (JobKt.setupTimeout(new TimeoutCoroutine(1500L, this), thumbNode$onAttach$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1 && i2 != 2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    if (mutatePriority == mutatePriority2) {
                        return unit;
                    }
                    tooltipStateImpl.dismiss();
                    return unit;
                } catch (Throwable th) {
                    if (mutatePriority != mutatePriority2) {
                        tooltipStateImpl.dismiss();
                    }
                    throw th;
                }
            case 1:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    Object access$setParametersInternal = UseCaseCameraRequestControlImpl.access$setParametersInternal((UseCaseCameraRequestControlImpl) obj4, UseCaseCameraRequestControl.Type.DEFAULT, (Map) obj3, (Config.OptionPriority) obj2, this);
                    return access$setParametersInternal == coroutineSingletons ? coroutineSingletons : access$setParametersInternal;
                }
                if (i3 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 2:
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = (UseCaseCameraRequestControlImpl) obj4;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "UseCaseCameraRequestControlImpl#updateCamera2ConfigAsync");
                }
                LinkedHashMap linkedHashMap = useCaseCameraRequestControlImpl.infoBundleMap;
                CompletableDeferredImpl completableDeferredImpl = UseCaseCameraRequestControlImpl.submitFailedResult;
                Preview.Builder builder = new Preview.Builder(1);
                builder.insertAllOptions((Camera2ImplConfig) obj3);
                linkedHashMap.put(UseCaseCameraRequestControl.Type.CAMERA2_CAMERA_CONTROL, new UseCaseCameraRequestControlImpl.InfoBundle(builder, new LinkedHashMap((Map) obj2), (RequestTemplate) (objArr2 == true ? 1 : 0), 12));
                UseCaseCameraRequestControlImpl.InfoBundle merge = UseCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
                this.label = 1;
                Object updateCameraStateAsync = useCaseCameraRequestControlImpl.updateCameraStateAsync(merge, null, this);
                return updateCameraStateAsync == coroutineSingletons ? coroutineSingletons : updateCameraStateAsync;
            default:
                AnchoredDraggableState anchoredDraggableState = (AnchoredDraggableState) obj4;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                anchoredDraggableState.setDragTarget(obj3);
                AnchoredDraggableState$$ExternalSyntheticLambda0 anchoredDraggableState$$ExternalSyntheticLambda0 = new AnchoredDraggableState$$ExternalSyntheticLambda0(anchoredDraggableState, 4);
                DraggableNode$drag$2 draggableNode$drag$2 = new DraggableNode$drag$2((Function4) obj2, anchoredDraggableState, continuation, 27);
                this.label = 1;
                return Icons$Filled.access$restartable(anchoredDraggableState$$ExternalSyntheticLambda0, draggableNode$drag$2, this) == coroutineSingletons ? coroutineSingletons : unit;
        }
    }
}
