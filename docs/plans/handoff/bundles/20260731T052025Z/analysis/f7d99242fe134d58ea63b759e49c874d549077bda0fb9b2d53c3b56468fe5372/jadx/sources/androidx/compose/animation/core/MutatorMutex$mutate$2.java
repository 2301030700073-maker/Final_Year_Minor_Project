package androidx.compose.animation.core;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseSurfaceManager;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.work.ListenableWorker;
import androidx.work.impl.model.WorkSpec;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.ui.messagedetails.MessageDetailsViewModel;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import net.thunderbird.core.ui.compose.common.mvi.BaseStateMachineViewModel;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutatorMutex$mutate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(SessionConfigAdapter sessionConfigAdapter, UseCaseSurfaceManager useCaseSurfaceManager, List list, Map map, CameraGraphImpl cameraGraphImpl, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.L$1 = sessionConfigAdapter;
        this.L$0 = useCaseSurfaceManager;
        this.L$3 = list;
        this.this$0 = map;
        this.$block = cameraGraphImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$block;
        switch (i) {
            case 0:
                MutatorMutex$mutate$2 mutatorMutex$mutate$2 = new MutatorMutex$mutate$2((MutatorMutex) this.this$0, (Function1) obj2, continuation, 0);
                mutatorMutex$mutate$2.L$0 = obj;
                return mutatorMutex$mutate$2;
            case 1:
                return new MutatorMutex$mutate$2((StillCaptureRequestControl) this.this$0, (UseCaseCameraRequestControl) obj2, (StillCaptureRequestControl.CaptureRequest) null, continuation);
            case 2:
                return new MutatorMutex$mutate$2((StillCaptureRequestControl) obj2, continuation);
            case 3:
                MutatorMutex$mutate$2 mutatorMutex$mutate$22 = new MutatorMutex$mutate$2((SessionConfigAdapter) this.L$1, (UseCaseSurfaceManager) this.L$0, (List) this.L$3, (Map) this.this$0, (CameraGraphImpl) obj2, continuation);
                mutatorMutex$mutate$22.L$2 = obj;
                return mutatorMutex$mutate$22;
            case 4:
                MutatorMutex$mutate$2 mutatorMutex$mutate$23 = new MutatorMutex$mutate$2((Channel) this.L$0, (Animatable) this.L$3, (MutableState) this.this$0, (MutableState) obj2, continuation, 4);
                mutatorMutex$mutate$23.L$2 = obj;
                return mutatorMutex$mutate$23;
            case 5:
                MutatorMutex$mutate$2 mutatorMutex$mutate$24 = new MutatorMutex$mutate$2((PointerInputScope) this.L$1, (Function1) obj2, (Function1) this.L$0, (Function3) this.L$3, (Function1) this.this$0, continuation);
                mutatorMutex$mutate$24.L$2 = obj;
                return mutatorMutex$mutate$24;
            case 6:
                return new MutatorMutex$mutate$2((Lifecycle) this.L$0, (Lifecycle.State) this.L$3, (CoroutineScope) this.this$0, (Function2) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                MutatorMutex$mutate$2 mutatorMutex$mutate$25 = new MutatorMutex$mutate$2((ListenableWorker) this.L$3, (Headers.Builder) this.this$0, (WorkSpec) obj2, continuation);
                mutatorMutex$mutate$25.L$2 = obj;
                return mutatorMutex$mutate$25;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new MutatorMutex$mutate$2((MessageDetailsViewModel) this.this$0, (MessageReference) obj2, continuation, 8);
            default:
                return new MutatorMutex$mutate$2((BaseStateMachineViewModel) this.this$0, obj2, continuation, 9);
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
        return ((MutatorMutex$mutate$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstInlineVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Unexpected instance arg in invoke
        	at jadx.core.dex.visitors.ConstInlineVisitor.addExplicitCast(ConstInlineVisitor.java:285)
        	at jadx.core.dex.visitors.ConstInlineVisitor.replaceArg(ConstInlineVisitor.java:267)
        	at jadx.core.dex.visitors.ConstInlineVisitor.replaceConst(ConstInlineVisitor.java:177)
        	at jadx.core.dex.visitors.ConstInlineVisitor.checkInsn(ConstInlineVisitor.java:110)
        	at jadx.core.dex.visitors.ConstInlineVisitor.process(ConstInlineVisitor.java:55)
        	at jadx.core.dex.visitors.ConstInlineVisitor.visit(ConstInlineVisitor.java:47)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:211:0x0426 -> B:204:0x042a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 2216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.MutatorMutex$mutate$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(StillCaptureRequestControl stillCaptureRequestControl, UseCaseCameraRequestControl useCaseCameraRequestControl, StillCaptureRequestControl.CaptureRequest captureRequest, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 1;
        this.this$0 = stillCaptureRequestControl;
        this.$block = useCaseCameraRequestControl;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(StillCaptureRequestControl stillCaptureRequestControl, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$block = stillCaptureRequestControl;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(PointerInputScope pointerInputScope, Function1 function1, Function1 function12, Function3 function3, Function1 function13, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 5;
        this.L$1 = pointerInputScope;
        this.$block = function1;
        this.L$0 = function12;
        this.L$3 = function3;
        this.this$0 = function13;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(ListenableWorker listenableWorker, Headers.Builder builder, WorkSpec workSpec, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 7;
        this.L$3 = listenableWorker;
        this.this$0 = builder;
        this.$block = workSpec;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MutatorMutex$mutate$2(Object obj, Object obj2, Object obj3, Object obj4, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.L$3 = obj2;
        this.this$0 = obj3;
        this.$block = obj4;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MutatorMutex$mutate$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$block = obj2;
    }
}
