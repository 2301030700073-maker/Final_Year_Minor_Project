package androidx.datastore.preferences.protobuf;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectFloatMap;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectFloatMapKt;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
import androidx.compose.material3.ExposedDropdownMenuKt$expandable$1;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.Api33Impl;
import androidx.core.os.BuildCompat;
import androidx.core.util.DebugUtils;
import androidx.datastore.core.Api26Impl;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda11;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda16;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda2;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda5;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.navigation.compose.NavHostKt$NavHost$33$1;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda3;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;
import app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13;
import app.k9mail.feature.account.setup.ui.autodiscovery.view.AutoDiscoveryResultHeaderState;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$Event;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$State;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import app.k9mail.provider.K9AppNameProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.activity.setup.AccountSetupCompositionKt$$ExternalSyntheticLambda1;
import com.fsck.k9.activity.setup.AccountSetupCompositionKt$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import j$.util.DesugarCollections;
import java.lang.reflect.Constructor;
import java.nio.BufferUnderflowException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Utf8 {
    public static final SafeProcessor processor;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super(Modifier.CC.m(i, i2, "Unpaired surrogate at index ", " of "));
        }
    }

    static {
        processor = (UnsafeUtil.HAS_UNSAFE_ARRAY_OPERATIONS && UnsafeUtil.HAS_UNSAFE_BYTEBUFFER_OPERATIONS && !Android.isOnAndroidDevice()) ? new SafeProcessor(1) : new SafeProcessor(0);
    }

    public static int encodedLength(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = str.length();
                while (i2 < length2) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) < 65536) {
                                throw new UnpairedSurrogateException(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SafeProcessor {
        public static ImageVector _checkCircle = null;
        public static ImageVector _settings = null;
        public static int sMinLogLevel = 3;
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ SafeProcessor(int i) {
            this.$r8$classId = i;
        }

        public static final void AccountSetupCompositionScreen(String str, String str2, String str3, boolean z, String str4, boolean z2, AbstractPersistentList abstractPersistentList, Pair pair, Function1 function1, Modifier modifier, Composer composer, int i) {
            GapComposer gapComposer;
            Modifier modifier2;
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            abstractPersistentList.getClass();
            pair.getClass();
            function1.getClass();
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(1533257609);
            int i2 = i | (gapComposer2.changed(str) ? 4 : 2) | (gapComposer2.changed(str2) ? 32 : 16) | (gapComposer2.changed(str3) ? 256 : 128) | (gapComposer2.changed(z) ? 2048 : 1024) | (gapComposer2.changed(str4) ? 16384 : 8192) | (gapComposer2.changed(z2) ? 131072 : 65536) | (gapComposer2.changed(abstractPersistentList) ? 1048576 : 524288) | (gapComposer2.changed(pair) ? 8388608 : 4194304) | (gapComposer2.changedInstance(function1) ? 67108864 : 33554432) | 805306368;
            if (gapComposer2.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-708688315, new CoreTextFieldKt$$ExternalSyntheticLambda17(function1, z2), gapComposer2);
                ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(2094010493, new AccountSetupCompositionKt$$ExternalSyntheticLambda1(function1, str, str2, str3, z, str4, abstractPersistentList, pair), gapComposer2);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                gapComposer = gapComposer2;
                ScaffoldKt.Scaffold(companion, rememberComposableLambda, null, null, null, null, rememberComposableLambda2, gapComposer, 1572918, 60);
                modifier2 = companion;
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new AccountSetupCompositionKt$$ExternalSyntheticLambda2(str, str2, str3, z, str4, z2, abstractPersistentList, pair, function1, modifier2, i);
            }
        }

        public static final void AutoDiscoveryResultHeaderView(AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState, boolean z, Modifier modifier, Composer composer, int i) {
            Modifier modifier2;
            char c;
            long j;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1152914867);
            int i2 = i | (gapComposer.changed(autoDiscoveryResultHeaderState.ordinal()) ? 4 : 2) | (gapComposer.changed(z) ? 32 : 16) | 384;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                FillElement fillElement = SizeKt.FillWholeMaxWidth;
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Modifier then = fillElement.then(companion);
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
                long j2 = gapComposer.compositeKeyHashCode;
                int i3 = (int) (j2 ^ (j2 >>> 32));
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
                ImageVector imageVector = autoDiscoveryResultHeaderState.icon;
                int ordinal = autoDiscoveryResultHeaderState.ordinal();
                if (ordinal == 0) {
                    c = ' ';
                    gapComposer.startReplaceGroup(-508094729);
                    j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).primary;
                    gapComposer.end(false);
                } else if (ordinal == 1) {
                    c = ' ';
                    gapComposer.startReplaceGroup(-508092329);
                    j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).success;
                    gapComposer.end(false);
                } else {
                    if (ordinal != 2) {
                        throw ViewSizeResolver.CC.m(gapComposer, -508097206, false);
                    }
                    gapComposer.startReplaceGroup(-508089865);
                    c = ' ';
                    j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).warning;
                    gapComposer.end(false);
                }
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(companion, 8.0f);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m230requiredSize3ABfNKs(m218padding3ABfNKs, 32.0f), new Color(j), gapComposer, 0, 4);
                LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(layoutWeightElement, 8.0f, 4.0f, 0.0f, 4.0f, 4);
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                long j3 = gapComposer.compositeKeyHashCode;
                int i4 = (int) (j3 ^ (j3 >>> c));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m222paddingqDBjuR0$default);
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
                String stringResource = Operation$State.stringResource(gapComposer, autoDiscoveryResultHeaderState.titleResourceId);
                gapComposer = gapComposer;
                DBUtil.m807TextTitleLargeXl4FiYE(stringResource, null, 0L, null, 0, 0, gapComposer, 0, 62);
                Data.Companion.m825TextBodyMediumZHfKjFs(Operation$State.stringResource(gapComposer, autoDiscoveryResultHeaderState.subtitleResourceId), (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, 0, 126);
                gapComposer.end(true);
                if (autoDiscoveryResultHeaderState.isExpandable) {
                    gapComposer.startReplaceGroup(-2102945131);
                    ImageVector imageVector2 = z ? Icons$Outlined.ExpandLess : Icons$Outlined.ExpandMore;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    AtomicFU.m1009IconxqIIw2o(imageVector2, OffsetKt.m218padding3ABfNKs(companion, 8.0f), null, gapComposer, 0, 12);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-2102733711);
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
                endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda3(i, 4, autoDiscoveryResultHeaderState, modifier2, z);
            }
        }

        public static final void DropdownMenuBox(final boolean z, final Function1 function1, final ImmutableList immutableList, final Function1 function12, Modifier modifier, boolean z2, Function1 function13, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
            GapComposer gapComposer;
            Modifier modifier2;
            boolean z3;
            Function1 function14;
            function1.getClass();
            immutableList.getClass();
            function12.getClass();
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(1338730913);
            int i2 = i | (gapComposer2.changed(z) ? 4 : 2) | (gapComposer2.changed(immutableList) ? 256 : 128) | 1794048;
            int i3 = 0;
            if (gapComposer2.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new Data$$ExternalSyntheticLambda0(17);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                final Function1 function15 = (Function1) rememberedValue;
                int i4 = i2 & 14;
                boolean z4 = i4 == 4;
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (z4 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new DropdownMenuBoxKt$$ExternalSyntheticLambda1(function1, z, i3);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                gapComposer = gapComposer2;
                CardKt.ExposedDropdownMenuBox(z, (Function1) rememberedValue2, companion, Expect_jvmKt.rememberComposableLambda(-1226669749, new Function3() { // from class: app.k9mail.core.ui.compose.designsystem.atom.DropdownMenuBoxKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int intValue = ((Integer) obj3).intValue();
                        ((ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) obj).getClass();
                        int i5 = 1;
                        GapComposer gapComposer3 = (GapComposer) composer2;
                        if (gapComposer3.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            boolean z5 = z;
                            ComposableLambdaImpl.this.invoke(Boolean.valueOf(z5), (Object) gapComposer3, (Object) 0);
                            Function1 function16 = function1;
                            boolean changed = gapComposer3.changed(function16);
                            Object rememberedValue3 = gapComposer3.rememberedValue();
                            if (changed || rememberedValue3 == Composer.Companion.Empty) {
                                rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(1, function16);
                                gapComposer3.updateRememberedValue(rememberedValue3);
                            }
                            AndroidMenu_androidKt.m320DropdownMenuIlH_yew(z5, (Function0) rememberedValue3, null, 0L, null, null, null, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(243314502, new ArchiveOperations$$ExternalSyntheticLambda2(immutableList, function12, function15, i5), gapComposer3), gapComposer3, 0, 2044);
                        } else {
                            gapComposer3.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, gapComposer2), gapComposer, i4 | 3456, 0);
                modifier2 = companion;
                z3 = true;
                function14 = function15;
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
                z3 = z2;
                function14 = function13;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new DropdownMenuBoxKt$$ExternalSyntheticLambda3(z, function1, immutableList, function12, modifier2, z3, function14, composableLambdaImpl, i);
            }
        }

        public static final void EditIncomingServerSettingsNavHost(String str, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0, Function0 function0, Composer composer, int i) {
            NavHostController navHostController;
            str.getClass();
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1300847723);
            int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(diskLruCache$$ExternalSyntheticLambda0) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                NavHostController rememberNavController = ActionBar.rememberNavController(new Navigator[0], gapComposer);
                boolean changedInstance = ((i2 & 14) == 4) | gapComposer.changedInstance(rememberNavController) | ((i2 & 896) == 256) | ((i2 & 112) == 32);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                    navHostController = rememberNavController;
                    rememberedValue = new EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12(str, navHostController, function0, diskLruCache$$ExternalSyntheticLambda0, 0);
                    gapComposer.updateRememberedValue(rememberedValue);
                } else {
                    navHostController = rememberNavController;
                }
                NavHost(navHostController, "modify", (Modifier) null, (Alignment) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) rememberedValue, gapComposer, 48);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13(str, diskLruCache$$ExternalSyntheticLambda0, function0, i, 0);
            }
        }

        public static final void NavHost(final NavHostController navHostController, final NavGraph navGraph, final Modifier modifier, final Alignment alignment, final Function1 function1, final Function1 function12, final Function1 function13, final Function1 function14, final Function1 function15, Composer composer, final int i) {
            int i2;
            final Modifier modifier2;
            final Alignment alignment2;
            Function1 function16;
            final ComposeNavigator composeNavigator;
            MutableState mutableState;
            NavigatorProvider navigatorProvider;
            GapComposer gapComposer;
            DialogNavigator dialogNavigator;
            int i3;
            MutableObjectFloatMap mutableObjectFloatMap;
            NavBackStackEntry navBackStackEntry;
            boolean z;
            Function1 function17;
            NavBackStackEntry navBackStackEntry2;
            Object obj;
            Transition transition;
            SeekableTransitionState seekableTransitionState;
            NavBackStackEntry navBackStackEntry3;
            MutableObjectFloatMap mutableObjectFloatMap2;
            ComposeNavigator composeNavigator2;
            State state;
            Object obj2;
            SeekableTransitionState seekableTransitionState2;
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(-1964664536);
            if ((i & 6) == 0) {
                i2 = (gapComposer2.changedInstance(navHostController) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer2.changedInstance(navGraph) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                modifier2 = modifier;
                i2 |= gapComposer2.changed(modifier2) ? 256 : 128;
            } else {
                modifier2 = modifier;
            }
            if ((i & 3072) == 0) {
                alignment2 = alignment;
                i2 |= gapComposer2.changed(alignment2) ? 2048 : 1024;
            } else {
                alignment2 = alignment;
            }
            if ((i & 24576) == 0) {
                i2 |= gapComposer2.changedInstance(function1) ? 16384 : 8192;
            }
            if ((196608 & i) == 0) {
                function16 = function12;
                i2 |= gapComposer2.changedInstance(function16) ? 131072 : 65536;
            } else {
                function16 = function12;
            }
            if ((i & 1572864) == 0) {
                i2 |= gapComposer2.changedInstance(function13) ? 1048576 : 524288;
            }
            if ((i & 12582912) == 0) {
                i2 |= gapComposer2.changedInstance(function14) ? 8388608 : 4194304;
            }
            if ((i & 100663296) == 0) {
                i2 |= gapComposer2.changedInstance(function15) ? 67108864 : 33554432;
            }
            if ((i2 & 38347923) == 38347922 && gapComposer2.getSkipping()) {
                gapComposer2.skipToGroupEnd();
                gapComposer = gapComposer2;
            } else {
                gapComposer2.startDefaults();
                if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                    gapComposer2.skipToGroupEnd();
                }
                gapComposer2.endDefaults();
                LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposer2.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner");
                    return;
                }
                navHostController.setViewModelStore(current.getViewModelStore());
                NavControllerImpl navControllerImpl = navHostController.impl;
                navGraph.getClass();
                navControllerImpl.getClass();
                NavigatorProvider navigatorProvider2 = navControllerImpl._navigatorProvider;
                navControllerImpl.setGraph$navigation_runtime_release(navGraph, null);
                Navigator navigator = navigatorProvider2.getNavigator("composable");
                ComposeNavigator composeNavigator3 = navigator instanceof ComposeNavigator ? (ComposeNavigator) navigator : null;
                if (composeNavigator3 == null) {
                    RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
                    if (endRestartGroup != null) {
                        final int i4 = 2;
                        final Function1 function18 = function16;
                        endRestartGroup.block = new Function2() { // from class: androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda7
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                int i5 = i4;
                                Unit unit = Unit.INSTANCE;
                                int i6 = i;
                                switch (i5) {
                                    case 0:
                                        ((Integer) obj4).getClass();
                                        int updateChangedFlags = Updater.updateChangedFlags(i6 | 1);
                                        Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier2, alignment2, function1, function18, function13, function14, function15, (Composer) obj3, updateChangedFlags);
                                        break;
                                    case 1:
                                        ((Integer) obj4).getClass();
                                        int updateChangedFlags2 = Updater.updateChangedFlags(i6 | 1);
                                        Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier2, alignment2, function1, function18, function13, function14, function15, (Composer) obj3, updateChangedFlags2);
                                        break;
                                    default:
                                        ((Integer) obj4).getClass();
                                        int updateChangedFlags3 = Updater.updateChangedFlags(i6 | 1);
                                        Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier2, alignment2, function1, function18, function13, function14, function15, (Composer) obj3, updateChangedFlags3);
                                        break;
                                }
                                return unit;
                            }
                        };
                        return;
                    }
                    return;
                }
                MutableState collectAsState = Updater.collectAsState(composeNavigator3.getState().backStack, gapComposer2);
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Object obj3 = rememberedValue;
                if (rememberedValue == neverEqualPolicy) {
                    ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = new ParcelableSnapshotMutableFloatState(0.0f);
                    gapComposer2.updateRememberedValue(parcelableSnapshotMutableFloatState);
                    obj3 = parcelableSnapshotMutableFloatState;
                }
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState2 = (ParcelableSnapshotMutableFloatState) obj3;
                Object rememberedValue2 = gapComposer2.rememberedValue();
                Object obj4 = rememberedValue2;
                if (rememberedValue2 == neverEqualPolicy) {
                    ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(Boolean.FALSE);
                    gapComposer2.updateRememberedValue(mutableStateOf$default);
                    obj4 = mutableStateOf$default;
                }
                final MutableState mutableState2 = (MutableState) obj4;
                int i5 = 0;
                boolean z2 = ((List) collectAsState.getValue()).size() > 1;
                boolean changed = gapComposer2.changed(collectAsState) | gapComposer2.changedInstance(composeNavigator3);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (changed || rememberedValue3 == neverEqualPolicy) {
                    ComposeNavigator composeNavigator4 = composeNavigator3;
                    rememberedValue3 = new NavHostKt$NavHost$25$1(composeNavigator4, collectAsState, parcelableSnapshotMutableFloatState2, mutableState2, (Continuation) null);
                    composeNavigator = composeNavigator4;
                    mutableState = collectAsState;
                    gapComposer2.updateRememberedValue(rememberedValue3);
                } else {
                    ComposeNavigator composeNavigator5 = composeNavigator3;
                    mutableState = collectAsState;
                    composeNavigator = composeNavigator5;
                }
                Data.Companion.PredictiveBackHandler(z2, (Function2) rememberedValue3, gapComposer2, 0);
                boolean changedInstance = gapComposer2.changedInstance(navHostController) | gapComposer2.changedInstance(lifecycleOwner);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                Object obj5 = rememberedValue4;
                if (changedInstance || rememberedValue4 == neverEqualPolicy) {
                    Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda1 = new Navigator$$ExternalSyntheticLambda1(28, navHostController, lifecycleOwner);
                    gapComposer2.updateRememberedValue(navigator$$ExternalSyntheticLambda1);
                    obj5 = navigator$$ExternalSyntheticLambda1;
                }
                Updater.DisposableEffect(lifecycleOwner, (Function1) obj5, gapComposer2);
                final SaveableStateHolderImpl rememberSaveableStateHolder = SaverKt.rememberSaveableStateHolder(gapComposer2);
                MutableState collectAsState2 = Updater.collectAsState(navControllerImpl.visibleEntries, gapComposer2);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                Object obj6 = rememberedValue5;
                if (rememberedValue5 == neverEqualPolicy) {
                    DerivedSnapshotState derivedStateOf = Updater.derivedStateOf(new NavHostKt$$ExternalSyntheticLambda11(collectAsState2, i5));
                    gapComposer2.updateRememberedValue(derivedStateOf);
                    obj6 = derivedStateOf;
                }
                State state2 = (State) obj6;
                NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) CollectionsKt.lastOrNull((List) state2.getValue());
                Object rememberedValue6 = gapComposer2.rememberedValue();
                Object obj7 = rememberedValue6;
                if (rememberedValue6 == neverEqualPolicy) {
                    int i6 = ObjectFloatMapKt.$r8$clinit;
                    MutableObjectFloatMap mutableObjectFloatMap3 = new MutableObjectFloatMap(6);
                    gapComposer2.updateRememberedValue(mutableObjectFloatMap3);
                    obj7 = mutableObjectFloatMap3;
                }
                MutableObjectFloatMap mutableObjectFloatMap4 = (MutableObjectFloatMap) obj7;
                if (navBackStackEntry4 != null) {
                    gapComposer2.startReplaceGroup(-1797563167);
                    boolean changedInstance2 = gapComposer2.changedInstance(composeNavigator) | ((((3670016 & i2) ^ 1572864) > 1048576 && gapComposer2.changed(function13)) || (i2 & 1572864) == 1048576) | ((57344 & i2) == 16384);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue7 == neverEqualPolicy) {
                        final int i7 = 0;
                        i3 = i2;
                        navigatorProvider = navigatorProvider2;
                        mutableObjectFloatMap = mutableObjectFloatMap4;
                        navBackStackEntry = navBackStackEntry4;
                        z = true;
                        Function1 function19 = new Function1() { // from class: androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj8) {
                                int i8 = i7;
                                MutableState mutableState3 = mutableState2;
                                Function1 function110 = function1;
                                Function1 function111 = function13;
                                ComposeNavigator composeNavigator6 = composeNavigator;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj8;
                                switch (i8) {
                                    case 0:
                                        NavDestination navDestination = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).destination;
                                        navDestination.getClass();
                                        ComposeNavigator.Destination destination = (ComposeNavigator.Destination) navDestination;
                                        if (((Boolean) composeNavigator6.isPop.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) {
                                            int i9 = NavDestination.$r8$clinit;
                                            for (NavDestination navDestination2 : OperationKt.getHierarchy(destination)) {
                                            }
                                            return (EnterTransitionImpl) function111.invoke(animatedContentTransitionScopeImpl);
                                        }
                                        int i10 = NavDestination.$r8$clinit;
                                        for (NavDestination navDestination3 : OperationKt.getHierarchy(destination)) {
                                        }
                                        return (EnterTransitionImpl) function110.invoke(animatedContentTransitionScopeImpl);
                                    default:
                                        NavDestination navDestination4 = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getInitialState()).destination;
                                        navDestination4.getClass();
                                        ComposeNavigator.Destination destination2 = (ComposeNavigator.Destination) navDestination4;
                                        if (((Boolean) composeNavigator6.isPop.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) {
                                            int i11 = NavDestination.$r8$clinit;
                                            for (NavDestination navDestination5 : OperationKt.getHierarchy(destination2)) {
                                            }
                                            return (ExitTransitionImpl) function111.invoke(animatedContentTransitionScopeImpl);
                                        }
                                        int i12 = NavDestination.$r8$clinit;
                                        for (NavDestination navDestination6 : OperationKt.getHierarchy(destination2)) {
                                        }
                                        return (ExitTransitionImpl) function110.invoke(animatedContentTransitionScopeImpl);
                                }
                            }
                        };
                        gapComposer2.updateRememberedValue(function19);
                        rememberedValue7 = function19;
                    } else {
                        i3 = i2;
                        navigatorProvider = navigatorProvider2;
                        mutableObjectFloatMap = mutableObjectFloatMap4;
                        navBackStackEntry = navBackStackEntry4;
                        z = true;
                    }
                    Function1 function110 = (Function1) rememberedValue7;
                    boolean changedInstance3 = gapComposer2.changedInstance(composeNavigator) | (((((29360128 & i3) ^ 12582912) <= 8388608 || !gapComposer2.changed(function14)) && (i3 & 12582912) != 8388608) ? false : z) | ((458752 & i3) == 131072 ? z : false);
                    Object rememberedValue8 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue8 == neverEqualPolicy) {
                        final int i8 = 1;
                        function17 = function110;
                        Function1 function111 = new Function1() { // from class: androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj8) {
                                int i82 = i8;
                                MutableState mutableState3 = mutableState2;
                                Function1 function1102 = function12;
                                Function1 function1112 = function14;
                                ComposeNavigator composeNavigator6 = composeNavigator;
                                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj8;
                                switch (i82) {
                                    case 0:
                                        NavDestination navDestination = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).destination;
                                        navDestination.getClass();
                                        ComposeNavigator.Destination destination = (ComposeNavigator.Destination) navDestination;
                                        if (((Boolean) composeNavigator6.isPop.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) {
                                            int i9 = NavDestination.$r8$clinit;
                                            for (NavDestination navDestination2 : OperationKt.getHierarchy(destination)) {
                                            }
                                            return (EnterTransitionImpl) function1112.invoke(animatedContentTransitionScopeImpl);
                                        }
                                        int i10 = NavDestination.$r8$clinit;
                                        for (NavDestination navDestination3 : OperationKt.getHierarchy(destination)) {
                                        }
                                        return (EnterTransitionImpl) function1102.invoke(animatedContentTransitionScopeImpl);
                                    default:
                                        NavDestination navDestination4 = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getInitialState()).destination;
                                        navDestination4.getClass();
                                        ComposeNavigator.Destination destination2 = (ComposeNavigator.Destination) navDestination4;
                                        if (((Boolean) composeNavigator6.isPop.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) {
                                            int i11 = NavDestination.$r8$clinit;
                                            for (NavDestination navDestination5 : OperationKt.getHierarchy(destination2)) {
                                            }
                                            return (ExitTransitionImpl) function1112.invoke(animatedContentTransitionScopeImpl);
                                        }
                                        int i12 = NavDestination.$r8$clinit;
                                        for (NavDestination navDestination6 : OperationKt.getHierarchy(destination2)) {
                                        }
                                        return (ExitTransitionImpl) function1102.invoke(animatedContentTransitionScopeImpl);
                                }
                            }
                        };
                        gapComposer2.updateRememberedValue(function111);
                        rememberedValue8 = function111;
                    } else {
                        function17 = function110;
                    }
                    Function1 function112 = (Function1) rememberedValue8;
                    boolean z3 = (234881024 & i3) == 67108864 ? z : false;
                    Object rememberedValue9 = gapComposer2.rememberedValue();
                    Object obj8 = rememberedValue9;
                    if (z3 || rememberedValue9 == neverEqualPolicy) {
                        NavHostKt$$ExternalSyntheticLambda14 navHostKt$$ExternalSyntheticLambda14 = new NavHostKt$$ExternalSyntheticLambda14(i5, function15);
                        gapComposer2.updateRememberedValue(navHostKt$$ExternalSyntheticLambda14);
                        obj8 = navHostKt$$ExternalSyntheticLambda14;
                    }
                    Function1 function113 = (Function1) obj8;
                    Boolean bool = Boolean.TRUE;
                    boolean changedInstance4 = gapComposer2.changedInstance(composeNavigator);
                    Object rememberedValue10 = gapComposer2.rememberedValue();
                    Object obj9 = rememberedValue10;
                    if (changedInstance4 || rememberedValue10 == neverEqualPolicy) {
                        Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda12 = new Navigator$$ExternalSyntheticLambda1(29, state2, composeNavigator);
                        gapComposer2.updateRememberedValue(navigator$$ExternalSyntheticLambda12);
                        obj9 = navigator$$ExternalSyntheticLambda12;
                    }
                    Updater.DisposableEffect(bool, (Function1) obj9, gapComposer2);
                    Object rememberedValue11 = gapComposer2.rememberedValue();
                    if (rememberedValue11 == neverEqualPolicy) {
                        navBackStackEntry2 = navBackStackEntry;
                        SeekableTransitionState seekableTransitionState3 = new SeekableTransitionState(navBackStackEntry2);
                        gapComposer2.updateRememberedValue(seekableTransitionState3);
                        obj = seekableTransitionState3;
                    } else {
                        navBackStackEntry2 = navBackStackEntry;
                        obj = rememberedValue11;
                    }
                    SeekableTransitionState seekableTransitionState4 = (SeekableTransitionState) obj;
                    Transition rememberTransition = ArcSplineKt.rememberTransition(seekableTransitionState4, "entry", gapComposer2, 56);
                    if (((Boolean) mutableState2.getValue()).booleanValue()) {
                        gapComposer2.startReplaceGroup(-1795329152);
                        Float valueOf = Float.valueOf(parcelableSnapshotMutableFloatState2.getFloatValue());
                        boolean changed2 = gapComposer2.changed(mutableState) | gapComposer2.changedInstance(seekableTransitionState4);
                        Object rememberedValue12 = gapComposer2.rememberedValue();
                        if (changed2 || rememberedValue12 == neverEqualPolicy) {
                            dialogNavigator = null;
                            rememberedValue12 = new Preferences$getAccountFlow$1((Object) seekableTransitionState4, (Object) mutableState, (Object) parcelableSnapshotMutableFloatState2, (Continuation) (false ? 1 : 0), 6);
                            seekableTransitionState2 = seekableTransitionState4;
                            gapComposer2.updateRememberedValue(rememberedValue12);
                        } else {
                            seekableTransitionState2 = seekableTransitionState4;
                            dialogNavigator = null;
                        }
                        Updater.LaunchedEffect(gapComposer2, valueOf, (Function2) rememberedValue12);
                        gapComposer2.end(false);
                        navBackStackEntry3 = navBackStackEntry2;
                        transition = rememberTransition;
                        seekableTransitionState = seekableTransitionState2;
                    } else {
                        dialogNavigator = null;
                        boolean z4 = false;
                        gapComposer2.startReplaceGroup(-1794910745);
                        boolean changedInstance5 = gapComposer2.changedInstance(seekableTransitionState4) | gapComposer2.changedInstance(navBackStackEntry2) | gapComposer2.changed(rememberTransition);
                        Object rememberedValue13 = gapComposer2.rememberedValue();
                        if (changedInstance5 || rememberedValue13 == neverEqualPolicy) {
                            NavBackStackEntry navBackStackEntry5 = navBackStackEntry2;
                            transition = rememberTransition;
                            seekableTransitionState = seekableTransitionState4;
                            rememberedValue13 = new NavHostKt$NavHost$29$1((Object) seekableTransitionState, (Object) navBackStackEntry5, (Object) transition, (Continuation) (z4 ? 1 : 0), 0);
                            navBackStackEntry3 = navBackStackEntry5;
                            gapComposer2.updateRememberedValue(rememberedValue13);
                        } else {
                            navBackStackEntry3 = navBackStackEntry2;
                            transition = rememberTransition;
                            seekableTransitionState = seekableTransitionState4;
                        }
                        Updater.LaunchedEffect(gapComposer2, navBackStackEntry3, (Function2) rememberedValue13);
                        gapComposer2.end(false);
                    }
                    MutableObjectFloatMap mutableObjectFloatMap5 = mutableObjectFloatMap;
                    boolean changedInstance6 = gapComposer2.changedInstance(mutableObjectFloatMap5) | gapComposer2.changedInstance(composeNavigator) | gapComposer2.changed(function17) | gapComposer2.changed(function112) | gapComposer2.changed(function113);
                    Object rememberedValue14 = gapComposer2.rememberedValue();
                    if (changedInstance6 || rememberedValue14 == neverEqualPolicy) {
                        ComposeNavigator composeNavigator6 = composeNavigator;
                        rememberedValue14 = new NavHostKt$$ExternalSyntheticLambda16(mutableObjectFloatMap5, composeNavigator6, function17, function112, function113, state2, mutableState2, 0);
                        mutableObjectFloatMap2 = mutableObjectFloatMap5;
                        composeNavigator2 = composeNavigator6;
                        state = state2;
                        mutableState2 = mutableState2;
                        gapComposer2.updateRememberedValue(rememberedValue14);
                    } else {
                        composeNavigator2 = composeNavigator;
                        mutableObjectFloatMap2 = mutableObjectFloatMap5;
                        state = state2;
                    }
                    Function1 function114 = (Function1) rememberedValue14;
                    Object rememberedValue15 = gapComposer2.rememberedValue();
                    Object obj10 = rememberedValue15;
                    if (rememberedValue15 == neverEqualPolicy) {
                        RoomDatabase$$ExternalSyntheticLambda0 roomDatabase$$ExternalSyntheticLambda0 = new RoomDatabase$$ExternalSyntheticLambda0(23);
                        gapComposer2.updateRememberedValue(roomDatabase$$ExternalSyntheticLambda0);
                        obj10 = roomDatabase$$ExternalSyntheticLambda0;
                    }
                    final NavBackStackEntry navBackStackEntry6 = navBackStackEntry3;
                    final State state3 = state;
                    final SeekableTransitionState seekableTransitionState5 = seekableTransitionState;
                    Transition transition2 = transition;
                    CrossfadeKt.AnimatedContent(transition2, modifier, function114, alignment, (Function1) obj10, Expect_jvmKt.rememberComposableLambda(820763100, new Function4() { // from class: androidx.navigation.compose.NavHostKt$NavHost$32
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v10 */
                        /* JADX WARN: Type inference failed for: r0v11 */
                        /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object] */
                        @Override // kotlin.jvm.functions.Function4
                        public final Object invoke(Object obj11, Object obj12, Object obj13, Object obj14) {
                            NavBackStackEntry navBackStackEntry7;
                            AnimatedContentScopeImpl animatedContentScopeImpl = (AnimatedContentScopeImpl) obj11;
                            NavBackStackEntry navBackStackEntry8 = (NavBackStackEntry) obj12;
                            Composer composer2 = (Composer) obj13;
                            ((Number) obj14).intValue();
                            boolean areEqual = Intrinsics.areEqual(SeekableTransitionState.this.currentState$delegate.getValue(), navBackStackEntry6);
                            if (!((Boolean) mutableState2.getValue()).booleanValue() && !areEqual) {
                                List list = (List) state3.getValue();
                                ListIterator listIterator = list.listIterator(list.size());
                                while (true) {
                                    if (!listIterator.hasPrevious()) {
                                        navBackStackEntry7 = 0;
                                        break;
                                    }
                                    navBackStackEntry7 = listIterator.previous();
                                    if (Intrinsics.areEqual(navBackStackEntry8, (NavBackStackEntry) navBackStackEntry7)) {
                                        break;
                                    }
                                }
                                navBackStackEntry8 = navBackStackEntry7;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (navBackStackEntry8 == null) {
                                gapComposer3.startReplaceGroup(105930796);
                            } else {
                                gapComposer3.startReplaceGroup(-1520603531);
                                RelationUtil.LocalOwnersProvider(navBackStackEntry8, rememberSaveableStateHolder, Expect_jvmKt.rememberComposableLambda(-1263531443, new ButtonKt$Button$2.AnonymousClass1(9, navBackStackEntry8, animatedContentScopeImpl), gapComposer3), gapComposer3, 384);
                            }
                            gapComposer3.end(false);
                            return Unit.INSTANCE;
                        }
                    }, gapComposer2), gapComposer2, ((i3 >> 3) & 112) | 221184 | (i3 & 7168));
                    gapComposer = gapComposer2;
                    Object currentState = transition2.transitionState.getCurrentState();
                    Object value = transition2.targetState$delegate.getValue();
                    boolean changed3 = gapComposer.changed(transition2) | gapComposer.changedInstance(navHostController) | gapComposer.changedInstance(navBackStackEntry6) | gapComposer.changedInstance(composeNavigator2) | gapComposer.changedInstance(mutableObjectFloatMap2);
                    Object rememberedValue16 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue16 == neverEqualPolicy) {
                        obj2 = value;
                        NavHostKt$NavHost$33$1 navHostKt$NavHost$33$1 = new NavHostKt$NavHost$33$1(transition2, navHostController, navBackStackEntry6, mutableObjectFloatMap2, state3, composeNavigator2, null);
                        gapComposer.updateRememberedValue(navHostKt$NavHost$33$1);
                        rememberedValue16 = navHostKt$NavHost$33$1;
                    } else {
                        obj2 = value;
                    }
                    Updater.LaunchedEffect(currentState, obj2, (Function2) rememberedValue16, gapComposer);
                    gapComposer.end(false);
                } else {
                    navigatorProvider = navigatorProvider2;
                    gapComposer = gapComposer2;
                    dialogNavigator = null;
                    gapComposer.startReplaceGroup(-1789758886);
                    gapComposer.end(false);
                }
                Navigator navigator2 = navigatorProvider.getNavigator("dialog");
                DialogNavigator dialogNavigator2 = navigator2 instanceof DialogNavigator ? (DialogNavigator) navigator2 : dialogNavigator;
                if (dialogNavigator2 == null) {
                    RecomposeScopeImpl endRestartGroup2 = gapComposer.endRestartGroup();
                    if (endRestartGroup2 != null) {
                        final int i9 = 0;
                        endRestartGroup2.block = new Function2() { // from class: androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda7
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj32, Object obj42) {
                                int i52 = i9;
                                Unit unit = Unit.INSTANCE;
                                int i62 = i;
                                switch (i52) {
                                    case 0:
                                        ((Integer) obj42).getClass();
                                        int updateChangedFlags = Updater.updateChangedFlags(i62 | 1);
                                        Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function15, (Composer) obj32, updateChangedFlags);
                                        break;
                                    case 1:
                                        ((Integer) obj42).getClass();
                                        int updateChangedFlags2 = Updater.updateChangedFlags(i62 | 1);
                                        Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function15, (Composer) obj32, updateChangedFlags2);
                                        break;
                                    default:
                                        ((Integer) obj42).getClass();
                                        int updateChangedFlags3 = Updater.updateChangedFlags(i62 | 1);
                                        Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function15, (Composer) obj32, updateChangedFlags3);
                                        break;
                                }
                                return unit;
                            }
                        };
                        return;
                    }
                    return;
                }
                DebugUtils.DialogHost(dialogNavigator2, gapComposer, 0);
            }
            RecomposeScopeImpl endRestartGroup3 = gapComposer.endRestartGroup();
            if (endRestartGroup3 != null) {
                final int i10 = 1;
                endRestartGroup3.block = new Function2() { // from class: androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj32, Object obj42) {
                        int i52 = i10;
                        Unit unit = Unit.INSTANCE;
                        int i62 = i;
                        switch (i52) {
                            case 0:
                                ((Integer) obj42).getClass();
                                int updateChangedFlags = Updater.updateChangedFlags(i62 | 1);
                                Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function15, (Composer) obj32, updateChangedFlags);
                                break;
                            case 1:
                                ((Integer) obj42).getClass();
                                int updateChangedFlags2 = Updater.updateChangedFlags(i62 | 1);
                                Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function15, (Composer) obj32, updateChangedFlags2);
                                break;
                            default:
                                ((Integer) obj42).getClass();
                                int updateChangedFlags3 = Updater.updateChangedFlags(i62 | 1);
                                Utf8.SafeProcessor.NavHost(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function15, (Composer) obj32, updateChangedFlags3);
                                break;
                        }
                        return unit;
                    }
                };
            }
        }

        public static final void PermissionsScreen(PermissionsViewModel permissionsViewModel, BrandNameProvider brandNameProvider, Function0 function0, Composer composer, int i) {
            final PermissionsViewModel permissionsViewModel2;
            BrandNameProvider brandNameProvider2;
            BrandNameProvider brandNameProvider3;
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1143035926);
            int i2 = i | 18 | (gapComposer.changedInstance(function0) ? 256 : 128);
            final int i3 = 1;
            final int i4 = 0;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                gapComposer.startDefaults();
                int i5 = i & 1;
                Continuation continuation = null;
                Object obj = Composer.Companion.Empty;
                if (i5 == 0 || gapComposer.getDefaultsInvalid()) {
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                    if (current == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return;
                    }
                    PermissionsViewModel permissionsViewModel3 = (PermissionsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(PermissionsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == obj) {
                        rememberedValue = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    permissionsViewModel2 = permissionsViewModel3;
                    brandNameProvider3 = (BrandNameProvider) rememberedValue;
                } else {
                    gapComposer.skipToGroupEnd();
                    permissionsViewModel2 = permissionsViewModel;
                    brandNameProvider3 = brandNameProvider;
                }
                gapComposer.endDefaults();
                int i6 = 5;
                AuthorizationContract authorizationContract = new AuthorizationContract(i6);
                boolean changedInstance = gapComposer.changedInstance(permissionsViewModel2);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == obj) {
                    rememberedValue2 = new Function1() { // from class: app.k9mail.feature.onboarding.permissions.ui.PermissionsScreenKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            int i7 = i4;
                            Unit unit = Unit.INSTANCE;
                            PermissionsViewModel permissionsViewModel4 = permissionsViewModel2;
                            boolean booleanValue = ((Boolean) obj2).booleanValue();
                            switch (i7) {
                                case 0:
                                    permissionsViewModel4.event(new PermissionsContract$Event.ContactsPermissionResult(booleanValue));
                                    break;
                                default:
                                    permissionsViewModel4.event(new PermissionsContract$Event.NotificationsPermissionResult(booleanValue));
                                    break;
                            }
                            return unit;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                ManagedActivityResultLauncher rememberLauncherForActivityResult = DBUtil.rememberLauncherForActivityResult(authorizationContract, (Function1) rememberedValue2, gapComposer);
                AuthorizationContract authorizationContract2 = new AuthorizationContract(i6);
                boolean changedInstance2 = gapComposer.changedInstance(permissionsViewModel2);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue3 == obj) {
                    rememberedValue3 = new Function1() { // from class: app.k9mail.feature.onboarding.permissions.ui.PermissionsScreenKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            int i7 = i3;
                            Unit unit = Unit.INSTANCE;
                            PermissionsViewModel permissionsViewModel4 = permissionsViewModel2;
                            boolean booleanValue = ((Boolean) obj2).booleanValue();
                            switch (i7) {
                                case 0:
                                    permissionsViewModel4.event(new PermissionsContract$Event.ContactsPermissionResult(booleanValue));
                                    break;
                                default:
                                    permissionsViewModel4.event(new PermissionsContract$Event.NotificationsPermissionResult(booleanValue));
                                    break;
                            }
                            return unit;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                ManagedActivityResultLauncher rememberLauncherForActivityResult2 = DBUtil.rememberLauncherForActivityResult(authorizationContract2, (Function1) rememberedValue3, gapComposer);
                MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(permissionsViewModel2.state, gapComposer);
                boolean changedInstance3 = gapComposer.changedInstance(permissionsViewModel2);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changedInstance3 || rememberedValue4 == obj) {
                    rememberedValue4 = new ProduceKt$awaitClose$4$1(7, permissionsViewModel2);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                Function1 function1 = (Function1) rememberedValue4;
                Updater.LaunchedEffect(gapComposer, permissionsViewModel2.effect, new NavHostKt$NavHost$29$1(permissionsViewModel2, (Continuation) null, rememberLauncherForActivityResult, rememberLauncherForActivityResult2, function0, 21));
                collectAsStateWithLifecycle.getClass();
                function1.getClass();
                boolean changed2 = gapComposer.changed(function1);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue5 == obj) {
                    rememberedValue5 = new AboutFragment$$ExternalSyntheticLambda2(23, function1);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                DebugUtils.BackHandler(false, (Function0) rememberedValue5, gapComposer, 0, 1);
                boolean changed3 = gapComposer.changed(function1);
                Object rememberedValue6 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue6 == obj) {
                    rememberedValue6 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(9, continuation, function1);
                    gapComposer.updateRememberedValue(rememberedValue6);
                }
                Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue6);
                K9AppNameProvider k9AppNameProvider = (K9AppNameProvider) brandNameProvider3;
                SchemaInfoUtilKt.PermissionsContent((PermissionsContract$State) collectAsStateWithLifecycle.getValue(), function1, k9AppNameProvider.getBrandName(), null, gapComposer, 0);
                brandNameProvider2 = k9AppNameProvider;
            } else {
                gapComposer.skipToGroupEnd();
                permissionsViewModel2 = permissionsViewModel;
                brandNameProvider2 = brandNameProvider;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(permissionsViewModel2, brandNameProvider2, function0, i, 15);
            }
        }

        public static final void PullToRefreshBox(boolean z, Function0 function0, Modifier modifier, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
            Alignment alignment2;
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-796931410);
            int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128) | 3072;
            int i3 = 1;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
                BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                Object[] objArr = new Object[0];
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new TextKt$$ExternalSyntheticLambda4(11);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                PullToRefreshStateImpl pullToRefreshStateImpl = (PullToRefreshStateImpl) SaverKt.rememberSaveable(objArr, PullToRefreshStateImpl.Saver, (Function0) rememberedValue, gapComposer, 384);
                Operation$State.PullToRefreshBox(z, function0, TestTagKt.testTag(modifier, "PullToRefreshBox"), pullToRefreshStateImpl, Expect_jvmKt.rememberComposableLambda(-963943115, new SegmentedButtonKt$$ExternalSyntheticLambda3(i3, pullToRefreshStateImpl, z), gapComposer), composableLambdaImpl, gapComposer, 1597440 | (i2 & 112) | (i2 & 14) | 196608);
                alignment2 = biasAlignment;
            } else {
                gapComposer.skipToGroupEnd();
                alignment2 = alignment;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(z, function0, modifier, alignment2, composableLambdaImpl, i);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0047  */
        /* renamed from: TextBodyLarge-Xl4FiYE, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void m799TextBodyLargeXl4FiYE(java.lang.String r31, androidx.compose.ui.Modifier r32, long r33, androidx.compose.ui.text.style.TextAlign r35, int r36, int r37, androidx.compose.runtime.Composer r38, int r39, int r40) {
            /*
                Method dump skipped, instructions count: 293
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.ui.text.style.TextAlign, int, int, androidx.compose.runtime.Composer, int, int):void");
        }

        public static final void TextFieldSelectionHandle(final boolean z, ResolvedTextDirection resolvedTextDirection, final TextFieldSelectionManager textFieldSelectionManager, Composer composer, int i) {
            int i2;
            TextLayoutResultProxy layoutResult;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1344558920);
            if ((i & 6) == 0) {
                i2 = (gapComposer.changed(z) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changed(resolvedTextDirection.ordinal()) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changedInstance(textFieldSelectionManager) ? 256 : 128;
            }
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                int i3 = i2 & 14;
                boolean changed = (i3 == 4) | gapComposer.changed(textFieldSelectionManager);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onDown-k-4lQ0M */
                        public final void mo277onDownk4lQ0M() {
                            TextLayoutResultProxy layoutResult2;
                            boolean z2 = z;
                            Handle handle = z2 ? Handle.SelectionStart : Handle.SelectionEnd;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.draggingHandle$delegate.setValue(handle);
                            long m306getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m306getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager2.m312getHandlePositiontuRUvjQ$foundation(z2));
                            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager2.state;
                            if (legacyTextFieldState == null || (layoutResult2 = legacyTextFieldState.getLayoutResult()) == null) {
                                return;
                            }
                            long m284translateInnerToDecorationCoordinatesMKHz9U$foundation = layoutResult2.m284translateInnerToDecorationCoordinatesMKHz9U$foundation(m306getAdjustedCoordinatesk4lQ0M);
                            textFieldSelectionManager2.dragBeginPosition = m284translateInnerToDecorationCoordinatesMKHz9U$foundation;
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(new Offset(m284translateInnerToDecorationCoordinatesMKHz9U$foundation));
                            textFieldSelectionManager2.dragTotalDistance = 0L;
                            textFieldSelectionManager2.previousRawDragOffset = -1;
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.state;
                            if (legacyTextFieldState2 != null) {
                                legacyTextFieldState2.isInTouchMode$delegate.setValue(Boolean.TRUE);
                            }
                            textFieldSelectionManager2.updateFloatingToolbar(false);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onDrag-k-4lQ0M */
                        public final void mo278onDragk4lQ0M(long j) {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            long m441plusMKHz9U = Offset.m441plusMKHz9U(textFieldSelectionManager2.dragTotalDistance, j);
                            textFieldSelectionManager2.dragTotalDistance = m441plusMKHz9U;
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(new Offset(Offset.m441plusMKHz9U(textFieldSelectionManager2.dragBeginPosition, m441plusMKHz9U)));
                            TextFieldValue value$foundation = textFieldSelectionManager2.getValue$foundation();
                            Offset m311getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m311getCurrentDragPosition_m7T9E();
                            m311getCurrentDragPosition_m7T9E.getClass();
                            TextFieldSelectionManager.m308access$updateSelectionjSglsI8(textFieldSelectionManager2, value$foundation, m311getCurrentDragPosition_m7T9E.packedValue, false, z, SelectionAdjustment$Companion.CharacterWithWordAccelerate, true, new HapticFeedbackType(9));
                            textFieldSelectionManager2.updateFloatingToolbar(false);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onStop() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.draggingHandle$delegate.setValue(null);
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(null);
                            textFieldSelectionManager2.updateFloatingToolbar(true);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onUp() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.draggingHandle$delegate.setValue(null);
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(null);
                            textFieldSelectionManager2.updateFloatingToolbar(true);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onCancel() {
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onStart-3MmeM6k */
                        public final void mo279onStart3MmeM6k(long j, StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0) {
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
                boolean changedInstance = (i3 == 4) | gapComposer.changedInstance(textFieldSelectionManager);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* renamed from: provide-F1C5BW0 */
                        public final long mo272provideF1C5BW0() {
                            return TextFieldSelectionManager.this.m312getHandlePositiontuRUvjQ$foundation(z);
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                OffsetProvider offsetProvider = (OffsetProvider) rememberedValue2;
                boolean m703getReversedimpl = TextRange.m703getReversedimpl(textFieldSelectionManager.getValue$foundation().selection);
                int i4 = (int) (z ? textFieldSelectionManager.getValue$foundation().selection >> 32 : textFieldSelectionManager.getValue$foundation().selection & 4294967295L);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
                float f = 0.0f;
                if (legacyTextFieldState != null && (layoutResult = legacyTextFieldState.getLayoutResult()) != null) {
                    TextLayoutResult textLayoutResult = layoutResult.value;
                    if (i4 >= 0) {
                        TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
                        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
                        if (textLayoutInput.text.text.length() != 0) {
                            int min = Math.min(multiParagraph.getLineForOffset(i4), Math.min(multiParagraph.maxLines - 1, multiParagraph.lineCount - 1));
                            if (i4 <= multiParagraph.getLineEnd(min, false)) {
                                multiParagraph.requireLineIndexInRange(min);
                                ArrayList arrayList = multiParagraph.paragraphInfoList;
                                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(min, arrayList));
                                AndroidParagraph androidParagraph = paragraphInfo.paragraph;
                                int i5 = min - paragraphInfo.startLineIndex;
                                TextLayout textLayout = androidParagraph.layout;
                                f = textLayout.getLineBottom(i5) - textLayout.getLineTop(i5);
                            }
                        }
                    }
                }
                float f2 = f;
                boolean changedInstance2 = gapComposer.changedInstance(textDragObserver);
                Object rememberedValue3 = gapComposer.rememberedValue();
                int i6 = 6;
                if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new ExposedDropdownMenuKt$expandable$1(i6, textDragObserver);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Util.m1091SelectionHandlewLIcFTc(offsetProvider, z, resolvedTextDirection, m703getReversedimpl, 0L, f2, new SuspendPointerInputElement(textDragObserver, null, (PointerInputEventHandler) rememberedValue3, 6), gapComposer, (i2 << 3) & 1008);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CheckboxKt$$ExternalSyntheticLambda3(i, 2, resolvedTextDirection, textFieldSelectionManager, z);
            }
        }

        public static final ExecutorService access$createDefaultExecutor(final boolean z) {
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
                public final AtomicInteger threadCount = new AtomicInteger(0);

                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    runnable.getClass();
                    StringBuilder m = Modifier.CC.m(z ? "WM.task-" : "androidx.work-");
                    m.append(this.threadCount.incrementAndGet());
                    return new Thread(runnable, m.toString());
                }
            });
            newFixedThreadPool.getClass();
            return newFixedThreadPool;
        }

        public static final void appendPlaceholders(int i, StringBuilder sb) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("?");
                if (i2 < i - 1) {
                    sb.append(",");
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.tooling.ReaderTraceBuilder, org.minidns.dnsqueryresult.DnsQueryResult] */
        /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.composer.gapbuffer.GapAnchor] */
        /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Integer] */
        public static final List buildTrace(SlotWriter slotWriter, Integer num, int i, Integer num2) {
            int i2;
            int groupKey;
            MutableObjectList mutableObjectList;
            if (slotWriter.closed || slotWriter.getSize$runtime() == 0) {
                return EmptyList.INSTANCE;
            }
            ?? readerTraceBuilder = new ReaderTraceBuilder(slotWriter);
            if (num2 != null) {
                i2 = num2.intValue();
            } else {
                i2 = slotWriter.parent;
                if (i2 < 0) {
                    i2 = slotWriter.parent(slotWriter.groups, i);
                }
            }
            if (num == 0) {
                int slotIndex = slotWriter.currentSlot - slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i));
                MutableIntObjectMap mutableIntObjectMap = slotWriter.deferredSlotWrites;
                num = Integer.valueOf(slotIndex + ((mutableIntObjectMap == null || (mutableObjectList = (MutableObjectList) mutableIntObjectMap.get(i)) == null) ? 0 : mutableObjectList._size));
            }
            int groupIndexToAddress = slotWriter.groupIndexToAddress(i) * 5;
            int[] iArr = slotWriter.groups;
            if (groupIndexToAddress < iArr.length) {
                groupKey = slotWriter.groupKey(i);
            } else {
                int parent = i2 >= 0 ? slotWriter.parent(iArr, i2) : i2;
                groupKey = slotWriter.groupKey(i2);
                int i3 = i2;
                i2 = parent;
                i = i3;
            }
            while (i >= 0) {
                readerTraceBuilder.processEdge(groupKey, (slotWriter.groups[(slotWriter.groupIndexToAddress(i) * 5) + 1] & 536870912) != 0 ? slotWriter.groupObjectKey(i) : Composer.Companion.Empty, slotWriter.sourceInformationOf$runtime(i), num);
                num = slotWriter.anchor(i);
                if (i2 >= 0) {
                    int parent2 = slotWriter.parent(slotWriter.groups, i2);
                    groupKey = slotWriter.groupKey(i2);
                    int i4 = i2;
                    i2 = parent2;
                    i = i4;
                } else {
                    i = i2;
                }
            }
            return (ArrayList) readerTraceBuilder.response;
        }

        public static final Modifier constraint(BoxWithConstraintsScope boxWithConstraintsScope) {
            boxWithConstraintsScope.getClass();
            BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) boxWithConstraintsScope;
            long j = boxWithConstraintsScopeImpl.constraints;
            Density density = boxWithConstraintsScopeImpl.density;
            float m201getMaxWidthD9Ej5fM = boxWithConstraintsScopeImpl.m201getMaxWidthD9Ej5fM();
            boolean z = false;
            boolean z2 = (Dp.m745equalsimpl0(m201getMaxWidthD9Ej5fM, Float.POSITIVE_INFINITY) || Dp.m745equalsimpl0(m201getMaxWidthD9Ej5fM, Float.NaN)) ? false : true;
            float mo174toDpu2uoSUM = Constraints.m729getHasBoundedHeightimpl(j) ? density.mo174toDpu2uoSUM(Constraints.m733getMaxHeightimpl(j)) : Float.POSITIVE_INFINITY;
            if (!Dp.m745equalsimpl0(mo174toDpu2uoSUM, Float.POSITIVE_INFINITY) && !Dp.m745equalsimpl0(mo174toDpu2uoSUM, Float.NaN)) {
                z = true;
            }
            Modifier modifier = Modifier.Companion.$$INSTANCE;
            Modifier m239widthInVpY3zN4 = z2 ? SizeKt.m239widthInVpY3zN4(modifier, density.mo174toDpu2uoSUM(Constraints.m736getMinWidthimpl(j)), boxWithConstraintsScopeImpl.m201getMaxWidthD9Ej5fM()) : modifier;
            if (z) {
                modifier = SizeKt.m227heightInVpY3zN4(modifier, density.mo174toDpu2uoSUM(Constraints.m735getMinHeightimpl(j)), Constraints.m729getHasBoundedHeightimpl(j) ? density.mo174toDpu2uoSUM(Constraints.m733getMaxHeightimpl(j)) : Float.POSITIVE_INFINITY);
            }
            return m239widthInVpY3zN4.then(modifier);
        }

        public static ViewModel createViewModel(Class cls) {
            try {
                Constructor declaredConstructor = cls.getDeclaredConstructor(null);
                if (!java.lang.reflect.Modifier.isPublic(declaredConstructor.getModifiers())) {
                    Regex$$ExternalSyntheticBUOutline0.m(cls, "Cannot create an instance of ");
                    return null;
                }
                try {
                    Object newInstance = declaredConstructor.newInstance(null);
                    newInstance.getClass();
                    return (ViewModel) newInstance;
                } catch (IllegalAccessException e) {
                    Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e);
                    return null;
                } catch (InstantiationException e2) {
                    Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e2);
                    return null;
                }
            } catch (NoSuchMethodException e3) {
                Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e3);
                return null;
            }
        }

        public static void d(String str, String str2) {
            String truncateTag = truncateTag(str);
            if (isLogLevelEnabled(truncateTag, 3)) {
                Log.d(truncateTag, str2);
            }
        }

        public static void e(String str, String str2) {
            String truncateTag = truncateTag(str);
            if (isLogLevelEnabled(truncateTag, 6)) {
                Log.e(truncateTag, str2);
            }
        }

        public static final Integer findSubcompositionContextGroup$lambda$0$scanGroup(SlotReader slotReader, CompositionContext compositionContext, int i, int i2) {
            Integer findSubcompositionContextGroup$lambda$0$scanGroup;
            int[] iArr = slotReader.groups;
            while (true) {
                if (i >= i2) {
                    return null;
                }
                int i3 = iArr[(i * 5) + 3] + i;
                if (slotReader.hasMark(i) && slotReader.groupKey(i) == 206 && Intrinsics.areEqual(slotReader.objectKey(iArr, i), ComposerKt.reference)) {
                    Object groupGet = slotReader.groupGet(i, 0);
                    GapRememberObserverHolder gapRememberObserverHolder = groupGet instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) groupGet : null;
                    Object obj = gapRememberObserverHolder != null ? gapRememberObserverHolder.wrapped : null;
                    GapComposer.CompositionContextHolder compositionContextHolder = obj instanceof GapComposer.CompositionContextHolder ? (GapComposer.CompositionContextHolder) obj : null;
                    if (compositionContextHolder != null && compositionContextHolder.ref == compositionContext) {
                        return Integer.valueOf(i);
                    }
                }
                if (slotReader.containsMark(i) && (findSubcompositionContextGroup$lambda$0$scanGroup = findSubcompositionContextGroup$lambda$0$scanGroup(slotReader, compositionContext, i + 1, i3)) != null) {
                    return Integer.valueOf(findSubcompositionContextGroup$lambda$0$scanGroup.intValue());
                }
                i = i3;
            }
        }

        public static final List getAllowedAuthenticationTypes(IncomingProtocolType incomingProtocolType) {
            incomingProtocolType.getClass();
            int ordinal = incomingProtocolType.ordinal();
            AuthenticationType authenticationType = AuthenticationType.ClientCertificate;
            AuthenticationType authenticationType2 = AuthenticationType.PasswordEncrypted;
            AuthenticationType authenticationType3 = AuthenticationType.PasswordCleartext;
            if (ordinal == 0) {
                return IntOffsetKt.listOf((Object[]) new AuthenticationType[]{authenticationType3, authenticationType2, authenticationType, AuthenticationType.OAuth2});
            }
            if (ordinal == 1) {
                return IntOffsetKt.listOf((Object[]) new AuthenticationType[]{authenticationType3, authenticationType2, authenticationType});
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }

        public static AutofillIdCompat getAutofillId(View view) {
            if (Build.VERSION.SDK_INT >= 26) {
                return new AutofillIdCompat(Api26Impl.getAutofillId(view));
            }
            return null;
        }

        public static Drawable getDrawable(Context context, int i) {
            return ResourceManagerInternal.get().getDrawable(context, i);
        }

        public static Object getParcelableExtra(Intent intent, String str, Class cls) {
            if (Build.VERSION.SDK_INT >= 34) {
                return Api33Impl.getParcelableExtra(intent, str, cls);
            }
            Parcelable parcelableExtra = intent.getParcelableExtra(str);
            if (cls.isInstance(parcelableExtra)) {
                return parcelableExtra;
            }
            return null;
        }

        public static final ImageVector getSettings() {
            ImageVector imageVector = _settings;
            if (imageVector != null) {
                return imageVector;
            }
            ImageVector.Builder builder = new ImageVector.Builder("Outlined.Settings", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i = VectorKt.$r8$clinit;
            SolidColor solidColor = new SolidColor(Color.Black);
            Headers.Builder m = Modifier.CC.m(19.43f, 12.98f);
            m.curveToRelative(0.04f, -0.32f, 0.07f, -0.64f, 0.07f, -0.98f);
            m.curveToRelative(0.0f, -0.34f, -0.03f, -0.66f, -0.07f, -0.98f);
            m.lineToRelative(2.11f, -1.65f);
            m.curveToRelative(0.19f, -0.15f, 0.24f, -0.42f, 0.12f, -0.64f);
            m.lineToRelative(-2.0f, -3.46f);
            m.curveToRelative(-0.09f, -0.16f, -0.26f, -0.25f, -0.44f, -0.25f);
            m.curveToRelative(-0.06f, 0.0f, -0.12f, 0.01f, -0.17f, 0.03f);
            m.lineToRelative(-2.49f, 1.0f);
            m.curveToRelative(-0.52f, -0.4f, -1.08f, -0.73f, -1.69f, -0.98f);
            m.lineToRelative(-0.38f, -2.65f);
            m.curveTo(14.46f, 2.18f, 14.25f, 2.0f, 14.0f, 2.0f);
            m.horizontalLineToRelative(-4.0f);
            m.curveToRelative(-0.25f, 0.0f, -0.46f, 0.18f, -0.49f, 0.42f);
            m.lineToRelative(-0.38f, 2.65f);
            m.curveToRelative(-0.61f, 0.25f, -1.17f, 0.59f, -1.69f, 0.98f);
            m.lineToRelative(-2.49f, -1.0f);
            m.curveToRelative(-0.06f, -0.02f, -0.12f, -0.03f, -0.18f, -0.03f);
            m.curveToRelative(-0.17f, 0.0f, -0.34f, 0.09f, -0.43f, 0.25f);
            m.lineToRelative(-2.0f, 3.46f);
            m.curveToRelative(-0.13f, 0.22f, -0.07f, 0.49f, 0.12f, 0.64f);
            m.lineToRelative(2.11f, 1.65f);
            m.curveToRelative(-0.04f, 0.32f, -0.07f, 0.65f, -0.07f, 0.98f);
            m.curveToRelative(0.0f, 0.33f, 0.03f, 0.66f, 0.07f, 0.98f);
            m.lineToRelative(-2.11f, 1.65f);
            m.curveToRelative(-0.19f, 0.15f, -0.24f, 0.42f, -0.12f, 0.64f);
            m.lineToRelative(2.0f, 3.46f);
            m.curveToRelative(0.09f, 0.16f, 0.26f, 0.25f, 0.44f, 0.25f);
            m.curveToRelative(0.06f, 0.0f, 0.12f, -0.01f, 0.17f, -0.03f);
            m.lineToRelative(2.49f, -1.0f);
            m.curveToRelative(0.52f, 0.4f, 1.08f, 0.73f, 1.69f, 0.98f);
            m.lineToRelative(0.38f, 2.65f);
            m.curveToRelative(0.03f, 0.24f, 0.24f, 0.42f, 0.49f, 0.42f);
            m.horizontalLineToRelative(4.0f);
            m.curveToRelative(0.25f, 0.0f, 0.46f, -0.18f, 0.49f, -0.42f);
            m.lineToRelative(0.38f, -2.65f);
            m.curveToRelative(0.61f, -0.25f, 1.17f, -0.59f, 1.69f, -0.98f);
            m.lineToRelative(2.49f, 1.0f);
            m.curveToRelative(0.06f, 0.02f, 0.12f, 0.03f, 0.18f, 0.03f);
            m.curveToRelative(0.17f, 0.0f, 0.34f, -0.09f, 0.43f, -0.25f);
            m.lineToRelative(2.0f, -3.46f);
            m.curveToRelative(0.12f, -0.22f, 0.07f, -0.49f, -0.12f, -0.64f);
            m.lineToRelative(-2.11f, -1.65f);
            m.close();
            m.moveTo(17.45f, 11.27f);
            m.curveToRelative(0.04f, 0.31f, 0.05f, 0.52f, 0.05f, 0.73f);
            m.curveToRelative(0.0f, 0.21f, -0.02f, 0.43f, -0.05f, 0.73f);
            m.lineToRelative(-0.14f, 1.13f);
            m.lineToRelative(0.89f, 0.7f);
            m.lineToRelative(1.08f, 0.84f);
            m.lineToRelative(-0.7f, 1.21f);
            m.lineToRelative(-1.27f, -0.51f);
            m.lineToRelative(-1.04f, -0.42f);
            m.lineToRelative(-0.9f, 0.68f);
            m.curveToRelative(-0.43f, 0.32f, -0.84f, 0.56f, -1.25f, 0.73f);
            m.lineToRelative(-1.06f, 0.43f);
            m.lineToRelative(-0.16f, 1.13f);
            m.lineToRelative(-0.2f, 1.35f);
            m.horizontalLineToRelative(-1.4f);
            m.lineToRelative(-0.19f, -1.35f);
            m.lineToRelative(-0.16f, -1.13f);
            m.lineToRelative(-1.06f, -0.43f);
            m.curveToRelative(-0.43f, -0.18f, -0.83f, -0.41f, -1.23f, -0.71f);
            m.lineToRelative(-0.91f, -0.7f);
            m.lineToRelative(-1.06f, 0.43f);
            m.lineToRelative(-1.27f, 0.51f);
            m.lineToRelative(-0.7f, -1.21f);
            m.lineToRelative(1.08f, -0.84f);
            m.lineToRelative(0.89f, -0.7f);
            m.lineToRelative(-0.14f, -1.13f);
            m.curveToRelative(-0.03f, -0.31f, -0.05f, -0.54f, -0.05f, -0.74f);
            m.reflectiveCurveToRelative(0.02f, -0.43f, 0.05f, -0.73f);
            m.lineToRelative(0.14f, -1.13f);
            m.lineToRelative(-0.89f, -0.7f);
            m.lineToRelative(-1.08f, -0.84f);
            m.lineToRelative(0.7f, -1.21f);
            m.lineToRelative(1.27f, 0.51f);
            m.lineToRelative(1.04f, 0.42f);
            m.lineToRelative(0.9f, -0.68f);
            m.curveToRelative(0.43f, -0.32f, 0.84f, -0.56f, 1.25f, -0.73f);
            m.lineToRelative(1.06f, -0.43f);
            m.lineToRelative(0.16f, -1.13f);
            m.lineToRelative(0.2f, -1.35f);
            m.horizontalLineToRelative(1.39f);
            m.lineToRelative(0.19f, 1.35f);
            m.lineToRelative(0.16f, 1.13f);
            m.lineToRelative(1.06f, 0.43f);
            m.curveToRelative(0.43f, 0.18f, 0.83f, 0.41f, 1.23f, 0.71f);
            m.lineToRelative(0.91f, 0.7f);
            m.lineToRelative(1.06f, -0.43f);
            m.lineToRelative(1.27f, -0.51f);
            m.lineToRelative(0.7f, 1.21f);
            m.lineToRelative(-1.07f, 0.85f);
            Modifier.CC.m(m, -0.89f, 0.7f, 0.14f, 1.13f);
            m.moveTo(12.0f, 8.0f);
            m.curveToRelative(-2.21f, 0.0f, -4.0f, 1.79f, -4.0f, 4.0f);
            m.reflectiveCurveToRelative(1.79f, 4.0f, 4.0f, 4.0f);
            m.reflectiveCurveToRelative(4.0f, -1.79f, 4.0f, -4.0f);
            m.reflectiveCurveToRelative(-1.79f, -4.0f, -4.0f, -4.0f);
            m.close();
            m.moveTo(12.0f, 14.0f);
            m.curveToRelative(-1.1f, 0.0f, -2.0f, -0.9f, -2.0f, -2.0f);
            m.reflectiveCurveToRelative(0.9f, -2.0f, 2.0f, -2.0f);
            m.reflectiveCurveToRelative(2.0f, 0.9f, 2.0f, 2.0f);
            m.reflectiveCurveToRelative(-0.9f, 2.0f, -2.0f, 2.0f);
            m.close();
            builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", m.namesAndValues);
            ImageVector build = builder.build();
            _settings = build;
            return build;
        }

        public static void i(String str, String str2) {
            String truncateTag = truncateTag(str);
            if (isLogLevelEnabled(truncateTag, 4)) {
                Log.i(truncateTag, str2);
            }
        }

        public static boolean isCompletePartAvailable(Part part) {
            Stack stack = new Stack();
            stack.push(part);
            while (!stack.isEmpty()) {
                Body body = ((Part) stack.pop()).getBody();
                if (body == null) {
                    return false;
                }
                if (body instanceof Multipart) {
                    Iterator it = DesugarCollections.unmodifiableList(((Multipart) body).mParts).iterator();
                    while (it.hasNext()) {
                        stack.push((MimeBodyPart) it.next());
                    }
                }
            }
            return true;
        }

        public static boolean isDebugEnabled(String str) {
            return isLogLevelEnabled(truncateTag(str), 3);
        }

        public static boolean isErrorEnabled() {
            return isLogLevelEnabled(truncateTag("CXCP"), 6);
        }

        public static boolean isFlashAvailable$default(CameraPipeCameraProperties cameraPipeCameraProperties) {
            Boolean bool;
            cameraPipeCameraProperties.getClass();
            try {
                CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
                CameraCharacteristics.Key key = CameraCharacteristics.FLASH_INFO_AVAILABLE;
                key.getClass();
                bool = (Boolean) ((Camera2CameraMetadata) cameraMetadata).get(key);
            } catch (BufferUnderflowException e) {
                if (DeviceQuirks.getAll().get(FlashAvailabilityBufferUnderflowQuirk.class) != null) {
                    if (isDebugEnabled("CXCP")) {
                        Log.d("CXCP", "Device is known to throw an exception while checking flash availability. Flash is not available. [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "].");
                    }
                } else if (isErrorEnabled()) {
                    Log.e("CXCP", "Exception thrown while checking for flash availability on device not known to throw exceptions during this check. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "]. Flash is not available.", e);
                }
                bool = Boolean.FALSE;
            }
            if (bool == null && isWarnEnabled()) {
                Log.w("CXCP", "Characteristics did not contain key FLASH_INFO_AVAILABLE. Flash is not available.");
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        public static boolean isInfoEnabled() {
            return isLogLevelEnabled(truncateTag("CXCP"), 4);
        }

        public static boolean isLogLevelEnabled(String str, int i) {
            return sMinLogLevel <= i || Log.isLoggable(str, i);
        }

        public static boolean isWarnEnabled() {
            return isLogLevelEnabled(truncateTag("CXCP"), 5);
        }

        /* renamed from: modulate-DxMtmZc, reason: not valid java name */
        public static final long m800modulateDxMtmZc(float f, long j) {
            long Color;
            if (Float.isNaN(f) || f >= 1.0f) {
                return j;
            }
            Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), Color.m483getAlphaimpl(j) * f, Color.m485getColorSpaceimpl(j));
            return Color;
        }

        public static void playTogether(AnimatorSet animatorSet, ArrayList arrayList) {
            int size = arrayList.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                Animator animator = (Animator) arrayList.get(i);
                j = Math.max(j, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
            ofInt.setDuration(j);
            arrayList.add(0, ofInt);
            animatorSet.playTogether(arrayList);
        }

        public static void setDecorFitsSystemWindows(Window window, boolean z) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 35) {
                window.setDecorFitsSystemWindows(z);
            } else {
                if (i >= 30) {
                    BuildCompat.Api30Impl.setDecorFitsSystemWindows(window, z);
                    return;
                }
                View decorView = window.getDecorView();
                int systemUiVisibility = decorView.getSystemUiVisibility();
                decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.tooling.ReaderTraceBuilder, org.minidns.dnsqueryresult.DnsQueryResult] */
        /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Type inference failed for: r9v5 */
        public static final ArrayList traceForGroup(SlotReader slotReader, int i, Integer num) {
            ?? readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int parent = slotReader.parent(i);
            GapAnchor anchor = slotReader.anchor(i);
            while (i >= 0) {
                readerTraceBuilder.processEdge(slotReader.groupKey(i), slotReader.hasObjectKey(i) ? slotReader.objectKey(slotReader.groups, i) : Composer.Companion.Empty, ((SlotTable) slotReader.table).sourceInformationOf(i), num);
                if (parent >= 0) {
                    GapAnchor gapAnchor = anchor;
                    anchor = slotReader.anchor(parent);
                    i = parent;
                    parent = slotReader.parent(parent);
                    num = gapAnchor;
                } else {
                    i = parent;
                    num = anchor;
                }
            }
            return (ArrayList) readerTraceBuilder.response;
        }

        public static String truncateTag(String str) {
            return (Build.VERSION.SDK_INT > 25 || 23 >= str.length()) ? str : str.substring(0, 23);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:111:0x024c  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x02c6  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x0354  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x035d  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x036b  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0374  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x0383  */
        /* JADX WARN: Removed duplicated region for block: B:179:0x044e  */
        /* JADX WARN: Removed duplicated region for block: B:220:0x0510  */
        /* JADX WARN: Removed duplicated region for block: B:240:0x0636  */
        /* JADX WARN: Removed duplicated region for block: B:263:0x0699  */
        /* JADX WARN: Removed duplicated region for block: B:286:0x06fc  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x0742  */
        /* JADX WARN: Removed duplicated region for block: B:304:0x0748  */
        /* JADX WARN: Removed duplicated region for block: B:308:0x075f  */
        /* JADX WARN: Removed duplicated region for block: B:356:0x08cf  */
        /* JADX WARN: Removed duplicated region for block: B:364:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:373:0x062e  */
        /* JADX WARN: Removed duplicated region for block: B:384:0x02bf  */
        /* JADX WARN: Type inference failed for: r13v14 */
        /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.Object, java.lang.String, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r13v16 */
        /* JADX WARN: Type inference failed for: r13v17 */
        /* JADX WARN: Type inference failed for: r13v18, types: [java.lang.Object, java.lang.String, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r13v21 */
        /* JADX WARN: Type inference failed for: r13v22 */
        /* JADX WARN: Type inference failed for: r13v23, types: [java.lang.Object, java.lang.String, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r13v26 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v28 */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.String, java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r4v53 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void upgradeDatabase(android.database.sqlite.SQLiteDatabase r31, com.fsck.k9.mailstore.LocalStore.AnonymousClass3 r32) {
            /*
                Method dump skipped, instructions count: 2315
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.upgradeDatabase(android.database.sqlite.SQLiteDatabase, com.fsck.k9.mailstore.LocalStore$3):void");
        }

        public static final int visibleItemsAverageSize(LazyListMeasureResult lazyListMeasureResult) {
            List list = lazyListMeasureResult.visibleItemsInfo;
            if (list.isEmpty()) {
                return 0;
            }
            int size = list.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += ((LazyListMeasuredItem) list.get(i2)).size;
            }
            return (i / list.size()) + lazyListMeasureResult.mainAxisItemSpacing;
        }

        public static void w(String str, String str2) {
            String truncateTag = truncateTag(str);
            if (isLogLevelEnabled(truncateTag, 5)) {
                Log.w(truncateTag, str2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String decodeUtf8(byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.decodeUtf8(byte[], int, int):java.lang.String");
        }

        /* JADX WARN: Removed duplicated region for block: B:80:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0184  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int encodeUtf8(java.lang.String r26, byte[] r27, int r28, int r29) {
            /*
                Method dump skipped, instructions count: 620
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.encodeUtf8(java.lang.String, byte[], int, int):int");
        }

        public static void e(String str, String str2, Throwable th) {
            String truncateTag = truncateTag(str);
            if (isLogLevelEnabled(truncateTag, 6)) {
                Log.e(truncateTag, str2, th);
            }
        }

        public static void w(String str, String str2, Throwable th) {
            String truncateTag = truncateTag(str);
            if (isLogLevelEnabled(truncateTag, 5)) {
                Log.w(truncateTag, str2, th);
            }
        }

        /* renamed from: TextBodyLarge-Xl4FiYE, reason: not valid java name */
        public static final void m798TextBodyLargeXl4FiYE(final AnnotatedString annotatedString, Modifier modifier, long j, int i, int i2, Composer composer, final int i3, final int i4) {
            final Modifier modifier2;
            int i5;
            GapComposer gapComposer;
            final long j2;
            final int i6;
            final int i7;
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(1875291071);
            int i8 = i3 | (gapComposer2.changed(annotatedString) ? 4 : 2);
            int i9 = i4 & 2;
            if (i9 != 0) {
                i5 = i8 | 48;
                modifier2 = modifier;
            } else {
                modifier2 = modifier;
                i5 = i8 | (gapComposer2.changed(modifier2) ? 32 : 16);
            }
            int i10 = i5 | 224640;
            if (gapComposer2.shouldExecute(i10 & 1, (74899 & i10) != 74898)) {
                Modifier modifier3 = i9 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
                long j3 = Color.Unspecified;
                int i11 = i10 & 1022;
                Modifier modifier4 = modifier3;
                gapComposer = gapComposer2;
                TextKt.m363TextZ58ophY(annotatedString, modifier4, j3, 0L, 0L, null, 0L, 1, false, Integer.MAX_VALUE, 0, null, null, ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).bodyLarge, gapComposer, i11, 24966, 240632);
                modifier2 = modifier4;
                j2 = j3;
                i6 = 1;
                i7 = Integer.MAX_VALUE;
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
                j2 = j;
                i6 = i;
                i7 = i2;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2(modifier2, j2, i6, i7, i3, i4) { // from class: app.k9mail.core.ui.compose.designsystem.atom.text.TextBodyLargeKt$$ExternalSyntheticLambda0
                    public final /* synthetic */ Modifier f$1;
                    public final /* synthetic */ long f$2;
                    public final /* synthetic */ int f$4;
                    public final /* synthetic */ int f$5;
                    public final /* synthetic */ int f$7;

                    {
                        this.f$7 = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int updateChangedFlags = Updater.updateChangedFlags(1);
                        Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(AnnotatedString.this, this.f$1, this.f$2, this.f$4, this.f$5, (Composer) obj, updateChangedFlags, this.f$7);
                        return Unit.INSTANCE;
                    }
                };
            }
        }

        public static final void NavHost(NavHostController navHostController, OnboardingRoute.Onboarding onboarding, Modifier modifier, Alignment alignment, Map map, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, Composer composer, int i) {
            int i2;
            Modifier modifier2;
            Alignment alignment2;
            int i3;
            int i4;
            Function1 function16;
            Function1 function17;
            Map map2;
            Function1 function18;
            Function1 function19;
            Function1 function110;
            GapComposer gapComposer;
            Function1 function111;
            Function1 function112;
            Alignment alignment3;
            Function1 function113;
            Map map3;
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(-1476019057);
            if ((i & 6) == 0) {
                i2 = (gapComposer2.changedInstance(navHostController) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer2.changedInstance(onboarding) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                modifier2 = modifier;
                i2 |= gapComposer2.changed(modifier2) ? 256 : 128;
            } else {
                modifier2 = modifier;
            }
            int i5 = 14380032 | i2;
            if ((i & 100663296) == 0) {
                i5 = 47934464 | i2;
            }
            if ((805306368 & i) == 0) {
                i5 |= 268435456;
            }
            int i6 = (gapComposer2.changedInstance(function15) ? ' ' : (char) 16) | 6;
            if ((306783379 & i5) == 306783378 && (i6 & 19) == 18 && gapComposer2.getSkipping()) {
                gapComposer2.skipToGroupEnd();
                alignment3 = alignment;
                map3 = map;
                function111 = function1;
                function113 = function12;
                function110 = function13;
                gapComposer = gapComposer2;
                function112 = function14;
            } else {
                gapComposer2.startDefaults();
                int i7 = i & 1;
                Object obj = Composer.Companion.Empty;
                if (i7 != 0 && !gapComposer2.getDefaultsInvalid()) {
                    gapComposer2.skipToGroupEnd();
                    alignment2 = alignment;
                    map2 = map;
                    function18 = function14;
                    i3 = i5 & (-2113929217);
                    i4 = 100663296;
                    function19 = function1;
                    function17 = function12;
                    function16 = function13;
                } else {
                    alignment2 = Alignment.Companion.TopStart;
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (rememberedValue == obj) {
                        rememberedValue = new RoomDatabase$$ExternalSyntheticLambda0(21);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function1 function114 = (Function1) rememberedValue;
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == obj) {
                        rememberedValue2 = new RoomDatabase$$ExternalSyntheticLambda0(22);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function115 = (Function1) rememberedValue2;
                    i3 = i5 & (-2113929217);
                    i4 = 100663296;
                    function16 = function114;
                    function17 = function115;
                    map2 = EmptyMap.INSTANCE;
                    function18 = function17;
                    function19 = function16;
                }
                gapComposer2.endDefaults();
                Function1 function116 = function19;
                boolean changed = ((i6 & 112) == 32) | gapComposer2.changed((Object) null) | gapComposer2.changed(onboarding);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (changed || rememberedValue3 == obj) {
                    NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.impl._navigatorProvider, onboarding, map2);
                    function15.invoke(navGraphBuilder);
                    rememberedValue3 = navGraphBuilder.build();
                    gapComposer2.updateRememberedValue(rememberedValue3);
                }
                int i8 = i3 >> 6;
                Alignment alignment4 = alignment2;
                Function1 function117 = function18;
                NavHost(navHostController, (NavGraph) rememberedValue3, modifier2, alignment4, function116, function17, function16, function117, (Function1) null, gapComposer2, (i3 & 8078) | (57344 & i8) | (i8 & 458752) | i4);
                function110 = function16;
                gapComposer = gapComposer2;
                function111 = function116;
                function112 = function117;
                alignment3 = alignment4;
                function113 = function17;
                map3 = map2;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda5(navHostController, onboarding, modifier, alignment3, map3, function111, function113, function110, function112, function15, i);
            }
        }

        public static final void NavHost(NavHostController navHostController, String str, Modifier modifier, Alignment alignment, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, Composer composer, int i) {
            Function1 function16;
            int i2;
            Alignment alignment2;
            char c;
            Modifier modifier2;
            Function1 function17;
            Function1 function18;
            Function1 function19;
            Function1 function110;
            Function1 function111;
            Function1 function112;
            Function1 function113;
            Alignment alignment3;
            Modifier modifier3;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1840250294);
            int i3 = i | (gapComposer.changedInstance(navHostController) ? 4 : 2);
            if ((i & 48) == 0) {
                i3 |= gapComposer.changed(str) ? 32 : 16;
            }
            int i4 = i3 | 844852608;
            char c2 = gapComposer.changedInstance(function15) ? (char) 4 : (char) 2;
            if ((306783379 & i4) == 306783378 && (c2 & 3) == 2 && gapComposer.getSkipping()) {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                alignment3 = alignment;
                function113 = function1;
                function112 = function12;
                function111 = function13;
                function110 = function14;
            } else {
                gapComposer.startDefaults();
                int i5 = i & 1;
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (i5 != 0 && !gapComposer.getDefaultsInvalid()) {
                    gapComposer.skipToGroupEnd();
                    modifier2 = modifier;
                    function16 = function12;
                    function18 = function13;
                    function19 = function14;
                    i2 = i4 & (-264241153);
                    c = c2;
                    alignment2 = alignment;
                    function17 = function1;
                } else {
                    BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new RoomDatabase$$ExternalSyntheticLambda0(19);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function1 function114 = (Function1) rememberedValue;
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new RoomDatabase$$ExternalSyntheticLambda0(20);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    function16 = (Function1) rememberedValue2;
                    i2 = i4 & (-264241153);
                    alignment2 = biasAlignment;
                    c = c2;
                    modifier2 = Modifier.Companion.$$INSTANCE;
                    function17 = function114;
                    function18 = function17;
                    function19 = function16;
                }
                gapComposer.endDefaults();
                boolean z = ((i2 & 112) == 32) | ((c & 14) == 4);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (z || rememberedValue3 == neverEqualPolicy) {
                    NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.impl._navigatorProvider, str);
                    function15.invoke(navGraphBuilder);
                    rememberedValue3 = navGraphBuilder.build();
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Function1 function115 = function19;
                Alignment alignment4 = alignment2;
                Function1 function116 = function16;
                NavHost(navHostController, (NavGraph) rememberedValue3, modifier2, alignment4, function17, function116, function18, function115, (Function1) null, gapComposer, (i2 & 8078) | 100884480);
                function110 = function115;
                function111 = function18;
                function112 = function116;
                function113 = function17;
                alignment3 = alignment4;
                modifier3 = modifier2;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda2(navHostController, str, modifier3, alignment3, function113, function112, function111, function110, function15, i);
            }
        }
    }
}
