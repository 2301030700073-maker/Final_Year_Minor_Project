package androidx.glance.appwidget;

import android.os.Bundle;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositionLocalsKt$LocalAppWidgetOptions$1 extends Lambda implements Function0 {
    public static final CompositionLocalsKt$LocalAppWidgetOptions$1 INSTANCE = new CompositionLocalsKt$LocalAppWidgetOptions$1(0, 0);
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CompositionLocalsKt$LocalAppWidgetOptions$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return new Bundle();
            default:
                int i = IgnoreResultKt$IgnoreResult$1.$r8$clinit;
                return new EmittableIgnoreResult();
        }
    }
}
