package app.k9mail.feature.onboarding.permissions.ui;

import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.room.util.SchemaInfoUtilKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PermissionsContentKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ PermissionsContract$State f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ ScrollState f$2;

    public /* synthetic */ PermissionsContentKt$$ExternalSyntheticLambda0(PermissionsContract$State permissionsContract$State, Function1 function1, ScrollState scrollState) {
        this.f$0 = permissionsContract$State;
        this.f$1 = function1;
        this.f$2 = scrollState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ScrollState scrollState = this.f$2;
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
                    SchemaInfoUtilKt.BottomBar(permissionsContract$State, function1, scrollState, gapComposer, 0);
                    break;
                }
            default:
                num.getClass();
                SchemaInfoUtilKt.BottomBar(permissionsContract$State, function1, scrollState, composer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ PermissionsContentKt$$ExternalSyntheticLambda0(PermissionsContract$State permissionsContract$State, Function1 function1, ScrollState scrollState, int i) {
        this.f$0 = permissionsContract$State;
        this.f$1 = function1;
        this.f$2 = scrollState;
    }
}
