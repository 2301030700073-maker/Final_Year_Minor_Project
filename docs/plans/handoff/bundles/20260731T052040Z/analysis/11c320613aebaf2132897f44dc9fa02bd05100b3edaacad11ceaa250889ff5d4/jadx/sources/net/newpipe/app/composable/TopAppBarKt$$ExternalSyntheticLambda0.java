package net.newpipe.app.composable;

import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.painter.Painter;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import newpipe.shared.generated.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TopAppBarKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Painter f$0;

    public /* synthetic */ TopAppBarKt$$ExternalSyntheticLambda0(Painter painter, int i) {
        this.$r8$classId = i;
        this.f$0 = painter;
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
                    IconKt.m141Iconww6aTOc(this.f$0, StringResourcesKt.stringResource((StringResource) String0_commonMainKt.navigate_back$delegate.getValue(), gapComposer), null, 0L, gapComposer, 8);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m141Iconww6aTOc(this.f$0, null, null, 0L, gapComposer2, 56);
                    break;
                }
        }
        return unit;
    }
}
