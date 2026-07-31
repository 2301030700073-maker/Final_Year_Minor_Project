package app.k9mail.feature.onboarding.permissions.ui;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PermissionsContentKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PermissionsContract$State f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ PermissionsContentKt$$ExternalSyntheticLambda4(PermissionsContract$State permissionsContract$State, Function1 function1) {
        this.$r8$classId = 0;
        this.f$0 = permissionsContract$State;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        PermissionsContract$State permissionsContract$State = this.f$0;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ScaffoldKt.ResponsiveWidthContainer(SizeKt.FillWholeMaxWidth, Expect_jvmKt.rememberComposableLambda(657346523, new BufferedChannel$$ExternalSyntheticLambda1(17, (Object) permissionsContract$State, function1), gapComposer), gapComposer, 54, 0);
                    break;
                }
            case 1:
                num.getClass();
                SchemaInfoUtilKt.PermissionBoxes(permissionsContract$State, function1, composer, Updater.updateChangedFlags(1));
                break;
            default:
                num.getClass();
                SchemaInfoUtilKt.ContentArea(permissionsContract$State, function1, composer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ PermissionsContentKt$$ExternalSyntheticLambda4(PermissionsContract$State permissionsContract$State, Function1 function1, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = permissionsContract$State;
        this.f$1 = function1;
    }
}
