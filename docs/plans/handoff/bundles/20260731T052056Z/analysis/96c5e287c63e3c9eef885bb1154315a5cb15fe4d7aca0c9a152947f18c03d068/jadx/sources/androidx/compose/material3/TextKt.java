package androidx.compose.material3;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.TextStyle;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TextKt {
    public static final StaticProvidableCompositionLocal LocalTextStyle = new StaticProvidableCompositionLocal(1, new Worker$$ExternalSyntheticLambda1(6));

    public static final void ProvideTextStyle(TextStyle textStyle, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(15327438);
        int i2 = (gapComposer.changed(textStyle) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalTextStyle;
            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(((TextStyle) gapComposer.consume(staticProvidableCompositionLocal)).merge(textStyle)), composableLambdaImpl, gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(textStyle, composableLambdaImpl, i, 15);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* renamed from: Text-Nvy7gAk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m308TextNvy7gAk(final java.lang.String r39, androidx.compose.ui.Modifier r40, long r41, androidx.compose.foundation.text.AutoSizeStepBased r43, long r44, androidx.compose.ui.text.font.FontWeight r46, androidx.compose.ui.text.font.FontFamily r47, long r48, androidx.compose.ui.text.style.TextAlign r50, long r51, int r53, boolean r54, int r55, int r56, kotlin.jvm.functions.Function1 r57, androidx.compose.ui.text.TextStyle r58, androidx.compose.runtime.GapComposer r59, final int r60, final int r61, final int r62) {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m308TextNvy7gAk(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.foundation.text.AutoSizeStepBased, long, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.GapComposer, int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /* renamed from: Text-Z58ophY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m309TextZ58ophY(final androidx.compose.ui.text.AnnotatedString r58, androidx.compose.ui.Modifier r59, long r60, long r62, androidx.compose.ui.text.font.FontWeight r64, long r65, androidx.compose.ui.text.style.TextAlign r67, long r68, int r70, boolean r71, int r72, int r73, java.util.Map r74, kotlin.jvm.functions.Function1 r75, androidx.compose.ui.text.TextStyle r76, androidx.compose.runtime.GapComposer r77, final int r78, final int r79, final int r80) {
        /*
            Method dump skipped, instructions count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m309TextZ58ophY(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontWeight, long, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, java.util.Map, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.GapComposer, int, int, int):void");
    }
}
