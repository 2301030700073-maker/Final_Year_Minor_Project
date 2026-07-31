package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1;
import androidx.core.content.res.ResourcesCompat;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.fsck.k9.R;
import java.util.Comparator;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessageListLoaderKt {

    /* renamed from: lambda$-2052971648, reason: not valid java name */
    public static final ComposableLambdaImpl f32lambda$2052971648 = new ComposableLambdaImpl(-2052971648, new WelcomeContentKt$$ExternalSyntheticLambda9(21), false);

    public static final void SecondarySortOptions(boolean z, ImmutableSet immutableSet, Function1 function1, Function1 function12, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        Modifier.Companion companion;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1861834525);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(immutableSet) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function12) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            if (z) {
                gapComposer.startReplaceGroup(704932273);
                FlowRowOverflow flowRowOverflow = OffsetKt.Top;
                BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer, 0);
                long j = gapComposer.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion2);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i3);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                String stringResource = Operation$State.stringResource(gapComposer, R.string.sort_by_then_by);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                SortTypeDivider(stringResource, OffsetKt.m222paddingqDBjuR0$default(companion2, 8.0f, 0.0f, 0.0f, 0.0f, 14), gapComposer, 0, 0);
                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer, 0);
                long j2 = gapComposer.compositeKeyHashCode;
                int i4 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion2);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                gapComposer.startReplaceGroup(-1301243986);
                Iterator<E> it = immutableSet.iterator();
                while (it.hasNext()) {
                    SortType sortType = (SortType) it.next();
                    boolean booleanValue = ((Boolean) function1.invoke(sortType)).booleanValue();
                    boolean changed = ((i2 & 7168) == 2048) | gapComposer.changed(sortType.ordinal());
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new MessageListFragmentKt$$ExternalSyntheticLambda0(function12, sortType, 1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    SortTypeMenuItem(sortType, booleanValue, function0, null, new PaddingValuesImpl(24.0f, 8.0f, 16.0f, 8.0f), gapComposer, 0, 8);
                    companion2 = companion2;
                }
                companion = companion2;
                gapComposer.end(false);
                gapComposer.end(true);
                gapComposer.end(true);
                gapComposer.end(false);
            } else {
                companion = companion2;
                gapComposer.startReplaceGroup(705812549);
                gapComposer.end(false);
            }
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(z, immutableSet, function1, function12, modifier2, i);
        }
    }

    public static final void SortTypeDivider(String str, Modifier modifier, Composer composer, int i, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifier2;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-18790077);
        int i4 = i | (gapComposer2.changed(str) ? 4 : 2);
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 = i4 | 48;
        } else {
            i3 = i4 | (gapComposer2.changed(modifier) ? 32 : 16);
        }
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            Modifier modifier3 = i5 != 0 ? Modifier.Companion.$$INSTANCE : modifier;
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(modifier3, 8.0f, 0.0f, 2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m220paddingVpY3zN4$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m380setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            SQLite.m815TextLabelMediumXl4FiYE(str, null, 0L, 0, 0, gapComposer2, i3 & 14, 62);
            ActionBar.m0DividerHorizontal9IZ8Weo(null, 0.0f, 0L, gapComposer2, 0, 7);
            gapComposer = gapComposer2;
            gapComposer.end(true);
            modifier2 = modifier3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda6(str, modifier2, i, i2, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r24v0, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    public static final void SortTypeList(SortCriteria sortCriteria, ImmutableSet immutableSet, Function1 function1, Function1 function12, Modifier modifier, ImmutableSet immutableSet2, Function1 function13, Composer composer, int i) {
        Modifier modifier2;
        Modifier then;
        SortCriteria sortCriteria2 = sortCriteria;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-874212127);
        ImmutableSet immutableSet3 = immutableSet2;
        int i2 = i | (gapComposer.changed(sortCriteria2) ? 4 : 2) | (gapComposer.changed(immutableSet) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function12) ? 2048 : 1024) | 24576 | (gapComposer.changed(immutableSet3) ? 131072 : 65536) | (gapComposer.changedInstance(function13) ? 1048576 : 524288);
        boolean z = 0;
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            IntrinsicSize intrinsicSize = IntrinsicSize.Min;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            then = SizeKt.m240widthInVpY3zN4$default(OffsetKt.width(companion, intrinsicSize), 200.0f, 0.0f, 2).then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, r10, r10.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(ImageKt.rememberScrollState(gapComposer)));
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TweenSpec tweenSpec = null;
            SortTypeDivider(Operation$State.stringResource(gapComposer, R.string.sort_by), null, gapComposer, 0, 2);
            gapComposer.startReplaceGroup(-624908927);
            Iterator it = immutableSet.iterator();
            while (it.hasNext()) {
                SortType sortType = (SortType) it.next();
                boolean booleanValue = ((Boolean) function1.invoke(sortType)).booleanValue();
                boolean changed = ((i2 & 7168) == 2048 ? true : z) | gapComposer.changed(sortType.ordinal());
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new MessageListFragmentKt$$ExternalSyntheticLambda0(function12, sortType, z);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Modifier.Companion companion2 = companion;
                TweenSpec tweenSpec2 = tweenSpec;
                SortTypeMenuItem(sortType, booleanValue, (Function0) rememberedValue, null, null, gapComposer, 0, 24);
                SortCriteria sortCriteria3 = sortCriteria2;
                boolean z2 = sortCriteria2.isSecondarySortRequired && ((Boolean) function1.invoke(sortType)).booleanValue();
                GapComposer gapComposer2 = gapComposer;
                CrossfadeKt.AnimatedVisibility(z2, null, EnterExitTransitionKt.fadeIn$default(tweenSpec2, 3).plus(EnterExitTransitionKt.expandVertically$default(13)), EnterExitTransitionKt.fadeOut$default(tweenSpec2, 3).plus(EnterExitTransitionKt.shrinkVertically$default(tweenSpec2, 13)), null, Expect_jvmKt.rememberComposableLambda(1484991532, new MessageListFragmentKt$$ExternalSyntheticLambda1(z2, immutableSet3, sortCriteria3, function13, 0), gapComposer), gapComposer2, 1600518, 18);
                sortCriteria2 = sortCriteria;
                immutableSet3 = immutableSet2;
                gapComposer = gapComposer2;
                companion = companion2;
                i2 = i2;
                tweenSpec = tweenSpec2;
                z = 0;
            }
            gapComposer.end(z);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda2(sortCriteria, immutableSet, (Function1) function1, function12, modifier2, immutableSet2, function13, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SortTypeMenuItem(net.thunderbird.feature.mail.message.list.domain.model.SortType r13, boolean r14, kotlin.jvm.functions.Function0 r15, androidx.compose.ui.Modifier r16, androidx.compose.foundation.layout.PaddingValues r17, androidx.compose.runtime.Composer r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messagelist.MessageListLoaderKt.SortTypeMenuItem(net.thunderbird.feature.mail.message.list.domain.model.SortType, boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final Drawable access$loadDrawable(Context context, int i) {
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        Drawable drawable = resources.getDrawable(i, theme);
        drawable.getClass();
        Drawable mutate = drawable.mutate();
        mutate.getClass();
        return mutate;
    }

    public static final Comparator access$thenByDate(Comparator comparator, MessageListConfig messageListConfig) {
        return messageListConfig.sortDateAscending ? new SemanticsSortKt$special$$inlined$thenBy$1(comparator, 3) : new SemanticsSortKt$special$$inlined$thenBy$1(comparator, 4);
    }
}
