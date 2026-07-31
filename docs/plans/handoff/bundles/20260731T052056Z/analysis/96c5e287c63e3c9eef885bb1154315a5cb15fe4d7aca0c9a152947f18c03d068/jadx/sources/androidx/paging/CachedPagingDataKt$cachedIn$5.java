package androidx.paging;

import androidx.compose.ui.geometry.Offset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachedPagingDataKt$cachedIn$5 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CachedPagingDataKt$cachedIn$5(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 3;
        switch (i) {
            case 0:
                new CachedPagingDataKt$cachedIn$5(i2, 0, (Continuation) obj3).invokeSuspend(unit);
                return unit;
            case 1:
                long j = ((Offset) obj2).packedValue;
                new CachedPagingDataKt$cachedIn$5(i2, 1, (Continuation) obj3).invokeSuspend(unit);
                return unit;
            case 2:
                ((Number) obj2).floatValue();
                new CachedPagingDataKt$cachedIn$5(i2, 2, (Continuation) obj3).invokeSuspend(unit);
                return unit;
            case 3:
                long j2 = ((Offset) obj2).packedValue;
                new CachedPagingDataKt$cachedIn$5(i2, i2, (Continuation) obj3).invokeSuspend(unit);
                return unit;
            case 4:
                ((Number) obj).intValue();
                new CachedPagingDataKt$cachedIn$5(i2, 4, (Continuation) obj3).invokeSuspend(unit);
                return Boolean.FALSE;
            default:
                new CachedPagingDataKt$cachedIn$5(i2, 5, (Continuation) obj3).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                return unit;
            case 1:
                ResultKt.throwOnFailure(obj);
                return unit;
            case 2:
                ResultKt.throwOnFailure(obj);
                return unit;
            case 3:
                ResultKt.throwOnFailure(obj);
                return unit;
            case 4:
                ResultKt.throwOnFailure(obj);
                return Boolean.FALSE;
            default:
                ResultKt.throwOnFailure(obj);
                return unit;
        }
    }
}
