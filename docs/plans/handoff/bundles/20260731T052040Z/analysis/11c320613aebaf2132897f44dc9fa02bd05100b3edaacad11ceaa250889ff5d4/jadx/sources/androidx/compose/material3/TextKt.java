package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.TextStyle;
import kotlin.jvm.functions.Function2;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TextKt {
    public static final DynamicProvidableCompositionLocal LocalTextStyle = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(21));

    public static final void ProvideTextStyle(TextStyle textStyle, Function2 function2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(15327438);
        int i2 = (gapComposer.changed(textStyle) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalTextStyle;
            Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(((TextStyle) gapComposer.consume(dynamicProvidableCompositionLocal)).merge(textStyle)), function2, gapComposer, (i2 & Token.ASSIGN_MOD) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda2(i, textStyle, function2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0048  */
    /* JADX WARN: Type inference failed for: r38v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v12, types: [int] */
    /* renamed from: Text-Nvy7gAk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m164TextNvy7gAk(final java.lang.String r30, androidx.compose.ui.Modifier r31, long r32, long r34, long r36, androidx.compose.ui.text.style.TextAlign r38, long r39, int r41, boolean r42, int r43, int r44, androidx.compose.ui.text.TextStyle r45, androidx.compose.runtime.Composer r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m164TextNvy7gAk(java.lang.String, androidx.compose.ui.Modifier, long, long, long, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int):void");
    }
}
