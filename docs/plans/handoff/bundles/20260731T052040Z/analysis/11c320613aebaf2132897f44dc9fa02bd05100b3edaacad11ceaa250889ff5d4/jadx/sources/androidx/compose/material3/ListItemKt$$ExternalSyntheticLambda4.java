package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.google.android.exoplayer2.RendererCapabilities;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Function2 f$0;
    public final /* synthetic */ Function2 f$1;
    public final /* synthetic */ ComposableLambdaImpl f$2;
    public final /* synthetic */ Function2 f$3;
    public final /* synthetic */ Function2 f$4;

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda4(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, ComposableLambdaImpl composableLambdaImpl4, ComposableLambdaImpl composableLambdaImpl5) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = composableLambdaImpl2;
        this.f$2 = composableLambdaImpl3;
        this.f$3 = composableLambdaImpl4;
        this.f$4 = composableLambdaImpl5;
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
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ListItemKt.ListItemLayout(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                ListItemKt.ListItemLayout(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, (Composer) obj, Updater.updateChangedFlags(385));
                break;
        }
        return unit;
    }

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda4(Function2 function2, Function2 function22, ComposableLambdaImpl composableLambdaImpl, Function2 function23, Function2 function24, int i) {
        this.f$0 = function2;
        this.f$1 = function22;
        this.f$2 = composableLambdaImpl;
        this.f$3 = function23;
        this.f$4 = function24;
    }
}
