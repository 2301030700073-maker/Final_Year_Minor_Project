package net.newpipe.app.composable;

import androidx.compose.foundation.ClickableElement;
import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ListItemKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TopAppBarKt {
    public static final ComposableLambdaImpl lambda$1874107430 = new ComposableLambdaImpl(1874107430, false, new BadgeKt$$ExternalSyntheticLambda0(2));

    public static final void PreferenceRow(String str, Modifier modifier, Painter painter, Function0 function0, Composer composer, int i) {
        Modifier then;
        ComposableLambdaImpl composableLambdaImpl;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-779390505);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | 48 | (gapComposer.changedInstance(painter) ? 256 : 128) | 3072 | (gapComposer.changedInstance(function0) ? 16384 : 8192);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            modifier = Modifier.Companion.$$INSTANCE;
            then = modifier.then(new ClickableElement(null, null, true, true, null, function0));
            gapComposer.startReplaceGroup(-229012699);
            gapComposer.end(false);
            if (painter == null) {
                gapComposer.startReplaceGroup(-228941523);
                gapComposer.end(false);
                composableLambdaImpl = null;
            } else {
                gapComposer.startReplaceGroup(-228941522);
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-228474993, new TopAppBarKt$$ExternalSyntheticLambda0(painter, i3), gapComposer);
                gapComposer.end(false);
                composableLambdaImpl = rememberComposableLambda;
            }
            ListItemKt.m150ListItemHXNGIdc(Expect_jvmKt.rememberComposableLambda(-1316535239, new TopAppBarKt$$ExternalSyntheticLambda1(str, i3), gapComposer), then, null, composableLambdaImpl, null, gapComposer, 6);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PreferenceRowKt$$ExternalSyntheticLambda2(str, modifier2, painter, function0, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TopAppBar(androidx.compose.ui.Modifier r31, final java.lang.String r32, androidx.compose.ui.graphics.painter.Painter r33, final kotlin.jvm.functions.Function0 r34, androidx.compose.material3.TopAppBarColors r35, kotlin.jvm.functions.Function3 r36, androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.newpipe.app.composable.TopAppBarKt.TopAppBar(androidx.compose.ui.Modifier, java.lang.String, androidx.compose.ui.graphics.painter.Painter, kotlin.jvm.functions.Function0, androidx.compose.material3.TopAppBarColors, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }
}
