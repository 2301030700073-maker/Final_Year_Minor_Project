package app.k9mail.core.ui.compose.designsystem.organism;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicDialogKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ComposableLambdaImpl f$0;
    public final /* synthetic */ ComposableLambdaImpl f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Function3 f$3;
    public final /* synthetic */ Function3 f$4;
    public final /* synthetic */ PaddingValuesImpl f$5;
    public final /* synthetic */ boolean f$6;
    public final /* synthetic */ long f$7;

    public /* synthetic */ BasicDialogKt$$ExternalSyntheticLambda3(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, Function3 function3, Function3 function32, PaddingValuesImpl paddingValuesImpl, boolean z, long j) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = composableLambdaImpl2;
        this.f$2 = modifier;
        this.f$3 = function3;
        this.f$4 = function32;
        this.f$5 = paddingValuesImpl;
        this.f$6 = z;
        this.f$7 = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TopAppBarKt.m846BasicDialogContent88mDfTA(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, gapComposer, 0);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                TopAppBarKt.m846BasicDialogContent88mDfTA(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ BasicDialogKt$$ExternalSyntheticLambda3(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, Function3 function3, Function3 function32, PaddingValuesImpl paddingValuesImpl, boolean z, long j, int i) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = composableLambdaImpl2;
        this.f$2 = modifier;
        this.f$3 = function3;
        this.f$4 = function32;
        this.f$5 = paddingValuesImpl;
        this.f$6 = z;
        this.f$7 = j;
    }
}
