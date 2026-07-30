package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyTokensKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: Text.kt */
/* loaded from: classes.dex */
public abstract class TextKt {
    private static final ProvidableCompositionLocal LocalTextStyle = CompositionLocalKt.compositionLocalOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0() { // from class: androidx.compose.material3.TextKt$LocalTextStyle$1
        @Override // kotlin.jvm.functions.Function0
        public final TextStyle invoke() {
            return TypographyTokensKt.getDefaultTextStyle();
        }
    });

    /* JADX WARN: Removed duplicated region for block: B:100:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03e2  */
    /* renamed from: Text--4IGK_g, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m780Text4IGK_g(final java.lang.String r68, androidx.compose.ui.Modifier r69, long r70, long r72, androidx.compose.ui.text.font.FontStyle r74, androidx.compose.ui.text.font.FontWeight r75, androidx.compose.ui.text.font.FontFamily r76, long r77, androidx.compose.ui.text.style.TextDecoration r79, androidx.compose.ui.text.style.TextAlign r80, long r81, int r83, boolean r84, int r85, int r86, kotlin.jvm.functions.Function1 r87, androidx.compose.ui.text.TextStyle r88, androidx.compose.runtime.Composer r89, final int r90, final int r91, final int r92) {
        /*
            Method dump skipped, instructions count: 1057
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m780Text4IGK_g(java.lang.String, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0423  */
    /* renamed from: Text-IbK3jfQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m781TextIbK3jfQ(final androidx.compose.ui.text.AnnotatedString r61, androidx.compose.ui.Modifier r62, long r63, long r65, androidx.compose.ui.text.font.FontStyle r67, androidx.compose.ui.text.font.FontWeight r68, androidx.compose.ui.text.font.FontFamily r69, long r70, androidx.compose.ui.text.style.TextDecoration r72, androidx.compose.ui.text.style.TextAlign r73, long r74, int r76, boolean r77, int r78, int r79, java.util.Map r80, kotlin.jvm.functions.Function1 r81, androidx.compose.ui.text.TextStyle r82, androidx.compose.runtime.Composer r83, final int r84, final int r85, final int r86) {
        /*
            Method dump skipped, instructions count: 1124
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextKt.m781TextIbK3jfQ(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, long, androidx.compose.ui.text.font.FontStyle, androidx.compose.ui.text.font.FontWeight, androidx.compose.ui.text.font.FontFamily, long, androidx.compose.ui.text.style.TextDecoration, androidx.compose.ui.text.style.TextAlign, long, int, boolean, int, int, java.util.Map, kotlin.jvm.functions.Function1, androidx.compose.ui.text.TextStyle, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final ProvidableCompositionLocal getLocalTextStyle() {
        return LocalTextStyle;
    }

    public static final void ProvideTextStyle(final TextStyle textStyle, final Function2 function2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-460300127);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(textStyle) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-460300127, i2, -1, "androidx.compose.material3.ProvideTextStyle (Text.kt:346)");
            }
            ProvidableCompositionLocal providableCompositionLocal = LocalTextStyle;
            CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(((TextStyle) startRestartGroup.consume(providableCompositionLocal)).merge(textStyle)), function2, startRestartGroup, (i2 & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.TextKt$ProvideTextStyle$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    TextKt.ProvideTextStyle(TextStyle.this, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }
}
