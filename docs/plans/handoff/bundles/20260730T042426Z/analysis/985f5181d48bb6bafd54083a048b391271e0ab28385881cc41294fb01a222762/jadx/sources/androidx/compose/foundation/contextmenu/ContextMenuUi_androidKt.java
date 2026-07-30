package androidx.compose.foundation.contextmenu;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ContextMenuUi.android.kt */
/* loaded from: classes.dex */
public abstract class ContextMenuUi_androidKt {
    private static final ContextMenuColors DefaultContextMenuColors;
    private static final PopupProperties DefaultPopupProperties = new PopupProperties(true, false, false, false, 14, (DefaultConstructorMarker) null);

    static {
        Color.Companion companion = Color.Companion;
        DefaultContextMenuColors = new ContextMenuColors(companion.m1318getWhite0d7_KjU(), companion.m1313getBlack0d7_KjU(), companion.m1313getBlack0d7_KjU(), Color.m1302copywmQWz5c$default(companion.m1313getBlack0d7_KjU(), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), Color.m1302copywmQWz5c$default(companion.m1313getBlack0d7_KjU(), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
    }

    public static final void ContextMenuPopup(final PopupPositionProvider popupPositionProvider, final Function0 function0, Modifier modifier, final Function1 function1, Composer composer, final int i, final int i2) {
        int i3;
        Composer startRestartGroup = composer.startRestartGroup(712057293);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (startRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= startRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        int i4 = i2 & 4;
        if (i4 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= startRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= startRestartGroup.changedInstance(function1) ? 2048 : 1024;
        }
        if ((i3 & 1171) != 1170 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(712057293, i3, -1, "androidx.compose.foundation.contextmenu.ContextMenuPopup (ContextMenuUi.android.kt:103)");
            }
            ContextMenuPopup(popupPositionProvider, function0, modifier, computeContextMenuColors(0, 0, startRestartGroup, 0, 3), function1, startRestartGroup, (i3 & 1022) | ((i3 << 3) & 57344), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.contextmenu.ContextMenuUi_androidKt$ContextMenuPopup$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i5) {
                    ContextMenuUi_androidKt.ContextMenuPopup(PopupPositionProvider.this, function0, modifier2, function1, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ContextMenuPopup(final androidx.compose.ui.window.PopupPositionProvider r16, final kotlin.jvm.functions.Function0 r17, androidx.compose.ui.Modifier r18, final androidx.compose.foundation.contextmenu.ContextMenuColors r19, final kotlin.jvm.functions.Function1 r20, androidx.compose.runtime.Composer r21, final int r22, final int r23) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.contextmenu.ContextMenuUi_androidKt.ContextMenuPopup(androidx.compose.ui.window.PopupPositionProvider, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.foundation.contextmenu.ContextMenuColors, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ContextMenuColumn(final androidx.compose.foundation.contextmenu.ContextMenuColors r23, androidx.compose.ui.Modifier r24, final kotlin.jvm.functions.Function3 r25, androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.contextmenu.ContextMenuUi_androidKt.ContextMenuColumn(androidx.compose.foundation.contextmenu.ContextMenuColors, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ContextMenuItem(final java.lang.String r30, final boolean r31, final androidx.compose.foundation.contextmenu.ContextMenuColors r32, androidx.compose.ui.Modifier r33, kotlin.jvm.functions.Function3 r34, final kotlin.jvm.functions.Function0 r35, androidx.compose.runtime.Composer r36, final int r37, final int r38) {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.contextmenu.ContextMenuUi_androidKt.ContextMenuItem(java.lang.String, boolean, androidx.compose.foundation.contextmenu.ContextMenuColors, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final ContextMenuColors computeContextMenuColors(int i, int i2, Composer composer, int i3, int i4) {
        int i5 = (i4 & 1) != 0 ? R.style.Widget.PopupMenu : i;
        int i6 = (i4 & 2) != 0 ? R.style.TextAppearance.Widget.PopupMenu.Large : i2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1689505294, i3, -1, "androidx.compose.foundation.contextmenu.computeContextMenuColors (ContextMenuUi.android.kt:354)");
        }
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        boolean changed = composer.changed((Configuration) composer.consume(AndroidCompositionLocals_androidKt.getLocalConfiguration())) | composer.changed(context);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            ContextMenuColors contextMenuColors = DefaultContextMenuColors;
            long m167resolveColorg2O1Hgs = m167resolveColorg2O1Hgs(context, i5, R.attr.colorBackground, contextMenuColors.m148getBackgroundColor0d7_KjU());
            ColorStateList resolveColorStateList = resolveColorStateList(context, i6, R.attr.textColorPrimary);
            long m166enabledColor4WTKRHQ = m166enabledColor4WTKRHQ(resolveColorStateList, contextMenuColors.m152getTextColor0d7_KjU());
            long m165disabledColor4WTKRHQ = m165disabledColor4WTKRHQ(resolveColorStateList, contextMenuColors.m150getDisabledTextColor0d7_KjU());
            rememberedValue = new ContextMenuColors(m167resolveColorg2O1Hgs, m166enabledColor4WTKRHQ, m166enabledColor4WTKRHQ, m165disabledColor4WTKRHQ, m165disabledColor4WTKRHQ, null);
            composer.updateRememberedValue(rememberedValue);
        }
        ContextMenuColors contextMenuColors2 = (ContextMenuColors) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return contextMenuColors2;
    }

    /* renamed from: resolveColor-g2O1Hgs, reason: not valid java name */
    private static final long m167resolveColorg2O1Hgs(Context context, int i, int i2, long j) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
        int m1324toArgb8_81llA = ColorKt.m1324toArgb8_81llA(j);
        int color = obtainStyledAttributes.getColor(0, m1324toArgb8_81llA);
        obtainStyledAttributes.recycle();
        return color == m1324toArgb8_81llA ? j : ColorKt.Color(color);
    }

    private static final ColorStateList resolveColorStateList(Context context, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(0);
        obtainStyledAttributes.recycle();
        return colorStateList;
    }

    /* renamed from: enabledColor-4WTKRHQ, reason: not valid java name */
    private static final long m166enabledColor4WTKRHQ(ColorStateList colorStateList, long j) {
        int m1324toArgb8_81llA = ColorKt.m1324toArgb8_81llA(j);
        Integer valueOf = colorStateList != null ? Integer.valueOf(colorStateList.getColorForState(new int[]{R.attr.state_enabled}, m1324toArgb8_81llA)) : null;
        return (valueOf == null || valueOf.intValue() == m1324toArgb8_81llA) ? j : ColorKt.Color(valueOf.intValue());
    }

    /* renamed from: disabledColor-4WTKRHQ, reason: not valid java name */
    private static final long m165disabledColor4WTKRHQ(ColorStateList colorStateList, long j) {
        int m1324toArgb8_81llA = ColorKt.m1324toArgb8_81llA(j);
        Integer valueOf = colorStateList != null ? Integer.valueOf(colorStateList.getColorForState(new int[]{-16842910}, m1324toArgb8_81llA)) : null;
        return (valueOf == null || valueOf.intValue() == m1324toArgb8_81llA) ? j : ColorKt.Color(valueOf.intValue());
    }
}
