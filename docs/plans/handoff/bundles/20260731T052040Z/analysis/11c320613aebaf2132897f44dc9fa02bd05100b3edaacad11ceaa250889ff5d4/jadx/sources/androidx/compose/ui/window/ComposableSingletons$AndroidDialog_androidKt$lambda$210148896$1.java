package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1 extends Lambda implements Function2 {
    public static final ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1 INSTANCE = new ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int intValue = ((Number) obj2).intValue();
        GapComposer gapComposer = (GapComposer) composer;
        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
