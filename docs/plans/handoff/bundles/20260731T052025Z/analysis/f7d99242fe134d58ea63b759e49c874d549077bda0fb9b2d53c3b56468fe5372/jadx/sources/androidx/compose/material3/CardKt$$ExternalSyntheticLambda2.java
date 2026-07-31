package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CardKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Shape f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ ComposableLambdaImpl f$8;
    public final /* synthetic */ int f$9;

    public /* synthetic */ CardKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, boolean z, Function0 function0, Modifier modifier, Function2 function2, Function2 function22, Shape shape, DefaultDrawerItemsColor defaultDrawerItemsColor, int i) {
        this.f$8 = composableLambdaImpl;
        this.f$2 = z;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$4 = function2;
        this.f$5 = function22;
        this.f$3 = shape;
        this.f$6 = defaultDrawerItemsColor;
        this.f$9 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$9;
        Object obj3 = this.f$6;
        Object obj4 = this.f$5;
        Object obj5 = this.f$4;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.OutlinedCard(this.f$0, this.f$1, this.f$2, this.f$3, (CardColors) obj5, (CardElevation) obj4, (BorderStroke) obj3, this.f$8, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                CardKt.OutlinedButton(this.f$0, this.f$1, this.f$2, this.f$3, (ButtonColors) obj5, (BorderStroke) obj3, (PaddingValues) obj4, this.f$8, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                NavigationDrawerKt.NavigationDrawerItem(this.f$8, this.f$2, this.f$0, this.f$1, (Function2) obj5, (Function2) obj4, this.f$3, (DefaultDrawerItemsColor) obj3, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda2(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, BorderStroke borderStroke, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$6 = borderStroke;
        this.f$5 = paddingValues;
        this.f$8 = composableLambdaImpl;
        this.f$9 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda2(Function0 function0, Modifier modifier, boolean z, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = cardColors;
        this.f$5 = cardElevation;
        this.f$6 = borderStroke;
        this.f$8 = composableLambdaImpl;
        this.f$9 = i;
    }
}
