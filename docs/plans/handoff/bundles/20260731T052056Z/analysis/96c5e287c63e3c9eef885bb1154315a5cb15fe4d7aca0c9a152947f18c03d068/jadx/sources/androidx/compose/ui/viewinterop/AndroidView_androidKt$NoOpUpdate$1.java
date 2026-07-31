package androidx.compose.ui.viewinterop;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.wikipedia.views.ViewAnimations$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidView_androidKt$NoOpUpdate$1 extends Lambda implements Function1 {
    public static final AndroidView_androidKt$NoOpUpdate$1 INSTANCE;
    public static final AndroidView_androidKt$NoOpUpdate$1 INSTANCE$1;
    public static final AndroidView_androidKt$NoOpUpdate$1 INSTANCE$2;
    public static final AndroidView_androidKt$NoOpUpdate$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new AndroidView_androidKt$NoOpUpdate$1(i, 1);
        INSTANCE$2 = new AndroidView_androidKt$NoOpUpdate$1(i, 2);
        INSTANCE$3 = new AndroidView_androidKt$NoOpUpdate$1(i, 3);
        INSTANCE = new AndroidView_androidKt$NoOpUpdate$1(i, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidView_androidKt$NoOpUpdate$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                break;
            case 1:
                AndroidViewHolder androidViewHolder = (AndroidViewHolder) obj;
                androidViewHolder.getHandler().post(new ViewAnimations$$ExternalSyntheticLambda0(5, androidViewHolder.runUpdate));
                break;
            case 2:
                break;
            default:
                break;
        }
        return unit;
    }
}
