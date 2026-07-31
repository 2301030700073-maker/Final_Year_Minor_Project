package app.k9mail.core.ui.compose.designsystem.atom;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.room.util.RelationUtil;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CheckboxKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda0(boolean z, Modifier modifier, boolean z2, Color color, int i, int i2) {
        this.f$0 = z;
        this.f$2 = modifier;
        this.f$3 = z2;
        this.f$1 = color;
        this.f$4 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$4 | 1);
                RelationUtil.Checkbox(this.f$0, (Function1) obj3, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                NodeUtils.m1077AnimatedExpandIconxqIIw2o(this.f$0, this.f$2, this.f$3, (Color) obj3, (Composer) obj, updateChangedFlags2, this.f$4);
                break;
        }
        return unit;
    }

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda0(boolean z, Function1 function1, Modifier modifier, boolean z2, int i) {
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = modifier;
        this.f$3 = z2;
        this.f$4 = i;
    }
}
