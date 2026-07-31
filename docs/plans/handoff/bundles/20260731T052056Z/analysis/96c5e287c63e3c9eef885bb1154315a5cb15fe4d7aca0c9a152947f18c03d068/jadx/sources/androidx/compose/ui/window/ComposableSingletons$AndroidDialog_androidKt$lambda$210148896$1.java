package androidx.compose.ui.window;

import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1 extends Lambda implements Function2 {
    public static final ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1 INSTANCE;
    public static final ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 2;
        INSTANCE = new ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1(i, 0);
        INSTANCE$1 = new ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ComposableSingletons$AndroidDialog_androidKt$lambda$210148896$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                }
                break;
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Number) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
                break;
        }
        return unit;
    }
}
