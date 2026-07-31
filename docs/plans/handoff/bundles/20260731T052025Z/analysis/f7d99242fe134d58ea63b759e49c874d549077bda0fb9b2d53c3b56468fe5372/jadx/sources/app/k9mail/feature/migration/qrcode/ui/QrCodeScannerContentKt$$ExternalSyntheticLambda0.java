package app.k9mail.feature.migration.qrcode.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.draw.DrawResult;
import androidx.lifecycle.Lifecycle;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.SQLite;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class QrCodeScannerContentKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ QrCodeScannerContract$State f$0;
    public final /* synthetic */ DrawResult f$1;
    public final /* synthetic */ Function1 f$2;

    public /* synthetic */ QrCodeScannerContentKt$$ExternalSyntheticLambda0(DrawResult drawResult, QrCodeScannerContract$State qrCodeScannerContract$State, Function1 function1, int i) {
        this.f$1 = drawResult;
        this.f$0 = qrCodeScannerContract$State;
        this.f$2 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$2;
        QrCodeScannerContract$State qrCodeScannerContract$State = this.f$0;
        DrawResult drawResult = this.f$1;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    int ordinal = qrCodeScannerContract$State.cameraPermissionState.ordinal();
                    if (ordinal != 0) {
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        if (ordinal == 1) {
                            gapComposer.startReplaceGroup(1860589675);
                            QrCodeScannerContract$DisplayText qrCodeScannerContract$DisplayText = qrCodeScannerContract$State.displayText;
                            boolean changed = gapComposer.changed(function1);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new AboutFragment$$ExternalSyntheticLambda2(16, function1);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            RelationUtil.QrCodeScannerView(drawResult, qrCodeScannerContract$DisplayText, (Function0) rememberedValue, gapComposer, 0);
                            gapComposer.end(false);
                        } else if (ordinal == 2) {
                            gapComposer.startReplaceGroup(1860882191);
                            boolean changed2 = gapComposer.changed(function1);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new AboutFragment$$ExternalSyntheticLambda2(17, function1);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            SQLite.PermissionDeniedContent((Function0) rememberedValue2, gapComposer, 0);
                            gapComposer.end(false);
                        } else {
                            if (ordinal != 3) {
                                throw ViewSizeResolver.CC.m(gapComposer, 1445485214, false);
                            }
                            gapComposer.startReplaceGroup(1861086233);
                            Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                            boolean changed3 = gapComposer.changed(function1);
                            Object rememberedValue3 = gapComposer.rememberedValue();
                            if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(18, function1);
                                gapComposer.updateRememberedValue(rememberedValue3);
                            }
                            SchemaInfoUtilKt.LifecycleEventEffect(event, null, (Function0) rememberedValue3, gapComposer, 6);
                            gapComposer.end(false);
                        }
                    } else {
                        gapComposer.startReplaceGroup(1860415114);
                        gapComposer.end(false);
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            default:
                num.getClass();
                DBUtil.QrCodeScannerContent(drawResult, qrCodeScannerContract$State, function1, composer, Updater.updateChangedFlags(65));
                return unit;
        }
    }

    public /* synthetic */ QrCodeScannerContentKt$$ExternalSyntheticLambda0(QrCodeScannerContract$State qrCodeScannerContract$State, DrawResult drawResult, Function1 function1) {
        this.f$0 = qrCodeScannerContract$State;
        this.f$1 = drawResult;
        this.f$2 = function1;
    }
}
