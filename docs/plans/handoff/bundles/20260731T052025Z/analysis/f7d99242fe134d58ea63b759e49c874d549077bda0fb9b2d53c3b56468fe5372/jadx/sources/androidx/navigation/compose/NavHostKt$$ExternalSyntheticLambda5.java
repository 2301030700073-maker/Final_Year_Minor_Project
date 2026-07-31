package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavHostController;
import app.k9mail.core.ui.compose.designsystem.organism.snackbar.Material3BackedSnackbarHostState;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldFabPosition;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function f$11;
    public final /* synthetic */ int f$12;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Function1 f$6;
    public final /* synthetic */ Function1 f$7;
    public final /* synthetic */ Function f$8;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda5(Modifier modifier, ImmutableSet immutableSet, Function2 function2, Function2 function22, Material3BackedSnackbarHostState material3BackedSnackbarHostState, Function2 function23, ScaffoldFabPosition scaffoldFabPosition, Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$2 = modifier;
        this.f$0 = immutableSet;
        this.f$1 = function2;
        this.f$3 = function22;
        this.f$5 = material3BackedSnackbarHostState;
        this.f$8 = function23;
        this.f$9 = scaffoldFabPosition;
        this.f$6 = function1;
        this.f$7 = function12;
        this.f$11 = composableLambdaImpl;
        this.f$12 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$12;
        Function function = this.f$11;
        Object obj3 = this.f$9;
        Function function2 = this.f$8;
        Object obj4 = this.f$5;
        Object obj5 = this.f$3;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                Utf8.SafeProcessor.NavHost((NavHostController) obj7, (OnboardingRoute.Onboarding) obj6, this.f$2, (Alignment) obj5, (Map) obj4, this.f$6, this.f$7, (Function1) function2, (Function1) obj3, (Function1) function, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                InAppNotificationHostKt.InAppNotificationScaffold(this.f$2, (ImmutableSet) obj7, (Function2) obj6, (Function2) obj5, (Material3BackedSnackbarHostState) obj4, (Function2) function2, (ScaffoldFabPosition) obj3, this.f$6, this.f$7, (ComposableLambdaImpl) function, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda5(NavHostController navHostController, OnboardingRoute.Onboarding onboarding, Modifier modifier, Alignment alignment, Map map, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, int i) {
        this.f$0 = navHostController;
        this.f$1 = onboarding;
        this.f$2 = modifier;
        this.f$3 = alignment;
        this.f$5 = map;
        this.f$6 = function1;
        this.f$7 = function12;
        this.f$8 = function13;
        this.f$9 = function14;
        this.f$11 = function15;
        this.f$12 = i;
    }
}
