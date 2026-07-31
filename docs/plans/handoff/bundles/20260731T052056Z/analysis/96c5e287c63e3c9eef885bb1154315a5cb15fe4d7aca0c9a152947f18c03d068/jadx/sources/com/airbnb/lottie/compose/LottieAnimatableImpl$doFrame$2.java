package com.airbnb.lottie.compose;

import androidx.compose.ui.focus.FocusTargetNode;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieAnimatableImpl$doFrame$2 extends Lambda implements Function1 {
    public final /* synthetic */ int $iterations;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LottieAnimatableImpl$doFrame$2(int i, int i2, Object obj) {
        super(1);
        this.$r8$classId = i2;
        this.this$0 = obj;
        this.$iterations = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = this.$iterations;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(((LottieAnimatableImpl) obj2).onFrame(((Number) obj).longValue(), i2));
            case 1:
                return Boolean.valueOf(((LottieAnimatableImpl) obj2).onFrame(((Number) obj).longValue(), i2));
            default:
                Boolean valueOf = Boolean.valueOf(((FocusTargetNode) obj).m368requestFocus3ESFkO8(i2));
                ((Ref$ObjectRef) obj2).element = valueOf;
                return valueOf;
        }
    }
}
