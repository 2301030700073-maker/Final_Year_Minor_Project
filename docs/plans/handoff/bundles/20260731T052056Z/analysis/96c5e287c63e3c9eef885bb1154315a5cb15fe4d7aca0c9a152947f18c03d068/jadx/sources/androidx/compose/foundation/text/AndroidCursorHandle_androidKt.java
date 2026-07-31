package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.BoxKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28;
import kotlin.jvm.functions.Function1;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidCursorHandle_androidKt {
    public static final float CursorHandleWidth = (25.0f * 2.0f) / 2.4142137f;

    /* renamed from: CursorHandle-USBMPiE, reason: not valid java name */
    public static final void m178CursorHandleUSBMPiE(OffsetProvider offsetProvider, Modifier modifier, long j, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(1776202187);
        int i3 = (gapComposer.changed(offsetProvider) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | 128;
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i2 = i3 & (-897);
                j = 9205357640488583168L;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-897);
            }
            gapComposer.endDefaults();
            int i5 = i2 & 14;
            boolean z = i5 == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new AppBarKt$$ExternalSyntheticLambda11(19, offsetProvider);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            SimpleLayoutKt.HandlePopup(offsetProvider, Alignment.Companion.TopCenter, Expect_jvmKt.rememberComposableLambda(-1653527038, new GamesHubScreenKt$$ExternalSyntheticLambda4(i4, j, SemanticsModifierKt.semantics(modifier, false, (Function1) rememberedValue)), gapComposer), gapComposer, i5 | 432);
        } else {
            gapComposer.skipToGroupEnd();
        }
        long j2 = j;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda3(offsetProvider, modifier, j2, i);
        }
    }

    public static final void DefaultCursorHandle(Modifier modifier, GapComposer gapComposer, int i, int i2) {
        int i3;
        gapComposer.startRestartGroup(694251107);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        }
        int i5 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            OffsetKt.Spacer(gapComposer, ClipKt.drawWithCache(SizeKt.m146sizeVpY3zN4(modifier, CursorHandleWidth, 25.0f), new WorkSpecDao_Impl$$ExternalSyntheticLambda28(((TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors)).handleColor, i5)));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, i2);
        }
    }
}
