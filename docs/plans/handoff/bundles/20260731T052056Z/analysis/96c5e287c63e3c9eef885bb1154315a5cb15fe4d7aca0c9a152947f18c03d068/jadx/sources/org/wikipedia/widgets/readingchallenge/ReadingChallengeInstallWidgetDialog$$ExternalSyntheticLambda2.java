package org.wikipedia.widgets.readingchallenge;

import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingChallengeInstallWidgetDialog f$0;

    public /* synthetic */ ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2(ReadingChallengeInstallWidgetDialog readingChallengeInstallWidgetDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = readingChallengeInstallWidgetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ReadingChallengeInstallWidgetDialog readingChallengeInstallWidgetDialog = this.f$0;
        switch (i) {
            case 0:
                SVGAndroidRenderer.submitInteraction$default(readingChallengeInstallWidgetDialog.instrument, "click", null, null, "install_accept", null, null, 246);
                readingChallengeInstallWidgetDialog.dismiss();
                break;
            case 1:
                SVGAndroidRenderer.submitInteraction$default(readingChallengeInstallWidgetDialog.instrument, "click", null, null, "install_close", null, null, 246);
                readingChallengeInstallWidgetDialog.dismiss();
                break;
            default:
                ReadingChallengeInstallWidgetDialog.onCreateView$lambda$0$0$0$2$0$0(readingChallengeInstallWidgetDialog);
                break;
        }
        return unit;
    }
}
