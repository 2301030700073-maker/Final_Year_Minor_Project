package app.k9mail.feature.migration.qrcode.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.core.util.DebugUtils;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.provider.K9FeatureThemeProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class QrCodeScannerActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QrCodeScannerActivity f$0;

    public /* synthetic */ QrCodeScannerActivity$$ExternalSyntheticLambda0(QrCodeScannerActivity qrCodeScannerActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = qrCodeScannerActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                int i3 = QrCodeScannerActivity.$r8$clinit;
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    QrCodeScannerActivity qrCodeScannerActivity = this.f$0;
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) qrCodeScannerActivity.themeProvider$delegate.getValue())).WithTheme$1(Expect_jvmKt.rememberComposableLambda(1866689119, new QrCodeScannerActivity$$ExternalSyntheticLambda0(qrCodeScannerActivity, i2), gapComposer), gapComposer, 54);
                    break;
                }
            default:
                int i4 = QrCodeScannerActivity.$r8$clinit;
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    QrCodeScannerActivity qrCodeScannerActivity2 = this.f$0;
                    boolean changedInstance = gapComposer2.changedInstance(qrCodeScannerActivity2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = new InvalidationTracker$implementation$1(1, qrCodeScannerActivity2, QrCodeScannerActivity.class, "finishWithResult", "finishWithResult(Landroid/net/Uri;)V", 0, 7);
                        gapComposer2.updateRememberedValue(invalidationTracker$implementation$1);
                        rememberedValue = invalidationTracker$implementation$1;
                    }
                    Function1 function1 = (Function1) ((KFunction) rememberedValue);
                    boolean changedInstance2 = gapComposer2.changedInstance(qrCodeScannerActivity2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1 = new RoomDatabase$closeBarrier$1(0, qrCodeScannerActivity2, QrCodeScannerActivity.class, "finish", "finish()V", 0, 13);
                        gapComposer2.updateRememberedValue(roomDatabase$closeBarrier$1);
                        rememberedValue2 = roomDatabase$closeBarrier$1;
                    }
                    DebugUtils.QrCodeScannerScreen(function1, (Function0) ((KFunction) rememberedValue2), null, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
