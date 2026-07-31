package org.minidns.util;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.SizeTransformImpl;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda8;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
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
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
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
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.button.RadioButtonKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.organism.BasicDialogKt$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda3;
import app.k9mail.provider.K9AppNameProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import j$.time.DateTimeException;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import kotlin.time.Instant;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.TimeZone;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$DualTone;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.SettingViewProvider$ComposeDefaultImpls;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.account.avatar.DefaultAvatarIcons;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingContentKt$$ExternalSyntheticLambda3;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContentKt$$ExternalSyntheticLambda3;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.jsoup.Jsoup;
import org.jsoup.SerializationException;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Hex {
    public static final void AccountLabel(DisplayAccount displayAccount, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-317169082);
        int i2 = (gapComposer.changed(displayAccount) ? 4 : 2) | i | 48;
        int i3 = 18;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            String displayAccountName = UuidKt.getDisplayAccountName(displayAccount, gapComposer);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
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
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
            try {
                builder.append(displayAccountName);
                builder.pop(pushStyle);
                Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(builder.toAnnotatedString(), null, 0L, 0, 0, gapComposer, 0, 62);
                if (displayAccount instanceof MailDisplayAccount) {
                    MailDisplayAccount mailDisplayAccount = (MailDisplayAccount) displayAccount;
                    String str = mailDisplayAccount.email;
                    if (!mailDisplayAccount.name.equals(str)) {
                        gapComposer.startReplaceGroup(2070208331);
                        Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, 0, 126);
                        gapComposer = gapComposer;
                        gapComposer.end(false);
                        gapComposer.end(true);
                        modifier2 = Modifier.Companion.$$INSTANCE;
                    }
                }
                gapComposer.startReplaceGroup(2070295782);
                gapComposer.end(false);
                gapComposer.end(true);
                modifier2 = Modifier.Companion.$$INSTANCE;
            } catch (Throwable th) {
                builder.pop(pushStyle);
                throw th;
            }
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, i3, displayAccount, modifier2);
        }
    }

    public static final void AccountListItem(final DisplayAccount displayAccount, Function1 function1, final boolean z, final boolean z2, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        displayAccount.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1733184208);
        int i2 = 2;
        int i3 = i | (gapComposer.changed(displayAccount) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | (gapComposer.changed(z2) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            int i4 = i3 & 14;
            long displayAccountColor = UuidKt.getDisplayAccountColor(displayAccount, gapComposer);
            Avatar displayAccountAvatar = UuidKt.getDisplayAccountAvatar(displayAccount);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-818628117, new StringsKt__StringsKt$$ExternalSyntheticLambda0(6, displayAccount), gapComposer);
            boolean z3 = ((i3 & 112) == 32) | (i4 == 4);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new DrawerContentKt$$ExternalSyntheticLambda3(function1, displayAccount, i2);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            Operation$State.NavigationDrawerItem(rememberComposableLambda, z, (Function0) rememberedValue, SizeKt.m226height3ABfNKs(fillElement, 64.0f), Expect_jvmKt.rememberComposableLambda(155519335, new TextFieldImplKt$$ExternalSyntheticLambda8(displayAccountAvatar, displayAccountColor, 3), gapComposer), Expect_jvmKt.rememberComposableLambda(399056198, new Function2() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.account.AccountListItemKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        final DisplayAccount displayAccount2 = DisplayAccount.this;
                        Boolean valueOf = Boolean.valueOf(displayAccount2.getHasError());
                        final boolean z4 = z;
                        final boolean z5 = z2;
                        CrossfadeKt.Crossfade(valueOf, null, null, null, Expect_jvmKt.rememberComposableLambda(-924074009, new Function3() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.account.AccountListItemKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                long j;
                                boolean booleanValue = ((Boolean) obj3).booleanValue();
                                Composer composer3 = (Composer) obj4;
                                int intValue2 = ((Integer) obj5).intValue();
                                if ((intValue2 & 6) == 0) {
                                    intValue2 |= ((GapComposer) composer3).changed(booleanValue) ? 4 : 2;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                    gapComposer3.skipToGroupEnd();
                                } else if (booleanValue) {
                                    gapComposer3.startReplaceGroup(1651619834);
                                    ImageVector imageVector = Icons$DualTone.Warning;
                                    if (z4) {
                                        gapComposer3.startReplaceGroup(1651745694);
                                        j = ((ThemeColorScheme) gapComposer3.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSecondaryContainer;
                                        gapComposer3.end(false);
                                    } else {
                                        gapComposer3.startReplaceGroup(1651843437);
                                        j = ((ThemeColorScheme) gapComposer3.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).error;
                                        gapComposer3.end(false);
                                    }
                                    AtomicFU.m1009IconxqIIw2o(imageVector, null, new Color(j), gapComposer3, 0, 6);
                                    gapComposer3.end(false);
                                } else {
                                    gapComposer3.startReplaceGroup(1651973637);
                                    DisplayAccount displayAccount3 = displayAccount2;
                                    CharsKt__CharKt.AccountListItemBadge(displayAccount3.getUnreadMessageCount(), displayAccount3.getStarredMessageCount(), z5, null, gapComposer3, 0);
                                    gapComposer3.end(false);
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 24576, 14);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i3 >> 3) & 112) | 221190, 0);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RadioButtonKt$$ExternalSyntheticLambda1(displayAccount, function1, z, z2, modifier2, i);
        }
    }

    public static final void CreateNewArchiveFolderDialogContent(String str, Function1 function1, Modifier modifier, String str2, String str3, Composer composer, int i) {
        Modifier modifier2;
        str.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1159639624);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | 384 | (gapComposer.changed(str2) ? 2048 : 1024) | (gapComposer.changed(str3) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(companion, 12.0f, 0.0f, 2);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m220paddingVpY3zN4$default);
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
            TextInputKt.TextInput(function1, null, str, Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_create_new_folder), false, str3, null, false, str2 == null || str2.length() == 0, null, null, gapComposer, ((i2 >> 3) & 14) | ((i2 << 6) & 896) | ((i2 << 3) & 458752), 1746);
            gapComposer = gapComposer;
            boolean z = str2 != null;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            CrossfadeKt.AnimatedVisibility(z, OffsetKt.m220paddingVpY3zN4$default(companion, 32.0f, 0.0f, 2), null, null, null, Expect_jvmKt.rememberComposableLambda(-359496042, new BasicDialogKt$$ExternalSyntheticLambda0(str2, 6), gapComposer), gapComposer, 1572870, 28);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(str, function1, modifier2, str2, str3, i, 19);
        }
    }

    /* renamed from: IconView-l6Txn0U, reason: not valid java name */
    public static final void m1087IconViewl6Txn0U(final SettingValue.IconList.IconOption iconOption, final long j, final Function1 function1, final Modifier modifier, final boolean z, float f, Composer composer, final int i) {
        int i2;
        GapComposer gapComposer;
        final float f2;
        int i3;
        iconOption.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-126952419);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer2.changed(iconOption) : gapComposer2.changedInstance(iconOption) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(j) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(z) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= 65536;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                ((ThemeSizes) gapComposer2.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                i3 = i2 & (-458753);
                f2 = 24.0f;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i2 & (-458753);
                f2 = f;
            }
            gapComposer2.endDefaults();
            long j2 = z ? j : Color.Unspecified;
            Modifier clip = ClipKt.clip(SizeKt.m234size3ABfNKs(modifier, f2), RoundedCornerShapeKt.CircleShape);
            boolean z2 = function1 != null;
            boolean z3 = ((i3 & 896) == 256) | ((i3 & 14) == 4 || ((i3 & 8) != 0 && gapComposer2.changedInstance(iconOption)));
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SealedClassSerializer$$ExternalSyntheticLambda0(7, function1, iconOption);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            gapComposer = gapComposer2;
            MathKt.m983Surface_UMDTes(ImageKt.m136clickableoSLSa3U$default(clip, z2, null, (Function0) rememberedValue, 14), null, j2, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-485623686, new Function2() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.common.IconViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    long j3;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        if (z) {
                            gapComposer3.startReplaceGroup(1467075205);
                            j3 = ((ThemeColorScheme) gapComposer3.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSecondary;
                        } else {
                            gapComposer3.startReplaceGroup(1467076291);
                            j3 = ((ThemeColorScheme) gapComposer3.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurface;
                        }
                        gapComposer3.end(false);
                        ImageVector imageVector = ((DefaultAvatarIcons) iconOption.icon.f$0).icon;
                        Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, f2);
                        ((ThemeSpacings) gapComposer3.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        AtomicFU.m1009IconxqIIw2o(imageVector, OffsetKt.m218padding3ABfNKs(m234size3ABfNKs, 8.0f), new Color(j3), gapComposer3, 0, 4);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer, 196608, 26);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            f2 = f;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: net.thunderbird.core.ui.setting.dialog.ui.components.common.IconViewKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    Hex.m1087IconViewl6Txn0U(SettingValue.IconList.IconOption.this, j, function1, modifier, z, f2, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SearchSettingContent(SearchSettingsContract$State searchSettingsContract$State, Function1 function1, Function0 function0, DialogSettingViewProvider dialogSettingViewProvider, AppNameProvider appNameProvider, SearchSettingBuilder searchSettingBuilder, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        searchSettingsContract$State.getClass();
        function1.getClass();
        function0.getClass();
        dialogSettingViewProvider.getClass();
        appNameProvider.getClass();
        searchSettingBuilder.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1311995630);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(searchSettingsContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(dialogSettingViewProvider) : gapComposer.changedInstance(dialogSettingViewProvider) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer.changed(appNameProvider) : gapComposer.changedInstance(appNameProvider) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= (i & 262144) == 0 ? gapComposer.changed(searchSettingBuilder) : gapComposer.changedInstance(searchSettingBuilder) ? 131072 : 65536;
        }
        int i3 = i2 | 1572864;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 599187) != 599186)) {
            int i4 = i3 & 112;
            boolean z = ((i3 & 14) == 4) | ((458752 & i3) == 131072 || ((i3 & 262144) != 0 && gapComposer.changed(searchSettingBuilder))) | (i4 == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                ArrayList arrayList = new ArrayList();
                int i5 = 24;
                arrayList.add(new SettingValue.Select("server_search_limit", new SearchSettingBuilder$$ExternalSyntheticLambda0(searchSettingBuilder, 0), new ThemeSizesKt$$ExternalSyntheticLambda0(i5), new ThemeSizesKt$$ExternalSyntheticLambda0(i5), true, searchSettingsContract$State.serverSearchLimit, searchSettingBuilder.selectOptions));
                rememberedValue = Okio.toImmutableList(arrayList);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImmutableList immutableList = (ImmutableList) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            String stringResource = Operation$State.stringResource(gapComposer, R.string.account_settings_search_action);
            String str = searchSettingsContract$State.subtitle;
            boolean z2 = i4 == 32;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ChangelogScreenKt$$ExternalSyntheticLambda7(9, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function1 function12 = (Function1) rememberedValue3;
            boolean z3 = i4 == 32;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z3 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(4, function1);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            SettingViewProvider$ComposeDefaultImpls.SettingView$default(stringResource, immutableList, function12, (Function0) rememberedValue4, str, Expect_jvmKt.rememberComposableLambda(130671594, new CreateAccountScreenKt$$ExternalSyntheticLambda3(mutableState, 6), gapComposer), dialogSettingViewProvider, gapComposer, ((i3 >> 6) & 57344) | 1572864 | ((i3 << 12) & 29360128), 0);
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(1461050766);
                String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_settings_account_delete_dlg_title);
                String stringResource3 = Operation$State.stringResource(R.string.account_settings_account_delete_dlg_instructions_fmt, new Object[]{String.valueOf(searchSettingsContract$State.subtitle), ((K9AppNameProvider) appNameProvider).getAppName()}, gapComposer);
                String stringResource4 = Operation$State.stringResource(gapComposer, R.string.account_settings_okay_action);
                String stringResource5 = Operation$State.stringResource(gapComposer, R.string.account_settings_cancel_action);
                boolean z4 = (i3 & 896) == 256;
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (z4 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new SearchSettingContentKt$$ExternalSyntheticLambda3(function0, mutableState, 0);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                Function0 function02 = (Function0) rememberedValue5;
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 22);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Function0 function03 = (Function0) rememberedValue6;
                Object rememberedValue7 = gapComposer.rememberedValue();
                if (rememberedValue7 == neverEqualPolicy) {
                    rememberedValue7 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 23);
                    gapComposer.updateRememberedValue(rememberedValue7);
                }
                TopAppBarKt.AlertDialog(stringResource2, stringResource3, stringResource4, function02, function03, (Modifier) null, stringResource5, (Function0) rememberedValue7, false, (Composer) gapComposer, 100687872);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1461739028);
                gapComposer.end(false);
            }
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(searchSettingsContract$State, function1, function0, dialogSettingViewProvider, appNameProvider, searchSettingBuilder, modifier2, i, 6);
        }
    }

    public static final boolean access$isCaseSensitive(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= 128 || Character.isLetter(charAt)) {
                return true;
            }
        }
        return false;
    }

    public static final void access$verify(CharsKt__CharKt charsKt__CharKt) {
        charsKt__CharKt.getClass();
        if ((charsKt__CharKt instanceof StreamingJsonEncoder ? (StreamingJsonEncoder) charsKt__CharKt : null) != null) {
            return;
        }
        StreamSharing$$ExternalSyntheticLambda0.m(Reflection.getOrCreateKotlinClass(charsKt__CharKt.getClass()), "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ");
    }

    public static final JsonDecoder asJsonDecoder(Decoder decoder) {
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            return jsonDecoder;
        }
        StreamSharing$$ExternalSyntheticLambda0.m(Reflection.getOrCreateKotlinClass(decoder.getClass()), "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ");
        return null;
    }

    public static final ContentTransform bannerSlideInSlideOutAnimationSpec(AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl) {
        animatedContentTransitionScopeImpl.getClass();
        ContentTransform contentTransform = CrossfadeKt.togetherWith(EnterExitTransitionKt.fadeIn$default(null, 3).plus(EnterExitTransitionKt.expandVertically$default(15)), EnterExitTransitionKt.fadeOut$default(null, 3).plus(EnterExitTransitionKt.shrinkVertically$default(null, 15)));
        contentTransform.sizeTransform = new SizeTransformImpl(new StringsKt__StringsKt$$ExternalSyntheticLambda0(9, animatedContentTransitionScopeImpl));
        return contentTransform;
    }

    public static StringBuilder from(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format("%02X ", Byte.valueOf(b)));
        }
        return sb;
    }

    public static final Outcome.Success getValidationSuccess() {
        return new Outcome.Success(Unit.INSTANCE);
    }

    public static final Object handleAsync(Outcome outcome, Function2 function2, Function2 function22, SuspendLambda suspendLambda) {
        boolean z = outcome instanceof Outcome.Success;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (z) {
            Object invoke = function2.invoke(((Outcome.Success) outcome).data, suspendLambda);
            if (invoke == coroutineSingletons) {
                return invoke;
            }
        } else {
            if (!(outcome instanceof Outcome.Failure)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            Object invoke2 = function22.invoke(((Outcome.Failure) outcome).error, suspendLambda);
            if (invoke2 == coroutineSingletons) {
                return invoke2;
            }
        }
        return Unit.INSTANCE;
    }

    public static boolean isEndToEnd(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static final int parseColorValue(String str) {
        if (!StringsKt__StringsJVMKt.startsWith(str, "#", false)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Invalid color value ".concat(str));
            return 0;
        }
        int length = str.length();
        if (length == 4) {
            int uInt = Jsoup.toUInt(str.substring(1));
            return ((uInt & 15) * 17) | (((uInt >> 8) & 15) * 1114112) | (((uInt >> 4) & 15) * 4352) | (-16777216);
        }
        if (length == 5) {
            int uInt2 = Jsoup.toUInt(str.substring(1));
            return ((uInt2 & 15) * 17) | (((uInt2 >> 12) & 15) * 285212672) | (((uInt2 >> 8) & 15) * 1114112) | (((uInt2 >> 4) & 15) * 4352) | (-16777216);
        }
        if (length == 7) {
            return Jsoup.toUInt(str.substring(1)) | (-16777216);
        }
        if (length != 9) {
            return -16777216;
        }
        return Jsoup.toUInt(str.substring(1));
    }

    public static final float parseDp(String str, Density density) {
        density.getClass();
        if (str == null) {
            return 0.0f;
        }
        if (StringsKt__StringsJVMKt.endsWith(str, "dp", false)) {
            return Float.parseFloat(StringsKt.removeSuffix(str, "dp"));
        }
        if (StringsKt__StringsJVMKt.endsWith(str, "px", false)) {
            return density.mo173toDpu2uoSUM(Float.parseFloat(StringsKt.removeSuffix(str, "px")));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("value should ends with dp or px");
        return 0.0f;
    }

    public static final int parseTileMode(String str) {
        int hashCode = str.hashCode();
        if (hashCode != -1073910849) {
            if (hashCode != -436781190) {
                if (hashCode == 94742715 && str.equals("clamp")) {
                    return 0;
                }
            } else if (str.equals("repeated")) {
                return 1;
            }
        } else if (str.equals("mirror")) {
            return 2;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("unknown tileMode: ".concat(str));
        return 0;
    }

    public static final LocalDateTime toLocalDateTime(Instant instant, TimeZone timeZone) {
        instant.getClass();
        timeZone.getClass();
        try {
            j$.time.Instant ofEpochSecond = j$.time.Instant.ofEpochSecond(instant.epochSeconds, instant.nanosecondsOfSecond);
            ofEpochSecond.getClass();
            return new LocalDateTime(j$.time.LocalDateTime.ofInstant(ofEpochSecond, timeZone.zoneId));
        } catch (DateTimeException e) {
            throw new SerializationException(e);
        }
    }
}
