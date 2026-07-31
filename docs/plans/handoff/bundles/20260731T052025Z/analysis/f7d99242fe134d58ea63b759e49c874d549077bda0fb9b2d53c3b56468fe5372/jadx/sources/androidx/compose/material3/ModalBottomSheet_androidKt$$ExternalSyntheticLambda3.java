package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ModalBottomSheet_androidKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ ComposableLambdaImpl f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ ModalBottomSheet_androidKt$$ExternalSyntheticLambda3(Function0 function0, long j, ModalBottomSheetProperties modalBottomSheetProperties, Animatable animatable, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = function0;
        this.f$1 = j;
        this.f$2 = modalBottomSheetProperties;
        this.f$3 = animatable;
        this.f$4 = composableLambdaImpl;
        this.f$5 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$5;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.m331ModalBottomSheetDialogsW7UJKQ(this.f$0, this.f$1, (ModalBottomSheetProperties) obj4, (Animatable) obj3, this.f$4, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                NodeUtils.m1079ClickableSurfacezSi9XkE(this.f$0, (Modifier) obj4, (Shape) obj3, this.f$1, this.f$4, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ ModalBottomSheet_androidKt$$ExternalSyntheticLambda3(Function0 function0, Modifier modifier, Shape shape, long j, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = function0;
        this.f$2 = modifier;
        this.f$3 = shape;
        this.f$1 = j;
        this.f$4 = composableLambdaImpl;
        this.f$5 = i;
    }
}
