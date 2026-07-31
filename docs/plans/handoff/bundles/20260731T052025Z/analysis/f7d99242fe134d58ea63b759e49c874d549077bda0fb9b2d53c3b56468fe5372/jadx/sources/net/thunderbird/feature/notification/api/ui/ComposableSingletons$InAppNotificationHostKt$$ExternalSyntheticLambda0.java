package net.thunderbird.feature.notification.api.ui;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Error;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((PaddingValues) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                }
                break;
            default:
                ThundermailContract$Error thundermailContract$Error = (ThundermailContract$Error) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(thundermailContract$Error) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else if (thundermailContract$Error != null) {
                    gapComposer2.startReplaceGroup(-489306869);
                    ThundermailOAuthRedirectScreenKt.ErrorDetails(thundermailContract$Error, SizeKt.FillWholeMaxWidth, gapComposer2, (intValue2 & 14) | 48);
                    gapComposer2.end(false);
                    break;
                } else {
                    gapComposer2.startReplaceGroup(-489409944);
                    ThundermailOAuthRedirectScreenKt.RedirectingUserContent(SizeKt.FillWholeMaxWidth, gapComposer2, 6);
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }
}
