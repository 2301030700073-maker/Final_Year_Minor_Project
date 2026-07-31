package androidx.compose.foundation.text;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import app.k9mail.feature.onboarding.permissions.ui.PermissionBoxKt$$ExternalSyntheticLambda3;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda3;
import kotlin.jvm.functions.Function1;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidCursorHandle_androidKt {
    public static final float CursorHandleWidth = (25.0f * 2.0f) / 2.4142137f;

    /* renamed from: CursorHandle-USBMPiE, reason: not valid java name */
    public static final void m265CursorHandleUSBMPiE(OffsetProvider offsetProvider, Modifier modifier, long j, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1776202187);
        int i3 = (gapComposer.changed(offsetProvider) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | 128;
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
            int i4 = i2 & 14;
            boolean z = i4 == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new TorchControl$$ExternalSyntheticLambda1(21, offsetProvider);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Util.HandlePopup(offsetProvider, Alignment.Companion.TopCenter, Expect_jvmKt.rememberComposableLambda(-1653527038, new AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1(j, SemanticsModifierKt.semantics(modifier, false, (Function1) rememberedValue)), gapComposer), gapComposer, i4 | 432);
        } else {
            gapComposer.skipToGroupEnd();
        }
        long j2 = j;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PermissionBoxKt$$ExternalSyntheticLambda3(offsetProvider, modifier, j2, i);
        }
    }

    public static final void DefaultCursorHandle(int i, int i2, Composer composer, Modifier modifier) {
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
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
            OffsetKt.Spacer(gapComposer, ClipKt.drawWithCache(SizeKt.m235sizeVpY3zN4(modifier, CursorHandleWidth, 25.0f), new WorkSpecDao_Impl$$ExternalSyntheticLambda26(i5, ((TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors)).handleColor)));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda3(modifier, i, i2);
        }
    }
}
