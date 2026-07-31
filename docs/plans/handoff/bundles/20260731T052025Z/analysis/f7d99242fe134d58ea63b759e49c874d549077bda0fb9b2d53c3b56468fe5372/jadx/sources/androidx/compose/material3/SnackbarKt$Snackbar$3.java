package androidx.compose.material3;

import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.LimitInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnackbarKt$Snackbar$3 implements Function2 {
    public static final SnackbarKt$Snackbar$3 INSTANCE = new SnackbarKt$Snackbar$3(1);
    public static final SnackbarKt$Snackbar$3 INSTANCE$1 = new SnackbarKt$Snackbar$3(2);
    public static final SnackbarKt$Snackbar$3 INSTANCE$2 = new SnackbarKt$Snackbar$3(3);
    public static final SnackbarKt$Snackbar$3 INSTANCE$3 = new SnackbarKt$Snackbar$3(4);
    public static final SnackbarKt$Snackbar$3 INSTANCE$4 = new SnackbarKt$Snackbar$3(5);
    public final /* synthetic */ int $r8$classId;

    public SnackbarKt$Snackbar$3(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 6:
                ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SnackbarHostKt.f10lambda$1548712596;
                break;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    throw null;
                }
                gapComposer.skipToGroupEnd();
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Number) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    BottomSheetDefaults.INSTANCE.m324DragHandlelgZ2HuY(null, 0.0f, 0.0f, null, 0L, gapComposer2, 196608);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Number) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    BottomSheetDefaults.INSTANCE.m324DragHandlelgZ2HuY(null, 0.0f, 0.0f, null, 0L, gapComposer3, 196608);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 3:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Number) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 4:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Number) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    SegmentedButtonDefaults.INSTANCE.ActiveIcon(gapComposer5, 6);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 5:
                ((Number) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) ((Composer) obj);
                gapComposer6.startReplaceGroup(-511854661);
                BottomSheetDefaults bottomSheetDefaults = BottomSheetDefaults.INSTANCE;
                WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                LimitInsets limitInsets = new LimitInsets(FlowRowOverflow.current(gapComposer6).safeDrawing, 48);
                gapComposer6.end(false);
                return limitInsets;
            default:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Number) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (gapComposer7.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SnackbarHostKt.f10lambda$1548712596;
                    throw null;
                }
                gapComposer7.skipToGroupEnd();
                return unit;
        }
    }

    public /* synthetic */ SnackbarKt$Snackbar$3(int i) {
        this.$r8$classId = i;
    }
}
