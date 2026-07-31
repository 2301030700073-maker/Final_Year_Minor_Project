package androidx.compose.material3;

import android.content.Context;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.DefaultDebugIndication;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.MagnifierNode;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.text.LinkStateInteractionSourceObserver;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.glance.appwidget.GlanceRemoteViewsService;
import androidx.glance.session.SessionWorker$doWork$2$1;
import androidx.room.InvalidationTracker;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.categories.CategoryDialogViewModel;
import org.wikipedia.commons.FilePageViewModel;
import org.wikipedia.createaccount.CreateAccountActivityViewModel;
import org.wikipedia.dataclient.okhttp.OfflineCacheInterceptor$CacheWritingSource;
import org.wikipedia.edit.EditSectionViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThumbNode$onAttach$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThumbNode$onAttach$1(ScrollableState scrollableState, int i, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.this$0 = scrollableState;
        this.label = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new ThumbNode$onAttach$1(0, (ThumbNode) obj2, continuation);
            case 1:
                return new ThumbNode$onAttach$1(1, (SeekableTransitionState) obj2, continuation);
            case 2:
                return new ThumbNode$onAttach$1(2, (DefaultDebugIndication.DefaultDebugIndicationInstance) obj2, continuation);
            case 3:
                return new ThumbNode$onAttach$1(3, (FocusableNode) obj2, continuation);
            case 4:
                return new ThumbNode$onAttach$1(4, (MagnifierNode) obj2, continuation);
            case 5:
                return new ThumbNode$onAttach$1(5, (MouseWheelScrollingLogic) obj2, continuation);
            case 6:
                return new ThumbNode$onAttach$1((LazyListState) obj2, this.label, continuation, 6);
            case 7:
                return new ThumbNode$onAttach$1((LazyGridState) obj2, this.label, continuation, 7);
            case 8:
                return new ThumbNode$onAttach$1(8, (CardView.AnonymousClass1) obj2, continuation);
            case 9:
                return new ThumbNode$onAttach$1(9, (CursorAnimationState) obj2, continuation);
            case 10:
                return new ThumbNode$onAttach$1(10, (LinkStateInteractionSourceObserver) obj2, continuation);
            case 11:
                return new ThumbNode$onAttach$1(11, (SelectionManager) obj2, continuation);
            case 12:
                return new ThumbNode$onAttach$1(12, (Function1) obj2, continuation);
            case IMAGE_VALUE:
                return new ThumbNode$onAttach$1(13, (TooltipStateImpl$show$cancellableShow$1) obj2, continuation);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new ThumbNode$onAttach$1(14, (SuspendingPointerInputModifierNodeImpl) obj2, continuation);
            case 15:
                return new ThumbNode$onAttach$1(15, (GlanceRemoteViewsService.GlanceRemoteViewsFactory) obj2, continuation);
            case LAZY_VERTICAL_GRID_VALUE:
                return new ThumbNode$onAttach$1(16, (Context) obj2, continuation);
            case VERTICAL_GRID_ITEM_VALUE:
                return new ThumbNode$onAttach$1(17, (SessionWorker$doWork$2$1) obj2, continuation);
            case RADIO_GROUP_VALUE:
                return new ThumbNode$onAttach$1(18, (InvalidationTracker) obj2, continuation);
            case RADIO_BUTTON_VALUE:
                return new ThumbNode$onAttach$1(19, (TriggerBasedInvalidationTracker) obj2, continuation);
            case RADIO_ROW_VALUE:
                return new ThumbNode$onAttach$1(20, (CompletableDeferredImpl) obj2, continuation);
            case RADIO_COLUMN_VALUE:
                return new ThumbNode$onAttach$1(21, (ConstraintTrackingWorker) obj2, continuation);
            case SIZE_BOX_VALUE:
                return new ThumbNode$onAttach$1(22, (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) obj2, continuation);
            case 23:
                return new ThumbNode$onAttach$1(23, (ActivityTabViewModel) obj2, continuation);
            case 24:
                return new ThumbNode$onAttach$1(24, (CaptchaHandler) obj2, continuation);
            case 25:
                return new ThumbNode$onAttach$1(25, (CategoryDialogViewModel) obj2, continuation);
            case 26:
                return new ThumbNode$onAttach$1(26, (FilePageViewModel) obj2, continuation);
            case 27:
                return new ThumbNode$onAttach$1(27, (CreateAccountActivityViewModel) obj2, continuation);
            case 28:
                return new ThumbNode$onAttach$1(28, (OfflineCacheInterceptor$CacheWritingSource) obj2, continuation);
            default:
                return new ThumbNode$onAttach$1(29, (EditSectionViewModel) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 6:
                ((ThumbNode$onAttach$1) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 7:
                ((ThumbNode$onAttach$1) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 11:
                long j = ((Offset) obj).packedValue;
                break;
        }
        return ((ThumbNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0735  */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v4, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:366:0x0733 -> B:359:0x0724). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:368:0x0750 -> B:357:0x0754). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 2116
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ThumbNode$onAttach$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThumbNode$onAttach$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.compose.material3.ThumbNode$onAttach$1$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final /* synthetic */ Object $pressCount;
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.$pressCount = obj;
            this.this$0 = obj2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:129:0x026c, code lost:
        
            if (r2 == r4) goto L111;
         */
        /* JADX WARN: Code restructure failed: missing block: B:174:0x0338, code lost:
        
            if (r0.emit(r1, r3) != r2) goto L164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:216:0x0410, code lost:
        
            if (r15.emit(r0, r4) == r2) goto L209;
         */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0247  */
        /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x028e  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0290  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x0277  */
        /* JADX WARN: Removed duplicated region for block: B:128:0x025d  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x02b4  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x02c2  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x0304  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x0316  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x03b1  */
        /* JADX WARN: Removed duplicated region for block: B:222:0x0403  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x03cf  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x013c  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r19, kotlin.coroutines.Continuation r20) {
            /*
                Method dump skipped, instructions count: 1716
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ThumbNode$onAttach$1.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object emit(int r6, kotlin.coroutines.Continuation r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
                if (r0 == 0) goto L13
                r0 = r7
                kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = (kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = new kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                kotlin.Unit r3 = kotlin.Unit.INSTANCE
                r4 = 1
                if (r2 == 0) goto L30
                if (r2 != r4) goto L29
                kotlin.ResultKt.throwOnFailure(r7)
                return r3
            L29:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
                r5 = 0
                return r5
            L30:
                kotlin.ResultKt.throwOnFailure(r7)
                if (r6 <= 0) goto L4e
                java.lang.Object r6 = r5.$pressCount
                kotlin.jvm.internal.Ref$BooleanRef r6 = (kotlin.jvm.internal.Ref$BooleanRef) r6
                boolean r7 = r6.element
                if (r7 != 0) goto L4e
                r6.element = r4
                java.lang.Object r5 = r5.this$0
                kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
                kotlinx.coroutines.flow.SharingCommand r6 = kotlinx.coroutines.flow.SharingCommand.START
                r0.label = r4
                java.lang.Object r5 = r5.emit(r6, r0)
                if (r5 != r1) goto L4e
                return r1
            L4e:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ThumbNode$onAttach$1.AnonymousClass1.emit(int, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:129:0x02ae, code lost:
        
            if (r12.lock(r1) == r2) goto L164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x03a8, code lost:
        
            if (r12.lock(r1) == r2) goto L164;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:102:0x0115  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x0319  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x02dc  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x014b  */
        /* JADX WARN: Removed duplicated region for block: B:128:0x0299  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x0163  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x0292  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0186  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x0242  */
        /* JADX WARN: Removed duplicated region for block: B:153:0x01a4  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x01e5  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x0231  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x01f5  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x04aa  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x047e  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0477  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0429  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x042d  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x040f  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x03d6  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0392  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x038a  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0336  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x033a  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
        /* JADX WARN: Type inference failed for: r12v0, types: [androidx.compose.material3.ThumbNode$onAttach$1$1] */
        /* JADX WARN: Type inference failed for: r12v1, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r12v15, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r12v2, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r12v3, types: [kotlinx.coroutines.sync.Mutex] */
        /* JADX WARN: Type inference failed for: r12v40 */
        /* JADX WARN: Type inference failed for: r12v66 */
        /* JADX WARN: Type inference failed for: r12v94 */
        /* JADX WARN: Type inference failed for: r12v95 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object emit(kotlin.coroutines.Continuation r13) {
            /*
                Method dump skipped, instructions count: 1254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ThumbNode$onAttach$1.AnonymousClass1.emit(kotlin.coroutines.Continuation):java.lang.Object");
        }
    }
}
