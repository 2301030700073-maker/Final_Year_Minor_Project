package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonShape;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ButtonKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 3;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda0(InteractionMode interactionMode, Function1 function1, Modifier modifier, String str, boolean z, String str2, PaddingValuesImpl paddingValuesImpl, int i, int i2) {
        this.f$0 = interactionMode;
        this.f$3 = function1;
        this.f$1 = modifier;
        this.f$4 = str;
        this.f$2 = z;
        this.f$7 = str2;
        this.f$9 = paddingValuesImpl;
        this.f$10 = i;
        this.f$11 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$10;
        Object obj3 = this.f$9;
        Object obj4 = this.f$7;
        Object obj5 = this.f$4;
        Object obj6 = this.f$0;
        Object obj7 = this.f$3;
        Object obj8 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.TextButton((Function0) obj6, (Modifier) obj8, this.f$2, (Shape) obj7, (ButtonColors) obj5, (PaddingValues) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags, this.f$11);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                IntOffsetKt.ButtonFilled((String) obj7, (Function0) obj6, (Modifier) obj8, this.f$2, (app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors) obj5, (ButtonShape) obj3, (PaddingValues) obj4, (Composer) obj, updateChangedFlags2, this.f$11);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                TextInputKt.NumberInput((Function1) obj6, (Modifier) obj8, (Long) obj7, (String) obj5, this.f$2, (String) obj4, (PaddingValuesImpl) obj3, (Composer) obj, updateChangedFlags3, this.f$11);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                DBUtil.ServerSettingsPasswordInput((InteractionMode) obj6, (Function1) obj7, (Modifier) obj8, (String) obj5, this.f$2, (String) obj4, (PaddingValuesImpl) obj3, (Composer) obj, updateChangedFlags4, this.f$11);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags5 = Updater.updateChangedFlags(i2 | 1);
                Jsoup.SettingDialogLayout((String) obj8, (ImageVector) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, this.f$2, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags5, this.f$11);
                break;
        }
        return unit;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda0(String str, ImageVector imageVector, Function0 function0, Function0 function02, Function0 function03, boolean z, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$1 = str;
        this.f$3 = imageVector;
        this.f$0 = function0;
        this.f$4 = function02;
        this.f$7 = function03;
        this.f$2 = z;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
        this.f$11 = i2;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda0(String str, Function0 function0, Modifier modifier, boolean z, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors buttonColors, ButtonShape buttonShape, PaddingValues paddingValues, int i, int i2) {
        this.f$3 = str;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$4 = buttonColors;
        this.f$9 = buttonShape;
        this.f$7 = paddingValues;
        this.f$10 = i;
        this.f$11 = i2;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda0(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$7 = paddingValues;
        this.f$9 = composableLambdaImpl;
        this.f$10 = i;
        this.f$11 = i2;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda0(Function1 function1, Modifier modifier, Long l, String str, boolean z, String str2, PaddingValuesImpl paddingValuesImpl, int i, int i2) {
        this.f$0 = function1;
        this.f$1 = modifier;
        this.f$3 = l;
        this.f$4 = str;
        this.f$2 = z;
        this.f$7 = str2;
        this.f$9 = paddingValuesImpl;
        this.f$10 = i;
        this.f$11 = i2;
    }
}
