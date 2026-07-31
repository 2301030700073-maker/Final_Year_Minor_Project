package net.thunderbird.feature.mail.message.list.ui.component.molecule;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.vector.PathParserKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import app.k9mail.core.ui.compose.designsystem.atom.image.RemoteImageKt;
import app.k9mail.core.ui.compose.designsystem.template.ResponsiveContentKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda1;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.uuid.UuidKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import net.thunderbird.core.ui.common.window.WindowWidthSizeClass;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeShapes;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageSublineConfiguration;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageSublineLeadingIndicator;
import net.thunderbird.feature.mail.message.list.ui.state.Avatar;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressStyle;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;
import okio.Okio;
import org.jsoup.Jsoup;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessageBodyContentKt {
    public static final ComposableLambdaImpl lambda$868848991 = new ComposableLambdaImpl(868848991, new WelcomeContentKt$$ExternalSyntheticLambda9(26), false);
    public static final ComposableLambdaImpl lambda$1587790113 = new ComposableLambdaImpl(1587790113, new WelcomeContentKt$$ExternalSyntheticLambda9(27), false);

    /* renamed from: AccountIndicatorIcon-3J-VO9M, reason: not valid java name */
    public static final void m1037AccountIndicatorIcon3JVO9M(int i, long j, Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1715109495);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            UuidKt.m1007ColorChipZij2fk(((i2 << 9) & 7168) | 432, j, gapComposer, OffsetKt.m222paddingqDBjuR0$default(companion, 0.0f, 0.0f, 4.0f, 0.0f, 11));
            modifier = companion;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1(j, modifier, i);
        }
    }

    public static final void AdaptiveMessageItemHeaderRow(int i, Composer composer, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, String str, MessageItemConfiguration messageItemConfiguration) {
        messageItemConfiguration.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(791863646);
        int i2 = (gapComposer.changed(messageItemConfiguration) ? 4 : 2) | i | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            boolean z = Jsoup.calculateWindowSizeInfo(gapComposer).sizeClass.widthSizeClass == WindowWidthSizeClass.Small;
            MessageItemAccountIndicator messageItemAccountIndicator = messageItemConfiguration.accountIndicator;
            int i3 = i2 << 3;
            boolean changed = ((((i3 & 7168) ^ 3072) > 2048 && gapComposer.changed(composableLambdaImpl)) || (i3 & 3072) == 2048) | ((((i3 & 896) ^ 384) > 256 && gapComposer.changed(str)) || (i3 & 384) == 256) | gapComposer.changed(z) | gapComposer.changed(messageItemAccountIndicator);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ComposableLambdaImpl(1032736913, new MovableContentKt$$ExternalSyntheticLambda0(0, new MovableContent(new ComposableLambdaImpl(-493170509, new MessageListFragmentKt$$ExternalSyntheticLambda1(z, str, messageItemAccountIndicator, composableLambdaImpl, 2), true))), true);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function3 function3 = (Function3) rememberedValue;
            if (z) {
                gapComposer.startReplaceGroup(-1844866473);
                HeaderRowSmall(function3, gapComposer, 6);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1844784292);
                HeaderRow(function3, gapComposer, 6);
                gapComposer.end(false);
            }
            modifier = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageBodyContentKt$$ExternalSyntheticLambda0(messageItemConfiguration, str, composableLambdaImpl, modifier2, i);
        }
    }

    public static final void HeaderRow(Function3 function3, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-887687894);
        int i3 = i & 6;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i3 == 0) {
            i2 = (gapComposer.changed(companion) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
            Modifier width = OffsetKt.width(SizeKt.m225defaultMinSizeVpY3zN4$default(companion, 0.0f, 20.0f, 1).then(SizeKt.FillWholeMaxWidth), IntrinsicSize.Max);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, Alignment.Companion.Top, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, width);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            function3.invoke(RowScopeInstance.INSTANCE, gapComposer, Integer.valueOf((i2 & 112) | 6));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2(function3, i, 1);
        }
    }

    public static final void HeaderRowSmall(Function3 function3, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1233649791);
        int i3 = i & 6;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i3 == 0) {
            i2 = (gapComposer.changed(companion) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            OffsetKt.FlowRow(SizeKt.m225defaultMinSizeVpY3zN4$default(companion, 0.0f, 20.0f, 1), OffsetKt.f7Start, new Arrangement$SpacedAligned(2.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), null, 0, 2, Expect_jvmKt.rememberComposableLambda(-2085347610, new MovableContentKt$$ExternalSyntheticLambda0(15, function3), gapComposer), gapComposer, 1769520, 24);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2(function3, i, 0);
        }
    }

    public static final void MessageBodyContent(int i, Composer composer, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, String str, MessageItemConfiguration messageItemConfiguration) {
        Modifier modifier2;
        Pair pair;
        Modifier.Companion companion;
        messageItemConfiguration.getClass();
        MessageSublineConfiguration messageSublineConfiguration = messageItemConfiguration.excerptLineConfiguration;
        int i2 = messageItemConfiguration.maxExcerptLines;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1917847622);
        int i3 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(messageItemConfiguration) ? 32 : 16) | 384 | (gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion2);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            int i5 = i3 >> 3;
            if (i2 == 0) {
                gapComposer.startReplaceGroup(967016812);
                MessageSublineConfiguration messageSublineConfiguration2 = messageItemConfiguration.secondaryLineConfiguration;
                pair = new Pair(rememberPrefixAnnotatedString(messageSublineConfiguration2, gapComposer), rememberInlineContent(messageSublineConfiguration2, gapComposer));
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(967212143);
                gapComposer.end(false);
                PersistentOrderedMap persistentOrderedMap = PersistentOrderedMap.EMPTY;
                persistentOrderedMap.getClass();
                pair = new Pair(null, persistentOrderedMap);
            }
            composableLambdaImpl.invoke((AnnotatedString) pair.first, (PersistentMap) pair.second, gapComposer, Integer.valueOf(i5 & 896));
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings), companion2, 4.0f, gapComposer);
            if (i2 > 0) {
                gapComposer.startReplaceGroup(1657673440);
                PersistentMap rememberInlineContent = rememberInlineContent(messageSublineConfiguration, gapComposer);
                AnnotatedString rememberPrefixAnnotatedString = rememberPrefixAnnotatedString(messageSublineConfiguration, gapComposer);
                AnnotatedString.Builder builder = new AnnotatedString.Builder();
                builder.append(rememberPrefixAnnotatedString);
                builder.append(str);
                companion = companion2;
                MathKt.m985TextBodySmallZHfKjFs(builder.toAnnotatedString(), null, 0L, null, 2, messageItemConfiguration.maxExcerptLines, rememberInlineContent, gapComposer, 24576, 14);
                gapComposer.end(false);
            } else {
                companion = companion2;
                gapComposer.startReplaceGroup(1658213522);
                gapComposer.end(false);
            }
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageBodyContentKt$$ExternalSyntheticLambda0(str, messageItemConfiguration, modifier2, composableLambdaImpl, i);
        }
    }

    public static final void MessageConversationCounterBadge(int i, MessageConversationCounterBadgeColor messageConversationCounterBadgeColor, Modifier modifier, int i2, Composer composer, int i3) {
        Modifier modifier2;
        int i4;
        long j = messageConversationCounterBadgeColor.containerColor;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-214757672);
        int i5 = i3 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changed(messageConversationCounterBadgeColor) ? 32 : 16) | 3456;
        if (gapComposer.shouldExecute(i5 & 1, (i5 & 1171) != 1170)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeShapesKt.LocalThemeShapes;
            RoundedCornerShape roundedCornerShape = ((ThemeShapes) gapComposer.consume(staticProvidableCompositionLocal)).large;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m132backgroundbw27NRU = ImageKt.m132backgroundbw27NRU(companion, j, roundedCornerShape);
            Color color = messageConversationCounterBadgeColor.borderColor;
            if (color != null) {
                j = color.value;
            }
            Modifier m133borderxT4_qwU = ImageKt.m133borderxT4_qwU(m132backgroundbw27NRU, 1.0f, j, ((ThemeShapes) gapComposer.consume(staticProvidableCompositionLocal)).large);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m219paddingVpY3zN4 = OffsetKt.m219paddingVpY3zN4(m133borderxT4_qwU, 4.0f, 3.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m219paddingVpY3zN4);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Normal, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
            try {
                builder.append(String.valueOf(i > 99 ? 99 : i));
                if (i > 99) {
                    builder.append("+");
                }
                builder.pop(pushStyle);
                Util.m1092TextLabelSmallXl4FiYE(builder.toAnnotatedString(), null, messageConversationCounterBadgeColor.contentColor, 0, 0, gapComposer, 0);
                gapComposer.end(true);
                i4 = 99;
                modifier2 = companion;
            } catch (Throwable th) {
                builder.pop(pushStyle);
                throw th;
            }
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            i4 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda0(i, messageConversationCounterBadgeColor, modifier2, i4, i3);
        }
    }

    public static final void MessageItemAvatarCircle(Avatar avatar, MessageItemAvatarCircleColors messageItemAvatarCircleColors, Function0 function0, Modifier modifier, boolean z, Composer composer, int i) {
        Modifier modifier2;
        boolean z2;
        avatar.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(169653464);
        int i2 = i | (gapComposer.changed(avatar) ? 4 : 2) | (gapComposer.changed(messageItemAvatarCircleColors) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | 27648;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m138combinedClickablehoGz1lA$default = ImageKt.m138combinedClickablehoGz1lA$default(ClipKt.clip(companion, roundedCornerShape), null, function0, 254);
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(m138combinedClickablehoGz1lA$default, 48.0f);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m133borderxT4_qwU = ImageKt.m133borderxT4_qwU(ImageKt.m132backgroundbw27NRU(OffsetKt.m218padding3ABfNKs(m234size3ABfNKs, 4.0f), messageItemAvatarCircleColors.containerColor, roundedCornerShape), 1.0f, messageItemAvatarCircleColors.borderColor, roundedCornerShape);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m133borderxT4_qwU);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (avatar instanceof Avatar.Monogram) {
                gapComposer.startReplaceGroup(-258596747);
                RelationUtil.m809TextTitleSmallXl4FiYE(((Avatar.Monogram) avatar).value, (Modifier) null, 0L, 0, 0, gapComposer, 0, 62);
                gapComposer.end(false);
            } else {
                if (!(avatar instanceof Avatar.Image)) {
                    throw ViewSizeResolver.CC.m(gapComposer, -258603220, false);
                }
                gapComposer.startReplaceGroup(573511232);
                RemoteImageKt.RemoteImage(((Avatar.Image) avatar).url, ClipKt.clip(companion, roundedCornerShape), lambda$1587790113, null, null, PathParserKt.rememberVectorPainter(Icons$Outlined.AccountCircle, gapComposer), gapComposer, 2097536, 56);
                gapComposer.end(false);
            }
            gapComposer.end(true);
            z2 = true;
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(avatar, messageItemAvatarCircleColors, function0, modifier2, z2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void MessageItemSenderSubjectFirstLine(net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi r16, androidx.compose.ui.text.AnnotatedString r17, boolean r18, androidx.compose.ui.Modifier r19, boolean r20, androidx.compose.runtime.Composer r21, int r22, int r23) {
        /*
            r6 = r22
            r16.getClass()
            r13 = r21
            androidx.compose.runtime.GapComposer r13 = (androidx.compose.runtime.GapComposer) r13
            r0 = -457343672(0xffffffffe4bd7d48, float:-2.7963697E22)
            r13.startRestartGroup(r0)
            r8 = r16
            boolean r0 = r13.changed(r8)
            if (r0 == 0) goto L19
            r0 = 4
            goto L1a
        L19:
            r0 = 2
        L1a:
            r0 = r0 | r6
            r9 = r17
            boolean r1 = r13.changed(r9)
            if (r1 == 0) goto L26
            r1 = 32
            goto L28
        L26:
            r1 = 16
        L28:
            r0 = r0 | r1
            r3 = r18
            boolean r1 = r13.changed(r3)
            if (r1 == 0) goto L34
            r1 = 256(0x100, float:3.59E-43)
            goto L36
        L34:
            r1 = 128(0x80, float:1.8E-43)
        L36:
            r0 = r0 | r1
            r1 = r0 | 3072(0xc00, float:4.305E-42)
            r2 = r23 & 16
            if (r2 == 0) goto L42
            r1 = r0 | 27648(0x6c00, float:3.8743E-41)
        L3f:
            r0 = r20
            goto L54
        L42:
            r0 = r6 & 24576(0x6000, float:3.4438E-41)
            if (r0 != 0) goto L3f
            r0 = r20
            boolean r4 = r13.changed(r0)
            if (r4 == 0) goto L51
            r4 = 16384(0x4000, float:2.2959E-41)
            goto L53
        L51:
            r4 = 8192(0x2000, float:1.148E-41)
        L53:
            r1 = r1 | r4
        L54:
            r4 = r1 & 9363(0x2493, float:1.312E-41)
            r5 = 9362(0x2492, float:1.3119E-41)
            r7 = 0
            r10 = 1
            if (r4 == r5) goto L5e
            r4 = r10
            goto L5f
        L5e:
            r4 = r7
        L5f:
            r1 = r1 & r10
            boolean r1 = r13.shouldExecute(r1, r4)
            if (r1 == 0) goto L85
            if (r2 == 0) goto L6a
            r11 = r7
            goto L6b
        L6a:
            r11 = r0
        L6b:
            r10 = 0
            r12 = 0
            r7 = r3
            androidx.compose.ui.text.AnnotatedString r0 = styledSenderOrSubject(r7, r8, r9, r10, r11, r12)
            r1 = r11
            r14 = 221232(0x36030, float:3.10012E-40)
            r15 = 12
            androidx.compose.ui.Modifier$Companion r8 = androidx.compose.ui.Modifier.Companion.$$INSTANCE
            r9 = 0
            r11 = 2
            r12 = 1
            r7 = r0
            androidx.room.util.RelationUtil.m808TextTitleSmallXl4FiYE(r7, r8, r9, r11, r12, r13, r14, r15)
            r5 = r1
            r4 = r8
            goto L8b
        L85:
            r13.skipToGroupEnd()
            r4 = r19
            r5 = r0
        L8b:
            androidx.compose.runtime.RecomposeScopeImpl r8 = r13.endRestartGroup()
            if (r8 == 0) goto La0
            app.k9mail.core.ui.compose.designsystem.atom.button.RadioButtonKt$$ExternalSyntheticLambda2 r0 = new app.k9mail.core.ui.compose.designsystem.atom.button.RadioButtonKt$$ExternalSyntheticLambda2
            r1 = r16
            r2 = r17
            r3 = r18
            r7 = r23
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r8.block = r0
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt.MessageItemSenderSubjectFirstLine(net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi, androidx.compose.ui.text.AnnotatedString, boolean, androidx.compose.ui.Modifier, boolean, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void MessageItemSenderSubjectSecondLine(ComposedAddressUi composedAddressUi, AnnotatedString annotatedString, boolean z, Modifier modifier, AnnotatedString annotatedString2, PersistentMap persistentMap, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        Modifier modifier2;
        composedAddressUi.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(882185897);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(composedAddressUi) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(annotatedString) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(z) ? 256 : 128;
        }
        int i3 = i2 | 3072;
        if ((i & 24576) == 0) {
            i3 |= gapComposer2.changed(annotatedString2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer2.changed(persistentMap) ? 131072 : 65536;
        }
        if (gapComposer2.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            gapComposer = gapComposer2;
            MathKt.m985TextBodySmallZHfKjFs(styledSenderOrSubject(z, composedAddressUi, annotatedString, annotatedString2, false, 16), companion, 0L, null, 2, 1, persistentMap, gapComposer, ((i3 >> 6) & 112) | 221184 | ((i3 << 3) & 3670016), 12);
            modifier2 = companion;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(composedAddressUi, annotatedString, z, modifier2, annotatedString2, persistentMap, i);
        }
    }

    public static final PersistentMap rememberInlineContent(MessageSublineConfiguration messageSublineConfiguration, Composer composer) {
        Pair pair;
        GapComposer gapComposer = (GapComposer) composer;
        long j = ((ThemeTypography) gapComposer.consume(ThemeTypographyKt.LocalThemeTypography)).bodySmall.spanStyle.fontSize;
        Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        long mo179toSp0xMU5do = density.mo179toSp0xMU5do(density.mo172toDpGaN1DYA(j) + 6.0f);
        boolean changed = gapComposer.changed(messageSublineConfiguration);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            ImmutableList<MessageSublineLeadingIndicator> immutableList = messageSublineConfiguration.leadingItems;
            int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(immutableList, 10));
            if (mapCapacity < 16) {
                mapCapacity = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
            for (MessageSublineLeadingIndicator messageSublineLeadingIndicator : immutableList) {
                if (messageSublineLeadingIndicator instanceof MessageSublineLeadingIndicator.AttachmentIcon) {
                    pair = new Pair("attachment_icon_inline_composable_id", new InlineTextContent(new Placeholder(SQLite.getSp(16), SQLite.getSp(16)), lambda$868848991));
                } else {
                    if (!(messageSublineLeadingIndicator instanceof MessageSublineLeadingIndicator.ConversationCounterBadge)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    MessageSublineLeadingIndicator.ConversationCounterBadge conversationCounterBadge = (MessageSublineLeadingIndicator.ConversationCounterBadge) messageSublineLeadingIndicator;
                    int i = conversationCounterBadge.count;
                    pair = new Pair("conversation_counter_inline_composable_id", new InlineTextContent(new Placeholder((1 > i || i >= 10) ? (10 > i || i >= 100) ? SQLite.getSp(28) : SQLite.getSp(22) : SQLite.getSp(14), mo179toSp0xMU5do), new ComposableLambdaImpl(248124808, new MovableContentKt$$ExternalSyntheticLambda0(16, conversationCounterBadge), true)));
                }
                linkedHashMap.put(pair.first, pair.second);
            }
            rememberedValue = Okio.toImmutableMap(linkedHashMap);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (PersistentMap) rememberedValue;
    }

    public static final AnnotatedString rememberPrefixAnnotatedString(MessageSublineConfiguration messageSublineConfiguration, Composer composer) {
        boolean changed = ((GapComposer) composer).changed(messageSublineConfiguration);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            for (MessageSublineLeadingIndicator messageSublineLeadingIndicator : messageSublineConfiguration.leadingItems) {
                if (messageSublineLeadingIndicator instanceof MessageSublineLeadingIndicator.AttachmentIcon) {
                    BasicTextKt.appendInlineContent(builder, "attachment_icon_inline_composable_id", "[attachment_icon]");
                    builder.append(" ");
                } else {
                    if (!(messageSublineLeadingIndicator instanceof MessageSublineLeadingIndicator.ConversationCounterBadge)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    BasicTextKt.appendInlineContent(builder, "conversation_counter_inline_composable_id", "[conversation_counter]");
                    builder.append(" ");
                }
            }
            rememberedValue = builder.toAnnotatedString();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (AnnotatedString) rememberedValue;
    }

    public static final AnnotatedString styledSenderOrSubject(boolean z, ComposedAddressUi composedAddressUi, AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z2, int i) {
        boolean z3 = (i & 16) != 0 ? false : z2;
        AnnotatedString.Builder builder = new AnnotatedString.Builder();
        if (annotatedString2 != null) {
            builder.append(annotatedString2);
        }
        CharSequence charSequence = z ? composedAddressUi.displayName : annotatedString;
        if (charSequence instanceof AnnotatedString) {
            builder.append((AnnotatedString) charSequence);
        } else {
            builder.text.append(charSequence);
        }
        if (z3) {
            builder.addStyle(new SpanStyle(0L, 0L, FontWeight.Normal, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531), 0, charSequence.length());
        } else if (z) {
            for (ComposedAddressStyle composedAddressStyle : composedAddressUi.displayNameStyles) {
                ComposedAddressStyle.Companion.getClass();
                if (Intrinsics.areEqual(composedAddressStyle, ComposedAddressStyle.Companion.AllBold)) {
                    builder.addStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531), 0, charSequence.length());
                } else if (composedAddressStyle instanceof ComposedAddressStyle.Bold) {
                    SpanStyle spanStyle = new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531);
                    Integer num = ((ComposedAddressStyle.Bold) composedAddressStyle).end;
                    builder.addStyle(spanStyle, 0, num != null ? num.intValue() : charSequence.length());
                } else {
                    if (!(composedAddressStyle instanceof ComposedAddressStyle.Regular)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    builder.addStyle(new SpanStyle(0L, 0L, FontWeight.Normal, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531), ((ComposedAddressStyle.Regular) composedAddressStyle).start, charSequence.length());
                }
            }
        }
        return builder.toAnnotatedString();
    }
}
