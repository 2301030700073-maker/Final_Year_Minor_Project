package org.wikipedia.activitytab;

import android.content.Context;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTabFragment$onCreateView$2$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ boolean Z$0;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityTabFragment$onCreateView$2$1$1(Function1 function1, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 4;
        this.this$0 = function1;
        this.Z$0 = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                ActivityTabFragment$onCreateView$2$1$1 activityTabFragment$onCreateView$2$1$1 = new ActivityTabFragment$onCreateView$2$1$1(0, (ActivityTabFragment) obj2, continuation);
                activityTabFragment$onCreateView$2$1$1.Z$0 = ((Boolean) obj).booleanValue();
                return activityTabFragment$onCreateView$2$1$1;
            case 1:
                ActivityTabFragment$onCreateView$2$1$1 activityTabFragment$onCreateView$2$1$12 = new ActivityTabFragment$onCreateView$2$1$1(1, (TooltipStateImpl) obj2, continuation);
                activityTabFragment$onCreateView$2$1$12.Z$0 = ((Boolean) obj).booleanValue();
                return activityTabFragment$onCreateView$2$1$12;
            case 2:
                ActivityTabFragment$onCreateView$2$1$1 activityTabFragment$onCreateView$2$1$13 = new ActivityTabFragment$onCreateView$2$1$1(2, (Context) obj2, continuation);
                activityTabFragment$onCreateView$2$1$13.Z$0 = ((Boolean) obj).booleanValue();
                return activityTabFragment$onCreateView$2$1$13;
            case 3:
                return new ActivityTabFragment$onCreateView$2$1$1(this.Z$0, (MutableState) obj2, continuation);
            default:
                return new ActivityTabFragment$onCreateView$2$1$1((Function1) obj2, this.Z$0, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((ActivityTabFragment$onCreateView$2$1$1) create(bool, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                ((ActivityTabFragment$onCreateView$2$1$1) create(bool2, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                ((ActivityTabFragment$onCreateView$2$1$1) create(bool3, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 3:
                ((ActivityTabFragment$onCreateView$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((ActivityTabFragment$onCreateView$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        if (r0.topCategories.isEmpty() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b2, code lost:
    
        if (r0.totalPageviewsCount <= 0) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fe  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ActivityTabFragment$onCreateView$2$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ActivityTabFragment$onCreateView$2$1$1(int i, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityTabFragment$onCreateView$2$1$1(boolean z, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.Z$0 = z;
        this.this$0 = mutableState;
    }
}
