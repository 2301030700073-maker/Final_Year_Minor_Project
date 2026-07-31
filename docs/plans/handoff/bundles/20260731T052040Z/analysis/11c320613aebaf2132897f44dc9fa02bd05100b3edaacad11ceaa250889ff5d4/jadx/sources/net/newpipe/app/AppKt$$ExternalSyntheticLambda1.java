package net.newpipe.app;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import com.google.android.exoplayer2.RendererCapabilities;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.newpipe.app.navigation.Destination;
import net.newpipe.app.navigation.NavDisplayKt;
import net.newpipe.app.theme.ThemeKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AppKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Destination f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ ComposableLambdaImpl f$2;

    public /* synthetic */ AppKt$$ExternalSyntheticLambda1(Destination destination, Function0 function0, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = 1;
        this.f$0 = destination;
        this.f$1 = function0;
        this.f$2 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        ComposableLambdaImpl composableLambdaImpl = this.f$2;
        Function0 function0 = this.f$1;
        Destination destination = this.f$0;
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
                    ThemeKt.AppTheme(false, null, Expect_jvmKt.rememberComposableLambda(1036434782, new AppKt$$ExternalSyntheticLambda1(this.f$0, this.f$1, this.f$2, 2, (byte) 0), gapComposer), gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
                    break;
                }
            case 1:
                ((Integer) obj2).getClass();
                AppKt.App(destination, function0, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(385));
                break;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    NavDisplayKt.NavDisplay(destination, function0, null, gapComposer2, 0);
                    composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AppKt$$ExternalSyntheticLambda1(Destination destination, Function0 function0, ComposableLambdaImpl composableLambdaImpl, int i, byte b) {
        this.$r8$classId = i;
        this.f$0 = destination;
        this.f$1 = function0;
        this.f$2 = composableLambdaImpl;
    }
}
