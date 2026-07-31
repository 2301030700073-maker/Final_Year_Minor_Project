package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.search.HybridSearchOnboardingActivityKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ScaffoldKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda3(int i, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function2 function22, Function2 function23, WindowInsets windowInsets, Function2 function24, int i2) {
        this.$r8$classId = 0;
        this.f$0 = i;
        this.f$1 = function2;
        this.f$2 = composableLambdaImpl;
        this.f$3 = function22;
        this.f$4 = function23;
        this.f$5 = windowInsets;
        this.f$6 = function24;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$0;
        Object obj3 = this.f$5;
        Object obj4 = this.f$6;
        Object obj5 = this.f$4;
        Object obj6 = this.f$1;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$2;
        Object obj7 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                CardKt.m271ScaffoldLayoutFMILGgc(this.f$0, (Function2) obj6, (ComposableLambdaImpl) function, (Function2) obj7, (Function2) obj5, (WindowInsets) obj3, (Function2) obj4, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2) | 1;
                ((ComposableLambdaImpl) function).invoke(this.f$1, (Boolean) obj7, this.f$4, this.f$6, this.f$5, (GapComposer) obj, updateChangedFlags2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                TabsBoxKt.InstallWidgetScreen((String) obj6, (String) obj7, (Function0) obj5, (ComposableLambdaImpl) function, (Modifier) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                HomePreferenceScreenKt.HomePreferenceScreen((Modifier) obj6, (HomePreferenceType) obj7, (HomeContentState) obj5, (HomeContentState) obj4, (Function1) function, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                HybridSearchOnboardingActivityKt.HybridSearchOnboardingScreen((Modifier) obj6, (String) obj7, (List) obj5, (Function0) obj4, (Function1) function, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda3(ComposableLambdaImpl composableLambdaImpl, Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = 1;
        this.f$2 = composableLambdaImpl;
        this.f$1 = obj;
        this.f$3 = bool;
        this.f$4 = obj2;
        this.f$6 = obj3;
        this.f$5 = obj4;
        this.f$0 = i;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda3(Modifier modifier, Object obj, Object obj2, Object obj3, Function1 function1, Function function, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = modifier;
        this.f$3 = obj;
        this.f$4 = obj2;
        this.f$6 = obj3;
        this.f$2 = function1;
        this.f$5 = function;
        this.f$0 = i;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda3(String str, String str2, Function0 function0, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, ComposableLambdaImpl composableLambdaImpl2, int i) {
        this.$r8$classId = 2;
        this.f$1 = str;
        this.f$3 = str2;
        this.f$4 = function0;
        this.f$2 = composableLambdaImpl;
        this.f$6 = modifier;
        this.f$5 = composableLambdaImpl2;
        this.f$0 = i;
    }
}
