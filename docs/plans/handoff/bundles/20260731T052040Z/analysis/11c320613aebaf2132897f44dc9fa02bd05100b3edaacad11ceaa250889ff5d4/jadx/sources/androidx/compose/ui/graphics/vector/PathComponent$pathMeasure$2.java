package androidx.compose.ui.graphics.vector;

import android.graphics.PathMeasure;
import androidx.compose.ui.graphics.AndroidPathMeasure;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PathComponent$pathMeasure$2 extends Lambda implements Function0 {
    public static final PathComponent$pathMeasure$2 INSTANCE;
    public static final PathComponent$pathMeasure$2 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 0;
        INSTANCE = new PathComponent$pathMeasure$2(i, 0);
        INSTANCE$1 = new PathComponent$pathMeasure$2(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PathComponent$pathMeasure$2(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                return new AndroidPathMeasure(new PathMeasure());
            default:
                return Unit.INSTANCE;
        }
    }
}
