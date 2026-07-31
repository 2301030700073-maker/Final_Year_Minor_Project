package androidx.datastore.core;

import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleActor$1 extends Lambda implements Function1 {
    public final /* synthetic */ Object $onComplete;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SimpleActor$1(int i, Object obj, Object obj2) {
        super(1);
        this.$r8$classId = i;
        this.$onComplete = obj;
        this.this$0 = obj2;
    }

    private final Object invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(Object obj) {
        AndroidUiDispatcher androidUiDispatcher = (AndroidUiDispatcher) this.$onComplete;
        AndroidUiFrameClock$withFrameNanos$2$callback$1 androidUiFrameClock$withFrameNanos$2$callback$1 = (AndroidUiFrameClock$withFrameNanos$2$callback$1) this.this$0;
        synchronized (androidUiDispatcher.lock) {
            androidUiDispatcher.toRunOnFrame.remove(androidUiFrameClock$withFrameNanos$2$callback$1);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0078, code lost:
    
        if (((kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType) r0.onCheckedStateChangeListener) != kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS) goto L14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 1472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$1.invoke(java.lang.Object):java.lang.Object");
    }
}
