package org.fdroid.fdroid.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.i18n.TextBundle;
import org.fdroid.fdroid.ui.theme.ThemeKt;

/* compiled from: FDroidExpandableRow.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a7\u0010\t\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¢\u0006\u0004\b\t\u0010\n\u001a\u000f\u0010\u000b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e²\u0006\u000e\u0010\r\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"", TextBundle.TEXT_ENTRY, "Landroidx/compose/ui/graphics/vector/ImageVector;", "imageVectorStart", "", "expanded", "Lkotlin/Function0;", "", "content", "FDroidExpandableRow", "(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "FDroidExpandableRowPreview", "(Landroidx/compose/runtime/Composer;I)V", "expandedInternal", "app_fullRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FDroidExpandableRowKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FDroidExpandableRow$lambda$8(String str, ImageVector imageVector, boolean z, Function2 function2, int i, int i2, Composer composer, int i3) {
        FDroidExpandableRow(str, imageVector, z, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FDroidExpandableRowPreview$lambda$9(int i, Composer composer, int i2) {
        FDroidExpandableRowPreview(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FDroidExpandableRow(final java.lang.String r30, final androidx.compose.ui.graphics.vector.ImageVector r31, boolean r32, final kotlin.jvm.functions.Function2 r33, androidx.compose.runtime.Composer r34, final int r35, final int r36) {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.compose.FDroidExpandableRowKt.FDroidExpandableRow(java.lang.String, androidx.compose.ui.graphics.vector.ImageVector, boolean, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState FDroidExpandableRow$lambda$1$lambda$0(boolean z) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
    }

    private static final void FDroidExpandableRow$lambda$3(MutableState mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit FDroidExpandableRow$lambda$7$lambda$5$lambda$4(MutableState mutableState, boolean z) {
        FDroidExpandableRow$lambda$3(mutableState, !FDroidExpandableRow$lambda$2(mutableState));
        return Unit.INSTANCE;
    }

    private static final boolean FDroidExpandableRow$lambda$2(MutableState mutableState) {
        return ((Boolean) mutableState.getValue()).booleanValue();
    }

    public static final void FDroidExpandableRowPreview(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-848496404);
        if (i != 0 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-848496404, i, -1, "org.fdroid.fdroid.compose.FDroidExpandableRowPreview (FDroidExpandableRow.kt:86)");
            }
            ThemeKt.FDroidContent(false, false, ComposableSingletons$FDroidExpandableRowKt.INSTANCE.m2971getLambda2$app_fullRelease(), startRestartGroup, 384, 3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: org.fdroid.fdroid.compose.FDroidExpandableRowKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit FDroidExpandableRowPreview$lambda$9;
                    FDroidExpandableRowPreview$lambda$9 = FDroidExpandableRowKt.FDroidExpandableRowPreview$lambda$9(i, (Composer) obj, ((Integer) obj2).intValue());
                    return FDroidExpandableRowPreview$lambda$9;
                }
            });
        }
    }
}
