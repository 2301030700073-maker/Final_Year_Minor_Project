package app.k9mail.feature.onboarding.permissions.ui;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PermissionBoxKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ Modifier f$2;

    public /* synthetic */ PermissionBoxKt$$ExternalSyntheticLambda3(OffsetProvider offsetProvider, Modifier modifier, long j, int i) {
        this.f$0 = offsetProvider;
        this.f$2 = modifier;
        this.f$1 = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                ActionBar.m1OverlayIcon3IgeMak((ImageVector) obj3, this.f$1, this.f$2, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                AndroidCursorHandle_androidKt.m265CursorHandleUSBMPiE((OffsetProvider) obj3, this.f$2, this.f$1, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ PermissionBoxKt$$ExternalSyntheticLambda3(ImageVector imageVector, long j, Modifier modifier, int i) {
        this.f$0 = imageVector;
        this.f$1 = j;
        this.f$2 = modifier;
    }
}
