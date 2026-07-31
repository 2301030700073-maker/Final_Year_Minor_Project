package androidx.compose.runtime;

import androidx.camera.camera2.pipe.compat.CameraState;
import androidx.camera.camera2.pipe.compat.CameraStateClosed;
import androidx.camera.camera2.pipe.compat.CameraStateClosing;
import androidx.camera.camera2.pipe.compat.CameraStateUnopened;
import androidx.compose.runtime.Recomposer;
import androidx.datastore.core.Final;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.SharingCommand;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Recomposer$join$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Recomposer$join$2(int i, Continuation continuation, int i2) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                Recomposer$join$2 recomposer$join$2 = new Recomposer$join$2(2, continuation, 0);
                recomposer$join$2.L$0 = obj;
                return recomposer$join$2;
            case 1:
                Recomposer$join$2 recomposer$join$22 = new Recomposer$join$2(2, continuation, 1);
                recomposer$join$22.L$0 = obj;
                return recomposer$join$22;
            case 2:
                Recomposer$join$2 recomposer$join$23 = new Recomposer$join$2(2, continuation, 2);
                recomposer$join$23.L$0 = obj;
                return recomposer$join$23;
            case 3:
                Recomposer$join$2 recomposer$join$24 = new Recomposer$join$2(2, continuation, 3);
                recomposer$join$24.L$0 = obj;
                return recomposer$join$24;
            case 4:
                Recomposer$join$2 recomposer$join$25 = new Recomposer$join$2(2, continuation, 4);
                recomposer$join$25.L$0 = obj;
                return recomposer$join$25;
            case 5:
                Recomposer$join$2 recomposer$join$26 = new Recomposer$join$2(2, continuation, 5);
                recomposer$join$26.L$0 = obj;
                return recomposer$join$26;
            default:
                Recomposer$join$2 recomposer$join$27 = new Recomposer$join$2(2, continuation, 6);
                recomposer$join$27.L$0 = obj;
                return recomposer$join$27;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((Recomposer$join$2) create((Recomposer.State) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((Recomposer$join$2) create((CameraState) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((Recomposer$join$2) create((CameraState) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((Recomposer$join$2) create((CameraState) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((Recomposer$join$2) create((CameraState) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((Recomposer$join$2) create((androidx.datastore.core.State) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((Recomposer$join$2) create((SharingCommand) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(((Recomposer.State) this.L$0) == Recomposer.State.ShutDown);
            case 1:
                ResultKt.throwOnFailure(obj);
                CameraState cameraState = (CameraState) this.L$0;
                return Boolean.valueOf((cameraState instanceof CameraStateClosing) || (cameraState instanceof CameraStateClosed));
            case 2:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(((CameraState) this.L$0) instanceof CameraStateClosed);
            case 3:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(!(((CameraState) this.L$0) instanceof CameraStateUnopened));
            case 4:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(!Intrinsics.areEqual((CameraState) this.L$0, CameraStateUnopened.INSTANCE));
            case 5:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(!(((androidx.datastore.core.State) this.L$0) instanceof Final));
            default:
                SharingCommand sharingCommand = (SharingCommand) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(sharingCommand != SharingCommand.START);
        }
    }
}
