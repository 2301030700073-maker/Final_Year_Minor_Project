package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.UnionInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil;
import app.k9mail.provider.K9AppNameProvider;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.common.provider.BrandNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CreateAccountScreenKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BrandNameProvider f$0;

    public /* synthetic */ CreateAccountScreenKt$$ExternalSyntheticLambda1(BrandNameProvider brandNameProvider, int i) {
        this.$r8$classId = i;
        this.f$0 = brandNameProvider;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        BrandNameProvider brandNameProvider = this.f$0;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String brandName = ((K9AppNameProvider) brandNameProvider).getBrandName();
                    WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                    DBUtil.AppTitleTopHeader(brandName, OffsetKt.windowInsetsPadding(companion, new UnionInsets(FlowRowOverflow.current(gapComposer).statusBars, FlowRowOverflow.current(gapComposer).displayCutout)), gapComposer, 0, 0);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    String brandName2 = ((K9AppNameProvider) brandNameProvider).getBrandName();
                    WeakHashMap weakHashMap2 = WindowInsetsHolder.viewMap;
                    DBUtil.AppTitleTopHeader(brandName2, OffsetKt.windowInsetsPadding(companion, new UnionInsets(FlowRowOverflow.current(gapComposer2).statusBars, FlowRowOverflow.current(gapComposer2).displayCutout)), gapComposer2, 0, 0);
                    break;
                }
        }
        return unit;
    }
}
