package androidx.compose.foundation.text.selection;

import androidx.collection.CircularArray;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SelectionAdjustmentKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ SelectionAdjustmentKt$$ExternalSyntheticLambda0(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return Integer.valueOf(((TextLayoutResult) ((CircularArray) obj).elements).multiParagraph.getLineForOffset(i2));
            case 1:
                ((Function1) obj).invoke(Integer.valueOf(i2));
                return Unit.INSTANCE;
            default:
                return ((AndroidResourceManager) ((SearchSettingsViewModel) obj).resources).stringResource(i2);
        }
    }
}
