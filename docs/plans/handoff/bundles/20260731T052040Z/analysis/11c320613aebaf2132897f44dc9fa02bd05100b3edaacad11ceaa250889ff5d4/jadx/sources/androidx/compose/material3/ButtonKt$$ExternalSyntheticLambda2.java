package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import com.google.android.exoplayer2.RendererCapabilities;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ButtonKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function2 f$2;

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda2(long j, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl) {
        this.$r8$classId = 0;
        this.f$0 = j;
        this.f$1 = paddingValues;
        this.f$2 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Function2 function2 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj3;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function2;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(this.f$0, ((MaterialTheme$Values) gapComposer.consume(MaterialThemeKt._localMaterialTheme)).typography.labelLarge, Expect_jvmKt.rememberComposableLambda(417635459, new TextKt$$ExternalSyntheticLambda2(paddingValues, composableLambdaImpl, 6), gapComposer), gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
                    break;
                }
            case 1:
                ((Integer) obj2).getClass();
                ListItemKt.m148ContentDecorator3JVO9M(this.f$0, (TypographyKeyTokens) obj3, (ComposableLambdaImpl) function2, (Composer) obj, Updater.updateChangedFlags(49));
                break;
            default:
                ((Integer) obj2).getClass();
                ListItemKt.m152ProvideTextStyleFromToken3JVO9M(this.f$0, (TypographyKeyTokens) obj3, this.f$2, (Composer) obj, Updater.updateChangedFlags(49));
                break;
        }
        return unit;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda2(long j, TypographyKeyTokens typographyKeyTokens, Function2 function2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = j;
        this.f$1 = typographyKeyTokens;
        this.f$2 = function2;
    }
}
