package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.ui.geometry.Offset;
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
public final class ScrollableNode$onKeyEvent$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ long $scrollAmount;
    public int label;
    public final /* synthetic */ ScrollableNode this$0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.compose.foundation.gestures.ScrollableNode$onKeyEvent$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ long $scrollAmount;
        public /* synthetic */ Object L$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(long j, Continuation continuation) {
            super(2, continuation);
            this.$scrollAmount = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scrollAmount, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) create((ScrollingLogic$nestedScrollScope$1) obj, (Continuation) obj2);
            Unit unit = Unit.INSTANCE;
            anonymousClass1.invokeSuspend(unit);
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ResultKt.throwOnFailure(obj);
            ScrollingLogic scrollingLogic = ((ScrollingLogic$nestedScrollScope$1) this.L$0).this$0;
            scrollingLogic.m191performScroll3eAAhYA(scrollingLogic.outerStateScope, this.$scrollAmount, 1);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ScrollableNode$onKeyEvent$1(ScrollableNode scrollableNode, long j, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = scrollableNode;
        this.$scrollAmount = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new ScrollableNode$onKeyEvent$1(this.this$0, this.$scrollAmount, continuation, 0);
            case 1:
                return new ScrollableNode$onKeyEvent$1(this.this$0, this.$scrollAmount, continuation, 1);
            case 2:
                return new ScrollableNode$onKeyEvent$1(this.this$0, this.$scrollAmount, continuation, 2);
            default:
                ScrollableNode$onKeyEvent$1 scrollableNode$onKeyEvent$1 = new ScrollableNode$onKeyEvent$1(this.this$0, continuation);
                scrollableNode$onKeyEvent$1.$scrollAmount = ((Offset) obj).packedValue;
                return scrollableNode$onKeyEvent$1;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ScrollableNode$onKeyEvent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((ScrollableNode$onKeyEvent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((ScrollableNode$onKeyEvent$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                long j = ((Offset) obj).packedValue;
                ScrollableNode$onKeyEvent$1 scrollableNode$onKeyEvent$1 = new ScrollableNode$onKeyEvent$1(this.this$0, (Continuation) obj2);
                scrollableNode$onKeyEvent$1.$scrollAmount = j;
                return scrollableNode$onKeyEvent$1.invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ScrollableNode scrollableNode = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ScrollingLogic scrollingLogic = scrollableNode.scrollingLogic;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scrollAmount, null);
                    this.label = 1;
                    if (scrollingLogic.scroll(MutatePriority.UserInput, anonymousClass1, this) == coroutineSingletons) {
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
                    ScrollingLogic scrollingLogic2 = scrollableNode.scrollingLogic;
                    long j = this.$scrollAmount;
                    this.label = 1;
                    if (scrollingLogic2.m190onScrollStoppedBMRW4eQ(j, false, this) == coroutineSingletons) {
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
                    ScrollingLogic scrollingLogic3 = scrollableNode.scrollingLogic;
                    long j2 = this.$scrollAmount;
                    this.label = 1;
                    if (scrollingLogic3.m190onScrollStoppedBMRW4eQ(j2, true, this) == coroutineSingletons) {
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
            default:
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    long j3 = this.$scrollAmount;
                    ScrollingLogic scrollingLogic4 = scrollableNode.scrollingLogic;
                    this.label = 1;
                    Object m182access$semanticsScrollByd4ec7I = ScrollableKt.m182access$semanticsScrollByd4ec7I(scrollingLogic4, j3, this);
                    if (m182access$semanticsScrollByd4ec7I == coroutineSingletons) {
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
        }
        return coroutineSingletons;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableNode$onKeyEvent$1(ScrollableNode scrollableNode, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.this$0 = scrollableNode;
    }
}
