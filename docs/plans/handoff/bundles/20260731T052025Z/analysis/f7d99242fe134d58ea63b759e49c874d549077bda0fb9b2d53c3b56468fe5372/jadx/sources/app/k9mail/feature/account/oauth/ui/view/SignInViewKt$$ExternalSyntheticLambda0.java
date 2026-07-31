package app.k9mail.feature.account.oauth.ui.view;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SignInViewKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ SignInViewKt$$ExternalSyntheticLambda0(Function0 function0, Modifier modifier, boolean z, boolean z2, int i) {
        this.f$0 = function0;
        this.f$2 = modifier;
        this.f$1 = z;
        this.f$3 = z2;
        this.f$4 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$4;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                SignInViewKt.SignInView(Updater.updateChangedFlags(i2 | 1), (Composer) obj, this.f$2, this.f$0, this.f$1, this.f$3);
                break;
            default:
                ((Integer) obj2).getClass();
                SignInViewKt.SignInWithGoogleButton(Updater.updateChangedFlags(i2 | 1), (Composer) obj, this.f$2, this.f$0, this.f$1, this.f$3);
                break;
        }
        return unit;
    }

    public /* synthetic */ SignInViewKt$$ExternalSyntheticLambda0(Function0 function0, boolean z, Modifier modifier, boolean z2, int i) {
        this.f$0 = function0;
        this.f$1 = z;
        this.f$2 = modifier;
        this.f$3 = z2;
        this.f$4 = i;
    }
}
