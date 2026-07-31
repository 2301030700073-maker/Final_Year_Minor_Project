package app.k9mail.core.ui.compose.designsystem.organism;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.IntRectKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ ImageVector f$1;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda5(String str, ImageVector imageVector) {
        this.$r8$classId = 0;
        this.f$0 = str;
        this.f$1 = imageVector;
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
                    IntRectKt.m765TextHeadlineSmallXl4FiYE(this.f$0, null, 0L, new TextAlign(this.f$1 == null ? 5 : 3), 0, 0, gapComposer, 0, 54);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSizes) gapComposer2.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                    IconKt.m345Iconww6aTOc(this.f$1, this.f$0, SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, 24.0f), 0L, gapComposer2, 0, 8);
                    break;
                }
            default:
                GapComposer gapComposer3 = (GapComposer) composer;
                if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    IconKt.m345Iconww6aTOc(this.f$1, this.f$0, null, 0L, gapComposer3, 0, 12);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda5(int i, ImageVector imageVector, String str) {
        this.$r8$classId = i;
        this.f$1 = imageVector;
        this.f$0 = str;
    }
}
