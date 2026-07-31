package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonShape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CardKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$8;
    public final /* synthetic */ int f$9;

    public /* synthetic */ CardKt$$ExternalSyntheticLambda3(String str, Function0 function0, Modifier modifier, boolean z, ImageVector imageVector, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors buttonColors, ButtonShape buttonShape, PaddingValues paddingValues, int i, int i2) {
        this.f$3 = str;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$4 = imageVector;
        this.f$5 = buttonColors;
        this.f$6 = buttonShape;
        this.f$8 = paddingValues;
        this.f$9 = i;
        this.f$10 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$9;
        Object obj3 = this.f$8;
        Object obj4 = this.f$6;
        Object obj5 = this.f$5;
        Object obj6 = this.f$4;
        Object obj7 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.Card(this.f$0, this.f$1, this.f$2, (Shape) obj7, (CardColors) obj6, (CardElevation) obj5, (BorderStroke) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags, this.f$10);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                Validate.ButtonOutlined((String) obj7, this.f$0, this.f$1, this.f$2, (ImageVector) obj6, (app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors) obj5, (ButtonShape) obj4, (PaddingValues) obj3, (Composer) obj, updateChangedFlags2, this.f$10);
                break;
        }
        return unit;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda3(Function0 function0, Modifier modifier, boolean z, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = cardColors;
        this.f$5 = cardElevation;
        this.f$6 = borderStroke;
        this.f$8 = composableLambdaImpl;
        this.f$9 = i;
        this.f$10 = i2;
    }
}
