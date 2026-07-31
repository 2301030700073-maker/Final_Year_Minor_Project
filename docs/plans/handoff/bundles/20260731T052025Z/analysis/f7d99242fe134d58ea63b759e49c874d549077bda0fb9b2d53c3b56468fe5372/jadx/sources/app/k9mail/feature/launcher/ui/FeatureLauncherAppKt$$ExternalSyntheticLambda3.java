package app.k9mail.feature.launcher.ui;

import androidx.activity.ComponentActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeatureLauncherAppKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentActivity f$0;

    public /* synthetic */ FeatureLauncherAppKt$$ExternalSyntheticLambda3(ComponentActivity componentActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComponentActivity componentActivity = this.f$0;
        switch (i) {
            case 0:
                componentActivity.finish();
                break;
            case 1:
                componentActivity.setResult(-1);
                componentActivity.finish();
                break;
            case 2:
                componentActivity.setResult(-1);
                componentActivity.finish();
                break;
            default:
                componentActivity.setResult(-1);
                componentActivity.finish();
                break;
        }
        return unit;
    }
}
