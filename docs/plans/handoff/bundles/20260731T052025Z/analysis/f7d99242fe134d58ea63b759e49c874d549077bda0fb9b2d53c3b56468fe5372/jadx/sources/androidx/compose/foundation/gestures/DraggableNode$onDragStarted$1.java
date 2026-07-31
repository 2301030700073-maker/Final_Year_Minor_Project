package androidx.compose.foundation.gestures;

import android.util.Log;
import androidx.camera.camera2.pipe.compat.CaptureSessionState;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1;
import androidx.compose.animation.SizeAnimationModifierNode;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationEndReason;
import androidx.compose.animation.core.AnimationResult;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.IntSize;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.account.AccountId;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode$onDragStarted$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long $startedPosition;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$onDragStarted$1(SizeAnimationModifierNode.AnimData animData, long j, SizeAnimationModifierNode sizeAnimationModifierNode, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.L$0 = animData;
        this.$startedPosition = j;
        this.this$0 = sizeAnimationModifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                DraggableNode$onDragStarted$1 draggableNode$onDragStarted$1 = new DraggableNode$onDragStarted$1((DraggableNode) obj2, this.$startedPosition, continuation, 0);
                draggableNode$onDragStarted$1.L$0 = obj;
                return draggableNode$onDragStarted$1;
            case 1:
                DraggableNode$onDragStarted$1 draggableNode$onDragStarted$12 = new DraggableNode$onDragStarted$1(this.$startedPosition, (CaptureSessionState) obj2, continuation);
                draggableNode$onDragStarted$12.L$0 = obj;
                return draggableNode$onDragStarted$12;
            case 2:
                return new DraggableNode$onDragStarted$1(2, this.$startedPosition, (Threads) this.L$0, (Function1) obj2, continuation);
            case 3:
                return new DraggableNode$onDragStarted$1((SizeAnimationModifierNode.AnimData) this.L$0, this.$startedPosition, (SizeAnimationModifierNode) obj2, continuation);
            case 4:
                return new DraggableNode$onDragStarted$1(4, this.$startedPosition, (DefaultFolderRepository) this.L$0, (LegacyAccountDto) obj2, continuation);
            default:
                DraggableNode$onDragStarted$1 draggableNode$onDragStarted$13 = new DraggableNode$onDragStarted$1((net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode) obj2, this.$startedPosition, continuation, 5);
                draggableNode$onDragStarted$13.L$0 = obj;
                return draggableNode$onDragStarted$13;
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
        return ((DraggableNode$onDragStarted$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object animateTo$default;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.$startedPosition;
        Object obj2 = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Continuation continuation = null;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    Function3 function3 = ((DraggableNode) obj2).onDragStarted;
                    Offset offset = new Offset(j);
                    this.label = 1;
                    if (function3.invoke(coroutineScope, offset, this) == coroutineSingletons) {
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
                    Log.d("CXCP", "Finalizing " + ((CoroutineScope) this.L$0) + " in " + j + " ms");
                    this.label = 1;
                    if (JobKt.delay(j, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                ((CaptureSessionState) obj2).finalizeSession$camera_camera2_pipe(0L);
                break;
            case 2:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Threads threads = (Threads) this.L$0;
                    ThumbNode$onAttach$1 thumbNode$onAttach$1 = new ThumbNode$onAttach$1(JobKt.async$default(threads.cameraPipeDispatchScope, threads.backgroundDispatcher, null, new Threads$runAsyncSupervised$1(0, null, (Function1) obj2), 2), continuation, 9);
                    this.label = 1;
                    Object withTimeoutOrNull = JobKt.withTimeoutOrNull(j, thumbNode$onAttach$1, this);
                    if (withTimeoutOrNull == coroutineSingletons) {
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
                SizeAnimationModifierNode sizeAnimationModifierNode = (SizeAnimationModifierNode) obj2;
                SizeAnimationModifierNode.AnimData animData = (SizeAnimationModifierNode.AnimData) this.L$0;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Animatable animatable = animData.anim;
                    IntSize intSize = new IntSize(j);
                    AnimationSpec animationSpec = sizeAnimationModifierNode.animationSpec;
                    this.label = 1;
                    animateTo$default = Animatable.animateTo$default(animatable, intSize, animationSpec, null, this, 12);
                    if (animateTo$default == coroutineSingletons) {
                        break;
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    animateTo$default = obj;
                }
                AnimationEndReason animationEndReason = ((AnimationResult) animateTo$default).endReason;
                break;
            case 4:
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    DefaultFolderRepository defaultFolderRepository = (DefaultFolderRepository) this.L$0;
                    AccountId accountId = ((LegacyAccountDto) obj2).id;
                    this.label = 1;
                    Object folderDetails = defaultFolderRepository.getFolderDetails(accountId, j, this);
                    if (folderDetails == coroutineSingletons) {
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
            default:
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function3 function32 = ((net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode) obj2).onDragStarted;
                    Offset offset2 = new Offset(j);
                    this.L$0 = null;
                    this.label = 1;
                    if (function32.invoke(coroutineScope2, offset2, this) == coroutineSingletons) {
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
        }
        return coroutineSingletons;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$onDragStarted$1(long j, CaptureSessionState captureSessionState, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.$startedPosition = j;
        this.this$0 = captureSessionState;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableNode$onDragStarted$1(int i, long j, Object obj, Object obj2, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
        this.$startedPosition = j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableNode$onDragStarted$1(DelegatingNode delegatingNode, long j, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = delegatingNode;
        this.$startedPosition = j;
    }
}
