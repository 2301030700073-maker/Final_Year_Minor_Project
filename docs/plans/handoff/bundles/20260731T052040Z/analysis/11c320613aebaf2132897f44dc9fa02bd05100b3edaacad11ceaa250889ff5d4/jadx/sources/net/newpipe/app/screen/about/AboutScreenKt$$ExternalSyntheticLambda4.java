package net.newpipe.app.screen.about;

import androidx.compose.material3.BadgeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import com.google.android.exoplayer2.C;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.newpipe.app.composable.TopAppBarKt;
import newpipe.shared.generated.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutScreenKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ AboutScreenKt$$ExternalSyntheticLambda4(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TopAppBarKt.TopAppBar(null, StringResourcesKt.stringResource((StringResource) String0_commonMainKt.title_activity_about$delegate.getValue(), gapComposer), null, this.f$0, null, null, gapComposer, 0, 53);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    BadgeKt.TextButton(this.f$0, null, false, null, null, null, AboutPageKt.lambda$1469017491, gapComposer2, C.ENCODING_PCM_32BIT, 510);
                    break;
                }
        }
        return unit;
    }
}
