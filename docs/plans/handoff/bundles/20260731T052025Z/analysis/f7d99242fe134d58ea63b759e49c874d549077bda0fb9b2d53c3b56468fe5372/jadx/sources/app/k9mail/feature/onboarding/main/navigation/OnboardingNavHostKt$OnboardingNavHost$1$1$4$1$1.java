package app.k9mail.feature.onboarding.main.navigation;

import androidx.navigation.NavHostController;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1 extends FunctionReferenceImpl implements Function0 {
    public final /* synthetic */ NavHostController $navController;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1(NavHostController navHostController, int i) {
        super(0, Intrinsics.Kotlin.class, "onImportSuccess", "OnboardingNavHost$onImportSuccess(Landroidx/navigation/NavHostController;)V", 0);
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.$navController = navHostController;
                super(0, Intrinsics.Kotlin.class, "onImportSuccess", "OnboardingNavHost$onImportSuccess(Landroidx/navigation/NavHostController;)V", 0);
                break;
            default:
                this.$navController = navHostController;
                break;
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NavHostController navHostController = this.$navController;
        switch (i) {
            case 0:
                navHostController.navigate("permissions", new KoinModuleKt$$ExternalSyntheticLambda0(14));
                break;
            default:
                navHostController.navigate("permissions", new KoinModuleKt$$ExternalSyntheticLambda0(14));
                break;
        }
        return unit;
    }
}
