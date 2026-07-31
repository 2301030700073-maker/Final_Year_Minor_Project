package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ButtonKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ PaddingValues f$7;
    public final /* synthetic */ ComposableLambdaImpl f$9;

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda1(ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, Function2 function2, Function2 function22, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, int i, int i2) {
        this.f$9 = composableLambdaImpl;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$2 = z;
        this.f$6 = menuItemColors;
        this.f$7 = paddingValues;
        this.f$10 = i;
        this.f$11 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$10;
        Object obj3 = this.f$6;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.OutlinedButton(this.f$0, this.f$1, this.f$2, (Shape) obj5, (ButtonColors) obj4, (BorderStroke) obj3, this.f$7, this.f$9, (GapComposer) obj, updateChangedFlags, this.f$11);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                AndroidMenu_androidKt.DropdownMenuItem(this.f$9, this.f$0, this.f$1, (Function2) obj5, (Function2) obj4, this.f$2, (MenuItemColors) obj3, this.f$7, (GapComposer) obj, updateChangedFlags2, this.f$11);
                break;
        }
        return unit;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda1(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, BorderStroke borderStroke, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$6 = borderStroke;
        this.f$7 = paddingValues;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
        this.f$11 = i2;
    }
}
