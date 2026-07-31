package androidx.compose.animation;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntSize;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$SizeTransform$1 extends Lambda implements Function2 {
    public static final AnimatedContentKt$SizeTransform$1 INSTANCE = new AnimatedContentKt$SizeTransform$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long j = ((IntSize) obj).packedValue;
        long j2 = ((IntSize) obj2).packedValue;
        LinkedHashMap linkedHashMap = VisibilityThresholdsKt.VisibilityThresholdMap;
        return ArcSplineKt.spring$default(0.0f, 400.0f, new IntSize(4294967297L), 1);
    }
}
