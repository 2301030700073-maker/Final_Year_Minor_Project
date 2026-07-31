package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.IntRectKt;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonIconColors;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class IconButtonKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 3;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ int f$7;
    public final /* synthetic */ int f$8;

    public /* synthetic */ IconButtonKt$$ExternalSyntheticLambda0(ComposableLambdaImpl composableLambdaImpl, boolean z, Function0 function0, Modifier modifier, Function2 function2, Function2 function22, int i, int i2) {
        this.f$6 = composableLambdaImpl;
        this.f$2 = z;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$3 = function2;
        this.f$5 = function22;
        this.f$7 = i;
        this.f$8 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$7;
        Object obj3 = this.f$5;
        Object obj4 = this.f$3;
        Object obj5 = this.f$6;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.IconButton(this.f$0, this.f$1, this.f$2, (IconButtonColors) obj4, (Shape) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, updateChangedFlags, this.f$8);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                IntRectKt.ButtonIcon(this.f$0, (ImageVector) obj4, this.f$1, this.f$2, (String) obj3, (ButtonIconColors) obj5, (Composer) obj, updateChangedFlags2, this.f$8);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Util.m1089ButtonTextjM_yU8I((String) obj4, this.f$0, this.f$1, this.f$2, (Color) obj3, (Function2) obj5, (Composer) obj, updateChangedFlags3, this.f$8);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                Operation$State.NavigationDrawerItem((ComposableLambdaImpl) obj5, this.f$2, this.f$0, this.f$1, (Function2) obj4, (Function2) obj3, (Composer) obj, updateChangedFlags4, this.f$8);
                break;
        }
        return unit;
    }

    public /* synthetic */ IconButtonKt$$ExternalSyntheticLambda0(String str, Function0 function0, Modifier modifier, boolean z, Color color, Function2 function2, int i, int i2) {
        this.f$3 = str;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$5 = color;
        this.f$6 = function2;
        this.f$7 = i;
        this.f$8 = i2;
    }

    public /* synthetic */ IconButtonKt$$ExternalSyntheticLambda0(Function0 function0, Modifier modifier, boolean z, IconButtonColors iconButtonColors, Shape shape, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = iconButtonColors;
        this.f$5 = shape;
        this.f$6 = composableLambdaImpl;
        this.f$7 = i;
        this.f$8 = i2;
    }

    public /* synthetic */ IconButtonKt$$ExternalSyntheticLambda0(Function0 function0, ImageVector imageVector, Modifier modifier, boolean z, String str, ButtonIconColors buttonIconColors, int i, int i2) {
        this.f$0 = function0;
        this.f$3 = imageVector;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$5 = str;
        this.f$6 = buttonIconColors;
        this.f$7 = i;
        this.f$8 = i2;
    }
}
