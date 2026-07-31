package com.fsck.k9.sasl;

import android.content.Intent;
import android.content.res.Resources;
import android.media.ImageWriter;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.Surface;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api29Compat;
import androidx.camera.camera2.pipe.media.AndroidImageWriter;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ShapesKt;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
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
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.util.DebugUtils;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.glance.action.MutableActionParameters;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.ComposeNavigatorDestinationBuilder;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.OperationKt;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation;
import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidatePassword$ValidatePasswordError$EmptyPassword;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidatePort$ValidatePortError;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateServer$ValidateServerError;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateUsername$ValidateUsernameError$EmptyUsername;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import com.jcraft.jzlib.Adler32;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.ui.compose.theme2.ThemeElevations;
import net.thunderbird.core.ui.compose.theme2.ThemeElevationsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda16;
import okhttp3.Cookie;
import okhttp3.Headers;
import okio.ByteString;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OAuthBearer {
    public static ImageVector _allInbox = null;
    public static ImageVector _moreVert = null;
    public static boolean sActionBarFieldsFetched = false;
    public static Method sActionBarOnMenuKeyMethod = null;
    public static boolean sDialogFieldsFetched = false;
    public static Field sDialogKeyListenerField;
    public static volatile HandlerScheduledExecutorService sInstance;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AccountSetupNavHost(final kotlin.jvm.functions.Function0 r17, final kotlin.jvm.functions.Function1 r18, boolean r19, androidx.compose.runtime.Composer r20, final int r21, final int r22) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.sasl.OAuthBearer.AccountSetupNavHost(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, boolean, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void CardElevated(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        Shape shape2;
        CardColors cardColors2;
        CardElevation cardElevation2;
        int i2;
        Shape shape3;
        CardColors cardColors3;
        CardElevation elevatedCardElevation;
        long Color;
        long Color2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2066509348);
        int i3 = i | (gapComposer.changed(modifier) ? 4 : 2) | 25744;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Shape value = ShapesKt.getValue(ListTokens.ContainerShape$1, gapComposer);
                ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                androidx.compose.material3.CardColors cardColors4 = colorScheme.defaultElevatedCardColorsCached;
                if (cardColors4 == null) {
                    ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.ContainerColor$2;
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    long m340contentColorFor4WTKRHQ = ColorSchemeKt.m340contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens));
                    ColorSchemeKeyTokens colorSchemeKeyTokens2 = ListTokens.DisabledContainerColor;
                    Color = ColorKt.Color(Color.m487getRedimpl(r13), Color.m486getGreenimpl(r13), Color.m484getBlueimpl(r13), ListTokens.DisabledContainerOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    long m490compositeOverOWjLjI = ColorKt.m490compositeOverOWjLjI(Color, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2));
                    Color2 = ColorKt.Color(Color.m487getRedimpl(r6), Color.m486getGreenimpl(r6), Color.m484getBlueimpl(r6), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.m340contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens))));
                    androidx.compose.material3.CardColors cardColors5 = new androidx.compose.material3.CardColors(fromToken, m340contentColorFor4WTKRHQ, m490compositeOverOWjLjI, Color2);
                    colorScheme.defaultElevatedCardColorsCached = cardColors5;
                    cardColors4 = cardColors5;
                }
                CardColors cardColors6 = DebugUtils.toCardColors(cardColors4);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeElevationsKt.LocalThemeElevations;
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                i2 = i3 & (-8177);
                shape3 = value;
                cardColors3 = cardColors6;
                elevatedCardElevation = new CardElevation.ElevatedCardElevation();
            } else {
                gapComposer.skipToGroupEnd();
                cardColors3 = cardColors;
                elevatedCardElevation = cardElevation;
                i2 = i3 & (-8177);
                shape3 = shape;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(681870408);
            CardKt.ElevatedCard(modifier, shape3, DebugUtils.toMaterial3CardColors(cardColors3), elevatedCardElevation.toMaterial3CardElevation(gapComposer), composableLambdaImpl, gapComposer, (i2 & 126) | 24576);
            gapComposer.end(false);
            cardColors2 = cardColors3;
            cardElevation2 = elevatedCardElevation;
            shape2 = shape3;
        } else {
            gapComposer.skipToGroupEnd();
            shape2 = shape;
            cardColors2 = cardColors;
            cardElevation2 = cardElevation;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(modifier, shape2, cardColors2, cardElevation2, composableLambdaImpl, i, 2);
        }
    }

    /* renamed from: CircularProgressIndicator-iJQMabo, reason: not valid java name */
    public static final void m939CircularProgressIndicatoriJQMabo(Modifier modifier, long j, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        long j2;
        Modifier modifier3;
        Modifier modifier4;
        int i4;
        long value;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1472392407);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            i3 = i | (gapComposer.changed(modifier2) ? 4 : 2);
        }
        int i6 = i3 | 16;
        if (gapComposer.shouldExecute(i6 & 1, (i6 & 19) != 18)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                modifier4 = i5 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
                i4 = i6 & (-113);
                value = ColorSchemeKt.getValue(ListTokens.ActiveIndicatorColor$1, gapComposer);
            } else {
                gapComposer.skipToGroupEnd();
                i4 = i6 & (-113);
                modifier4 = modifier2;
                value = j;
            }
            gapComposer.endDefaults();
            ProgressIndicatorKt.m353CircularProgressIndicator4lLiAd8(modifier4, value, 0.0f, 0L, 0, 0.0f, gapComposer, i4 & 126, 60);
            modifier3 = modifier4;
            j2 = value;
        } else {
            gapComposer.skipToGroupEnd();
            j2 = j;
            modifier3 = modifier2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda16(modifier3, j2, i, i2);
        }
    }

    public static final void ContentLoadingErrorView(LoadingErrorState loadingErrorState, final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, Alignment alignment, final ComposableLambdaImpl composableLambdaImpl3, Composer composer, int i) {
        int i2;
        Alignment alignment2;
        loadingErrorState.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1293559500);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(loadingErrorState) : gapComposer.changedInstance(loadingErrorState) ? 4 : 2) | i;
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
            i2 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        final int i3 = i2 | 24576;
        if ((196608 & i) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl3) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            BiasAlignment biasAlignment = Alignment.Companion.Center;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
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
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Data$$ExternalSyntheticLambda0(23);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            CrossfadeKt.AnimatedContent(loadingErrorState, null, null, null, "ContentLoadingErrorView", (Function1) rememberedValue, Expect_jvmKt.rememberComposableLambda(-1898085286, new Function4() { // from class: app.k9mail.core.ui.compose.designsystem.molecule.ContentLoadingErrorViewKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    LoadingErrorState loadingErrorState2 = (LoadingErrorState) obj2;
                    Composer composer2 = (Composer) obj3;
                    int intValue = ((Integer) obj4).intValue();
                    ((AnimatedContentScopeImpl) obj).getClass();
                    loadingErrorState2.getClass();
                    if ((intValue & 48) == 0) {
                        intValue |= (intValue & 64) == 0 ? ((GapComposer) composer2).changed(loadingErrorState2) : ((GapComposer) composer2).changedInstance(loadingErrorState2) ? 32 : 16;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 145) != 144)) {
                        Object error = loadingErrorState2.getError();
                        if (loadingErrorState2.isLoading()) {
                            gapComposer2.startReplaceGroup(1301144931);
                            ComposableLambdaImpl.this.invoke((Object) gapComposer2, (Object) 0);
                            gapComposer2.end(false);
                        } else if (error != null) {
                            gapComposer2.startReplaceGroup(1301146475);
                            composableLambdaImpl2.invoke(error, (Object) gapComposer2, (Object) 0);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(1301147822);
                            composableLambdaImpl3.invoke(loadingErrorState2, gapComposer2, Integer.valueOf((i3 & 8) | ((intValue >> 3) & 14)));
                            gapComposer2.end(false);
                        }
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 1794048 | (i3 & 8) | (i3 & 14), 14);
            gapComposer.end(true);
            alignment2 = biasAlignment;
        } else {
            gapComposer.skipToGroupEnd();
            alignment2 = alignment;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(loadingErrorState, composableLambdaImpl, composableLambdaImpl2, modifier, alignment2, composableLambdaImpl3, i);
        }
    }

    public static final void LandscapistImage(ImageOptions imageOptions, Modifier modifier, Painter painter, Composer composer, int i) {
        imageOptions.getClass();
        modifier.getClass();
        painter.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1825163718);
        int i2 = (gapComposer.changed(imageOptions) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i3 = i2 | (gapComposer.changedInstance(painter) ? 256 : 128);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            ImageKt.Image(painter, imageOptions.getContentDescription(), modifier, imageOptions.getAlignment(), imageOptions.getContentScale(), imageOptions.getAlpha(), imageOptions.getColorFilter(), gapComposer, ((i3 >> 6) & 14) | 8 | ((i3 << 3) & 896), 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(imageOptions, modifier, painter, i, 28);
        }
    }

    public static final void OnboardingNavHost(FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2, NoOpOnboardingMigrationManager noOpOnboardingMigrationManager, Composer composer, int i) {
        GapComposer gapComposer;
        int i2;
        NoOpOnboardingMigrationManager noOpOnboardingMigrationManager2;
        NoOpOnboardingMigrationManager noOpOnboardingMigrationManager3;
        int i3;
        Object navControllerImpl$$ExternalSyntheticLambda0;
        NavHostController navHostController;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-593703587);
        int i4 = (gapComposer2.changedInstance(featureLauncherNavHostKt$$ExternalSyntheticLambda2) ? 4 : 2) | i | 16;
        if (gapComposer2.shouldExecute(i4 & 1, (i4 & 19) != 18)) {
            gapComposer2.startDefaults();
            int i5 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i5 == 0 || gapComposer2.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope);
                Object rememberedValue = gapComposer2.rememberedValue();
                Object obj2 = rememberedValue;
                if (changed || rememberedValue == obj) {
                    obj2 = ViewSizeResolver.CC.m(NoOpOnboardingMigrationManager.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                noOpOnboardingMigrationManager3 = (NoOpOnboardingMigrationManager) obj2;
                i3 = i4 & (-113);
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i4 & (-113);
                noOpOnboardingMigrationManager3 = noOpOnboardingMigrationManager;
            }
            gapComposer2.endDefaults();
            NavHostController rememberNavController = ActionBar.rememberNavController(new Navigator[0], gapComposer2);
            Object[] objArr = new Object[0];
            Object rememberedValue2 = gapComposer2.rememberedValue();
            int i6 = 14;
            if (rememberedValue2 == obj) {
                rememberedValue2 = new UtilsKt$$ExternalSyntheticLambda0(i6);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue2, gapComposer2, 48);
            boolean changedInstance = gapComposer2.changedInstance(noOpOnboardingMigrationManager3) | gapComposer2.changedInstance(rememberNavController) | ((i3 & 14) == 4) | gapComposer2.changed(mutableState);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                noOpOnboardingMigrationManager2 = noOpOnboardingMigrationManager3;
                navHostController = rememberNavController;
                navControllerImpl$$ExternalSyntheticLambda0 = new NavControllerImpl$$ExternalSyntheticLambda0(noOpOnboardingMigrationManager2, navHostController, featureLauncherNavHostKt$$ExternalSyntheticLambda2, mutableState, 12);
                gapComposer2.updateRememberedValue(navControllerImpl$$ExternalSyntheticLambda0);
            } else {
                navControllerImpl$$ExternalSyntheticLambda0 = rememberedValue3;
                noOpOnboardingMigrationManager2 = noOpOnboardingMigrationManager3;
                navHostController = rememberNavController;
            }
            Function1 function1 = (Function1) navControllerImpl$$ExternalSyntheticLambda0;
            i2 = 1;
            gapComposer = gapComposer2;
            Utf8.SafeProcessor.NavHost(navHostController, "welcome", (Modifier) null, (Alignment) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, function1, gapComposer, 48);
        } else {
            gapComposer = gapComposer2;
            i2 = 1;
            gapComposer.skipToGroupEnd();
            noOpOnboardingMigrationManager2 = noOpOnboardingMigrationManager;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, i2, featureLauncherNavHostKt$$ExternalSyntheticLambda2, noOpOnboardingMigrationManager2);
        }
    }

    public static final int access$parseTime(String str) {
        List list;
        Collection collection;
        Pattern compile = Pattern.compile(":");
        compile.getClass();
        StringsKt.requireNonNegativeLimit(0);
        Matcher matcher = compile.matcher(str);
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList(10);
            int i = 0;
            do {
                arrayList.add(str.subSequence(i, matcher.start()).toString());
                i = matcher.end();
            } while (matcher.find());
            arrayList.add(str.subSequence(i, str.length()).toString());
            list = arrayList;
        } else {
            list = IntOffsetKt.listOf(str.toString());
        }
        if (!list.isEmpty()) {
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() != 0) {
                    collection = CollectionsKt.take(list, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        collection = EmptyList.INSTANCE;
        String[] strArr = (String[]) collection.toArray(new String[0]);
        return (Integer.parseInt(strArr[0]) * 60) + Integer.parseInt(strArr[1]);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$runFileDiagnosticsIfNotCorruption(java.io.File r4, kotlin.jvm.functions.Function1 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof androidx.datastore.core.FileStorageKt$runFileDiagnosticsIfNotCorruption$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.FileStorageKt$runFileDiagnosticsIfNotCorruption$1 r0 = (androidx.datastore.core.FileStorageKt$runFileDiagnosticsIfNotCorruption$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.FileStorageKt$runFileDiagnosticsIfNotCorruption$1 r0 = new androidx.datastore.core.FileStorageKt$runFileDiagnosticsIfNotCorruption$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            java.io.File r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.io.IOException -> L27
            return r6
        L27:
            r5 = move-exception
            goto L41
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r4     // Catch: java.io.IOException -> L27
            r0.label = r2     // Catch: java.io.IOException -> L27
            java.lang.Object r4 = r5.invoke(r0)     // Catch: java.io.IOException -> L27
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L40
            return r5
        L40:
            return r4
        L41:
            boolean r6 = r5 instanceof androidx.datastore.core.CorruptionException
            if (r6 != 0) goto La5
            r4.getClass()
            boolean r6 = r4.exists()
            if (r6 == 0) goto La0
            boolean r6 = r4.isFile()
            if (r6 == 0) goto L7a
            boolean r6 = r4.canRead()
            if (r6 == 0) goto L6a
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L65
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L65:
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L6a:
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L75
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L75:
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L7a:
            boolean r6 = r4.canRead()
            if (r6 == 0) goto L90
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L8b
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L8b:
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L90:
            boolean r6 = r4.canWrite()
            if (r6 == 0) goto L9b
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        L9b:
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
            goto La4
        La0:
            java.io.IOException r4 = androidx.room.util.RelationUtil.attachParentStacktrace(r4, r5)
        La4:
            throw r4
        La5:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.sasl.OAuthBearer.access$runFileDiagnosticsIfNotCorruption(java.io.File, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: addPointerInputChange-0AR0LA0, reason: not valid java name */
    public static final void m940addPointerInputChange0AR0LA0(PreviewView.AnonymousClass1 anonymousClass1, PointerInputChange pointerInputChange, long j) {
        VirtualCameraCaptureResult virtualCameraCaptureResult = (VirtualCameraCaptureResult) anonymousClass1.this$0;
        virtualCameraCaptureResult.getClass();
        VelocityTracker1D velocityTracker1D = (VelocityTracker1D) virtualCameraCaptureResult.mTagBundle;
        VelocityTracker1D velocityTracker1D2 = (VelocityTracker1D) virtualCameraCaptureResult.mBaseCameraCaptureResult;
        boolean changedToDownIgnoreConsumed = PointerId.changedToDownIgnoreConsumed(pointerInputChange);
        long j2 = pointerInputChange.uptimeMillis;
        if (changedToDownIgnoreConsumed) {
            ArraysKt___ArraysKt.fill(0, r6.length, null, velocityTracker1D2.samples);
            velocityTracker1D2.index = 0;
            ArraysKt___ArraysKt.fill(0, r6.length, null, velocityTracker1D.samples);
            velocityTracker1D.index = 0;
            virtualCameraCaptureResult.mTimestamp = 0L;
        }
        if (!PointerId.changedToUpIgnoreConsumed(pointerInputChange)) {
            List list = pointerInputChange._historical;
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            int i = 0;
            for (int size = list.size(); i < size; size = size) {
                HistoricalChange historicalChange = (HistoricalChange) list.get(i);
                virtualCameraCaptureResult.m95addPositionUv8p0NA(historicalChange.uptimeMillis, Offset.m441plusMKHz9U(historicalChange.originalEventPosition, j));
                i++;
            }
            virtualCameraCaptureResult.m95addPositionUv8p0NA(j2, Offset.m441plusMKHz9U(pointerInputChange.originalEventPosition, j));
        }
        if (PointerId.changedToUpIgnoreConsumed(pointerInputChange) && j2 - virtualCameraCaptureResult.mTimestamp > 40) {
            ArraysKt___ArraysKt.fill(0, r0.length, null, velocityTracker1D2.samples);
            velocityTracker1D2.index = 0;
            ArraysKt___ArraysKt.fill(0, r2.length, null, velocityTracker1D.samples);
            velocityTracker1D.index = 0;
            virtualCameraCaptureResult.mTimestamp = 0L;
        }
        virtualCameraCaptureResult.mTimestamp = j2;
    }

    public static final String buildOAuthBearerInitialClientResponse(String str, String str2) {
        str.getClass();
        String replace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "=", "=3D"), ",", "=2C");
        ByteString byteString = ByteString.EMPTY;
        return Adler32.encodeUtf8("n,a=" + replace$default + ",\u0001auth=Bearer " + str2 + "\u0001\u0001").base64();
    }

    public static final MutableState collectIsFocusedAsState(MutableInteractionSourceImpl mutableInteractionSourceImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean z = (((i & 14) ^ 6) > 4 && gapComposer.changed(mutableInteractionSourceImpl)) || (i & 6) == 4;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (z || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new RippleNode$onAttach$1(mutableInteractionSourceImpl, mutableState, null, 19);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.LaunchedEffect(gapComposer, mutableInteractionSourceImpl, (Function2) rememberedValue2);
        return mutableState;
    }

    public static final void composable(NavGraphBuilder navGraphBuilder, ClassReference classReference, List list, ComposableLambdaImpl composableLambdaImpl) {
        NavigatorProvider navigatorProvider = navGraphBuilder.provider;
        navigatorProvider.getClass();
        ComposeNavigatorDestinationBuilder composeNavigatorDestinationBuilder = new ComposeNavigatorDestinationBuilder((ComposeNavigator) navigatorProvider.getNavigator(DBUtil.getNameForNavigator$navigation_common_release(ComposeNavigator.class)), classReference, composableLambdaImpl);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavDeepLink navDeepLink = (NavDeepLink) it.next();
            navDeepLink.getClass();
            composeNavigatorDestinationBuilder.deepLinks.add(navDeepLink);
        }
        navGraphBuilder.destinations.add(composeNavigatorDestinationBuilder.build());
    }

    public static void composable$default(NavGraphBuilder navGraphBuilder, String str, ComposableLambdaImpl composableLambdaImpl) {
        NavigatorProvider navigatorProvider = navGraphBuilder.provider;
        navigatorProvider.getClass();
        navGraphBuilder.destinations.add(new ComposeNavigatorDestinationBuilder((ComposeNavigator) navigatorProvider.getNavigator(DBUtil.getNameForNavigator$navigation_common_release(ComposeNavigator.class)), str, composableLambdaImpl).build());
    }

    public static AccountSettingsFragment create(String str, String str2) {
        str.getClass();
        AccountSettingsFragment accountSettingsFragment = new AccountSettingsFragment();
        OperationKt.withArguments(accountSettingsFragment, new Pair("accountUuid", str), new Pair("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", str2));
        return accountSettingsFragment;
    }

    /* renamed from: create-U86x6Zg, reason: not valid java name */
    public static AndroidImageWriter m941createU86x6Zg(Surface surface, int i, StreamFormat streamFormat, Handler handler) {
        ImageWriter newInstance;
        handler.getClass();
        int i2 = Build.VERSION.SDK_INT;
        int i3 = streamFormat.value;
        if (i2 >= 29) {
            newInstance = Api29Compat.imageWriterNewInstance(i3, surface);
        } else {
            Log.w("CXCP", "Ignoring format (" + ((Object) StreamFormat.m45toStringimpl(i3)) + ") for " + ((Object) ("Input-" + i)) + ". Android " + i2 + " does not support creating ImageWriters with formats. This may lead to unexpected behaviors.");
            newInstance = ImageWriter.newInstance(surface, 1);
            newInstance.getClass();
        }
        AndroidImageWriter androidImageWriter = new AndroidImageWriter(newInstance, i);
        newInstance.setOnImageReleasedListener(androidImageWriter, handler);
        return androidImageWriter;
    }

    public static final PaddingValuesImpl defaultHeadlineItemPadding(GapComposer gapComposer) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
        ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
        ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
        ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
        ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
        return new PaddingValuesImpl(32.0f, 24.0f, 32.0f, 8.0f);
    }

    public static final PaddingValuesImpl defaultItemPadding(Composer composer) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
        GapComposer gapComposer = (GapComposer) composer;
        ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
        ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
        return new PaddingValuesImpl(32.0f, 0.0f, 32.0f, 0.0f);
    }

    public static boolean dispatchBeforeHierarchy(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int indexOfKey;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList2 = ViewCompat.UnhandledKeyEventManager.sViewsWithListeners;
            ViewCompat.UnhandledKeyEventManager unhandledKeyEventManager = (ViewCompat.UnhandledKeyEventManager) view.getTag(R.id.tag_unhandled_key_event_manager);
            WeakReference weakReference = null;
            if (unhandledKeyEventManager == null) {
                unhandledKeyEventManager = new ViewCompat.UnhandledKeyEventManager();
                unhandledKeyEventManager.mViewsContainingListeners = null;
                unhandledKeyEventManager.mCapturedKeys = null;
                unhandledKeyEventManager.mLastDispatchedPreViewKeyEvent = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, unhandledKeyEventManager);
            }
            WeakReference weakReference2 = unhandledKeyEventManager.mLastDispatchedPreViewKeyEvent;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                unhandledKeyEventManager.mLastDispatchedPreViewKeyEvent = new WeakReference(keyEvent);
                if (unhandledKeyEventManager.mCapturedKeys == null) {
                    unhandledKeyEventManager.mCapturedKeys = new SparseArray();
                }
                SparseArray sparseArray = unhandledKeyEventManager.mCapturedKeys;
                if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
                    sparseArray.removeAt(indexOfKey);
                }
                if (weakReference == null) {
                    weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = (View) weakReference.get();
                    if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
                        return true;
                    }
                    arrayList.get(size).getClass();
                    DBUtil$$ExternalSyntheticBUOutline0.m();
                    return false;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean dispatchKeyEvent(androidx.core.view.KeyEventDispatcher$Component r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 0
            if (r7 != 0) goto L5
            goto Le4
        L5:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L10
            boolean r7 = r7.superDispatchKeyEvent(r10)
            return r7
        L10:
            boolean r1 = r9 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L82
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L65
            android.app.ActionBar r8 = r9.getActionBar()
            int r1 = r10.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L65
            if (r8 == 0) goto L65
            boolean r1 = com.fsck.k9.sasl.OAuthBearer.sActionBarFieldsFetched
            if (r1 != 0) goto L4d
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r0] = r6     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            com.fsck.k9.sasl.OAuthBearer.sActionBarOnMenuKeyMethod = r1     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            com.fsck.k9.sasl.OAuthBearer.sActionBarFieldsFetched = r3
        L4d:
            java.lang.reflect.Method r1 = com.fsck.k9.sasl.OAuthBearer.sActionBarOnMenuKeyMethod
            if (r1 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4[r0] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r1.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r0 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r0 == 0) goto L65
            goto L81
        L65:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r7, r10)
            if (r8 == 0) goto L77
            goto L81
        L77:
            if (r7 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        L7d:
            boolean r3 = r10.dispatch(r9, r2, r9)
        L81:
            return r3
        L82:
            boolean r1 = r9 instanceof android.app.Dialog
            if (r1 == 0) goto Ld5
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = com.fsck.k9.sasl.OAuthBearer.sDialogFieldsFetched
            if (r7 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L99
            com.fsck.k9.sasl.OAuthBearer.sDialogKeyListenerField = r7     // Catch: java.lang.NoSuchFieldException -> L99
            r7.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            com.fsck.k9.sasl.OAuthBearer.sDialogFieldsFetched = r3
        L9b:
            java.lang.reflect.Field r7 = com.fsck.k9.sasl.OAuthBearer.sDialogKeyListenerField
            if (r7 == 0) goto La6
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r7 = r2
        La7:
            if (r7 == 0) goto Lb4
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r7, r10)
            if (r8 == 0) goto Lca
            goto Ld4
        Lca:
            if (r7 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        Ld0:
            boolean r3 = r10.dispatch(r9, r2, r9)
        Ld4:
            return r3
        Ld5:
            if (r8 == 0) goto Ldd
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r8, r10)
            if (r8 != 0) goto Le3
        Ldd:
            boolean r7 = r7.superDispatchKeyEvent(r10)
            if (r7 == 0) goto Le4
        Le3:
            return r3
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.sasl.OAuthBearer.dispatchKeyEvent(androidx.core.view.KeyEventDispatcher$Component, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }

    public static final float dot(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    public static CallbackToFutureAdapter$SafeFuture getFuture(CallbackToFutureAdapter$Resolver callbackToFutureAdapter$Resolver) {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = callbackToFutureAdapter$Resolver.getClass();
        try {
            Object attachCompleter = callbackToFutureAdapter$Resolver.attachCompleter(callbackToFutureAdapter$Completer);
            if (attachCompleter == null) {
                return callbackToFutureAdapter$SafeFuture;
            }
            callbackToFutureAdapter$Completer.tag = attachCompleter;
            return callbackToFutureAdapter$SafeFuture;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
            return callbackToFutureAdapter$SafeFuture;
        }
    }

    public static final ImageVector getMoreVert() {
        ImageVector imageVector = _moreVert;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.MoreVert", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder m = Modifier.CC.m(12.0f, 8.0f);
        m.curveToRelative(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        m.reflectiveCurveToRelative(-0.9f, -2.0f, -2.0f, -2.0f);
        m.reflectiveCurveToRelative(-2.0f, 0.9f, -2.0f, 2.0f);
        m.reflectiveCurveToRelative(0.9f, 2.0f, 2.0f, 2.0f);
        m.close();
        m.moveTo(12.0f, 10.0f);
        m.curveToRelative(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        m.reflectiveCurveToRelative(0.9f, 2.0f, 2.0f, 2.0f);
        m.reflectiveCurveToRelative(2.0f, -0.9f, 2.0f, -2.0f);
        m.reflectiveCurveToRelative(-0.9f, -2.0f, -2.0f, -2.0f);
        m.close();
        m.moveTo(12.0f, 16.0f);
        m.curveToRelative(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        m.reflectiveCurveToRelative(0.9f, 2.0f, 2.0f, 2.0f);
        m.reflectiveCurveToRelative(2.0f, -0.9f, 2.0f, -2.0f);
        m.reflectiveCurveToRelative(-0.9f, -2.0f, -2.0f, -2.0f);
        m.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", m.namesAndValues);
        ImageVector build = builder.build();
        _moreVert = build;
        return build;
    }

    public static final ResolvedTextDirection getTextDirectionForOffset(TextLayoutResult textLayoutResult, int i) {
        TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        if (textLayoutInput.text.text.length() != 0) {
            int lineForOffset = multiParagraph.getLineForOffset(i);
            if ((i != 0 && lineForOffset == multiParagraph.getLineForOffset(i - 1)) || (i != textLayoutInput.text.text.length() && lineForOffset == multiParagraph.getLineForOffset(i + 1))) {
                return textLayoutResult.getBidiRunDirection(i);
            }
        }
        return textLayoutResult.getParagraphDirection(i);
    }

    public static final int getTotalChangedRows(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT changes()");
        try {
            prepare.step();
            int i = (int) prepare.getLong(0);
            Cookie.Companion.closeFinally(prepare, null);
            return i;
        } finally {
        }
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    public static boolean isFeatureSupported(String str) {
        WebViewFeatureInternal.AnonymousClass1 anonymousClass1 = WebViewFeatureInternal.ALGORITHMIC_DARKENING;
        Set<ApiFeature> unmodifiableSet = DesugarCollections.unmodifiableSet(ApiFeature.sValues);
        HashSet hashSet = new HashSet();
        for (ApiFeature apiFeature : unmodifiableSet) {
            if (apiFeature.mPublicFeatureValue.equals(str)) {
                hashSet.add(apiFeature);
            }
        }
        if (hashSet.isEmpty()) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Unknown feature ".concat(str));
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ApiFeature apiFeature2 = (ApiFeature) it.next();
            if (apiFeature2.isSupportedByFramework() || apiFeature2.isSupportedByWebView()) {
                return true;
            }
        }
        return false;
    }

    public static final MutableActionParameters mutableActionParametersOf(RelationUtil... relationUtilArr) {
        ArrayList arrayList = new ArrayList(relationUtilArr.length);
        if (relationUtilArr.length <= 0) {
            Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
            return new MutableActionParameters(MapsKt__MapsKt.mutableMapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length)));
        }
        RelationUtil relationUtil = relationUtilArr[0];
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Headers.Builder parse(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ImapResponse imapResponse = (ImapResponse) it.next();
            if (!imapResponse.isTagged() && imapResponse.size() >= 2 && StateLayer.equalsIgnoreCase(imapResponse.get(0), "SEARCH")) {
                int size = imapResponse.size();
                for (int i = 1; i < size; i++) {
                    try {
                        arrayList2.add(Long.valueOf(Long.parseLong((String) imapResponse.get(i))));
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return new Headers.Builder(arrayList2);
    }

    public static final void polyFitLeastSquares(float[] fArr, float[] fArr2, int i, float[] fArr3) {
        if (i == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("At least one point must be provided");
        }
        int i2 = 2 >= i ? i - 1 : 2;
        int i3 = i2 + 1;
        float[][] fArr4 = new float[i3][];
        for (int i4 = 0; i4 < i3; i4++) {
            fArr4[i4] = new float[i];
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr4[0][i5] = 1.0f;
            for (int i6 = 1; i6 < i3; i6++) {
                fArr4[i6][i5] = fArr4[i6 - 1][i5] * fArr[i5];
            }
        }
        float[][] fArr5 = new float[i3][];
        for (int i7 = 0; i7 < i3; i7++) {
            fArr5[i7] = new float[i];
        }
        float[][] fArr6 = new float[i3][];
        for (int i8 = 0; i8 < i3; i8++) {
            fArr6[i8] = new float[i3];
        }
        int i9 = 0;
        while (i9 < i3) {
            float[] fArr7 = fArr5[i9];
            float[] fArr8 = fArr4[i9];
            fArr8.getClass();
            fArr7.getClass();
            System.arraycopy(fArr8, 0, fArr7, 0, i);
            for (int i10 = 0; i10 < i9; i10++) {
                float[] fArr9 = fArr5[i10];
                float dot = dot(fArr7, fArr9);
                for (int i11 = 0; i11 < i; i11++) {
                    fArr7[i11] = fArr7[i11] - (fArr9[i11] * dot);
                }
            }
            float sqrt = (float) Math.sqrt(dot(fArr7, fArr7));
            if (sqrt < 1.0E-6f) {
                sqrt = 1.0E-6f;
            }
            float f = 1.0f / sqrt;
            for (int i12 = 0; i12 < i; i12++) {
                fArr7[i12] = fArr7[i12] * f;
            }
            float[] fArr10 = fArr6[i9];
            int i13 = 0;
            while (i13 < i3) {
                fArr10[i13] = i13 < i9 ? 0.0f : dot(fArr7, fArr4[i13]);
                i13++;
            }
            i9++;
        }
        for (int i14 = i2; -1 < i14; i14--) {
            float dot2 = dot(fArr5[i14], fArr2);
            float[] fArr11 = fArr6[i14];
            int i15 = i14 + 1;
            if (i15 <= i2) {
                int i16 = i2;
                while (true) {
                    dot2 -= fArr11[i16] * fArr3[i16];
                    if (i16 != i15) {
                        i16--;
                    }
                }
            }
            fArr3[i14] = dot2 / fArr11[i14];
        }
    }

    public static boolean supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Google")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Google")) {
                return false;
            }
        }
        String str3 = Build.MODEL;
        str3.getClass();
        String upperCase = str3.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        return ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS.contains(upperCase);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2() {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER
            r0.getClass()
            java.lang.String r1 = "Samsung"
            boolean r0 = r0.equalsIgnoreCase(r1)
            r2 = 0
            if (r0 != 0) goto L19
            java.lang.String r0 = android.os.Build.BRAND
            r0.getClass()
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L41
        L19:
            java.lang.String r0 = android.os.Build.MODEL
            r0.getClass()
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r0 = r0.toUpperCase(r1)
            r0.getClass()
            java.util.Set r1 = androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS
            java.util.Iterator r1 = r1.iterator()
        L2d:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L41
            java.lang.Object r3 = r1.next()
            java.lang.String r3 = (java.lang.String) r3
            boolean r3 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r0, r3, r2)
            if (r3 == 0) goto L2d
            r0 = 1
            return r0
        L41:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.sasl.OAuthBearer.supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2():boolean");
    }

    public static final String toResourceString(ValidationError validationError, Resources resources) {
        validationError.getClass();
        resources.getClass();
        if (validationError instanceof ValidateServer$ValidateServerError) {
            ValidateServer$ValidateServerError validateServer$ValidateServerError = (ValidateServer$ValidateServerError) validationError;
            if (Intrinsics.areEqual(validateServer$ValidateServerError, ValidateServer$ValidateServerError.EmptyServer.INSTANCE)) {
                String string = resources.getString(R.string.account_server_settings_validation_error_server_required);
                string.getClass();
                return string;
            }
            if (!Intrinsics.areEqual(validateServer$ValidateServerError, ValidateServer$ValidateServerError.InvalidHostnameOrIpAddress.INSTANCE)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            String string2 = resources.getString(R.string.account_server_settings_validation_error_server_invalid_ip_or_hostname);
            string2.getClass();
            return string2;
        }
        if (validationError instanceof ValidatePort$ValidatePortError) {
            ValidatePort$ValidatePortError validatePort$ValidatePortError = (ValidatePort$ValidatePortError) validationError;
            if (validatePort$ValidatePortError instanceof ValidatePort$ValidatePortError.EmptyPort) {
                String string3 = resources.getString(R.string.account_server_settings_validation_error_port_required);
                string3.getClass();
                return string3;
            }
            if (!(validatePort$ValidatePortError instanceof ValidatePort$ValidatePortError.InvalidPort)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            String string4 = resources.getString(R.string.account_server_settings_validation_error_port_invalid);
            string4.getClass();
            return string4;
        }
        if (validationError instanceof ValidateUsername$ValidateUsernameError$EmptyUsername) {
            if (!Intrinsics.areEqual((ValidateUsername$ValidateUsernameError$EmptyUsername) validationError, ValidateUsername$ValidateUsernameError$EmptyUsername.INSTANCE)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            String string5 = resources.getString(R.string.account_server_settings_validation_error_username_required);
            string5.getClass();
            return string5;
        }
        if (validationError instanceof ValidatePassword$ValidatePasswordError$EmptyPassword) {
            if (!Intrinsics.areEqual((ValidatePassword$ValidatePasswordError$EmptyPassword) validationError, ValidatePassword$ValidatePasswordError$EmptyPassword.INSTANCE)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            String string6 = resources.getString(R.string.account_server_settings_validation_error_password_required);
            string6.getClass();
            return string6;
        }
        if (!(validationError instanceof ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix)) {
            Regex$$ExternalSyntheticBUOutline0.m$2(validationError, "Unknown error: ");
            return null;
        }
        if (!Intrinsics.areEqual((ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix) validationError, ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix.INSTANCE)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        String string7 = resources.getString(R.string.account_server_settings_validation_error_imap_prefix_blank);
        string7.getClass();
        return string7;
    }

    public abstract Intent createIntent(AppCompatActivity appCompatActivity, Object obj);

    public BiometricPrompt getSynchronousResult(AppCompatActivity appCompatActivity, Object obj) {
        return null;
    }

    public abstract Object parseResult(Intent intent, int i);
}
