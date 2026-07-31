package app.k9mail.core.ui.compose.designsystem.organism.banner.inline;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.TextFieldCursorKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.AnnotatedString;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda2;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BannerInlineNotificationCardKt {

    /* renamed from: lambda$-549760761, reason: not valid java name */
    public static final ComposableLambdaImpl f20lambda$549760761 = new ComposableLambdaImpl(-549760761, new ReleaseConfigKt$$ExternalSyntheticLambda0(12), false);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BannerInlineNotificationCardBehaviour.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void BannerInlineNotificationCard(CharSequence charSequence, CharSequence charSequence2, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, CardColors cardColors, BorderStroke borderStroke, Shape shape, BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour, Function1 function1, Composer composer, int i) {
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        Modifier modifier2;
        BorderStroke borderStroke2;
        Shape shape2;
        Shape m264RoundedCornerShape0680j_4;
        int i3;
        charSequence.getClass();
        charSequence2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1956713812);
        int i4 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(f20lambda$549760761) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(charSequence) : gapComposer.changedInstance(charSequence) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(charSequence2) : gapComposer.changedInstance(charSequence2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 2048 : 1024;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((i & 24576) == 0) {
            modifier2 = modifier;
            i2 |= gapComposer.changed(modifier2) ? 16384 : 8192;
        } else {
            modifier2 = modifier;
        }
        if ((196608 & i) == 0) {
            i2 |= (262144 & i) == 0 ? gapComposer.changed(cardColors) : gapComposer.changedInstance(cardColors) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            borderStroke2 = borderStroke;
            i2 |= gapComposer.changed(borderStroke2) ? 1048576 : 524288;
        } else {
            borderStroke2 = borderStroke;
        }
        if ((12582912 & i) == 0) {
            i2 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer.changed(bannerInlineNotificationCardBehaviour == null ? -1 : bannerInlineNotificationCardBehaviour.ordinal()) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                m264RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m264RoundedCornerShape0680j_4(12.0f);
                i3 = i2 & (-29360129);
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-29360129);
                m264RoundedCornerShape0680j_4 = shape;
            }
            gapComposer.endDefaults();
            int ordinal = bannerInlineNotificationCardBehaviour.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                i4 = Integer.MAX_VALUE;
            }
            ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            BannerInlineNotificationCard(Expect_jvmKt.rememberComposableLambda(-297720834, new TextKt$$ExternalSyntheticLambda0(i4, 9, charSequence, bannerInlineNotificationCardBehaviour), gapComposer), Expect_jvmKt.rememberComposableLambda(-1630520035, new AlertDialogKt$$ExternalSyntheticLambda3(charSequence2, bannerInlineNotificationCardBehaviour, i4, function1), gapComposer), composableLambdaImpl3, modifier2, cardColors, borderStroke2, m264RoundedCornerShape0680j_4, gapComposer, (i3 & 3670016) | (i3 & 14) | 432 | (i3 & 7168) | (57344 & i3) | (458752 & i3));
            shape2 = m264RoundedCornerShape0680j_4;
        } else {
            gapComposer.skipToGroupEnd();
            shape2 = shape;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda2(charSequence, charSequence2, composableLambdaImpl, modifier, cardColors, borderStroke, shape2, bannerInlineNotificationCardBehaviour, function1, i);
        }
    }

    public static final void BannerInlineNotificationSupportingText(CharSequence charSequence, BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour, int i, Modifier modifier, Function1 function1, Composer composer, int i2) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1162077242);
        int i3 = i2 | (gapComposer.changed(charSequence) ? 4 : 2) | (gapComposer.changed(bannerInlineNotificationCardBehaviour.ordinal()) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | 3072 | (gapComposer.changedInstance(function1) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            boolean z = ((i3 & 14) == 4) | ((i3 & 112) == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = (WhenMappings.$EnumSwitchMapping$0[bannerInlineNotificationCardBehaviour.ordinal()] != 1 || charSequence.length() <= 200) ? charSequence : charSequence.subSequence(0, 200);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CharSequence charSequence2 = (CharSequence) rememberedValue;
            boolean z2 = (57344 & i3) == 16384;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(6, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function1 function12 = (Function1) rememberedValue2;
            boolean z3 = charSequence2 instanceof String;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (z3) {
                gapComposer.startReplaceGroup(2007548780);
                Data.Companion.m825TextBodyMediumZHfKjFs((String) charSequence2, companion, 0L, 2, i, function12, gapComposer, 24624 | ((i3 << 9) & 458752), 12);
                gapComposer.end(false);
            } else if (charSequence2 instanceof AnnotatedString) {
                gapComposer.startReplaceGroup(2007798764);
                Data.Companion.m824TextBodyMediumZHfKjFs((AnnotatedString) charSequence2, companion, 0L, 2, i, function12, gapComposer, 24624 | ((i3 << 9) & 458752), 12);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(2008035201);
                Data.Companion.m825TextBodyMediumZHfKjFs(charSequence2.toString(), companion, 0L, 2, i, function12, gapComposer, 24624 | ((i3 << 9) & 458752), 12);
                gapComposer.end(false);
            }
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(charSequence, bannerInlineNotificationCardBehaviour, i, modifier2, function1, i2, 6);
        }
    }

    public static final void BannerInlineNotificationTitle(CharSequence charSequence, BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour, int i, Modifier modifier, Composer composer, int i2) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1970283019);
        int i3 = i2 | (gapComposer.changed(charSequence) ? 4 : 2) | (gapComposer.changed(bannerInlineNotificationCardBehaviour.ordinal()) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            boolean z = ((i3 & 14) == 4) | ((i3 & 112) == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = (WhenMappings.$EnumSwitchMapping$0[bannerInlineNotificationCardBehaviour.ordinal()] != 1 || charSequence.length() <= 100) ? charSequence : charSequence.subSequence(0, 100);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CharSequence charSequence2 = (CharSequence) rememberedValue;
            boolean z2 = charSequence2 instanceof String;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (z2) {
                gapComposer.startReplaceGroup(1678870029);
                RelationUtil.m809TextTitleSmallXl4FiYE((String) charSequence2, companion, 0L, 2, i, gapComposer, 24624 | ((i3 << 9) & 458752), 12);
                gapComposer.end(false);
            } else if (charSequence2 instanceof AnnotatedString) {
                gapComposer.startReplaceGroup(1679070413);
                RelationUtil.m808TextTitleSmallXl4FiYE((AnnotatedString) charSequence2, companion, 0L, 2, i, gapComposer, 24624 | ((i3 << 9) & 458752), 12);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1679257250);
                RelationUtil.m809TextTitleSmallXl4FiYE(charSequence2.toString(), companion, 0L, 2, i, gapComposer, 24624 | ((i3 << 9) & 458752), 12);
                gapComposer.end(false);
            }
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(charSequence, bannerInlineNotificationCardBehaviour, i, modifier2, i2, 16);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ErrorBannerInlineNotificationCard(java.lang.CharSequence r19, java.lang.CharSequence r20, androidx.compose.runtime.internal.ComposableLambdaImpl r21, androidx.compose.ui.Modifier r22, app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour r23, kotlin.jvm.functions.Function1 r24, androidx.compose.runtime.Composer r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt.ErrorBannerInlineNotificationCard(java.lang.CharSequence, java.lang.CharSequence, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.ui.Modifier, app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void BannerInlineNotificationCard(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, Modifier modifier, CardColors cardColors, BorderStroke borderStroke, Shape shape, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1809574216);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(f20lambda$549760761) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl3) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(modifier) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= (262144 & i) == 0 ? gapComposer.changed(cardColors) : gapComposer.changedInstance(cardColors) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i2 |= gapComposer.changed(borderStroke) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changed(shape) ? 8388608 : 4194304;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (4793491 & i3) != 4793490)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            SchemaInfoUtilKt.CardOutlined(modifier, null, shape, cardColors, null, borderStroke, Expect_jvmKt.rememberComposableLambda(90947379, new TextFieldCursorKt$$ExternalSyntheticLambda0(cardColors, composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3, 4), gapComposer), gapComposer, ((i3 >> 12) & 14) | 1572864 | ((i3 >> 15) & 896) | ((i3 >> 6) & 7168) | ((i3 >> 3) & 458752), 18);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3, modifier, cardColors, borderStroke, shape, i, 2);
        }
    }
}
