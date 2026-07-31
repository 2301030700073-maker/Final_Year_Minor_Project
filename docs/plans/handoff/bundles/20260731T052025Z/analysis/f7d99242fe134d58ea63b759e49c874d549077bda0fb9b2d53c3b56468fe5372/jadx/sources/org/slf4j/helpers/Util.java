package org.slf4j.helpers;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcelable;
import android.os.Trace;
import android.util.Log;
import android.util.Size;
import android.util.SizeF;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.compose.LocalActivityKt;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.core.AutoValue_CameraState_StateError;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.impl.utils.executor.IoExecutor;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8;
import androidx.compose.foundation.text.selection.HandlePositionProvider;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.RememberSaveableKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.AndroidFontResolveInterceptor;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontWeightAdjustmentHelperApi31;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.util.DebugUtils;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavHostController;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.text.TextLabelSmallKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.feature.account.common.ui.WizardNavigationBarKt$$ExternalSyntheticLambda0;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.bumptech.glide.util.Executors$1;
import com.eygraber.uri.Uri;
import com.eygraber.uri.uris.StringUri;
import com.fsck.k9.R;
import com.fsck.k9.mail.store.imap.ContiguousIdGroup;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.Settings$SettingsDescription;
import com.fsck.k9.preferences.SettingsUpgrader;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messageview.AttachmentListItemModel;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda2;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.VerboseLogger;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda14;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Util {
    public static ClassContextSecurityManager SECURITY_MANAGER = null;
    public static boolean SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED = false;
    public static ImageVector _inbox;
    public static ImageVector _visibilityOff;
    public static Method asyncTraceBeginMethod;
    public static Method asyncTraceEndMethod;
    public static Method isTagEnabledMethod;
    public static Method traceCounterMethod;
    public static long traceTagApp;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClassContextSecurityManager extends SecurityManager {
        @Override // java.lang.SecurityManager
        public final Class[] getClassContext() {
            return super.getClassContext();
        }
    }

    public static final void AccountTopAppBar(String str, Modifier modifier, Composer composer, int i) {
        String str2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1467686108);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | 48;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            str2 = str;
            TopAppBarKt.TopAppBar(str2, companion, null, null, gapComposer, i2 & 126, 12);
            modifier = companion;
        } else {
            str2 = str;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda2(str2, modifier, i, i3);
        }
    }

    public static final void AttachmentListContent(ImmutableList immutableList, SizeFormatter sizeFormatter, final Function1 function1, final Function1 function12, Function0 function0, Composer composer, int i) {
        Modifier then;
        final int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-699611393);
        SizeFormatter sizeFormatter2 = sizeFormatter;
        int i3 = 256;
        int i4 = i | (gapComposer.changedInstance(immutableList) ? 4 : 2) | (gapComposer.changedInstance(sizeFormatter2) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function12) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192);
        final int i5 = 0;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 9363) != 9362)) {
            then = SizeKt.FillWholeMaxWidth.then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, r8, r8.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(ImageKt.rememberScrollState(gapComposer)));
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            Function0 function02 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function02);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            AttachmentListHeader(function0, gapComposer, (i4 >> 12) & 14);
            gapComposer.startReplaceGroup(-337328901);
            Iterator<E> it = immutableList.iterator();
            while (it.hasNext()) {
                final AttachmentListItemModel attachmentListItemModel = (AttachmentListItemModel) it.next();
                AttachmentViewInfo attachmentViewInfo = attachmentListItemModel.attachment;
                boolean z = attachmentListItemModel.isLocked;
                boolean changedInstance = ((i4 & 896) == i3) | gapComposer.changedInstance(attachmentListItemModel);
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                if (changedInstance || rememberedValue == obj) {
                    rememberedValue = new Function0() { // from class: com.fsck.k9.ui.messageview.AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i7 = i5;
                            Unit unit = Unit.INSTANCE;
                            AttachmentListItemModel attachmentListItemModel2 = attachmentListItemModel;
                            Function1 function13 = function1;
                            switch (i7) {
                                case 0:
                                    function13.invoke(attachmentListItemModel2.attachment);
                                    break;
                                default:
                                    function13.invoke(attachmentListItemModel2.attachment);
                                    break;
                            }
                            return unit;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function03 = (Function0) rememberedValue;
                boolean changedInstance2 = ((i4 & 7168) == 2048) | gapComposer.changedInstance(attachmentListItemModel);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue2 == obj) {
                    i2 = 1;
                    rememberedValue2 = new Function0() { // from class: com.fsck.k9.ui.messageview.AttachmentListModalBottomSheetKt$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i7 = i2;
                            Unit unit = Unit.INSTANCE;
                            AttachmentListItemModel attachmentListItemModel2 = attachmentListItemModel;
                            Function1 function13 = function12;
                            switch (i7) {
                                case 0:
                                    function13.invoke(attachmentListItemModel2.attachment);
                                    break;
                                default:
                                    function13.invoke(attachmentListItemModel2.attachment);
                                    break;
                            }
                            return unit;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                } else {
                    i2 = 1;
                }
                AttachmentListItem(attachmentViewInfo, z, sizeFormatter2, function03, (Function0) rememberedValue2, gapComposer, 512 | ((i4 << 3) & 896));
                sizeFormatter2 = sizeFormatter;
                i3 = 256;
            }
            gapComposer.end(false);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(immutableList, sizeFormatter, function1, function12, function0, i, 13);
        }
    }

    public static final void AttachmentListHeader(Function0 function0, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-166714600);
        if ((i & 6) == 0) {
            i2 = i | (gapComposer.changedInstance(function0) ? 4 : 2);
        } else {
            i2 = i;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            Modifier m221paddingqDBjuR0 = OffsetKt.m221paddingqDBjuR0(fillElement, 16.0f, 16.0f, 16.0f, 8.0f);
            BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
            Arrangement$End$1 arrangement$End$1 = OffsetKt.f7Start;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer, 48);
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
            ImageVector imageVector = Icons$Outlined.Attachment;
            long j2 = ByteStreamsKt.getColors(gapComposer).onSurfaceVariant;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSizesKt.LocalThemeSizes;
            ((ThemeSizes) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m234size3ABfNKs(companion, 24.0f), new Color(j2), gapComposer, 384, 0);
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 8.0f));
            DebugUtils.m787TextTitleMediumXl4FiYE(Operation$State.stringResource(gapComposer, R.string.message_view_attachments_title), new LayoutWeightElement(1.0f, true), 0L, null, 0, 0, gapComposer, 0, 60);
            Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(companion, false, null, function0, 15);
            RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer, 48);
            long j3 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m136clickableoSLSa3U$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            ImageVector imageVector2 = Icons$Outlined.Download;
            long j4 = ByteStreamsKt.getColors(gapComposer).primary;
            ((ThemeSizes) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            AtomicFU.m1009IconxqIIw2o(imageVector2, SizeKt.m234size3ABfNKs(companion, 16.0f), new Color(j4), gapComposer, 384, 0);
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 4.0f));
            Validate.m1066TextLabelLargeXl4FiYE(Operation$State.stringResource(gapComposer, R.string.message_view_attachments_save_all), null, ByteStreamsKt.getColors(gapComposer).primary, 0, 0, gapComposer, 0, 58);
            gapComposer = gapComposer;
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyListItemProviderImpl$$ExternalSyntheticLambda0(i, 2, function0);
        }
    }

    public static final void AttachmentListItem(AttachmentViewInfo attachmentViewInfo, boolean z, SizeFormatter sizeFormatter, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        ImageVector imageVector;
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1104178327);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(attachmentViewInfo) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(sizeFormatter) : gapComposer.changedInstance(sizeFormatter) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 16384 : 8192;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(SizeKt.FillWholeMaxWidth, false, null, function0, 15);
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            Modifier m221paddingqDBjuR0 = OffsetKt.m221paddingqDBjuR0(m136clickableoSLSa3U$default, 16.0f, 8.0f, 8.0f, 8.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j2 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
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
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            ImageVector imageVector2 = z ? Icons$Outlined.Lock : Icons$Outlined.Description;
            if (z) {
                gapComposer.startReplaceGroup(-2120001370);
                gapComposer.end(false);
                imageVector = imageVector2;
                j = ColorKt.Color(4291559424L);
            } else {
                gapComposer.startReplaceGroup(-2120000029);
                imageVector = imageVector2;
                j = ByteStreamsKt.getColors(gapComposer).onSurfaceVariant;
                gapComposer.end(false);
            }
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m234size3ABfNKs(companion, 24.0f), new Color(j), gapComposer, 384, 0);
            ByteStreamsKt.getSpacings(gapComposer).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 16.0f));
            LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j3 = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, layoutWeightElement);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i5, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            String str = attachmentViewInfo.displayName;
            long j4 = attachmentViewInfo.size;
            if (str == null) {
                gapComposer.startReplaceGroup(536770267);
                str = Operation$State.stringResource(gapComposer, R.string.unnamed_attachment_title);
                gapComposer.end(false);
            } else if (z) {
                gapComposer.startReplaceGroup(536773565);
                str = Operation$State.stringResource(gapComposer, R.string.encrypted_attachment_title);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(536776488);
                gapComposer.end(false);
            }
            GapComposer gapComposer2 = gapComposer;
            Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 2, 1, (Function1) null, gapComposer2, 221184, 78);
            if (z) {
                gapComposer2.startReplaceGroup(-539642217);
                MathKt.m984TextBodySmallXl4FiYE(Operation$State.stringResource(gapComposer2, R.string.locked_attach_unencrypted), null, ByteStreamsKt.getColors(gapComposer2).onSurfaceVariant, null, 0, 0, gapComposer2, 0, 58);
                gapComposer2.end(false);
            } else if (j4 != -1) {
                gapComposer2.startReplaceGroup(-539376640);
                MathKt.m984TextBodySmallXl4FiYE(sizeFormatter.formatSize(j4), null, ByteStreamsKt.getColors(gapComposer2).onSurfaceVariant, null, 0, 0, gapComposer2, 0, 58);
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(-539187323);
                gapComposer2.end(false);
            }
            gapComposer2.end(true);
            if (z) {
                gapComposer2.startReplaceGroup(-1294314418);
                IntRectKt.ButtonIcon(function0, Icons$Outlined.Visibility, null, false, Operation$State.stringResource(gapComposer2, R.string.locked_attach_unlock), null, gapComposer2, (i3 >> 9) & 14, 44);
                gapComposer2 = gapComposer2;
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(-1294098193);
                gapComposer2.end(false);
            }
            GapComposer gapComposer3 = gapComposer2;
            IntRectKt.ButtonIcon(function02, Icons$Outlined.Download, null, false, Operation$State.stringResource(gapComposer2, R.string.save_attachment_action), null, gapComposer3, (i3 >> 12) & 14, 44);
            gapComposer = gapComposer3;
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda1(attachmentViewInfo, z, sizeFormatter, function0, function02, i, 2);
        }
    }

    public static final void AttachmentListModalBottomSheet(ImmutableList immutableList, SizeFormatter sizeFormatter, Function0 function0, Function1 function1, Function1 function12, Function0 function02, Composer composer, int i) {
        immutableList.getClass();
        function0.getClass();
        function1.getClass();
        function12.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1988384153);
        int i2 = i | (gapComposer.changedInstance(immutableList) ? 4 : 2) | (gapComposer.changedInstance(sizeFormatter) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function12) ? 16384 : 8192) | (gapComposer.changedInstance(function02) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Options.Companion.ModalBottomSheet(function0, null, Expect_jvmKt.rememberComposableLambda(1905188749, new WizardNavigationBarKt$$ExternalSyntheticLambda0(immutableList, sizeFormatter, function1, function12, function02), gapComposer), gapComposer, ((i2 >> 6) & 14) | 384);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda14(immutableList, sizeFormatter, function0, function1, function12, function02, i, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x005d  */
    /* renamed from: ButtonText-jM_yU8I, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1089ButtonTextjM_yU8I(java.lang.String r25, kotlin.jvm.functions.Function0 r26, androidx.compose.ui.Modifier r27, boolean r28, androidx.compose.ui.graphics.Color r29, kotlin.jvm.functions.Function2 r30, androidx.compose.runtime.Composer r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.slf4j.helpers.Util.m1089ButtonTextjM_yU8I(java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Color, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void HandlePopup(OffsetProvider offsetProvider, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1090171650);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(offsetProvider) : gapComposer.changedInstance(offsetProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(alignment) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        boolean z = true;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean z2 = (i2 & 112) == 32;
            if ((i2 & 14) != 4 && ((i2 & 8) == 0 || !gapComposer.changed(offsetProvider))) {
                z = false;
            }
            boolean z3 = z2 | z;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new HandlePositionProvider(alignment, offsetProvider);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            AndroidPopup_androidKt.Popup((HandlePositionProvider) rememberedValue, null, new PopupProperties(false, SecureFlagPolicy.Inherit, false, 0), composableLambdaImpl, gapComposer, ((i2 << 3) & 7168) | 384, 2);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(offsetProvider, alignment, composableLambdaImpl, i, 8);
        }
    }

    public static final void ProtectedTextFieldOutlinedPassword(String str, Function1 function1, Function1 function12, Authenticator authenticator, Modifier modifier, String str2, boolean z, boolean z2, boolean z3, Composer composer, int i) {
        boolean z4;
        Object obj;
        Object obj2;
        str.getClass();
        function1.getClass();
        function12.getClass();
        authenticator.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(537214572);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(authenticator) ? 2048 : 1024) | (gapComposer.changed(str2) ? 131072 : 65536) | 14155776 | (gapComposer.changed(z2) ? 67108864 : 33554432) | (gapComposer.changed(z3) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Object[] objArr = new Object[0];
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj3 = Composer.Companion.Empty;
            if (rememberedValue == obj3) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda0(10);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue, gapComposer, 48);
            Object[] objArr2 = new Object[0];
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj3) {
                rememberedValue2 = new UtilsKt$$ExternalSyntheticLambda0(11);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Object obj4 = (MutableState) SaverKt.rememberSaveable(objArr2, (Function0) rememberedValue2, gapComposer, 48);
            Object consume = gapComposer.consume(LocalActivityKt.LocalActivity);
            consume.getClass();
            Object obj5 = (Activity) consume;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj3) {
                rememberedValue3 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Object obj6 = (CoroutineScope) rememberedValue3;
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            boolean changed = gapComposer.changed(obj4) | gapComposer.changed(mutableState) | gapComposer.changedInstance(obj5) | gapComposer.changedInstance(obj6) | ((i2 & 7168) == 2048);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed || rememberedValue4 == obj3) {
                Object rememberSaveableKt$$ExternalSyntheticLambda2 = new RememberSaveableKt$$ExternalSyntheticLambda2(obj5, obj6, obj4, mutableState, authenticator, function12, 2);
                obj = obj5;
                obj2 = mutableState;
                gapComposer.updateRememberedValue(rememberSaveableKt$$ExternalSyntheticLambda2);
                rememberedValue4 = rememberSaveableKt$$ExternalSyntheticLambda2;
            } else {
                obj2 = mutableState;
                obj = obj5;
            }
            TextFieldLabelKt.TextFieldOutlinedPassword(str, function1, booleanValue, (Function0) rememberedValue4, modifier, str2, z2, z3, gapComposer, i2 & 2147475582);
            boolean changedInstance = gapComposer.changedInstance(obj) | gapComposer.changed(obj2);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue5 == obj3) {
                rememberedValue5 = new DI$$ExternalSyntheticLambda0(12, obj, obj2);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Updater.DisposableEffect("secureWindow", (Function1) rememberedValue5, gapComposer);
            z4 = true;
        } else {
            gapComposer.skipToGroupEnd();
            z4 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextInputKt$$ExternalSyntheticLambda0(str, function1, function12, authenticator, modifier, str2, z4, z2, z3, i);
        }
    }

    public static final void QrCodeScannerBottomContent(String str, Function0 function0, Composer composer, int i) {
        int i2;
        String str2;
        Function0 function02;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1451501627);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
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
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier testTag = TestTagKt.testTag(companion, "ScannedStatus");
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(testTag, 0.0f, 16.0f, 1);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(str, OffsetKt.m222paddingqDBjuR0$default(m220paddingVpY3zN4$default, 16.0f, 0.0f, 0.0f, 0.0f, 14).then(new LayoutWeightElement(1.0f, true)), 0L, null, 0, 0, gapComposer, i3 & 14, 60);
            String stringResource = Operation$State.stringResource(gapComposer, R.string.migration_qrcode_done_button_text);
            Modifier testTag2 = TestTagKt.testTag(companion, "DoneButton");
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(testTag2, 16.0f);
            int i5 = i3 & 112;
            str2 = str;
            function02 = function0;
            Validate.ButtonOutlined(stringResource, function02, m218padding3ABfNKs, false, null, null, null, null, gapComposer, i5, 248);
            gapComposer = gapComposer;
            gapComposer.end(true);
        } else {
            str2 = str;
            function02 = function0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 12, str2, function02);
        }
    }

    /* renamed from: Rect-tz77jQw, reason: not valid java name */
    public static final Rect m1090Recttz77jQw(long j, long j2) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new Rect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2));
    }

    /* renamed from: SelectionHandle-wLIcFTc, reason: not valid java name */
    public static final void m1091SelectionHandlewLIcFTc(final OffsetProvider offsetProvider, final boolean z, final ResolvedTextDirection resolvedTextDirection, final boolean z2, long j, final float f, final SuspendPointerInputElement suspendPointerInputElement, Composer composer, final int i) {
        int i2;
        final long j2;
        int i3;
        long j3;
        final boolean z3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-466280168);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(offsetProvider) : gapComposer.changedInstance(offsetProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(resolvedTextDirection.ordinal()) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(suspendPointerInputElement) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (533651 & i2) != 533650)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i3 = i2 & (-57345);
                j3 = 9205357640488583168L;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-57345);
                j3 = j;
            }
            gapComposer.endDefaults();
            ResolvedTextDirection resolvedTextDirection2 = ResolvedTextDirection.Rtl;
            ResolvedTextDirection resolvedTextDirection3 = ResolvedTextDirection.Ltr;
            if (z) {
                SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.SelectionHandleInfoKey;
                z3 = (resolvedTextDirection == resolvedTextDirection3 && !z2) || (resolvedTextDirection == resolvedTextDirection2 && z2);
            } else {
                SemanticsPropertyKey semanticsPropertyKey2 = SelectionHandlesKt.SelectionHandleInfoKey;
                z3 = (resolvedTextDirection != resolvedTextDirection3 || z2) && !(resolvedTextDirection == resolvedTextDirection2 && z2);
            }
            BiasAbsoluteAlignment biasAbsoluteAlignment = z3 ? AbsoluteAlignment.TopRight : AbsoluteAlignment.TopLeft;
            int i4 = i3 & 14;
            boolean changed = ((i3 & 112) == 32) | (i4 == 4 || ((i3 & 8) != 0 && gapComposer.changedInstance(offsetProvider))) | gapComposer.changed(z3);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Function1() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        long mo272provideF1C5BW0 = OffsetProvider.this.mo272provideF1C5BW0();
                        semanticsPropertyReceiver.set(SelectionHandlesKt.SelectionHandleInfoKey, new SelectionHandleInfo(z ? Handle.SelectionStart : Handle.SelectionEnd, mo272provideF1C5BW0, z3 ? SelectionHandleAnchor.Left : SelectionHandleAnchor.Right, (9223372034707292159L & mo272provideF1C5BW0) != 9205357640488583168L));
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final Modifier semantics = SemanticsModifierKt.semantics(suspendPointerInputElement, false, (Function1) rememberedValue);
            final ViewConfiguration viewConfiguration = (ViewConfiguration) gapComposer.consume(CompositionLocalsKt.LocalViewConfiguration);
            long j4 = j3;
            BiasAbsoluteAlignment biasAbsoluteAlignment2 = biasAbsoluteAlignment;
            j2 = j4;
            HandlePopup(offsetProvider, biasAbsoluteAlignment2, Expect_jvmKt.rememberComposableLambda(1365123137, new Function2() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        ProvidedValue defaultProvidedValue$runtime = CompositionLocalsKt.LocalViewConfiguration.defaultProvidedValue$runtime(ViewConfiguration.this);
                        final long j5 = j2;
                        final boolean z4 = z3;
                        final Modifier modifier = semantics;
                        final OffsetProvider offsetProvider2 = offsetProvider;
                        Updater.CompositionLocalProvider(defaultProvidedValue$runtime, Expect_jvmKt.rememberComposableLambda(1260045569, new Function2() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Modifier then;
                                Composer composer3 = (Composer) obj3;
                                int intValue2 = ((Integer) obj4).intValue();
                                final int i5 = 1;
                                final int i6 = 0;
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    long j6 = j5;
                                    boolean z5 = z4;
                                    Modifier modifier2 = modifier;
                                    final OffsetProvider offsetProvider3 = offsetProvider2;
                                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                                    if (j6 != 9205357640488583168L) {
                                        gapComposer3.startReplaceGroup(3458246);
                                        Arrangement$End$1 arrangement$End$1 = z5 ? OffsetKt.f6Right : OffsetKt.f5Left;
                                        then = modifier2.then(new SizeElement(DpSize.m749getWidthD9Ej5fM(j6), (r13 & 2) != 0 ? Float.NaN : DpSize.m748getHeightD9Ej5fM(j6), (r13 & 4) != 0 ? Float.NaN : 0.0f, (r13 & 8) != 0 ? Float.NaN : 0.0f, false));
                                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.Top, gapComposer3, 0);
                                        long j7 = gapComposer3.compositeKeyHashCode;
                                        int i7 = (int) (j7 ^ (j7 >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, then);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                        gapComposer3.startReusableNode();
                                        if (gapComposer3.inserting) {
                                            gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                                        } else {
                                            gapComposer3.useNode();
                                        }
                                        Updater.m380setimpl(gapComposer3, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m380setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m380setimpl(gapComposer3, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m379reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m380setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                        boolean changedInstance = gapComposer3.changedInstance(offsetProvider3);
                                        Object rememberedValue2 = gapComposer3.rememberedValue();
                                        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                            rememberedValue2 = new Function0() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda5
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object invoke() {
                                                    int i8 = i6;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i8) {
                                                        case 0:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo272provideF1C5BW0()) != 9205357640488583168L);
                                                        default:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo272provideF1C5BW0()) != 9205357640488583168L);
                                                    }
                                                }
                                            };
                                            gapComposer3.updateRememberedValue(rememberedValue2);
                                        }
                                        Util.SelectionHandleIcon(Modifier.Companion.$$INSTANCE, (Function0) rememberedValue2, z5, gapComposer3, 6);
                                        gapComposer3.end(true);
                                        gapComposer3.end(false);
                                    } else {
                                        gapComposer3.startReplaceGroup(4389176);
                                        boolean changedInstance2 = gapComposer3.changedInstance(offsetProvider3);
                                        Object rememberedValue3 = gapComposer3.rememberedValue();
                                        if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                                            rememberedValue3 = new Function0() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda5
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object invoke() {
                                                    int i8 = i5;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i8) {
                                                        case 0:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo272provideF1C5BW0()) != 9205357640488583168L);
                                                        default:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo272provideF1C5BW0()) != 9205357640488583168L);
                                                    }
                                                }
                                            };
                                            gapComposer3.updateRememberedValue(rememberedValue3);
                                        }
                                        Util.SelectionHandleIcon(modifier2, (Function0) rememberedValue3, z5, gapComposer3, 0);
                                        gapComposer3.end(false);
                                    }
                                } else {
                                    gapComposer3.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 56);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, i4 | 384);
        } else {
            gapComposer.skipToGroupEnd();
            j2 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final long j5 = j2;
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    Util.m1091SelectionHandlewLIcFTc(OffsetProvider.this, z, resolvedTextDirection, z2, j5, f, suspendPointerInputElement, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SelectionHandleIcon(Modifier modifier, Function0 function0, boolean z, Composer composer, int i) {
        int i2;
        Modifier then;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2111672474);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128);
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.SelectionHandleInfoKey;
            then = SizeKt.m235sizeVpY3zN4(modifier, 25.0f, 25.0f).then(new ComposedModifier(new AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda8(function0, z, i4)));
            OffsetKt.Spacer(gapComposer, then);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CheckboxKt$$ExternalSyntheticLambda3(modifier, function0, z, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003e  */
    /* renamed from: TextLabelSmall-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1093TextLabelSmallXl4FiYE(java.lang.String r23, androidx.compose.ui.Modifier r24, long r25, int r27, int r28, androidx.compose.runtime.Composer r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.slf4j.helpers.Util.m1093TextLabelSmallXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final long Velocity(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final String buildErrorString(Resources resources, int i, int i2, String str) {
        String string = resources.getString(i);
        string.getClass();
        if (str == null) {
            return string;
        }
        String string2 = resources.getString(i2, str);
        string2.getClass();
        return string + "\n\n" + string2;
    }

    public static final Bundle bundleOf(Pair... pairArr) {
        Bundle bundle = new Bundle(pairArr.length);
        for (Pair pair : pairArr) {
            String str = (String) pair.first;
            Object obj = pair.second;
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                bundle.putByte(str, ((Number) obj).byteValue());
            } else if (obj instanceof Character) {
                bundle.putChar(str, ((Character) obj).charValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Number) obj).doubleValue());
            } else if (obj instanceof Float) {
                bundle.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Integer) {
                bundle.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Short) {
                bundle.putShort(str, ((Number) obj).shortValue());
            } else if (obj instanceof Bundle) {
                bundle.putBundle(str, (Bundle) obj);
            } else if (obj instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) obj);
            } else if (obj instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof boolean[]) {
                bundle.putBooleanArray(str, (boolean[]) obj);
            } else if (obj instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) obj);
            } else if (obj instanceof char[]) {
                bundle.putCharArray(str, (char[]) obj);
            } else if (obj instanceof double[]) {
                bundle.putDoubleArray(str, (double[]) obj);
            } else if (obj instanceof float[]) {
                bundle.putFloatArray(str, (float[]) obj);
            } else if (obj instanceof int[]) {
                bundle.putIntArray(str, (int[]) obj);
            } else if (obj instanceof long[]) {
                bundle.putLongArray(str, (long[]) obj);
            } else if (obj instanceof short[]) {
                bundle.putShortArray(str, (short[]) obj);
            } else if (obj instanceof Object[]) {
                Class<?> componentType = obj.getClass().getComponentType();
                componentType.getClass();
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    bundle.putParcelableArray(str, (Parcelable[]) obj);
                } else if (String.class.isAssignableFrom(componentType)) {
                    bundle.putStringArray(str, (String[]) obj);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    bundle.putCharSequenceArray(str, (CharSequence[]) obj);
                } else {
                    if (!Serializable.class.isAssignableFrom(componentType)) {
                        DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Illegal value array type ", componentType.getCanonicalName(), " for key \"", str, 34);
                        return null;
                    }
                    bundle.putSerializable(str, (Serializable) obj);
                }
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            } else if (obj instanceof IBinder) {
                bundle.putBinder(str, (IBinder) obj);
            } else if (obj instanceof Size) {
                bundle.putSize(str, (Size) obj);
            } else {
                if (!(obj instanceof SizeF)) {
                    DifferentialMotionFlingController$$ExternalSyntheticLambda0.m("Illegal value type ", obj.getClass().getCanonicalName(), " for key \"", str, 34);
                    return null;
                }
                bundle.putSizeF(str, (SizeF) obj);
            }
        }
        return bundle;
    }

    public static int compareValues(Comparable comparable, Comparable comparable2) {
        if (comparable == null) {
            return comparable2 == null ? 0 : -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static final FontFamilyResolverImpl createFontFamilyResolver(Context context) {
        VerboseLogger verboseLogger = new VerboseLogger();
        context.getApplicationContext();
        return new FontFamilyResolverImpl(verboseLogger, new AndroidFontResolveInterceptor(Build.VERSION.SDK_INT >= 31 ? FontWeightAdjustmentHelperApi31.INSTANCE.fontWeightAdjustment(context) : 0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (r1 <= r6.getHeight()) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.graphics.ImageBitmap createHandleImage(androidx.compose.ui.draw.CacheDrawScope r27, float r28) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.slf4j.helpers.Util.createHandleImage(androidx.compose.ui.draw.CacheDrawScope, float):androidx.compose.ui.graphics.ImageBitmap");
    }

    public static Executors$1 directExecutor() {
        if (Executors$1.sDirectExecutor != null) {
            return Executors$1.sDirectExecutor;
        }
        synchronized (Executors$1.class) {
            try {
                if (Executors$1.sDirectExecutor == null) {
                    Executors$1.sDirectExecutor = new Executors$1(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Executors$1.sDirectExecutor;
    }

    public static final NavHostController findNavController(View view) {
        view.getClass();
        NavHostController navHostController = (NavHostController) SequencesKt.firstOrNull(SequencesKt.filterNotNull(new TakeWhileSequence(SequencesKt.generateSequence(view, new RoomDatabase$$ExternalSyntheticLambda0(16)), new RoomDatabase$$ExternalSyntheticLambda0(17), 2)));
        if (navHostController != null) {
            return navHostController;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m$1(view, " does not have a NavController set", "View ");
        return null;
    }

    public static final ImageVector getInbox() {
        ImageVector imageVector = _inbox;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Inbox", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(19.0f, 3.0f);
        builder2.lineTo(5.0f, 3.0f);
        builder2.curveToRelative(-1.1f, 0.0f, -2.0f, 0.9f, -2.0f, 2.0f);
        builder2.verticalLineToRelative(14.0f);
        builder2.curveToRelative(0.0f, 1.1f, 0.89f, 2.0f, 2.0f, 2.0f);
        builder2.horizontalLineToRelative(14.0f);
        builder2.curveToRelative(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        builder2.lineTo(21.0f, 5.0f);
        builder2.curveToRelative(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
        builder2.close();
        builder2.moveTo(19.0f, 19.0f);
        builder2.lineTo(5.0f, 19.0f);
        builder2.verticalLineToRelative(-3.0f);
        builder2.horizontalLineToRelative(3.56f);
        builder2.curveToRelative(0.69f, 1.19f, 1.97f, 2.0f, 3.45f, 2.0f);
        builder2.reflectiveCurveToRelative(2.75f, -0.81f, 3.45f, -2.0f);
        builder2.lineTo(19.0f, 16.0f);
        builder2.verticalLineToRelative(3.0f);
        builder2.close();
        builder2.moveTo(19.0f, 14.0f);
        builder2.horizontalLineToRelative(-4.99f);
        builder2.curveToRelative(0.0f, 1.1f, -0.9f, 2.0f, -2.0f, 2.0f);
        builder2.reflectiveCurveToRelative(-2.0f, -0.9f, -2.0f, -2.0f);
        builder2.lineTo(5.0f, 14.0f);
        builder2.lineTo(5.0f, 5.0f);
        builder2.horizontalLineToRelative(14.0f);
        builder2.verticalLineToRelative(9.0f);
        builder2.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        ImageVector build = builder.build();
        _inbox = build;
        return build;
    }

    public static final Integer getIntOrNull(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return null;
        }
        return Integer.valueOf(cursor.getInt(columnIndex));
    }

    public static final Long getLongOrNull(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(columnIndex));
    }

    public static final long getLongOrThrow(Cursor cursor, String str) {
        Long longOrNull = getLongOrNull(cursor, str);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        Regex$$ExternalSyntheticBUOutline0.m(str, " must not be null", "Column ");
        return 0L;
    }

    public static final String getStringOrNull(Cursor cursor, String str) {
        cursor.getClass();
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return null;
        }
        return cursor.getString(columnIndex);
    }

    public static final String getStringOrThrow(Cursor cursor, String str) {
        cursor.getClass();
        String stringOrNull = getStringOrNull(cursor, str);
        if (stringOrNull != null) {
            return stringOrNull;
        }
        Regex$$ExternalSyntheticBUOutline0.m(str, " must not be null", "Column ");
        return null;
    }

    public static final ImageVector getVisibilityOff() {
        ImageVector imageVector = _visibilityOff;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.VisibilityOff", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder m = Modifier.CC.m(12.0f, 7.0f);
        m.curveToRelative(2.76f, 0.0f, 5.0f, 2.24f, 5.0f, 5.0f);
        m.curveToRelative(0.0f, 0.65f, -0.13f, 1.26f, -0.36f, 1.83f);
        m.lineToRelative(2.92f, 2.92f);
        m.curveToRelative(1.51f, -1.26f, 2.7f, -2.89f, 3.43f, -4.75f);
        m.curveToRelative(-1.73f, -4.39f, -6.0f, -7.5f, -11.0f, -7.5f);
        m.curveToRelative(-1.4f, 0.0f, -2.74f, 0.25f, -3.98f, 0.7f);
        m.lineToRelative(2.16f, 2.16f);
        m.curveTo(10.74f, 7.13f, 11.35f, 7.0f, 12.0f, 7.0f);
        m.close();
        m.moveTo(2.0f, 4.27f);
        m.lineToRelative(2.28f, 2.28f);
        m.lineToRelative(0.46f, 0.46f);
        m.curveTo(3.08f, 8.3f, 1.78f, 10.02f, 1.0f, 12.0f);
        m.curveToRelative(1.73f, 4.39f, 6.0f, 7.5f, 11.0f, 7.5f);
        m.curveToRelative(1.55f, 0.0f, 3.03f, -0.3f, 4.38f, -0.84f);
        m.lineToRelative(0.42f, 0.42f);
        m.lineTo(19.73f, 22.0f);
        m.lineTo(21.0f, 20.73f);
        m.lineTo(3.27f, 3.0f);
        m.lineTo(2.0f, 4.27f);
        m.close();
        m.moveTo(7.53f, 9.8f);
        m.lineToRelative(1.55f, 1.55f);
        m.curveToRelative(-0.05f, 0.21f, -0.08f, 0.43f, -0.08f, 0.65f);
        m.curveToRelative(0.0f, 1.66f, 1.34f, 3.0f, 3.0f, 3.0f);
        m.curveToRelative(0.22f, 0.0f, 0.44f, -0.03f, 0.65f, -0.08f);
        m.lineToRelative(1.55f, 1.55f);
        m.curveToRelative(-0.67f, 0.33f, -1.41f, 0.53f, -2.2f, 0.53f);
        m.curveToRelative(-2.76f, 0.0f, -5.0f, -2.24f, -5.0f, -5.0f);
        m.curveToRelative(0.0f, -0.79f, 0.2f, -1.53f, 0.53f, -2.2f);
        m.close();
        m.moveTo(11.84f, 9.02f);
        m.lineToRelative(3.15f, 3.15f);
        m.lineToRelative(0.02f, -0.16f);
        m.curveToRelative(0.0f, -1.66f, -1.34f, -3.0f, -3.0f, -3.0f);
        m.lineToRelative(-0.17f, 0.01f);
        m.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", m.namesAndValues);
        ImageVector build = builder.build();
        _visibilityOff = build;
        return build;
    }

    public static BinaryBitmap groupIds(Set set) {
        if (set.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("groupIds() must be called with non-empty set of IDs");
            return null;
        }
        int i = 2;
        if (set.size() < 2) {
            return new BinaryBitmap(set, EmptyList.INSTANCE);
        }
        TreeSet treeSet = new TreeSet();
        CollectionsKt.toCollection(set, treeSet);
        Long l = (Long) treeSet.first();
        Set mutableSetOf = Validate.mutableSetOf(l);
        ArrayList arrayList = new ArrayList();
        long j = -1;
        long j2 = -1;
        for (Long l2 : SequencesKt.drop(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i, treeSet), 1)) {
            long longValue = l.longValue() + 1;
            if (l2 == null || longValue != l2.longValue()) {
                if (j != -1) {
                    arrayList.add(new ContiguousIdGroup(j, j2));
                    j = -1;
                }
                mutableSetOf.add(l2);
            } else if (j == -1) {
                mutableSetOf.remove(l);
                j = l.longValue();
                j2 = l2.longValue();
            } else {
                j2 = l2.longValue();
            }
            l = l2;
        }
        if (j != -1) {
            arrayList.add(new ContiguousIdGroup(j, j2));
        }
        return new BinaryBitmap(mutableSetOf, arrayList);
    }

    public static void handleException(Exception exc, String str) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = ((InvocationTargetException) exc).getCause();
            if (cause instanceof RuntimeException) {
                throw cause;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(cause);
            return;
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static HandlerExecutor highPriorityExecutor() {
        if (HandlerExecutor.sExecutor != null) {
            return HandlerExecutor.sExecutor;
        }
        synchronized (HandlerExecutor.class) {
            try {
                if (HandlerExecutor.sExecutor == null) {
                    HandlerExecutor.sExecutor = new HandlerExecutor(3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return HandlerExecutor.sExecutor;
    }

    public static IoExecutor ioExecutor() {
        if (IoExecutor.sExecutor != null) {
            return IoExecutor.sExecutor;
        }
        synchronized (IoExecutor.class) {
            try {
                if (IoExecutor.sExecutor == null) {
                    IoExecutor.sExecutor = new IoExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return IoExecutor.sExecutor;
    }

    public static final boolean isEnabled() {
        boolean isEnabled;
        if (Build.VERSION.SDK_INT >= 29) {
            isEnabled = Trace.isEnabled();
            return isEnabled;
        }
        try {
            if (isTagEnabledMethod == null) {
                traceTagApp = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                isTagEnabledMethod = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            Method method = isTagEnabledMethod;
            if (method == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            Object invoke = method.invoke(null, Long.valueOf(traceTagApp));
            invoke.getClass();
            return ((Boolean) invoke).booleanValue();
        } catch (Exception e) {
            handleException(e, "isTagEnabled");
            return false;
        }
    }

    /* renamed from: isRecoverableError-90vkdD0$camera_camera2, reason: not valid java name */
    public static boolean m1094isRecoverableError90vkdD0$camera_camera2(int i) {
        return i == 6 || i == 1 || i == 2 || i == 4;
    }

    public static HandlerScheduledExecutorService mainThreadExecutor() {
        if (OAuthBearer.sInstance != null) {
            return OAuthBearer.sInstance;
        }
        synchronized (OAuthBearer.class) {
            try {
                if (OAuthBearer.sInstance == null) {
                    OAuthBearer.sInstance = new HandlerScheduledExecutorService(new Handler(Looper.getMainLooper()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return OAuthBearer.sInstance;
    }

    public static final ArrayList map(Cursor cursor, Function1 function1) {
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList(count);
        for (int i = 0; i < count; i++) {
            cursor.moveToPosition(i);
            arrayList.add(function1.invoke(cursor));
        }
        return arrayList;
    }

    public static final void report(String str) {
        System.err.println("SLF4J: ".concat(str));
    }

    public static final Object runBlockingUninterruptible(Function2 function2) {
        Thread.interrupted();
        return JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new DataStoreImpl$data$1$3(function2, null, 17));
    }

    public static final void setFragmentResult(Fragment fragment, String str, Bundle bundle) {
        FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
        FragmentManager.LifecycleAwareResultListener lifecycleAwareResultListener = (FragmentManager.LifecycleAwareResultListener) parentFragmentManager.mResultListeners.get(str);
        if (lifecycleAwareResultListener == null || ((LifecycleRegistry) lifecycleAwareResultListener.mLifecycle).state.compareTo(Lifecycle.State.STARTED) < 0) {
            parentFragmentManager.mResults.put(str, bundle);
        } else {
            lifecycleAwareResultListener.onFragmentResult(str, bundle);
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Setting fragment result with key " + str + " and result " + bundle);
        }
    }

    public static final void setSecure(Activity activity, boolean z) {
        activity.getWindow().setFlags(z ? 8192 : 0, 8192);
    }

    public static final Uri toAndroidUri(com.eygraber.uri.Uri uri) {
        uri.getClass();
        Uri parse = Uri.parse(uri.toString());
        parse.getClass();
        return parse;
    }

    /* renamed from: toCameraStateError-90vkdD0$camera_camera2, reason: not valid java name */
    public static AutoValue_CameraState_StateError m1095toCameraStateError90vkdD0$camera_camera2(int i) {
        int i2 = 6;
        if (i != 0) {
            int i3 = 1;
            if (i != 1) {
                if (i != 2) {
                    i3 = 5;
                    if (i != 3) {
                        if (i == 4) {
                            i2 = 3;
                        } else if (i != 5) {
                            if (i != 6) {
                                i3 = 7;
                                if (i != 7 && i != 8) {
                                    if (i == 9) {
                                        i2 = 4;
                                    } else if (i != 10) {
                                        if (i != 11 && i != 12 && i != 13) {
                                            DBUtil$$ExternalSyntheticBUOutline0.m$1(CameraError.m33toStringimpl(i), "Unexpected CameraError: ");
                                            return null;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i2 = i3;
            }
            i2 = 2;
        }
        return new AutoValue_CameraState_StateError(i2);
    }

    public static final StringUri toKmpUri(Uri uri) {
        uri.getClass();
        Uri.Companion companion = com.eygraber.uri.Uri.Companion;
        String uri2 = uri.toString();
        uri2.getClass();
        companion.getClass();
        return new StringUri(uri2);
    }

    public static String truncatedTraceSectionLabel(String str) {
        String str2 = str.length() <= 127 ? str : null;
        return str2 == null ? str.substring(0, 127) : str2;
    }

    public static LinkedHashMap upgradeToVersion(int i, int i2, Map map, Map map2, Map map3, GeneralSettingsManager generalSettingsManager) {
        map.getClass();
        map2.getClass();
        generalSettingsManager.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map3);
        int i3 = i2 + 1;
        if (i3 <= i) {
            while (true) {
                SettingsUpgrader settingsUpgrader = (SettingsUpgrader) map.get(Integer.valueOf(i3));
                if (settingsUpgrader != null) {
                    settingsUpgrader.upgrade(linkedHashMap);
                }
                for (Map.Entry entry : map2.entrySet()) {
                    String str = (String) entry.getKey();
                    TreeMap treeMap = (TreeMap) entry.getValue();
                    Integer num = (Integer) treeMap.firstKey();
                    if (num != null && num.intValue() == i3) {
                        if (linkedHashMap.containsKey(str)) {
                            continue;
                        } else {
                            Settings$SettingsDescription settings$SettingsDescription = (Settings$SettingsDescription) treeMap.get(Integer.valueOf(i3));
                            if (settings$SettingsDescription == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "First version of a setting must be non-null!");
                                return null;
                            }
                            Object obj = settings$SettingsDescription.defaultValue;
                            linkedHashMap.put(str, obj);
                            if (((DefaultGeneralSettingsManager) generalSettingsManager).getConfig().debugging.isDebugLoggingEnabled) {
                                net.thunderbird.core.logging.legacy.Log.v("Added new setting '%s' with default value '%s'", str, settings$SettingsDescription.toPrettyString(obj));
                            }
                        }
                    }
                    Integer num2 = (Integer) treeMap.lastKey();
                    if (num2 != null && num2.intValue() == i3 && treeMap.get(num2) == null) {
                        linkedHashMap.remove(str);
                        net.thunderbird.core.logging.legacy.Log.v("Removed setting '%s'", str);
                    }
                }
                if (i3 == i) {
                    break;
                }
                i3++;
            }
        }
        return linkedHashMap;
    }

    public abstract int calculateInnerMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float calculateSlideOffset(int i);

    public abstract int clampViewPositionHorizontal(View view, int i);

    public abstract int clampViewPositionVertical(View view, int i);

    public abstract int getExpandedOffset();

    public abstract int getHiddenOffset();

    public abstract int getMaxViewPositionHorizontal();

    public abstract int getMinViewPositionHorizontal();

    public abstract int getOuterEdge(View view);

    public abstract int getParentInnerEdge(CoordinatorLayout coordinatorLayout);

    public abstract int getSheetEdge();

    public int getViewHorizontalDragRange(View view) {
        return 0;
    }

    public int getViewVerticalDragRange() {
        return 0;
    }

    public abstract boolean isExpandingOutwards(float f);

    public abstract boolean isReleasedCloseToInnerEdge(View view);

    public abstract boolean isSwipeSignificant(float f, float f2);

    public abstract void onViewDragStateChanged(int i);

    public abstract void onViewPositionChanged(View view, int i, int i2);

    public abstract void onViewReleased(View view, float f, float f2);

    public abstract boolean shouldHide(View view, float f);

    public abstract boolean tryCaptureView(View view, int i);

    public abstract void updateCoplanarSiblingLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);

    public void onEdgeTouched() {
    }

    public void onEdgeDragStarted(int i, int i2) {
    }

    public void onViewCaptured(View view, int i) {
    }

    /* renamed from: TextLabelSmall-Xl4FiYE, reason: not valid java name */
    public static final void m1092TextLabelSmallXl4FiYE(AnnotatedString annotatedString, Modifier modifier, long j, int i, int i2, Composer composer, int i3) {
        GapComposer gapComposer;
        Modifier modifier2;
        int i4;
        int i5;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1709552269);
        int i6 = i3 | (gapComposer2.changed(annotatedString) ? 4 : 2) | 48 | (gapComposer2.changed(j) ? 256 : 128) | 224256;
        if (gapComposer2.shouldExecute(i6 & 1, (74899 & i6) != 74898)) {
            TextStyle textStyle = ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).labelSmall;
            int i7 = i6 & 1022;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            gapComposer = gapComposer2;
            TextKt.m363TextZ58ophY(annotatedString, companion, j, 0L, 0L, null, 0L, 1, false, Integer.MAX_VALUE, 0, null, null, textStyle, gapComposer, i7, 24966, 240632);
            modifier2 = companion;
            i4 = 1;
            i5 = Integer.MAX_VALUE;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            i4 = i;
            i5 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextLabelSmallKt$$ExternalSyntheticLambda1(annotatedString, modifier2, j, i4, i5, i3, 0);
        }
    }
}
