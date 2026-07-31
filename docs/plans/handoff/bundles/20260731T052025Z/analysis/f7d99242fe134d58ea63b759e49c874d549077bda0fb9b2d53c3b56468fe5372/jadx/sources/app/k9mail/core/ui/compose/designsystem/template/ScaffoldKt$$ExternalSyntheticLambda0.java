package app.k9mail.core.ui.compose.designsystem.template;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.ui.setting.SettingViewProvider$ComposeDefaultImpls;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScaffoldKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ int f$7;
    public final /* synthetic */ int f$8;

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda0(Function1 function1, Modifier modifier, ImmutableSet immutableSet, PaddingValues paddingValues, Function2 function2, Function1 function12, Function3 function3, int i, int i2) {
        this.$r8$classId = 3;
        this.f$2 = function1;
        this.f$0 = modifier;
        this.f$3 = immutableSet;
        this.f$4 = paddingValues;
        this.f$1 = function2;
        this.f$5 = function12;
        this.f$6 = function3;
        this.f$7 = i;
        this.f$8 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$7;
        Object obj3 = this.f$6;
        Object obj4 = this.f$5;
        Object obj5 = this.f$1;
        Object obj6 = this.f$4;
        Object obj7 = this.f$3;
        Object obj8 = this.f$0;
        Object obj9 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ScaffoldKt.Scaffold((Modifier) obj8, (Function2) obj5, (Function2) obj9, (Function2) obj7, (Function2) obj6, (ScaffoldFabPosition) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$8);
                break;
            case 1:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.CardOutlined((Modifier) obj8, (Function0) obj5, (Shape) obj9, (CardColors) obj7, (CardElevation) obj6, (BorderStroke) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$8);
                break;
            case 2:
                ((Integer) obj2).getClass();
                SettingViewProvider$ComposeDefaultImpls.SettingView$default((String) obj8, (ImmutableList) obj5, (Function1) obj9, (Function0) obj7, (String) obj6, (Function3) obj4, (DialogSettingViewProvider) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$8);
                break;
            default:
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.InAppNotificationHost((Function1) obj9, (Modifier) obj8, (ImmutableSet) obj7, (PaddingValues) obj6, (Function2) obj5, (Function1) obj4, (Function3) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1), this.f$8);
                break;
        }
        return unit;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
        this.f$6 = obj7;
        this.f$7 = i;
        this.f$8 = i2;
    }
}
