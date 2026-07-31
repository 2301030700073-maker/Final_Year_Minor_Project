package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.appcompat.view.ActionMode;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.AutoValue_Identifier;
import androidx.camera.core.impl.Config;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ShapesKt;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda8;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.LaunchedEffectImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$1$1;
import androidx.compose.runtime.State;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.concurrent.futures.DirectExecutor;
import androidx.core.util.DebugUtils;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLiteStatement;
import androidx.webkit.internal.ApiHelperForP;
import androidx.work.Data;
import androidx.work.Operation$State;
import androidx.work.impl.ToContinuation;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.content.IncomingFormItemsKt$$ExternalSyntheticLambda6;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import app.k9mail.feature.onboarding.permissions.ui.PermissionBoxKt$$ExternalSyntheticLambda3;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$UiPermissionState;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.FontSizes;
import com.fsck.k9.K9;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageListActivityConfig;
import com.fsck.k9.mail.store.imap.ImapList;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda5;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import com.google.common.util.concurrent.ListenableFuture;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import com.skydoves.landscapist.components.ImageComponent;
import com.skydoves.landscapist.components.ImagePluginComponent;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import kotlin.KotlinNullPointerException;
import kotlin.Triple;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.StateFlow;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.preference.SubTheme;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeElevations;
import net.thunderbird.core.ui.compose.theme2.ThemeElevationsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.BooleanInputField;
import net.thunderbird.feature.notification.VibratePattern;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ActionBar {
    public static ImageVector _archive;
    public static ImageVector _report;

    public static final void AutoDiscoveryResultApprovalView(BooleanInputField booleanInputField, Function1 function1, Composer composer, int i) {
        Function1 function12;
        booleanInputField.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2057241455);
        int i2 = (gapComposer.changedInstance(booleanInputField) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings), Modifier.Companion.$$INSTANCE, 8.0f, gapComposer);
            String stringResource = Operation$State.stringResource(gapComposer, R.string.account_setup_auto_discovery_result_approval_checkbox_label);
            Boolean bool = booleanInputField.value;
            boolean booleanValue = bool != null ? bool.booleanValue() : false;
            ValidationError validationError = booleanInputField.error;
            function12 = function1;
            TextInputKt.CheckboxInput(196608 | ((i2 << 3) & 896), 8, OffsetKt.m213PaddingValuesYgX7TsA$default(3, 0.0f), gapComposer, null, stringResource, validationError != null ? AutoDiscoveryStringMapperKt.toAutoDiscoveryValidationErrorString(validationError, resources) : null, function12, booleanValue);
        } else {
            function12 = function1;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 27, booleanInputField, function12);
        }
    }

    public static final void CardFilled(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        Shape shape2;
        Modifier modifier3;
        Shape shape3;
        CardElevation cardElevation2;
        Shape shape4;
        Modifier modifier4;
        Shape shape5;
        CardElevation filledCardElevation;
        int i4;
        Modifier modifier5;
        boolean z;
        Shape shape6;
        long Color;
        long Color2;
        int i5;
        int i6;
        CardColors cardColors2 = cardColors;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2090043932);
        int i7 = i2 & 1;
        if (i7 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (gapComposer.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                shape2 = shape;
                if (gapComposer.changed(shape2)) {
                    i6 = 32;
                    i3 |= i6;
                }
            } else {
                shape2 = shape;
            }
            i6 = 16;
            i3 |= i6;
        } else {
            shape2 = shape;
        }
        if ((i & 384) == 0) {
            if ((i2 & 4) == 0) {
                if ((i & 512) == 0 ? gapComposer.changed(cardColors2) : gapComposer.changedInstance(cardColors2)) {
                    i5 = 256;
                    i3 |= i5;
                }
            }
            i5 = 128;
            i3 |= i5;
        }
        if ((i & 3072) == 0) {
            i3 |= 1024;
        }
        int i8 = i3 | 24576;
        if ((196608 & i) == 0) {
            i8 |= gapComposer.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i8 & 1, (74899 & i8) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Modifier modifier6 = i7 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
                if ((i2 & 2) != 0) {
                    shape4 = ShapesKt.getValue(ListTokens.ContainerShape$2, gapComposer);
                    i8 &= -113;
                } else {
                    shape4 = shape2;
                }
                if ((i2 & 4) != 0) {
                    ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                    androidx.compose.material3.CardColors cardColors3 = colorScheme.defaultCardColorsCached;
                    if (cardColors3 == null) {
                        ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.ContainerColor$4;
                        long fromToken = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                        long m340contentColorFor4WTKRHQ = ColorSchemeKt.m340contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens));
                        Color = ColorKt.Color(Color.m487getRedimpl(r9), Color.m486getGreenimpl(r9), Color.m484getBlueimpl(r9), ListTokens.DisabledContainerOpacity$2, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledContainerColor$2)));
                        modifier4 = modifier6;
                        shape5 = shape4;
                        long m490compositeOverOWjLjI = ColorKt.m490compositeOverOWjLjI(Color, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens));
                        Color2 = ColorKt.Color(Color.m487getRedimpl(r1), Color.m486getGreenimpl(r1), Color.m484getBlueimpl(r1), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.m340contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens))));
                        androidx.compose.material3.CardColors cardColors4 = new androidx.compose.material3.CardColors(fromToken, m340contentColorFor4WTKRHQ, m490compositeOverOWjLjI, Color2);
                        colorScheme.defaultCardColorsCached = cardColors4;
                        cardColors3 = cardColors4;
                    } else {
                        modifier4 = modifier6;
                        shape5 = shape4;
                    }
                    cardColors2 = DebugUtils.toCardColors(cardColors3);
                    i8 &= -897;
                } else {
                    modifier4 = modifier6;
                    shape5 = shape4;
                }
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeElevationsKt.LocalThemeElevations;
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeElevations) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                filledCardElevation = new CardElevation.FilledCardElevation();
                i4 = i8 & (-7169);
                modifier5 = modifier4;
                z = false;
                shape6 = shape5;
            } else {
                gapComposer.skipToGroupEnd();
                if ((i2 & 2) != 0) {
                    i8 &= -113;
                }
                if ((i2 & 4) != 0) {
                    i8 &= -897;
                }
                int i9 = i8 & (-7169);
                modifier5 = modifier2;
                z = false;
                i4 = i9;
                shape6 = shape2;
                filledCardElevation = cardElevation;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(358489936);
            CardKt.Card(modifier5, shape6, DebugUtils.toMaterial3CardColors(cardColors2), filledCardElevation.toMaterial3CardElevation(gapComposer), null, composableLambdaImpl, gapComposer, i4 & 458878, 16);
            gapComposer.end(z);
            cardElevation2 = filledCardElevation;
            modifier3 = modifier5;
            shape3 = shape6;
        } else {
            gapComposer.skipToGroupEnd();
            modifier3 = modifier2;
            shape3 = shape2;
            cardElevation2 = cardElevation;
        }
        CardColors cardColors5 = cardColors2;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda5(modifier3, shape3, cardColors5, cardElevation2, composableLambdaImpl, i, i2);
        }
    }

    public static final void ComposeFailureStatePlugins(ImageComponent imageComponent, Modifier modifier, ImageOptions imageOptions, Throwable th, Composer composer, int i) {
        imageComponent.getClass();
        modifier.getClass();
        imageOptions.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(334390494);
        int i2 = (gapComposer.changed(imageComponent) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(imageOptions) ? 256 : 128) | (gapComposer.changedInstance(th) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Iterable iterable = imageComponent instanceof ImagePluginComponent ? ((ImagePluginComponent) imageComponent).mutablePlugins : EmptyList.INSTANCE;
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
            }
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw Config.CC.m(it2);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(imageComponent, modifier, imageOptions, th, i, 12);
        }
    }

    public static final void ComposeLoadingStatePlugins(ImageComponent imageComponent, Modifier modifier, ImageOptions imageOptions, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        imageComponent.getClass();
        modifier.getClass();
        imageOptions.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1603288356);
        int i2 = (gapComposer.changed(imageComponent) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(imageOptions) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Iterable iterable = imageComponent instanceof ImagePluginComponent ? ((ImagePluginComponent) imageComponent).mutablePlugins : EmptyList.INSTANCE;
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
            }
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw Config.CC.m(it2);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(imageComponent, modifier, imageOptions, composableLambdaImpl, i, 13);
        }
    }

    public static final void ComposeSuccessStatePlugins(ImageComponent imageComponent, Modifier modifier, Object obj, ImageOptions imageOptions, ImageBitmap imageBitmap, Composer composer, int i) {
        imageComponent.getClass();
        modifier.getClass();
        imageOptions.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1998038945);
        int i2 = (gapComposer.changed(imageComponent) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changedInstance(obj) ? 256 : 128) | (gapComposer.changed(imageOptions) ? 2048 : 1024) | (gapComposer.changedInstance(imageBitmap) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Iterable iterable = imageComponent instanceof ImagePluginComponent ? ((ImagePluginComponent) imageComponent).mutablePlugins : EmptyList.INSTANCE;
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
            }
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw Config.CC.m(it2);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(imageComponent, modifier, obj, imageOptions, imageBitmap, i);
        }
    }

    public static final void ComposeWithComposablePlugins(ImageComponent imageComponent, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        imageComponent.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-676733423);
        int i2 = (gapComposer.changed(imageComponent) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Iterable iterable = imageComponent instanceof ImagePluginComponent ? ((ImagePluginComponent) imageComponent).mutablePlugins : EmptyList.INSTANCE;
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
            }
            if (arrayList.isEmpty()) {
                gapComposer.startReplaceGroup(11292734);
                composableLambdaImpl.invoke((Object) gapComposer, (Object) 6);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(11322556);
                gapComposer.startReplaceGroup(-1800747669);
                Iterator it2 = arrayList.iterator();
                ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
                while (it2.hasNext()) {
                    if (it2.next() != null) {
                        DBUtil$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    composableLambdaImpl2 = Expect_jvmKt.rememberComposableLambda(2142620920, new KoinModuleKt$$ExternalSyntheticLambda1(19), gapComposer);
                }
                gapComposer.end(false);
                composableLambdaImpl2.invoke((Object) gapComposer, (Object) 0);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 11, imageComponent, composableLambdaImpl);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0072, code lost:
    
        if ((r12 & 4) != 0) goto L47;
     */
    /* renamed from: DividerHorizontal-9IZ8Weo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m0DividerHorizontal9IZ8Weo(androidx.compose.ui.Modifier r6, float r7, long r8, androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            r4 = r10
            androidx.compose.runtime.GapComposer r4 = (androidx.compose.runtime.GapComposer) r4
            r10 = -688765011(0xffffffffd6f247ad, float:-1.3319483E14)
            r4.startRestartGroup(r10)
            r10 = r12 & 1
            if (r10 == 0) goto L10
            r0 = r11 | 6
            goto L20
        L10:
            r0 = r11 & 6
            if (r0 != 0) goto L1f
            boolean r0 = r4.changed(r6)
            if (r0 == 0) goto L1c
            r0 = 4
            goto L1d
        L1c:
            r0 = 2
        L1d:
            r0 = r0 | r11
            goto L20
        L1f:
            r0 = r11
        L20:
            r1 = r11 & 48
            if (r1 != 0) goto L34
            r1 = r12 & 2
            if (r1 != 0) goto L31
            boolean r1 = r4.changed(r7)
            if (r1 == 0) goto L31
            r1 = 32
            goto L33
        L31:
            r1 = 16
        L33:
            r0 = r0 | r1
        L34:
            r1 = r11 & 384(0x180, float:5.38E-43)
            if (r1 != 0) goto L48
            r1 = r12 & 4
            if (r1 != 0) goto L45
            boolean r1 = r4.changed(r8)
            if (r1 == 0) goto L45
            r1 = 256(0x100, float:3.59E-43)
            goto L47
        L45:
            r1 = 128(0x80, float:1.8E-43)
        L47:
            r0 = r0 | r1
        L48:
            r1 = r0 & 147(0x93, float:2.06E-43)
            r2 = 146(0x92, float:2.05E-43)
            if (r1 == r2) goto L50
            r1 = 1
            goto L51
        L50:
            r1 = 0
        L51:
            r2 = r0 & 1
            boolean r1 = r4.shouldExecute(r2, r1)
            if (r1 == 0) goto La0
            r4.startDefaults()
            r1 = r11 & 1
            if (r1 == 0) goto L7b
            boolean r1 = r4.getDefaultsInvalid()
            if (r1 == 0) goto L67
            goto L7b
        L67:
            r4.skipToGroupEnd()
            r10 = r12 & 2
            if (r10 == 0) goto L70
            r0 = r0 & (-113(0xffffffffffffff8f, float:NaN))
        L70:
            r10 = r12 & 4
            if (r10 == 0) goto L76
        L74:
            r0 = r0 & (-897(0xfffffffffffffc7f, float:NaN))
        L76:
            r5 = r6
            r2 = r8
            r6 = r0
            r0 = r7
            goto L94
        L7b:
            if (r10 == 0) goto L7f
            androidx.compose.ui.Modifier$Companion r6 = androidx.compose.ui.Modifier.Companion.$$INSTANCE
        L7f:
            r10 = r12 & 2
            if (r10 == 0) goto L87
            float r7 = androidx.compose.material3.DividerDefaults.Thickness
            r0 = r0 & (-113(0xffffffffffffff8f, float:NaN))
        L87:
            r10 = r12 & 4
            if (r10 == 0) goto L76
            float r8 = androidx.compose.material3.DividerDefaults.Thickness
            androidx.compose.material3.tokens.ColorSchemeKeyTokens r8 = androidx.compose.material3.tokens.ListTokens.Color
            long r8 = androidx.compose.material3.ColorSchemeKt.getValue(r8, r4)
            goto L74
        L94:
            r4.endDefaults()
            r1 = r6 & 1022(0x3fe, float:1.432E-42)
            androidx.compose.material3.CardKt.m330HorizontalDivider9IZ8Weo(r0, r1, r2, r4, r5)
            r8 = r0
            r9 = r2
            r7 = r5
            goto La6
        La0:
            r4.skipToGroupEnd()
            r9 = r8
            r8 = r7
            r7 = r6
        La6:
            androidx.compose.runtime.RecomposeScopeImpl r0 = r4.endRestartGroup()
            if (r0 == 0) goto Lb3
            app.k9mail.core.ui.compose.designsystem.atom.DividerHorizontalKt$$ExternalSyntheticLambda0 r6 = new app.k9mail.core.ui.compose.designsystem.atom.DividerHorizontalKt$$ExternalSyntheticLambda0
            r6.<init>()
            r0.block = r6
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ActionBar.m0DividerHorizontal9IZ8Weo(androidx.compose.ui.Modifier, float, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ErrorView(java.lang.String r29, androidx.compose.ui.Modifier r30, java.lang.String r31, kotlin.jvm.functions.Function0 r32, androidx.compose.ui.Alignment r33, androidx.compose.runtime.Composer r34, int r35, int r36) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ActionBar.ErrorView(java.lang.String, androidx.compose.ui.Modifier, java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.ui.Alignment, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void IconWithPermissionStateOverlay(ImageVector imageVector, PermissionsContract$UiPermissionState permissionsContract$UiPermissionState, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(451679280);
        int i2 = 2;
        int i3 = (gapComposer.changed(imageVector) ? 4 : 2) | i | (gapComposer.changed(permissionsContract$UiPermissionState.ordinal()) ? 32 : 16);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.BottomEnd, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m234size3ABfNKs(companion, 32.0f), null, gapComposer, i3 & 14, 12);
            gapComposer = gapComposer;
            int ordinal = permissionsContract$UiPermissionState.ordinal();
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(101874606);
                gapComposer.end(false);
            } else if (ordinal == 1) {
                gapComposer.startReplaceGroup(-1136802583);
                m1OverlayIcon3IgeMak(Icons$Filled.CheckCircle, ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).success, null, gapComposer, 0);
                gapComposer.end(false);
            } else {
                if (ordinal != 2) {
                    throw ViewSizeResolver.CC.m(gapComposer, 101873000, false);
                }
                gapComposer.startReplaceGroup(-1136587474);
                m1OverlayIcon3IgeMak(Icons$Filled.Cancel, ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).warning, null, gapComposer, 0);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, i2, imageVector, permissionsContract$UiPermissionState);
        }
    }

    public static final void IncomingServerSettingsContent(InteractionMode interactionMode, IncomingServerSettingsContract$State incomingServerSettingsContract$State, Function1 function1, Modifier modifier, Composer composer, int i) {
        interactionMode.getClass();
        incomingServerSettingsContract$State.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(357569887);
        int i2 = (gapComposer.changed(interactionMode.ordinal()) ? 4 : 2) | i | (gapComposer.changedInstance(incomingServerSettingsContract$State) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changed(modifier) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ScaffoldKt.ResponsiveWidthContainer(TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "IncomingServerSettingsContent").then(modifier), Expect_jvmKt.rememberComposableLambda(1363568607, new IncomingFormItemsKt$$ExternalSyntheticLambda6(interactionMode, incomingServerSettingsContract$State, function1, (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources)), gapComposer), gapComposer, 48, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(interactionMode, incomingServerSettingsContract$State, function1, modifier, i, 4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyColumn(int r23, int r24, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r25, androidx.compose.foundation.gestures.DefaultFlingBehavior r26, androidx.compose.foundation.layout.Arrangement$Vertical r27, androidx.compose.foundation.layout.PaddingValues r28, androidx.compose.foundation.lazy.LazyListState r29, androidx.compose.runtime.Composer r30, androidx.compose.ui.Alignment.Horizontal r31, androidx.compose.ui.Modifier r32, kotlin.jvm.functions.Function1 r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ActionBar.LazyColumn(int, int, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.gestures.DefaultFlingBehavior, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.lazy.LazyListState, androidx.compose.runtime.Composer, androidx.compose.ui.Alignment$Horizontal, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ListItem(androidx.compose.foundation.lazy.LazyItemScopeImpl r16, androidx.compose.ui.Modifier r17, androidx.compose.foundation.layout.PaddingValues r18, androidx.compose.runtime.internal.ComposableLambdaImpl r19, androidx.compose.runtime.Composer r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ActionBar.ListItem(androidx.compose.foundation.lazy.LazyItemScopeImpl, androidx.compose.ui.Modifier, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: OverlayIcon-3IgeMak, reason: not valid java name */
    public static final void m1OverlayIcon3IgeMak(ImageVector imageVector, long j, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-909555208);
        int i2 = 2;
        int i3 = i | (gapComposer.changed(imageVector) ? 4 : 2) | (gapComposer.changed(j) ? 32 : 16) | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            long j2 = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surface;
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-379704389, new TextFieldImplKt$$ExternalSyntheticLambda8(imageVector, j, i2), gapComposer);
            modifier2 = Modifier.Companion.$$INSTANCE;
            MathKt.m983Surface_UMDTes(modifier2, roundedCornerShape, j2, 0L, 0.0f, rememberComposableLambda, gapComposer, 196614, 24);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PermissionBoxKt$$ExternalSyntheticLambda3(imageVector, j, modifier2, i);
        }
    }

    public static final void PermissionBox(ImageVector imageVector, PermissionsContract$UiPermissionState permissionsContract$UiPermissionState, String str, String str2, Function0 function0, Composer composer, int i) {
        PermissionsContract$UiPermissionState permissionsContract$UiPermissionState2;
        imageVector.getClass();
        permissionsContract$UiPermissionState.getClass();
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-264979441);
        int i2 = i | (gapComposer.changed(imageVector) ? 4 : 2) | (gapComposer.changed(permissionsContract$UiPermissionState.ordinal()) ? 32 : 16) | (gapComposer.changed(str) ? 256 : 128) | (gapComposer.changed(str2) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m238width3ABfNKs = SizeKt.m238width3ABfNKs(companion, 500.0f);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(m238width3ABfNKs, 16.0f, 0.0f, 2);
            FlowRowOverflow flowRowOverflow = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer, 0);
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
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
            long j2 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion, 0.0f, 8.0f, 16.0f, 8.0f, 1);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j3 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m222paddingqDBjuR0$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            permissionsContract$UiPermissionState2 = permissionsContract$UiPermissionState;
            IconWithPermissionStateOverlay(imageVector, permissionsContract$UiPermissionState2, gapComposer, i2 & 126);
            gapComposer.end(true);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer, 0);
            long j4 = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i6, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$14);
            DBUtil.m807TextTitleLargeXl4FiYE(str, null, 0L, null, 0, 0, gapComposer, (i2 >> 6) & 14, 62);
            int i7 = i2 >> 9;
            Data.Companion.m825TextBodyMediumZHfKjFs(str2, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, i7 & 14, 126);
            gapComposer.end(true);
            gapComposer.end(true);
            State animateFloatAsState = AnimateAsStateKt.animateFloatAsState(permissionsContract$UiPermissionState2 == PermissionsContract$UiPermissionState.Granted ? 0.0f : 1.0f, null, "AllowButtonAlpha", gapComposer, 3072, 22);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(flowRowOverflow, Alignment.Companion.End, gapComposer, 48);
            long j5 = gapComposer.compositeKeyHashCode;
            int i8 = (int) (j5 ^ (j5 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i8, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier5, composeUiNode$Companion$SetModifier$14);
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal), companion, 8.0f, gapComposer);
            IntOffsetKt.ButtonFilled(Operation$State.stringResource(gapComposer, R.string.onboarding_permissions_allow_button), function0, ClipKt.alpha(companion, ((Number) animateFloatAsState.getValue()).floatValue()), false, null, null, null, gapComposer, i7 & 112, 248);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            permissionsContract$UiPermissionState2 = permissionsContract$UiPermissionState;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(imageVector, permissionsContract$UiPermissionState2, str, str2, function0, i, 10);
        }
    }

    public static final Object[] access$insertEntryAtIndex(Object[] objArr, int i, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i + 2, i, objArr.length);
        objArr2[i] = obj;
        objArr2[i + 1] = obj2;
        return objArr2;
    }

    public static final Object[] access$removeEntryAtIndex(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i, i + 2, objArr.length);
        return objArr2;
    }

    public static final Object[] access$removeNodeAtIndex(int i, Object[] objArr) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt___ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, i, i + 1, objArr.length);
        return objArr2;
    }

    public static final Object await(ListenableFuture listenableFuture, ContinuationImpl continuationImpl) {
        try {
            if (listenableFuture.isDone()) {
                return AbstractResolvableFuture.getUninterruptibly(listenableFuture);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuationImpl));
            listenableFuture.addListener(new ToContinuation(listenableFuture, cancellableContinuationImpl, 1), DirectExecutor.INSTANCE);
            cancellableContinuationImpl.invokeOnCancellation(new NodeChainKt$fillVector$1(28, listenableFuture));
            return cancellableContinuationImpl.getResult();
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
            KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
            Intrinsics.sanitizeStackTrace(kotlinNullPointerException, Intrinsics.class.getName());
            throw kotlinNullPointerException;
        }
    }

    public static final MutableState collectAsStateWithLifecycle(StateFlow stateFlow, Composer composer) {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) ((GapComposer) composer).consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
        Object value = stateFlow.getValue();
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        int i = 2;
        Lifecycle.State state = Lifecycle.State.STARTED;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        Object[] objArr = {stateFlow, lifecycle, state, emptyCoroutineContext};
        GapComposer gapComposer = (GapComposer) composer;
        boolean changedInstance = gapComposer.changedInstance(lifecycle) | gapComposer.changed(state.ordinal()) | gapComposer.changedInstance(emptyCoroutineContext) | gapComposer.changedInstance(stateFlow);
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (changedInstance || rememberedValue == neverEqualPolicy) {
            NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = new NavHostKt$NavHost$25$1(lifecycle, state, emptyCoroutineContext, stateFlow, (Continuation) null, 10);
            gapComposer.updateRememberedValue(navHostKt$NavHost$25$1);
            rememberedValue = navHostKt$NavHost$25$1;
        }
        Function2 function2 = (Function2) rememberedValue;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = Updater.mutableStateOf$default(value);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        MutableState mutableState = (MutableState) rememberedValue2;
        Object[] copyOf = Arrays.copyOf(objArr, 4);
        boolean changedInstance2 = gapComposer.changedInstance(function2);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null, i);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Function2 function22 = (Function2) rememberedValue3;
        CoroutineContext coroutineContext = gapComposer.applyCoroutineContext;
        boolean z = false;
        for (Object obj : Arrays.copyOf(copyOf, copyOf.length)) {
            z |= gapComposer.changed(obj);
        }
        Object rememberedValue4 = gapComposer.rememberedValue();
        if (!z && rememberedValue4 != neverEqualPolicy) {
            return mutableState;
        }
        gapComposer.updateRememberedValue(new LaunchedEffectImpl(coroutineContext, function22));
        return mutableState;
    }

    public static final int columnIndexOf(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnCount = sQLiteStatement.getColumnCount();
        int i = 0;
        while (true) {
            if (i >= columnCount) {
                i = -1;
                break;
            }
            if (str.equals(sQLiteStatement.getColumnName(i))) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return i;
        }
        String m = CameraDevices$CC.m('`', "`", str);
        int columnCount2 = sQLiteStatement.getColumnCount();
        int i2 = 0;
        while (true) {
            if (i2 >= columnCount2) {
                i2 = -1;
                break;
            }
            if (m.equals(sQLiteStatement.getColumnName(i2))) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount3 = sQLiteStatement.getColumnCount();
            String concat = ".".concat(str);
            String m2 = CameraDevices$CC.m('`', ".", str);
            for (int i3 = 0; i3 < columnCount3; i3++) {
                String columnName = sQLiteStatement.getColumnName(i3);
                if (columnName.length() >= str.length() + 2 && (StringsKt__StringsJVMKt.endsWith(columnName, concat, false) || (columnName.charAt(0) == '`' && StringsKt__StringsJVMKt.endsWith(columnName, m2, false)))) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public static MessageListActivityConfig create(GeneralSettingsManager generalSettingsManager) {
        generalSettingsManager.getClass();
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) generalSettingsManager;
        GeneralSettings config = defaultGeneralSettingsManager.getConfig();
        InteractionSettings interactionSettings = defaultGeneralSettingsManager.getConfig().interaction;
        DisplaySettings displaySettings = config.display;
        DisplayMessageListSettings displayMessageListSettings = displaySettings.visualSettings.messageListSettings;
        DisplayCoreSettings displayCoreSettings = displaySettings.coreSettings;
        AppTheme appTheme = displayCoreSettings.appTheme;
        DisplayInboxSettings displayInboxSettings = displaySettings.inboxSettings;
        boolean z = displayInboxSettings.isShowUnifiedInbox;
        boolean z2 = displayInboxSettings.isShowMessageListStars;
        boolean z3 = displayMessageListSettings.isShowCorrespondentNames;
        boolean z4 = displayInboxSettings.isMessageListSenderAboveSubject;
        boolean z5 = displayMessageListSettings.isShowContactName;
        boolean z6 = displayMessageListSettings.isChangeContactNameColor;
        boolean z7 = displayMessageListSettings.isShowContactPicture;
        boolean z8 = displayMessageListSettings.isColorizeMissingContactPictures;
        boolean z9 = displayMessageListSettings.isUseBackgroundAsUnreadIndicator;
        boolean z10 = displayInboxSettings.isShowComposeButtonOnMessageList;
        int i = displayMessageListSettings.contactNameColor;
        SubTheme subTheme = displayCoreSettings.messageViewTheme;
        int i2 = displayMessageListSettings.previewLines;
        UiDensity uiDensity = displayMessageListSettings.uiDensity;
        SplitViewMode splitViewMode = displayCoreSettings.splitViewMode;
        FontSizes fontSizes = K9.fontSizes;
        int i3 = fontSizes.messageListSubject;
        int i4 = fontSizes.messageListSender;
        int i5 = fontSizes.messageListDate;
        int i6 = fontSizes.messageListPreview;
        int i7 = fontSizes.messageViewSender;
        int i8 = fontSizes.messageViewRecipients;
        int i9 = fontSizes.messageViewSubject;
        int i10 = fontSizes.messageViewDate;
        int i11 = fontSizes.messageViewContentAsPercent;
        SwipeActions swipeActions = interactionSettings.swipeActions;
        return new MessageListActivityConfig(appTheme, z, z2, z3, z4, z5, z6, z7, z8, z9, z10, i, subTheme, i2, uiDensity, splitViewMode, i3, i4, i5, i6, i7, i8, i9, i10, i11, swipeActions.rightAction, swipeActions.leftAction, generalSettingsManager);
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x02fc, code lost:
    
        coil3.UriKt$$ExternalSyntheticBUOutline0.m("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0303, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03a9 A[LOOP:6: B:119:0x0378->B:131:0x03a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x04e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.work.impl.WorkManagerImpl createWorkManager(android.content.Context r34, androidx.work.Configuration r35) {
        /*
            Method dump skipped, instructions count: 1404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.ActionBar.createWorkManager(android.content.Context, androidx.work.Configuration):androidx.work.impl.WorkManagerImpl");
    }

    public static Triple decode(String str) {
        str.getClass();
        List split$default = StringsKt.split$default(str, new char[]{'|'});
        return new Triple(Boolean.valueOf(Boolean.parseBoolean((String) split$default.get(0))), VibratePattern.valueOf((String) split$default.get(1)), Integer.valueOf(Integer.parseInt((String) split$default.get(2))));
    }

    public static String encode(boolean z, VibratePattern vibratePattern, int i) {
        vibratePattern.getClass();
        return z + "|" + vibratePattern.name() + "|" + i;
    }

    public static String escapeBytes(ByteString$LiteralByteString byteString$LiteralByteString) {
        StringBuilder sb = new StringBuilder(byteString$LiteralByteString.size());
        for (int i = 0; i < byteString$LiteralByteString.size(); i++) {
            byte byteAt = byteString$LiteralByteString.byteAt(i);
            if (byteAt == 34) {
                sb.append("\\\"");
            } else if (byteAt == 39) {
                sb.append("\\'");
            } else if (byteAt != 92) {
                switch (byteAt) {
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        sb.append("\\a");
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case BasicTextKt.ShiftMeta /* 12 */:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (byteAt < 32 || byteAt > 126) {
                            sb.append('\\');
                            sb.append((char) (((byteAt >>> 6) & 3) + 48));
                            sb.append((char) (((byteAt >>> 3) & 7) + 48));
                            sb.append((char) ((byteAt & 7) + 48));
                            break;
                        } else {
                            sb.append((char) byteAt);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static final void excludeSpecialFolder(LocalMessageSearch localMessageSearch, Long l) {
        if (l != null) {
            localMessageSearch.and(MessageSearchField.FOLDER, String.valueOf(l.longValue()), SearchAttribute.NOT_EQUALS);
        }
    }

    public static InvocationHandler fetchGlueProviderFactoryImpl() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = ApiHelperForP.getWebViewClassLoader();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", null);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, null).getClass().getClassLoader();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(e);
                return null;
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", null).invoke(null, null);
    }

    public static final CameraIdentifier fromAdapterInfos(AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2) {
        String cameraId = adapterCameraInfo2 != null ? adapterCameraInfo2.mCameraInfoInternal.getCameraId() : null;
        AutoValue_Identifier autoValue_Identifier = (AutoValue_Identifier) ((BiometricPrompt) adapterCameraInfo.mCameraConfig).mClientFragmentManager;
        autoValue_Identifier.getClass();
        String cameraId2 = adapterCameraInfo.mCameraInfoInternal.getCameraId();
        cameraId2.getClass();
        return create(cameraId2, cameraId, autoValue_Identifier);
    }

    public static final int getColumnIndexOrThrow(SQLiteStatement sQLiteStatement, String str) {
        sQLiteStatement.getClass();
        int columnIndexOf = columnIndexOf(sQLiteStatement, str);
        if (columnIndexOf >= 0) {
            return columnIndexOf;
        }
        int columnCount = sQLiteStatement.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(sQLiteStatement.getColumnName(i));
        }
        DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Column '", str, "' does not exist. Available columns: [", CollectionsKt.joinToString$default(arrayList, null, null, null, null, 63), 93);
        return 0;
    }

    public static final ImageVector getReport() {
        ImageVector imageVector = _report;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Report", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        long j = Color.Black;
        SolidColor solidColor = new SolidColor(j);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(15.73f, 3.0f);
        builder2.horizontalLineTo(8.27f);
        builder2.lineTo(3.0f, 8.27f);
        builder2.verticalLineToRelative(7.46f);
        builder2.lineTo(8.27f, 21.0f);
        builder2.horizontalLineToRelative(7.46f);
        builder2.lineTo(21.0f, 15.73f);
        builder2.verticalLineTo(8.27f);
        builder2.lineTo(15.73f, 3.0f);
        builder2.close();
        builder2.moveTo(19.0f, 14.9f);
        builder2.lineTo(14.9f, 19.0f);
        builder2.horizontalLineTo(9.1f);
        builder2.lineTo(5.0f, 14.9f);
        builder2.verticalLineTo(9.1f);
        builder2.lineTo(9.1f, 5.0f);
        builder2.horizontalLineToRelative(5.8f);
        builder2.lineTo(19.0f, 9.1f);
        builder2.verticalLineToRelative(5.8f);
        builder2.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        SolidColor solidColor2 = new SolidColor(j);
        ArrayList arrayList = new ArrayList(32);
        arrayList.add(new PathNode.MoveTo(12.0f, 16.0f));
        arrayList.add(new PathNode.RelativeMoveTo(-1.0f, 0.0f));
        arrayList.add(new PathNode.RelativeArcTo(1.0f, 1.0f, 0.0f, true, true, 2.0f, 0.0f));
        arrayList.add(new PathNode.RelativeArcTo(1.0f, 1.0f, 0.0f, true, true, -2.0f, 0.0f));
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor2, null, "", arrayList);
        SolidColor solidColor3 = new SolidColor(j);
        ArrayList arrayList2 = new ArrayList(32);
        arrayList2.add(new PathNode.MoveTo(11.0f, 7.0f));
        arrayList2.add(new PathNode.RelativeHorizontalTo(2.0f));
        arrayList2.add(new PathNode.RelativeVerticalTo(7.0f));
        arrayList2.add(new PathNode.RelativeHorizontalTo(-2.0f));
        arrayList2.add(PathNode.Close.INSTANCE);
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor3, null, "", arrayList2);
        ImageVector build = builder.build();
        _report = build;
        return build;
    }

    public static final AnnotatedString getSelectedText(TextFieldValue textFieldValue) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        annotatedString.getClass();
        return annotatedString.subSequence(TextRange.m702getMinimpl(j), TextRange.m701getMaximpl(j));
    }

    public static final AnnotatedString getTextAfterSelection(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        AnnotatedString annotatedString2 = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        int m701getMaximpl = TextRange.m701getMaximpl(j);
        int m701getMaximpl2 = TextRange.m701getMaximpl(j);
        int i2 = m701getMaximpl2 + i;
        if (((i ^ i2) & (m701getMaximpl2 ^ i2)) < 0) {
            i2 = annotatedString2.text.length();
        }
        return annotatedString.subSequence(m701getMaximpl, Math.min(i2, annotatedString2.text.length()));
    }

    public static final AnnotatedString getTextBeforeSelection(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        int m702getMinimpl = TextRange.m702getMinimpl(j);
        int i2 = m702getMinimpl - i;
        if (((m702getMinimpl ^ i2) & (i ^ m702getMinimpl)) < 0) {
            i2 = 0;
        }
        return annotatedString.subSequence(Math.max(0, i2), TextRange.m702getMinimpl(j));
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    public static boolean isBluStudioX10() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Blu")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Blu")) {
                return false;
            }
        }
        return "studio x10".equalsIgnoreCase(Build.MODEL);
    }

    public static boolean isFromSource(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }

    public static boolean isItelW6004() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Itel")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Itel")) {
                return false;
            }
        }
        return "itel w6004".equalsIgnoreCase(Build.MODEL);
    }

    public static boolean isPositivoTwist2Pro() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Positivo")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Positivo")) {
                return false;
            }
        }
        return "twist 2 pro".equalsIgnoreCase(Build.MODEL);
    }

    public static boolean isVivo1805() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Vivo")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Vivo")) {
                return false;
            }
        }
        return "vivo 1805".equalsIgnoreCase(Build.MODEL);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Data.Builder parse(ArrayList arrayList, boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ImapResponse imapResponse = (ImapResponse) it.next();
            if (z || imapResponse.isTagged()) {
                if (imapResponse.size() >= 2) {
                    if (StateLayer.equalsIgnoreCase(imapResponse.get(0), "OK") && imapResponse.isList(1)) {
                        ImapList imapList = (ImapList) imapResponse.get(1);
                        if (imapList.size() >= 4 && StateLayer.equalsIgnoreCase(imapList.get(0), "COPYUID") && imapList.isString(1) && imapList.isString(2) && imapList.isString(3)) {
                            List imapSequenceValues = RelationUtil.getImapSequenceValues((String) imapList.get(2));
                            List imapSequenceValues2 = RelationUtil.getImapSequenceValues((String) imapList.get(3));
                            int size = imapSequenceValues.size();
                            if (size != 0 && size == imapSequenceValues2.size()) {
                                for (int i = 0; i < size; i++) {
                                    linkedHashMap.put((String) imapSequenceValues.get(i), (String) imapSequenceValues2.get(i));
                                }
                            }
                        }
                    }
                }
            }
        }
        if (linkedHashMap.isEmpty()) {
            return null;
        }
        return new Data.Builder(linkedHashMap);
    }

    public static final NavHostController rememberNavController(Navigator[] navigatorArr, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        Object[] copyOf = Arrays.copyOf(navigatorArr, navigatorArr.length);
        WeakCache weakCache = new WeakCache(3, new K9KoinModuleKt$$ExternalSyntheticLambda2(24), new DiskLruCache$$ExternalSyntheticLambda0(17, context));
        boolean changedInstance = gapComposer.changedInstance(context);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new CameraX$$ExternalSyntheticLambda0(context, 1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        NavHostController navHostController = (NavHostController) SaverKt.rememberSaveable(copyOf, weakCache, (Function0) rememberedValue, gapComposer, 0, 4);
        for (Navigator navigator : navigatorArr) {
            navHostController.impl._navigatorProvider.addNavigator(navigator);
        }
        return navHostController;
    }

    public static final Rect visibleBounds(LayoutCoordinates layoutCoordinates) {
        Rect boundsInWindow = RulerKt.boundsInWindow(layoutCoordinates, true);
        long mo585windowToLocalMKHz9U = layoutCoordinates.mo585windowToLocalMKHz9U(boundsInWindow.m447getTopLeftF1C5BW0());
        float f = boundsInWindow.right;
        float f2 = boundsInWindow.bottom;
        long mo585windowToLocalMKHz9U2 = layoutCoordinates.mo585windowToLocalMKHz9U((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
        return new Rect(Float.intBitsToFloat((int) (mo585windowToLocalMKHz9U >> 32)), Float.intBitsToFloat((int) (mo585windowToLocalMKHz9U & 4294967295L)), Float.intBitsToFloat((int) (mo585windowToLocalMKHz9U2 >> 32)), Float.intBitsToFloat((int) (mo585windowToLocalMKHz9U2 & 4294967295L)));
    }

    public boolean closeOptionsMenu() {
        return false;
    }

    public abstract boolean collapseActionView();

    public abstract void dispatchMenuVisibilityChanged(boolean z);

    public abstract int getDisplayOptions();

    public abstract Context getThemedContext();

    public boolean invalidateOptionsMenu() {
        return false;
    }

    public abstract void onConfigurationChanged();

    public abstract boolean onKeyShortcut(int i, KeyEvent keyEvent);

    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public boolean openOptionsMenu() {
        return false;
    }

    public abstract void setDefaultDisplayHomeAsUpEnabled(boolean z);

    public abstract void setDisplayHomeAsUpEnabled(boolean z);

    public abstract void setDisplayShowTitleEnabled();

    public abstract void setHomeActionContentDescription(int i);

    public abstract void setHomeAsUpIndicator(int i);

    public abstract void setHomeAsUpIndicator(Drawable drawable);

    public abstract void setShowHideAnimationEnabled(boolean z);

    public abstract void setTitle(String str);

    public abstract void setWindowTitle(CharSequence charSequence);

    public ActionMode startActionMode(CardView.AnonymousClass1 anonymousClass1) {
        return null;
    }

    public void onDestroy() {
    }

    public static final CameraIdentifier create(String str, String str2, AutoValue_Identifier autoValue_Identifier) {
        str.getClass();
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(str);
        if (str2 != null) {
            mutableListOf.add(str2);
        }
        return new CameraIdentifier(mutableListOf, autoValue_Identifier);
    }
}
