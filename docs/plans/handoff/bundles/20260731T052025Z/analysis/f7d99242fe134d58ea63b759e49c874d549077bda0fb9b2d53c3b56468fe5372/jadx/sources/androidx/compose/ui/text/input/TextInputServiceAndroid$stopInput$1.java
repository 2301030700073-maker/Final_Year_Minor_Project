package androidx.compose.ui.text.input;

import androidx.compose.ui.graphics.Matrix;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextInputServiceAndroid$stopInput$1 extends Lambda implements Function1 {
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE;
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE$1;
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE$2;
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE$3;
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE$4;
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE$5;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new TextInputServiceAndroid$stopInput$1(i, 1);
        INSTANCE$2 = new TextInputServiceAndroid$stopInput$1(i, 2);
        INSTANCE$3 = new TextInputServiceAndroid$stopInput$1(i, 3);
        INSTANCE$4 = new TextInputServiceAndroid$stopInput$1(i, 4);
        INSTANCE = new TextInputServiceAndroid$stopInput$1(i, 0);
        INSTANCE$5 = new TextInputServiceAndroid$stopInput$1(i, 5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextInputServiceAndroid$stopInput$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                break;
            case 1:
                float[] fArr = ((Matrix) obj).values;
                break;
            case 2:
                float[] fArr2 = ((Matrix) obj).values;
                break;
            case 3:
                break;
            case 4:
                int i2 = ((ImeAction) obj).value;
                break;
            default:
                int i3 = ((ImeAction) obj).value;
                break;
        }
        return unit;
    }
}
