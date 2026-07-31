package androidx.compose.material3;

import androidx.compose.animation.ChangeSize;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.Fade;
import androidx.compose.animation.Scale;
import androidx.compose.animation.Slide;
import androidx.compose.animation.TransitionData;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SegmentedButtonDefaults {
    public static final SegmentedButtonDefaults INSTANCE = new SegmentedButtonDefaults();
    public static final float BorderWidth = ListTokens.OutlineWidth$1;
    public static final float IconSize = ListTokens.IconSize;
    public static final PaddingValuesImpl ContentPadding = ButtonDefaults.TextButtonContentPadding;

    public final void ActiveIcon(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1273041460);
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            ImageVector imageVector = Icons$Filled._check;
            if (imageVector == null) {
                ImageVector.Builder builder = new ImageVector.Builder("Filled.Check", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 224);
                int i2 = VectorKt.$r8$clinit;
                SolidColor solidColor = new SolidColor(Color.Black);
                ArrayList arrayList = new ArrayList(32);
                arrayList.add(new PathNode.MoveTo(9.0f, 16.17f));
                arrayList.add(new PathNode.LineTo(4.83f, 12.0f));
                arrayList.add(new PathNode.RelativeLineTo(-1.42f, 1.41f));
                arrayList.add(new PathNode.LineTo(9.0f, 19.0f));
                arrayList.add(new PathNode.LineTo(21.0f, 7.0f));
                arrayList.add(new PathNode.RelativeLineTo(-1.41f, -1.41f));
                arrayList.add(PathNode.Close.INSTANCE);
                builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", arrayList);
                imageVector = builder.build();
                Icons$Filled._check = imageVector;
            }
            IconKt.m345Iconww6aTOc(imageVector, null, SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, IconSize), 0L, gapComposer, 48, 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 14, this);
        }
    }

    public final void Icon(boolean z, Function2 function2, Composer composer, int i) {
        Function2 function22;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-657462570);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | 432;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SegmentedButtonKt.lambda$1863131183;
            gapComposer.startReplaceGroup(-1416314439);
            CrossfadeKt.AnimatedVisibility(z, null, EnterExitTransitionKt.fadeIn$default(CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer), 2).plus(new EnterTransitionImpl(new TransitionData((Fade) null, (Slide) null, (ChangeSize) null, new Scale(0.0f, ColorKt.TransformOrigin(0.0f, 1.0f), CardKt.value(MotionSchemeKeyTokens.FastSpatial, gapComposer)), (LinkedHashMap) null, 119))), ExitTransitionImpl.None, null, Expect_jvmKt.rememberComposableLambda(2059591811, new SegmentedButtonDefaults$Icon$1(0), gapComposer), gapComposer, (i2 & 14) | 196608);
            gapComposer.end(false);
            function22 = composableLambdaImpl;
        } else {
            gapComposer.skipToGroupEnd();
            function22 = function2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda3(i, 2, this, function22, z);
        }
    }
}
