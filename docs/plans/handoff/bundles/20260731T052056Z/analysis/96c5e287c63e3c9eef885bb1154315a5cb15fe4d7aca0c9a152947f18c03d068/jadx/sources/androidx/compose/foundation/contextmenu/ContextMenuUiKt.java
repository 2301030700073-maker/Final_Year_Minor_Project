package androidx.compose.foundation.contextmenu;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.IconButtonKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ContextMenuUiKt {
    public static final ContextMenuColors DefaultContextMenuColors;

    static {
        long Color;
        long Color2;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidPopup_androidKt.LocalPopupTestTag;
        long j = Color.White;
        long j2 = Color.Black;
        Color = ColorKt.Color(Color.m433getRedimpl(j2), Color.m432getGreenimpl(j2), Color.m430getBlueimpl(j2), 0.38f, Color.m431getColorSpaceimpl(j2));
        Color2 = ColorKt.Color(Color.m433getRedimpl(j2), Color.m432getGreenimpl(j2), Color.m430getBlueimpl(j2), 0.38f, Color.m431getColorSpaceimpl(j2));
        DefaultContextMenuColors = new ContextMenuColors(j, j2, j2, Color, Color2);
    }

    public static final void ContextMenuColumn(ContextMenuColors contextMenuColors, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-527864079);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(contextMenuColors) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            BiasAlignment.Vertical vertical = ContextMenuSpec.LabelVerticalTextAlignment;
            Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(OffsetKt.width(ImageKt.m46backgroundbw27NRU(ClipKt.m354shadows4CzXII$default(modifier, 3.0f, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f), 28), contextMenuColors.backgroundColor, ColorKt.RectangleShape), IntrinsicSize.Max), RecyclerView.DECELERATION_RATE, ContextMenuSpec.VerticalPadding, 1), ImageKt.rememberScrollState(gapComposer), true);
            int i3 = (i2 << 3) & 7168;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, scroll$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(ColumnScopeInstance.INSTANCE, gapComposer, Integer.valueOf(((i3 >> 6) & 112) | 6));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) contextMenuColors, (Object) modifier, (Function) composableLambdaImpl, i, 2);
        }
    }

    public static final void ContextMenuColumnBuilder(Modifier modifier, ContextMenuColors contextMenuColors, Function1 function1, GapComposer gapComposer, int i, int i2) {
        int i3;
        int i4;
        gapComposer.startRestartGroup(-625529233);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
        } else {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            i4 = i3 | 48;
        } else {
            i4 = i3 | (gapComposer.changed(contextMenuColors) ? 32 : 16);
        }
        int i7 = i4 | (gapComposer.changedInstance(function1) ? 256 : 128);
        int i8 = 1;
        if (gapComposer.shouldExecute(i7 & 1, (i7 & 147) != 146)) {
            if (i5 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            if (i6 != 0) {
                contextMenuColors = DefaultContextMenuColors;
            }
            ContextMenuColumn(contextMenuColors, modifier, Expect_jvmKt.rememberComposableLambda(-250345048, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(i8, function1, contextMenuColors), gapComposer), gapComposer, ((i7 << 3) & 112) | ((i7 >> 3) & 14) | 384);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        ContextMenuColors contextMenuColors2 = contextMenuColors;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(modifier2, contextMenuColors2, function1, i, i2);
        }
    }

    public static final void ContextMenuItem(String str, boolean z, ContextMenuColors contextMenuColors, Modifier modifier, Function3 function3, Function0 function0, GapComposer gapComposer, int i) {
        int i2;
        Modifier then;
        int i3;
        gapComposer.startRestartGroup(-2001167027);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(contextMenuColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            BiasAlignment.Vertical vertical = ContextMenuSpec.LabelVerticalTextAlignment;
            float f = ContextMenuSpec.HorizontalPadding;
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean z2 = ((i2 & 112) == 32) | ((458752 & i2) == 131072);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z2 || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new ConnectionPoolImpl$$ExternalSyntheticLambda2(z, function0, 1);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m147sizeInqDBjuR0(SizeKt.fillMaxWidth(ImageKt.m51clickableoSLSa3U$default(12, modifier, str, (Function0) rememberedValue, z), 1.0f), 112.0f, 48.0f, 280.0f, 48.0f), f, RecyclerView.DECELERATION_RATE, 2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer, 54);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            if (function3 == null) {
                gapComposer.startReplaceGroup(-1597947094);
                gapComposer.end(false);
                i3 = i2;
            } else {
                gapComposer.startReplaceGroup(-1597947093);
                float f2 = ContextMenuSpec.IconSize;
                then = Modifier.Companion.$$INSTANCE.then(new SizeElement(f2, (r13 & 2) != 0 ? Float.NaN : RecyclerView.DECELERATION_RATE, (r13 & 4) != 0 ? Float.NaN : f2, (r13 & 8) != 0 ? Float.NaN : f2, false));
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j2 = gapComposer.compositeKeyHashCode;
                int i5 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, then);
                gapComposer.startReusableNode();
                i3 = i2;
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                function3.invoke(new Color(z ? contextMenuColors.iconColor : contextMenuColors.disabledIconColor), gapComposer, 0);
                gapComposer.end(true);
                gapComposer.end(false);
            }
            long j3 = z ? contextMenuColors.textColor : contextMenuColors.disabledTextColor;
            BasicTextKt.m180BasicTextRWo7tUw(str, new LayoutWeightElement(1.0f, true), new TextStyle(j3, ContextMenuSpec.FontSize, ContextMenuSpec.FontWeight, null, ContextMenuSpec.LetterSpacing, ContextMenuSpec.LabelHorizontalTextAlignment, ContextMenuSpec.LineHeight, 16613240), null, 0, false, 1, 0, null, gapComposer, (i3 & 14) | 1572864, 952);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new IconButtonKt$$ExternalSyntheticLambda1(str, z, contextMenuColors, modifier, function3, function0, i);
        }
    }
}
