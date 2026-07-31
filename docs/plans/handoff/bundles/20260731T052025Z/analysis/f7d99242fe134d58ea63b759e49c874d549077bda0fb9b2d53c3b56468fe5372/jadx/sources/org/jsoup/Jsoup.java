package org.jsoup;

import android.text.TextUtils;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl$$ExternalSyntheticLambda0;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.TextFieldScrollKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathParserKt;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.DerivedSize;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.platform.LazyWindowInfo;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.AnnotatedString;
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
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.window.DialogProperties;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda2;
import androidx.room.util.DBUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.SQLite;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.image.RemoteImageKt;
import app.k9mail.core.ui.compose.designsystem.atom.image.RemoteImageKt$rememberPreviewPlaceholder$1$1;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.core.ui.compose.designsystem.template.LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda4;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.io.StringReader;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import kotlinx.datetime.internal.format.AlternativesParsingFormatStructure;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.ConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.ConstantFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.NonConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.OptionalFormatStructure;
import kotlinx.datetime.internal.format.SignedFormatStructure;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.common.window.WindowHeightSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeClass;
import net.thunderbird.core.ui.common.window.WindowSizeInfo;
import net.thunderbird.core.ui.common.window.WindowWidthSizeClass;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.designsystem.organism.ModalBottomSheetKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeShapes;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda12;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda14;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda15;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda16;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.changelog.internal.DefaultChangelogNavigation$$ExternalSyntheticLambda0;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.changelog.internal.ReleaseUiModel;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$ViewModel;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContentKt$$ExternalSyntheticLambda5;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.folder.FolderListKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;
import org.koin.compose.KoinApplicationKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Jsoup {
    public static final void AccountLayout(Function0 function0, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(912636109);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
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
            Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(modifier, false, null, function0, 15);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m221paddingqDBjuR0 = OffsetKt.m221paddingqDBjuR0(m136clickableoSLSa3U$default, 24.0f, 8.0f, 16.0f, 8.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m221paddingqDBjuR0);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(fillElement, 64.0f);
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), vertical, gapComposer, 48);
            int i4 = i2;
            long j2 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m226height3ABfNKs);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            composableLambdaImpl.invoke(RowScopeInstance.INSTANCE, gapComposer, Integer.valueOf(((i4 >> 3) & 112) | 6));
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ModalBottomSheetKt$$ExternalSyntheticLambda0(function0, modifier, composableLambdaImpl, i, 1);
        }
    }

    public static final void AccountSelectedView(RowScope rowScope, DisplayAccount displayAccount, Function0 function0, boolean z, Composer composer, int i) {
        int i2;
        DisplayAccount displayAccount2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-381578301);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(rowScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(displayAccount) : gapComposer.changedInstance(displayAccount) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(z) ? 2048 : 1024;
        }
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Modifier weight = rowScope.weight(SizeKt.FillWholeMaxWidth, 1.0f);
            boolean z2 = (i2 & 7168) == 2048;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z2 || rememberedValue == neverEqualPolicy) {
                rememberedValue = new DrawerContentKt$$ExternalSyntheticLambda5(z, i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new KoinModuleKt$$ExternalSyntheticLambda0(21);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            displayAccount2 = displayAccount;
            CrossfadeKt.AnimatedContent(displayAccount2, weight, function1, null, "AccountSelectedContent", (Function1) rememberedValue2, Expect_jvmKt.rememberComposableLambda(710337695, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(6, function0), gapComposer), gapComposer, ((i2 >> 3) & 14) | 1794048, 8);
        } else {
            displayAccount2 = displayAccount;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda0(rowScope, displayAccount2, function0, z, i);
        }
    }

    public static final void AccountSelectionView(RowScope rowScope, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-655216711);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(rowScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            gapComposer.startReplaceGroup(1696935768);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            gapComposer.startReplaceGroup(1696936843);
            int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
            try {
                builder.append(Operation$State.stringResource(gapComposer, R.string.navigation_drawer_dropdown_avount_view_selection_title));
                builder.pop(pushStyle);
                gapComposer.end(false);
                AnnotatedString annotatedString = builder.toAnnotatedString();
                gapComposer.end(false);
                Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(annotatedString, rowScope.weight(SizeKt.FillWholeMaxWidth, 1.0f), 0L, 0, 0, gapComposer, 0, 60);
            } catch (Throwable th) {
                builder.pop(pushStyle);
                throw th;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyListItemProviderImpl$$ExternalSyntheticLambda0(i, 5, rowScope);
        }
    }

    public static final void AccountView(final DisplayAccount displayAccount, Function0 function0, final Function0 function02, final boolean z, final boolean z2, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1634685523);
        int i2 = i | (gapComposer.changed(displayAccount) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | (gapComposer.changed(z) ? 2048 : 1024) | (gapComposer.changed(z2) ? 16384 : 8192) | 196608;
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AccountLayout(function0, companion, Expect_jvmKt.rememberComposableLambda(-739573135, new Function3() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.account.AccountViewKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    RowScope rowScope = (RowScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    rowScope.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= ((GapComposer) composer2).changed(rowScope) ? 4 : 2;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        boolean z3 = z;
                        boolean z4 = z2;
                        if (z3) {
                            gapComposer2.startReplaceGroup(559000835);
                            Jsoup.AccountSelectionView(rowScope, gapComposer2, intValue & 14);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(559056976);
                            Jsoup.AccountSelectedView(rowScope, displayAccount, function02, z4, gapComposer2, intValue & 14);
                            gapComposer2.end(false);
                        }
                        ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        NodeUtils.m1077AnimatedExpandIconxqIIw2o(z3, OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 0.0f, 0.0f, 16.0f, 0.0f, 11), z4, new Color(((ThemeColorScheme) gapComposer2.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurfaceVariant), gapComposer2, 0, 0);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i2 >> 3) & 14) | 432);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FolderListKt$$ExternalSyntheticLambda1(displayAccount, function0, function02, z, z2, modifier2, i);
        }
    }

    public static final void AvatarImage(String str, AvatarSize avatarSize, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        final float f;
        RemoteImageKt$rememberPreviewPlaceholder$1$1 remoteImageKt$rememberPreviewPlaceholder$1$1;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(564780000);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(avatarSize.ordinal()) ? 32 : 16) | 384;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            int ordinal = avatarSize.ordinal();
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(1793050876);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                gapComposer.end(false);
                f = 4.0f;
            } else {
                if (ordinal != 1) {
                    throw ViewSizeResolver.CC.m(gapComposer, 1793049015, false);
                }
                gapComposer.startReplaceGroup(1793052543);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                gapComposer.end(false);
                f = 8.0f;
            }
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            ImageVector imageVector = Icons$Outlined.Image;
            long j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSecondary;
            imageVector.getClass();
            gapComposer.startReplaceGroup(498435625);
            if (((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue()) {
                final VectorPainter rememberVectorPainter = PathParserKt.rememberVectorPainter(imageVector, gapComposer);
                boolean changed = gapComposer.changed(j);
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                if (changed || rememberedValue == obj) {
                    rememberedValue = new BlendModeColorFilter(5, j);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                final ColorFilter colorFilter = (ColorFilter) rememberedValue;
                final float mo177toPx0680j_4 = !Dp.m745equalsimpl0(f, Float.NaN) ? ((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo177toPx0680j_4(f) : 0.0f;
                boolean changed2 = gapComposer.changed(rememberVectorPainter) | gapComposer.changed(colorFilter);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue2 == obj) {
                    rememberedValue2 = new Painter(mo177toPx0680j_4, colorFilter) { // from class: app.k9mail.core.ui.compose.designsystem.atom.image.RemoteImageKt$rememberPreviewPlaceholder$1$1
                        public final /* synthetic */ ColorFilter $colorFilter;
                        public final /* synthetic */ float $paddingPx;
                        public final long intrinsicSize;

                        {
                            this.$paddingPx = mo177toPx0680j_4;
                            this.$colorFilter = colorFilter;
                            this.intrinsicSize = VectorPainter.this.mo550getIntrinsicSizeNHjbRc();
                        }

                        @Override // androidx.compose.ui.graphics.painter.Painter
                        /* renamed from: getIntrinsicSize-NH-jbRc */
                        public final long mo550getIntrinsicSizeNHjbRc() {
                            return this.intrinsicSize;
                        }

                        @Override // androidx.compose.ui.graphics.painter.Painter
                        public final void onDraw(LayoutNodeDrawScope layoutNodeDrawScope) {
                            VectorPainter vectorPainter = VectorPainter.this;
                            ColorFilter colorFilter2 = this.$colorFilter;
                            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                            PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback;
                            float f2 = this.$paddingPx;
                            anonymousClass1.inset(f2, f2, f2, f2);
                            try {
                                vectorPainter.m551drawx_KDEd0(layoutNodeDrawScope, layoutNodeDrawScope.mo534getSizeNHjbRc(), 1.0f, colorFilter2);
                            } finally {
                                float f3 = -f2;
                                ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).inset(f3, f3, f3, f3);
                            }
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                remoteImageKt$rememberPreviewPlaceholder$1$1 = (RemoteImageKt$rememberPreviewPlaceholder$1$1) rememberedValue2;
                gapComposer.end(false);
            } else {
                gapComposer.end(false);
                remoteImageKt$rememberPreviewPlaceholder$1$1 = null;
            }
            RemoteImageKt.RemoteImage(str, fillElement, Expect_jvmKt.rememberComposableLambda(461936881, new Function3() { // from class: net.thunderbird.feature.account.avatar.ui.AvatarImageKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    Composer composer2 = (Composer) obj3;
                    int intValue = ((Integer) obj4).intValue();
                    ((BoxScope) obj2).getClass();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        Jsoup.Placeholder(OffsetKt.m218padding3ABfNKs(SizeKt.FillWholeMaxSize, f), gapComposer2, 0);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), null, null, remoteImageKt$rememberPreviewPlaceholder$1$1, gapComposer, (i2 & 14) | 2122112, 40);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(str, avatarSize, modifier2, i, 22);
        }
    }

    /* renamed from: Change-3IgeMak, reason: not valid java name */
    public static final void m1062Change3IgeMak(int i, long j, Composer composer, Modifier modifier, String str) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2059138402);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(j) ? 32 : 16) | 384;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
            long j2 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            m1063ChangeDot3JVO9M((i2 >> 3) & 14, j, gapComposer, null);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 8.0f));
            Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurfaceVariant, 0, 0, (Function1) null, gapComposer, i2 & 14, 122);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda14(str, j, modifier2, i);
        }
    }

    /* renamed from: ChangeDot-3J-VO9M, reason: not valid java name */
    public static final void m1063ChangeDot3JVO9M(int i, long j, Composer composer, Modifier modifier) {
        int i2;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1246165558);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            modifier2 = Modifier.Companion.$$INSTANCE;
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(modifier2, 0.0f, 4.0f, 0.0f, 0.0f, 13);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m222paddingqDBjuR0$default);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ImageVector imageVector = Icons$Filled.Dot;
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m234size3ABfNKs(modifier2, 8.0f), new Color(j), gapComposer, ((i3 << 9) & 7168) | 384, 0);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda16(j, modifier2, i);
        }
    }

    /* renamed from: ChangeGroupHeader-eopBjH0, reason: not valid java name */
    public static final void m1064ChangeGroupHeadereopBjH0(final Map.Entry entry, final long j, final long j2, Modifier modifier, Composer composer, final int i) {
        GapComposer gapComposer;
        final Modifier modifier2;
        long Color;
        String stringResource;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1319331946);
        int i2 = i | (gapComposer2.changed(entry) ? 4 : 2) | (gapComposer2.changed(j) ? 32 : 16) | (gapComposer2.changed(j2) ? 256 : 128) | 3072;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion, 0.0f, 16.0f, 0.0f, 8.0f, 5);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m222paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m132backgroundbw27NRU = ImageKt.m132backgroundbw27NRU(companion, j2, ((ThemeShapes) gapComposer2.consume(ThemeShapesKt.LocalThemeShapes)).extraSmall);
            Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), 0.5f, Color.m485getColorSpaceimpl(j));
            Modifier m133borderxT4_qwU = ImageKt.m133borderxT4_qwU(m132backgroundbw27NRU, 1.0f, Color, ColorKt.RectangleShape);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j4 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m133borderxT4_qwU);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            String str = (String) entry.getKey();
            if (Intrinsics.areEqual(str, "NEW")) {
                gapComposer2.startReplaceGroup(-360697062);
                stringResource = Operation$State.stringResource(gapComposer2, R.string.changelog_type_new_text);
                gapComposer2.end(false);
            } else if (Intrinsics.areEqual(str, "FIXED")) {
                gapComposer2.startReplaceGroup(-360694564);
                stringResource = Operation$State.stringResource(gapComposer2, R.string.changelog_type_fixed_text);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(-360692546);
                stringResource = Operation$State.stringResource(gapComposer2, R.string.changelog_type_changed_text);
                gapComposer2.end(false);
            }
            AnnotatedString bold = DebugUtils.bold(stringResource);
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            gapComposer = gapComposer2;
            Validate.m1067TextLabelLargeZHfKjFs(bold, OffsetKt.m219paddingVpY3zN4(companion, 16.0f, 4.0f), j, 0, 0, null, gapComposer, (i2 << 3) & 896);
            gapComposer.end(true);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier then = OffsetKt.m220paddingVpY3zN4$default(companion, 8.0f, 0.0f, 2).then(new LayoutWeightElement(1.0f, true));
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ActionBar.m0DividerHorizontal9IZ8Weo(then, 2.0f, 0L, gapComposer, 0, 4);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(entry, j, j2, modifier2, i) { // from class: net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda13
                public final /* synthetic */ Map.Entry f$0;
                public final /* synthetic */ long f$1;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ Modifier f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    Jsoup.m1064ChangeGroupHeadereopBjH0(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void ChangelogScreen(ImmutableList immutableList, boolean z, Function1 function1, Function0 function0, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        immutableList.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2119849073);
        int i2 = i | (gapComposer.changedInstance(immutableList) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-699162579, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(6, function0), gapComposer);
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1708282981, new TextFieldScrollKt$$ExternalSyntheticLambda0(immutableList, function1, z), gapComposer);
            modifier2 = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(modifier2, rememberComposableLambda, null, null, null, null, rememberComposableLambda2, gapComposer, 1572918, 60);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(immutableList, z, function1, function0, modifier2, i);
        }
    }

    public static final void Placeholder(Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1624953096);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            modifier2 = modifier;
            AtomicFU.m1009IconxqIIw2o(Icons$Outlined.Image, modifier2, new Color(((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSecondary), gapComposer, ((i2 << 3) & 112) | 384, 0);
        } else {
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier2, i, 5);
        }
    }

    public static final void ReleaseComposable(ReleaseUiModel releaseUiModel, Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1878217856);
        int i2 = (gapComposer.changedInstance(releaseUiModel) ? 4 : 2) | i | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier height = OffsetKt.height(OffsetKt.m220paddingVpY3zN4$default(fillElement, 16.0f, 0.0f, 2));
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, height);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            ReleaseItemTimeline(null, gapComposer, 0);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j2 = gapComposer.compositeKeyHashCode;
            int i4 = (int) ((j2 >>> 32) ^ j2);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            String str = releaseUiModel.version;
            boolean z = releaseUiModel.isLatest;
            String str2 = releaseUiModel.date;
            if (str2 == null) {
                str2 = "";
            }
            ReleaseItemHeader(str, z, str2, null, gapComposer, 0);
            ActionBar.CardFilled(null, null, null, null, Expect_jvmKt.rememberComposableLambda(-600693874, new MovableContentKt$$ExternalSyntheticLambda0(13, releaseUiModel), gapComposer), gapComposer, 196608, 31);
            gapComposer = gapComposer;
            gapComposer.end(true);
            gapComposer.end(true);
            modifier = companion;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 14, releaseUiModel, modifier);
        }
    }

    public static final void ReleaseItemHeader(String str, boolean z, String str2, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        boolean z2;
        long Color;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(760003023);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | (gapComposer.changed(str2) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion, 0.0f, 0.0f, 8.0f, 4.0f, 3);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m222paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            DBUtil.m806TextTitleLargeXl4FiYE(DebugUtils.bold(str), null, ByteStreamsKt.getColors(gapComposer).onSurface, 0, 0, gapComposer, 0);
            if (z) {
                gapComposer.startReplaceGroup(-611542381);
                ByteStreamsKt.getSpacings(gapComposer).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 8.0f));
                Color = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), 0.1f, Color.m485getColorSpaceimpl(ByteStreamsKt.getColors(gapComposer).outlineVariant));
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeShapesKt.LocalThemeShapes;
                Modifier m133borderxT4_qwU = ImageKt.m133borderxT4_qwU(ImageKt.m132backgroundbw27NRU(companion, Color, ((ThemeShapes) gapComposer.consume(staticProvidableCompositionLocal)).extraSmall), 1.0f, ByteStreamsKt.getColors(gapComposer).outlineVariant, ((ThemeShapes) gapComposer.consume(staticProvidableCompositionLocal)).extraSmall);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j2 = gapComposer.compositeKeyHashCode;
                int i4 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m133borderxT4_qwU);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                String stringResource = Operation$State.stringResource(gapComposer, R.string.changelog_latest_label_text);
                ByteStreamsKt.getSpacings(gapComposer).getClass();
                ByteStreamsKt.getSpacings(gapComposer).getClass();
                Util.m1093TextLabelSmallXl4FiYE(stringResource, OffsetKt.m219paddingVpY3zN4(companion, 16.0f, 4.0f), 0L, 0, 0, gapComposer, 0, 60);
                z2 = true;
                gapComposer.end(true);
                gapComposer.end(false);
            } else {
                z2 = true;
                gapComposer.startReplaceGroup(-610677481);
                gapComposer.end(false);
            }
            gapComposer.end(z2);
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            SQLite.m815TextLabelMediumXl4FiYE(str2, OffsetKt.m222paddingqDBjuR0$default(companion, 0.0f, 0.0f, 0.0f, 16.0f, 7), ByteStreamsKt.getColors(gapComposer).onSurfaceVariant, 0, 0, gapComposer, (i2 >> 6) & 14, 56);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda12(str, z, str2, modifier2, i, 0);
        }
    }

    public static final void ReleaseItemTimeline(Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2052308447);
        int i2 = i | 6;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = SizeKt.m238width3ABfNKs(companion, 24.0f).then(SizeKt.FillWholeMaxHeight);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer, 48);
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
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal), companion, 8.0f, gapComposer);
            long j2 = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).outlineVariant;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            m1065TimelineDotDxzAY5Q(12.0f, 0, j2, gapComposer, null);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 8.0f));
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier then2 = OffsetKt.m220paddingVpY3zN4$default(companion, 8.0f, 0.0f, 2).then(new LayoutWeightElement(1.0f, true));
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            SchemaInfoUtilKt.m811DividerVertical9IZ8Weo(2.0f, 0, 0L, gapComposer, then2);
            gapComposer.end(true);
            modifier = companion;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, 6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SettingDialogLayout(java.lang.String r20, androidx.compose.ui.graphics.vector.ImageVector r21, kotlin.jvm.functions.Function0 r22, kotlin.jvm.functions.Function0 r23, kotlin.jvm.functions.Function0 r24, boolean r25, androidx.compose.runtime.internal.ComposableLambdaImpl r26, androidx.compose.runtime.Composer r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.Jsoup.SettingDialogLayout(java.lang.String, androidx.compose.ui.graphics.vector.ImageVector, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void SetupArchiveFolderDialog(SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State, Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function1 function1, Function1 function12, Function1 function13, Composer composer, int i) {
        int i2;
        Function1 function14;
        GapComposer gapComposer;
        String str;
        String stringResource;
        boolean z;
        String str2;
        DialogProperties dialogProperties;
        PaddingValuesImpl m215PaddingValuesa9UjIt4$default;
        boolean z2;
        setupArchiveFolderDialogContract$State.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(443150610);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer2.changed(setupArchiveFolderDialogContract$State) : gapComposer2.changedInstance(setupArchiveFolderDialogContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function03) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function04) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function12) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            function14 = function13;
            i2 |= gapComposer2.changedInstance(function14) ? 67108864 : 33554432;
        } else {
            function14 = function13;
        }
        int i3 = i2;
        if (!gapComposer2.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        } else if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.Closed) {
            gapComposer = gapComposer2;
            gapComposer.startReplaceGroup(-826906480);
            gapComposer.end(false);
        } else {
            gapComposer2.startReplaceGroup(-829152337);
            int i4 = i3 & 14;
            boolean z3 = i4 == 4 || ((i3 & 8) != 0 && gapComposer2.changed(setupArchiveFolderDialogContract$State));
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z3 || rememberedValue == neverEqualPolicy) {
                rememberedValue = Boolean.valueOf(!(setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder) || (str = ((SetupArchiveFolderDialogContract$State.CreateArchiveFolder) setupArchiveFolderDialogContract$State).syncingMessage) == null || StringsKt.isBlank(str));
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            boolean booleanValue = ((Boolean) rememberedValue).booleanValue();
            Object[] objArr = {setupArchiveFolderDialogContract$State};
            boolean z4 = i4 == 4 || ((i3 & 8) != 0 && gapComposer2.changedInstance(setupArchiveFolderDialogContract$State));
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z4 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ResourceFileSystem$$ExternalSyntheticLambda0(11, setupArchiveFolderDialogContract$State);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue2, gapComposer2, 0);
            if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) {
                gapComposer2.startReplaceGroup(666001465);
                stringResource = Operation$State.stringResource(gapComposer2, R.string.setup_archive_folder_dialog_set_archive_folder);
                gapComposer2.end(false);
            } else if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder) {
                gapComposer2.startReplaceGroup(666005336);
                stringResource = Operation$State.stringResource(gapComposer2, R.string.setup_archive_folder_dialog_create_new_folder);
                gapComposer2.end(false);
            } else {
                if (!(setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.EmailCantBeArchived)) {
                    throw ViewSizeResolver.CC.m(gapComposer2, 665999794, false);
                }
                gapComposer2.startReplaceGroup(666009824);
                stringResource = Operation$State.stringResource(gapComposer2, R.string.setup_archive_folder_dialog_email_can_not_be_archived);
                gapComposer2.end(false);
            }
            String str3 = stringResource;
            boolean z5 = setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.EmailCantBeArchived;
            if (z5) {
                gapComposer2.startReplaceGroup(666016415);
                String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.setup_archive_folder_dialog_configure_archive_folder);
                gapComposer2.end(false);
                str2 = stringResource2;
                z = z5;
            } else {
                z = z5;
                gapComposer2.startReplaceGroup(-828227701);
                gapComposer2.end(false);
                str2 = null;
            }
            DialogProperties dialogProperties2 = new DialogProperties(4, booleanValue, booleanValue);
            if (z) {
                gapComposer2.startReplaceGroup(-827136159);
                gapComposer2.end(false);
                m215PaddingValuesa9UjIt4$default = OffsetKt.m213PaddingValuesYgX7TsA$default(3, 0.0f);
                dialogProperties = dialogProperties2;
                z2 = false;
            } else {
                gapComposer2.startReplaceGroup(-827082994);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
                dialogProperties = dialogProperties2;
                m215PaddingValuesa9UjIt4$default = OffsetKt.m215PaddingValuesa9UjIt4$default(0.0f, 12.0f, 16.0f, 5);
                z2 = false;
                gapComposer2.end(false);
            }
            TopAppBarKt.m844BasicDialogFItCLgY(str3, function03, Expect_jvmKt.rememberComposableLambda(1443389454, new SegmentedButtonKt$$ExternalSyntheticLambda4(setupArchiveFolderDialogContract$State, function12, mutableState, 26), gapComposer2), Expect_jvmKt.rememberComposableLambda(1261891895, new AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0(setupArchiveFolderDialogContract$State, function02, function0, function04, function14, function1, mutableState), gapComposer2), modifier, str2, m215PaddingValuesa9UjIt4$default, !z, 0L, dialogProperties, gapComposer2, ((i3 >> 9) & 112) | 3456 | (57344 & (i3 << 9)), 256);
            gapComposer = gapComposer2;
            gapComposer.end(z2);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda2(setupArchiveFolderDialogContract$State, modifier, function0, function02, function03, function04, function1, function12, function13, i);
        }
    }

    public static final void SetupArchiveFolderDialogButtons(RowScope rowScope, SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State, String str, Function0 function0, Function0 function02, Function0 function03, Function1 function1, Function1 function12, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1437713704);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(rowScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(setupArchiveFolderDialogContract$State) : gapComposer.changedInstance(setupArchiveFolderDialogContract$State) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(str) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function03) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changedInstance(function12) ? 8388608 : 4194304;
        }
        if (!gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            gapComposer.skipToGroupEnd();
        } else if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) {
            gapComposer.startReplaceGroup(1515413435);
            RangesKt.ChooseArchiveFolderDialogButtons(rowScope, (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) setupArchiveFolderDialogContract$State, function02, function0, gapComposer, (i2 & 126) | ((i2 >> 6) & 896) | (i2 & 7168));
            gapComposer.end(false);
        } else if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.Closed) {
            gapComposer.startReplaceGroup(-1336583156);
            gapComposer.end(false);
        } else if (setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder) {
            gapComposer.startReplaceGroup(-1336581453);
            String str2 = ((SetupArchiveFolderDialogContract$State.CreateArchiveFolder) setupArchiveFolderDialogContract$State).syncingMessage;
            boolean z = str2 != null && (StringsKt.isBlank(str2) ^ true);
            boolean z2 = ((3670016 & i2) == 1048576) | ((i2 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z2 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SealedClassSerializer$$ExternalSyntheticLambda0(8, (Object) function1, str);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CharsKt__CharKt.CreateNewArchiveFolderDialogButtons(rowScope, z, function03, (Function0) rememberedValue, gapComposer, (i2 & 14) | ((i2 >> 9) & 896));
            gapComposer.end(false);
        } else {
            if (!(setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.EmailCantBeArchived)) {
                throw ViewSizeResolver.CC.m(gapComposer, -1336590140, false);
            }
            gapComposer.startReplaceGroup(-1336572600);
            int i3 = i2 >> 9;
            StringsKt__IndentKt.EmailCantBeArchivedDialogButtons((SetupArchiveFolderDialogContract$State.EmailCantBeArchived) setupArchiveFolderDialogContract$State, function02, function03, function12, null, gapComposer, ((i2 >> 3) & 14) | (i3 & 112) | (i3 & 896) | ((i2 >> 12) & 7168));
            gapComposer = gapComposer;
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(rowScope, setupArchiveFolderDialogContract$State, str, function0, function02, function03, function1, function12, i);
        }
    }

    public static final void SetupArchiveFolderDialogContent(SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State, String str, Function1 function1, Function1 function12, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1669547349);
        int i2 = 2;
        int i3 = i | (gapComposer.changed(setupArchiveFolderDialogContract$State) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function12) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new KoinModuleKt$$ExternalSyntheticLambda0(6);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function13 = (Function1) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new KoinModuleKt$$ExternalSyntheticLambda0(7);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CrossfadeKt.AnimatedContent(setupArchiveFolderDialogContract$State, companion, function13, null, null, (Function1) rememberedValue2, Expect_jvmKt.rememberComposableLambda(-298119895, new AccountSetupNavHostKt$$ExternalSyntheticLambda4(function1, str, function12, i2), gapComposer), gapComposer, (i3 & 14) | 1769904, 24);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(setupArchiveFolderDialogContract$State, str, function1, function12, modifier2, i, 20);
        }
    }

    /* renamed from: TimelineDot-DxzAY5Q, reason: not valid java name */
    public static final void m1065TimelineDotDxzAY5Q(float f, int i, long j, Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1288054679);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | 48 | (gapComposer.changed(f) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                modifier = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            BoxKt.Box(ImageKt.m132backgroundbw27NRU(SizeKt.m234size3ABfNKs(modifier, f), j, RoundedCornerShapeKt.CircleShape), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda15(j, modifier2, f, i);
        }
    }

    public static final void basicFormats$lambda$2$rec(ListBuilder listBuilder, FormatStructure formatStructure) {
        if (formatStructure instanceof BasicFormatStructure) {
            listBuilder.add(((BasicFormatStructure) formatStructure).directive);
            return;
        }
        if (formatStructure instanceof ConcatenatedFormatStructure) {
            Iterator it = ((ConcatenatedFormatStructure) formatStructure).formats.iterator();
            while (it.hasNext()) {
                basicFormats$lambda$2$rec(listBuilder, (NonConcatenatedFormatStructure) it.next());
            }
            return;
        }
        if (formatStructure instanceof ConstantFormatStructure) {
            return;
        }
        if (formatStructure instanceof SignedFormatStructure) {
            basicFormats$lambda$2$rec(listBuilder, ((SignedFormatStructure) formatStructure).format);
            return;
        }
        if (!(formatStructure instanceof AlternativesParsingFormatStructure)) {
            if (formatStructure instanceof OptionalFormatStructure) {
                basicFormats$lambda$2$rec(listBuilder, ((OptionalFormatStructure) formatStructure).format);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        AlternativesParsingFormatStructure alternativesParsingFormatStructure = (AlternativesParsingFormatStructure) formatStructure;
        basicFormats$lambda$2$rec(listBuilder, alternativesParsingFormatStructure.mainFormat);
        Iterator it2 = alternativesParsingFormatStructure.formats.iterator();
        while (it2.hasNext()) {
            basicFormats$lambda$2$rec(listBuilder, (FormatStructure) it2.next());
        }
    }

    public static final WindowSizeInfo calculateWindowSizeInfo(Composer composer) {
        DerivedSize derivedSize;
        GapComposer gapComposer = (GapComposer) composer;
        Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        LazyWindowInfo lazyWindowInfo = (LazyWindowInfo) ((WindowInfo) gapComposer.consume(CompositionLocalsKt.LocalWindowInfo));
        if (lazyWindowInfo._containerSize == null) {
            Function0 function0 = lazyWindowInfo.onInitializeContainerSize;
            if (function0 == null || (derivedSize = (DerivedSize) function0.invoke()) == null) {
                derivedSize = DerivedSize.Zero;
            }
            lazyWindowInfo._containerSize = Updater.mutableStateOf$default(derivedSize);
            lazyWindowInfo.onInitializeContainerSize = null;
        }
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = lazyWindowInfo._containerSize;
        parcelableSnapshotMutableState.getClass();
        long mo175toDpSizekrfVVM = density.mo175toDpSizekrfVVM(Validate.m1072toSizeozmzZPI(((DerivedSize) parcelableSnapshotMutableState.getValue()).pxSize));
        float m748getHeightD9Ej5fM = DpSize.m748getHeightD9Ej5fM(mo175toDpSizekrfVVM);
        WindowHeightSizeClass.Companion.getClass();
        if (Dp.m744compareTo0680j_4(m748getHeightD9Ej5fM, 0.0f) < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Height must be positive");
            return null;
        }
        WindowHeightSizeClass windowHeightSizeClass = Dp.m744compareTo0680j_4(m748getHeightD9Ej5fM, WindowHeightSizeClass.BREAKPOINT_SMALL) < 0 ? WindowHeightSizeClass.Small : Dp.m744compareTo0680j_4(m748getHeightD9Ej5fM, WindowHeightSizeClass.BREAKPOINT_COMPACT) < 0 ? WindowHeightSizeClass.Compact : Dp.m744compareTo0680j_4(m748getHeightD9Ej5fM, WindowHeightSizeClass.BREAKPOINT_MEDIUM) < 0 ? WindowHeightSizeClass.Medium : WindowHeightSizeClass.Expanded;
        float m749getWidthD9Ej5fM = DpSize.m749getWidthD9Ej5fM(mo175toDpSizekrfVVM);
        WindowWidthSizeClass.Companion.getClass();
        if (Dp.m744compareTo0680j_4(m749getWidthD9Ej5fM, 0.0f) < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Width must be positive");
            return null;
        }
        WindowSizeClass windowSizeClass = new WindowSizeClass(windowHeightSizeClass, Dp.m744compareTo0680j_4(m749getWidthD9Ej5fM, WindowWidthSizeClass.BREAKPOINT_SMALL) < 0 ? WindowWidthSizeClass.Small : Dp.m744compareTo0680j_4(m749getWidthD9Ej5fM, WindowWidthSizeClass.BREAKPOINT_COMPACT) < 0 ? WindowWidthSizeClass.Compact : Dp.m744compareTo0680j_4(m749getWidthD9Ej5fM, WindowWidthSizeClass.BREAKPOINT_MEDIUM) < 0 ? WindowWidthSizeClass.Medium : WindowWidthSizeClass.Expanded);
        boolean changed = gapComposer.changed(lazyWindowInfo);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new WindowSizeInfo(windowSizeClass, mo175toDpSizekrfVVM);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (WindowSizeInfo) rememberedValue;
    }

    public static String iterableToString(List list) {
        if (list == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Okio.checkArgument("individual scopes cannot be null or empty", !TextUtils.isEmpty(str));
            linkedHashSet.add(str);
        }
        if (linkedHashSet.isEmpty()) {
            return null;
        }
        return TextUtils.join(" ", linkedHashSet);
    }

    public static Document parse(String str) {
        HtmlTreeBuilder htmlTreeBuilder = new HtmlTreeBuilder();
        htmlTreeBuilder.initialiseParse(new StringReader(str), "", new Parser(htmlTreeBuilder));
        htmlTreeBuilder.runParser();
        return htmlTreeBuilder.doc;
    }

    public static final boolean permitsRequestBody(String str) {
        str.getClass();
        return (str.equals(UtilsKt.HTTP_METHOD_GET) || str.equals("HEAD")) ? false : true;
    }

    public static final InAppNotificationHostStateHolder rememberInAppNotificationHostStateHolder(ImmutableSet immutableSet, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new InAppNotificationHostStateHolder(immutableSet);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (InAppNotificationHostStateHolder) rememberedValue;
    }

    public static final int toUInt(String str) {
        UInt uIntOrNull = toUIntOrNull(str, 16);
        if (uIntOrNull != null) {
            return uIntOrNull.data;
        }
        StringsKt__StringsJVMKt.numberFormatError(str);
        throw null;
    }

    public static final UInt toUIntOrNull(String str, int i) {
        int i2;
        CharsKt__CharKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char charAt = str.charAt(0);
        if (charAt < '0') {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int i4 = 119304647;
        while (i2 < length) {
            int digit = Character.digit((int) str.charAt(i2), i);
            if (digit < 0) {
                return null;
            }
            int i5 = i3 ^ Integer.MIN_VALUE;
            if (Integer.compare(i5, i4 ^ Integer.MIN_VALUE) > 0) {
                if (i4 != 119304647) {
                    return null;
                }
                i4 = (int) (4294967295L / (i & 4294967295L));
                if (Integer.compare(i5, i4 ^ Integer.MIN_VALUE) > 0) {
                    return null;
                }
            }
            int i6 = i3 * i;
            int i7 = digit + i6;
            if (Integer.compare(i7 ^ Integer.MIN_VALUE, i6 ^ Integer.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            i3 = i7;
        }
        return new UInt(i3);
    }

    public static final ULong toULongOrNull(String str) {
        str.getClass();
        int i = 10;
        CharsKt__CharKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = str.charAt(0);
        if (charAt < '0') {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        }
        long j = 0;
        long j2 = 512409557603043100L;
        while (i2 < length) {
            int digit = Character.digit((int) str.charAt(i2), i);
            if (digit < 0) {
                return null;
            }
            long j3 = j ^ Long.MIN_VALUE;
            int i3 = length;
            if (Long.compare(j3, j2 ^ Long.MIN_VALUE) > 0) {
                if (j2 != 512409557603043100L || Long.compare(j3, -7378697629483820647L) > 0) {
                    return null;
                }
                j2 = 1844674407370955161L;
            }
            long j4 = j * 10;
            long j5 = (digit & 4294967295L) + j4;
            if (Long.compare(j5 ^ Long.MIN_VALUE, j4 ^ Long.MIN_VALUE) < 0) {
                return null;
            }
            i2++;
            j = j5;
            length = i3;
            i = 10;
        }
        return new ULong(j);
    }

    public static final void SetupArchiveFolderDialog(AccountId accountId, Function0 function0, Modifier modifier, SetupArchiveFolderDialogContract$ViewModel setupArchiveFolderDialogContract$ViewModel, Composer composer, int i) {
        Modifier modifier2;
        SetupArchiveFolderDialogContract$ViewModel setupArchiveFolderDialogContract$ViewModel2;
        Modifier modifier3;
        int i2;
        SetupArchiveFolderDialogContract$ViewModel setupArchiveFolderDialogContract$ViewModel3;
        accountId.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-159781516);
        int i3 = i | (gapComposer.changedInstance(accountId) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 1408;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            gapComposer.startDefaults();
            int i4 = i & 1;
            int i5 = 10;
            Object obj = Composer.Companion.Empty;
            if (i4 != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                i2 = i3 & (-7169);
                setupArchiveFolderDialogContract$ViewModel3 = setupArchiveFolderDialogContract$ViewModel;
            } else {
                boolean changedInstance = gapComposer.changedInstance(accountId);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj) {
                    rememberedValue = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 10);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function02 = (Function0) rememberedValue;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current != null) {
                    SetupArchiveFolderDialogContract$ViewModel setupArchiveFolderDialogContract$ViewModel4 = (SetupArchiveFolderDialogContract$ViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SetupArchiveFolderDialogContract$ViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                    modifier3 = Modifier.Companion.$$INSTANCE;
                    i2 = i3 & (-7169);
                    setupArchiveFolderDialogContract$ViewModel3 = setupArchiveFolderDialogContract$ViewModel4;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
            }
            gapComposer.endDefaults();
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(setupArchiveFolderDialogContract$ViewModel3.state, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(setupArchiveFolderDialogContract$ViewModel3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue2 == obj) {
                rememberedValue2 = new ProduceKt$awaitClose$4$1(15, setupArchiveFolderDialogContract$ViewModel3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function1 function1 = (Function1) rememberedValue2;
            Continuation continuation = null;
            Updater.LaunchedEffect(gapComposer, setupArchiveFolderDialogContract$ViewModel3.effect, new OutboxFolderManager$getOutboxFolderIdSync$1(setupArchiveFolderDialogContract$ViewModel3, continuation, function0, 6));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            Object value = collectAsStateWithLifecycle.getValue();
            boolean changed = gapComposer.changed(collectAsStateWithLifecycle) | ((i2 & 112) == 32);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == obj) {
                rememberedValue3 = new InterruptibleKt$runInterruptible$2(collectAsStateWithLifecycle, function0, continuation, 23);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(function0, value, (Function2) rememberedValue3, gapComposer);
            SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) collectAsStateWithLifecycle.getValue();
            boolean changed2 = gapComposer.changed(function1);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue4 == obj) {
                rememberedValue4 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(7, function1);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function0 function03 = (Function0) rememberedValue4;
            boolean changed3 = gapComposer.changed(function1);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue5 == obj) {
                rememberedValue5 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(8, function1);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Function0 function04 = (Function0) rememberedValue5;
            boolean changed4 = gapComposer.changed(function1);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed4 || rememberedValue6 == obj) {
                rememberedValue6 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(9, function1);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function0 function05 = (Function0) rememberedValue6;
            boolean changed5 = gapComposer.changed(function1);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changed5 || rememberedValue7 == obj) {
                rememberedValue7 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(i5, function1);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Function0 function06 = (Function0) rememberedValue7;
            boolean changed6 = gapComposer.changed(function1);
            Object rememberedValue8 = gapComposer.rememberedValue();
            if (changed6 || rememberedValue8 == obj) {
                rememberedValue8 = new ChangelogScreenKt$$ExternalSyntheticLambda7(11, function1);
                gapComposer.updateRememberedValue(rememberedValue8);
            }
            Function1 function12 = (Function1) rememberedValue8;
            boolean changed7 = gapComposer.changed(function1);
            Object rememberedValue9 = gapComposer.rememberedValue();
            if (changed7 || rememberedValue9 == obj) {
                rememberedValue9 = new ChangelogScreenKt$$ExternalSyntheticLambda7(12, function1);
                gapComposer.updateRememberedValue(rememberedValue9);
            }
            Function1 function13 = (Function1) rememberedValue9;
            boolean changed8 = gapComposer.changed(function1);
            Object rememberedValue10 = gapComposer.rememberedValue();
            if (changed8 || rememberedValue10 == obj) {
                rememberedValue10 = new ChangelogScreenKt$$ExternalSyntheticLambda7(13, function1);
                gapComposer.updateRememberedValue(rememberedValue10);
            }
            Modifier modifier4 = modifier3;
            SetupArchiveFolderDialog(setupArchiveFolderDialogContract$State, modifier4, function03, function04, function05, function06, function12, function13, (Function1) rememberedValue10, gapComposer, 48);
            modifier2 = modifier4;
            setupArchiveFolderDialogContract$ViewModel2 = setupArchiveFolderDialogContract$ViewModel3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            setupArchiveFolderDialogContract$ViewModel2 = setupArchiveFolderDialogContract$ViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(accountId, function0, modifier2, setupArchiveFolderDialogContract$ViewModel2, i, 19);
        }
    }
}
