package androidx.work;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CaptureRequest;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureCallbacks$NoOpCameraCaptureCallback;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.DiagnosticComposeException;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.unit.DensityWithConverter;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LinearFontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;
import androidx.core.app.AppOpsManagerCompat$Api29Impl;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentResultListener;
import androidx.fragment.compose.FragmentState;
import androidx.fragment.compose.FragmentStateKt$fragmentStateSaver$1;
import androidx.fragment.compose.FragmentStateKt$fragmentStateSaver$2;
import androidx.fragment.compose.FragmentStateKt$rememberFragmentState$1;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.navigation.NavArgument;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavContext;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.work.Data;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkGenerationalId;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.core.ui.compose.designsystem.atom.RadioGroupKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;
import app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.view.AutoDiscoveryResultHeaderState;
import app.k9mail.feature.account.setup.ui.autodiscovery.view.AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import app.k9mail.feature.settings.p000import.ui.SettingsImportScreenKt$SettingsImportContent$$inlined$AndroidFragment$1;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.network.internal.UtilsKt;
import com.bumptech.glide.load.Option;
import com.eygraber.uri.Uri;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.filter.FixedLengthInputStream;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.store.imap.ImapList;
import com.fsck.k9.mail.store.imap.ImapMessage;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.mail.store.imap.ImapResponseCallback;
import com.fsck.k9.mailstore.DeferredFileBody;
import com.fsck.k9.mailstore.DeferredFileBody.AnonymousClass1;
import com.fsck.k9.notification.InactiveNotificationHolder;
import com.fsck.k9.notification.NotificationContent;
import com.fsck.k9.notification.NotificationData;
import com.fsck.k9.notification.NotificationHolder;
import com.fsck.k9.notification.NotificationStoreOperation;
import com.fsck.k9.notification.RemoveNotificationsResult;
import com.google.android.material.color.ColorRoles;
import com.google.android.material.color.utilities.Cam16;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.shape.MaterialShapeDrawable;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Stack;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.internal.PlatformImplementations$ReflectThrowable;
import kotlin.internal.jdk7.JDK7PlatformImplementations$ReflectSdkVersion;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.LockScreenNotificationVisibility;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.IconKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeShapes;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;
import net.thunderbird.core.validation.input.NumberInputField;
import net.thunderbird.core.validation.input.StringInputField;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.commons.io.IOUtils;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.parser.ContentHandler;
import org.apache.james.mime4j.stream.EntityStateMachine;
import org.apache.james.mime4j.stream.Field;
import org.apache.james.mime4j.stream.MimeConfig;
import org.apache.james.mime4j.stream.MimeTokenStream;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SoftPool;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Data {
    public static final Data EMPTY;
    public final HashMap values;

    static {
        Data data = new Data(new LinkedHashMap());
        Companion.toByteArrayInternalV1(data);
        EMPTY = data;
    }

    public Data(Data data) {
        data.getClass();
        this.values = new HashMap(data.values);
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (obj != null && Data.class.equals(obj.getClass())) {
                HashMap hashMap = ((Data) obj).values;
                HashMap hashMap2 = this.values;
                Set<String> keySet = hashMap2.keySet();
                if (Intrinsics.areEqual(keySet, hashMap.keySet())) {
                    for (String str : keySet) {
                        Object obj2 = hashMap2.get(str);
                        Object obj3 = hashMap.get(str);
                        if (obj2 == null || obj3 == null) {
                            z = obj2 == obj3;
                        } else {
                            if (obj2 instanceof Object[]) {
                                Object[] objArr = (Object[]) obj2;
                                if (obj3 instanceof Object[]) {
                                    z = ArraysKt___ArraysKt.contentDeepEquals(objArr, (Object[]) obj3);
                                }
                            }
                            z = obj2.equals(obj3);
                        }
                        if (!z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getString(String str) {
        Object obj = this.values.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final boolean hasKeyWithValueOfType(String str) {
        Object obj = this.values.get(str);
        return obj != null && String.class.isAssignableFrom(obj.getClass());
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry entry : this.values.entrySet()) {
            Object value = entry.getValue();
            i += value instanceof Object[] ? Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value) : entry.hashCode();
        }
        return i * 31;
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("Data {"), CollectionsKt.joinToString$default(this.values.entrySet(), null, null, null, new Data$$ExternalSyntheticLambda0(0), 31), "}");
    }

    public Data(LinkedHashMap linkedHashMap) {
        linkedHashMap.getClass();
        this.values = new HashMap(linkedHashMap);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Companion {
        public static ImageVector _check;
        public static ImageVector _sync;

        public static final void AutoDiscoveryResultView(AutoDiscoveryResult.Settings settings, Function0 function0, Modifier modifier, Composer composer, int i) {
            Modifier modifier2;
            long Color;
            Modifier m136clickableoSLSa3U$default;
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1000090336);
            int i2 = i | (gapComposer.changedInstance(settings) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 384;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                Object[] objArr = new Object[0];
                boolean changedInstance = gapComposer.changedInstance(settings);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (changedInstance || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new ImageLoader$Builder$$ExternalSyntheticLambda1(25, settings);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue, gapComposer, 0);
                AutoDiscoveryResultHeaderState autoDiscoveryResultHeaderState = settings == null ? AutoDiscoveryResultHeaderState.NoSettings : settings.isTrusted ? AutoDiscoveryResultHeaderState.Trusted : AutoDiscoveryResultHeaderState.Untrusted;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                long j = gapComposer.compositeKeyHashCode;
                int i3 = (int) (j ^ (j >>> 32));
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
                Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeShapesKt.LocalThemeShapes;
                RoundedCornerShape roundedCornerShape = ((ThemeShapes) gapComposer.consume(staticProvidableCompositionLocal)).small;
                gapComposer.startReplaceGroup(1906569620);
                Color = ColorKt.Color(Color.m487getRedimpl(r12), Color.m486getGreenimpl(r12), Color.m484getBlueimpl(r12), 0.5f, Color.m485getColorSpaceimpl(Color.Gray));
                Modifier m133borderxT4_qwU = ImageKt.m133borderxT4_qwU(companion, 1.0f, Color, ((ThemeShapes) gapComposer.consume(staticProvidableCompositionLocal)).small);
                if (autoDiscoveryResultHeaderState.isExpandable) {
                    gapComposer.startReplaceGroup(-714692858);
                    boolean changed = gapComposer.changed(mutableState);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 12);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(m133borderxT4_qwU, true, null, (Function0) rememberedValue2, 14);
                    gapComposer.end(false);
                } else if (autoDiscoveryResultHeaderState == AutoDiscoveryResultHeaderState.NoSettings) {
                    gapComposer.startReplaceGroup(-714498612);
                    boolean z = (i2 & 112) == 32;
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (z || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Handshake$$ExternalSyntheticLambda0(5, function0);
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(m133borderxT4_qwU, true, null, (Function0) rememberedValue3, 14);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-714387353);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(m133borderxT4_qwU, false, null, (Function0) rememberedValue4, 14);
                    gapComposer.end(false);
                }
                Modifier modifier3 = m136clickableoSLSa3U$default;
                gapComposer.end(false);
                MathKt.m983Surface_UMDTes(modifier3, roundedCornerShape, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(235300851, new MaterialThemeKt$$ExternalSyntheticLambda0(autoDiscoveryResultHeaderState, mutableState, settings, function0), gapComposer), gapComposer, 196608, 28);
                gapComposer.end(true);
                modifier2 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4(settings, function0, modifier2, i, 0);
            }
        }

        public static final DensityWithConverter Density(Context context) {
            float f = context.getResources().getConfiguration().fontScale;
            float f2 = context.getResources().getDisplayMetrics().density;
            FontScaleConverter forScale = FontScaleConverterFactory.forScale(f);
            if (forScale == null) {
                forScale = new LinearFontScaleConverter(f);
            }
            return new DensityWithConverter(f2, f, forScale);
        }

        public static final void EditOutgoingServerSettingsNavHost(String str, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0, Function0 function0, Composer composer, int i) {
            NavHostController navHostController;
            str.getClass();
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-899387487);
            int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(diskLruCache$$ExternalSyntheticLambda0) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                NavHostController rememberNavController = ActionBar.rememberNavController(new Navigator[0], gapComposer);
                boolean changedInstance = ((i2 & 14) == 4) | gapComposer.changedInstance(rememberNavController) | ((i2 & 896) == 256) | ((i2 & 112) == 32);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                    navHostController = rememberNavController;
                    rememberedValue = new EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12(str, navHostController, function0, diskLruCache$$ExternalSyntheticLambda0, 1);
                    gapComposer.updateRememberedValue(rememberedValue);
                } else {
                    navHostController = rememberNavController;
                }
                Utf8.SafeProcessor.NavHost(navHostController, "modify", (Modifier) null, (Alignment) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) rememberedValue, gapComposer, 48);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13(str, diskLruCache$$ExternalSyntheticLambda0, function0, i, 1);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:112:0x0206  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x021b  */
        /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void LazyVerticalGrid(androidx.compose.foundation.lazy.grid.GridCells$Adaptive r26, androidx.compose.ui.Modifier r27, androidx.compose.foundation.lazy.grid.LazyGridState r28, androidx.compose.foundation.layout.PaddingValues r29, androidx.compose.foundation.layout.Arrangement$Vertical r30, androidx.compose.foundation.layout.Arrangement$Horizontal r31, androidx.compose.foundation.gestures.DefaultFlingBehavior r32, boolean r33, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r34, kotlin.jvm.functions.Function1 r35, androidx.compose.runtime.Composer r36, int r37, int r38) {
            /*
                Method dump skipped, instructions count: 551
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.Data.Companion.LazyVerticalGrid(androidx.compose.foundation.lazy.grid.GridCells$Adaptive, androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.grid.LazyGridState, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.gestures.DefaultFlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
        }

        public static final void NotificationActionButton(String str, Function0 function0, Modifier modifier, Composer composer, int i, int i2) {
            int i3;
            Modifier modifier2;
            Function0 function02;
            String str2;
            str.getClass();
            function0.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-255114229);
            if ((i & 6) == 0) {
                i3 = (gapComposer.changed(str) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
            if ((i & 48) == 0) {
                i3 |= gapComposer.changedInstance(function0) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i3 |= gapComposer.changed(modifier) ? 256 : 128;
            }
            if ((i2 & 8) != 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                i3 |= gapComposer.changed(false) ? 2048 : 1024;
            }
            if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
                boolean z = (i3 & 7168) == 2048;
                Object rememberedValue = gapComposer.rememberedValue();
                if (z || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = null;
                    gapComposer.updateRememberedValue(null);
                }
                Function2 function2 = (Function2) rememberedValue;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
                Util.m1089ButtonTextjM_yU8I(str, function0, modifier, false, new Color(((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value), function2, gapComposer, i3 & 1022, 8);
                str2 = str;
                function02 = function0;
                modifier2 = modifier;
            } else {
                modifier2 = modifier;
                function02 = function0;
                str2 = str;
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new IconKt$$ExternalSyntheticLambda0(str2, function02, modifier2, i, i2);
            }
        }

        public static final void PredictiveBackHandler(boolean z, Function2 function2, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1818896922);
            int i2 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16);
            if ((i2 & 19) == 18 && gapComposer.getSkipping()) {
                gapComposer.skipToGroupEnd();
            } else {
                RelationUtil.PredictiveBackHandler(z, function2, gapComposer, i2 & 126);
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new CoreTextFieldKt$$ExternalSyntheticLambda17(z, function2, i);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final void RadioGroup(final Function1 function1, final ImmutableList immutableList, final Function1 function12, Modifier modifier, final Object obj, Composer composer, final int i, final int i2) {
            Modifier modifier2;
            int i3;
            Function1 function13;
            Function1 function14;
            Object obj2;
            GapComposer gapComposer;
            RecomposeScopeImpl endRestartGroup;
            Function2 function2;
            function1.getClass();
            immutableList.getClass();
            function12.getClass();
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(-43420424);
            int i4 = ((i & 6) == 0 ? i | (gapComposer2.changedInstance(function1) ? 4 : 2) : i) | (gapComposer2.changed(immutableList) ? 32 : 16);
            int i5 = i2 & 8;
            if (i5 != 0) {
                i3 = i4 | 3072;
                modifier2 = modifier;
            } else {
                modifier2 = modifier;
                i3 = i4 | (gapComposer2.changed(modifier2) ? 2048 : 1024);
            }
            int i6 = (gapComposer2.changed(obj) ? 16384 : 8192) | i3;
            if (gapComposer2.shouldExecute(i6 & 1, (i6 & 9363) != 9362)) {
                final Modifier modifier3 = i5 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
                if (((AbstractCollection) immutableList).isEmpty()) {
                    endRestartGroup = gapComposer2.endRestartGroup();
                    if (endRestartGroup != null) {
                        final int i7 = 0;
                        function2 = new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.atom.RadioGroupKt$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                int i8 = i7;
                                Unit unit = Unit.INSTANCE;
                                int i9 = i;
                                switch (i8) {
                                    case 0:
                                        ((Integer) obj4).getClass();
                                        int updateChangedFlags = Updater.updateChangedFlags(i9 | 1);
                                        Data.Companion.RadioGroup(function1, immutableList, function12, modifier3, obj, (Composer) obj3, updateChangedFlags, i2);
                                        break;
                                    default:
                                        ((Integer) obj4).getClass();
                                        int updateChangedFlags2 = Updater.updateChangedFlags(i9 | 1);
                                        Data.Companion.RadioGroup(function1, immutableList, function12, modifier3, obj, (Composer) obj3, updateChangedFlags2, i2);
                                        break;
                                }
                                return unit;
                            }
                        };
                        endRestartGroup.block = function2;
                    }
                    return;
                }
                function14 = function1;
                modifier2 = modifier3;
                obj2 = obj;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                long j = gapComposer2.compositeKeyHashCode;
                int i8 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier2);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m380setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m380setimpl(gapComposer2, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                gapComposer2.startReplaceGroup(1459124311);
                for (Object obj3 : immutableList) {
                    String str = (String) function12.invoke(obj3);
                    boolean areEqual = Intrinsics.areEqual(obj3, obj2);
                    boolean changedInstance = ((i6 & 14) == 4) | gapComposer2.changedInstance(obj3);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new RadioGroupKt$$ExternalSyntheticLambda1(0, obj3, function14);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    GapComposer gapComposer3 = gapComposer2;
                    DBUtil.RadioButton(areEqual, str, function0, null, false, gapComposer3, 0);
                    gapComposer2 = gapComposer3;
                }
                function13 = function12;
                gapComposer = gapComposer2;
                gapComposer.end(false);
                gapComposer.end(true);
            } else {
                function13 = function12;
                function14 = function1;
                obj2 = obj;
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
            }
            final Modifier modifier4 = modifier2;
            endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                final int i9 = 1;
                final Function1 function15 = function14;
                final Object obj4 = obj2;
                final Function1 function16 = function13;
                function2 = new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.atom.RadioGroupKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj32, Object obj42) {
                        int i82 = i9;
                        Unit unit = Unit.INSTANCE;
                        int i92 = i;
                        switch (i82) {
                            case 0:
                                ((Integer) obj42).getClass();
                                int updateChangedFlags = Updater.updateChangedFlags(i92 | 1);
                                Data.Companion.RadioGroup(function15, immutableList, function16, modifier4, obj4, (Composer) obj32, updateChangedFlags, i2);
                                break;
                            default:
                                ((Integer) obj42).getClass();
                                int updateChangedFlags2 = Updater.updateChangedFlags(i92 | 1);
                                Data.Companion.RadioGroup(function15, immutableList, function16, modifier4, obj4, (Composer) obj32, updateChangedFlags2, i2);
                                break;
                        }
                        return unit;
                    }
                };
                endRestartGroup.block = function2;
            }
        }

        public static final void SettingsImportContent(SettingsImportAction settingsImportAction, final Function0 function0, final Function0 function02, PaddingValues paddingValues, Composer composer, int i) {
            int i2;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-359924736);
            if ((i & 6) == 0) {
                i2 = (gapComposer.changed(settingsImportAction.ordinal()) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changedInstance(function02) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                i2 |= gapComposer.changed(paddingValues) ? 2048 : 1024;
            }
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                Object consume = gapComposer.consume(LocalActivityKt.LocalActivity);
                consume.getClass();
                FragmentManagerImpl supportFragmentManager = ((AppCompatActivity) consume).getSupportFragmentManager();
                LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
                boolean z = ((i2 & 896) == 256) | ((i2 & 112) == 32);
                Object rememberedValue = gapComposer.rememberedValue();
                if (z || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new FragmentResultListener() { // from class: app.k9mail.feature.settings.import.ui.SettingsImportScreenKt$$ExternalSyntheticLambda3
                        @Override // androidx.fragment.app.FragmentResultListener
                        public final void onFragmentResult(String str, Bundle bundle) {
                            if (bundle.getBoolean("accountImported", false)) {
                                Function0.this.invoke();
                            } else {
                                function02.invoke();
                            }
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                supportFragmentManager.setFragmentResultListener("settings_import", lifecycleOwner, (FragmentResultListener) rememberedValue);
                Bundle bundleOf = Util.bundleOf(new Pair("action", settingsImportAction.bundleValue));
                Modifier padding = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                gapComposer.startReplaceableGroup(1765406104);
                gapComposer.startReplaceableGroup(-496803845);
                FragmentState fragmentState = (FragmentState) SaverKt.rememberSaveable(new Object[0], new WeakCache(3, FragmentStateKt$fragmentStateSaver$1.INSTANCE, FragmentStateKt$fragmentStateSaver$2.INSTANCE), FragmentStateKt$rememberFragmentState$1.INSTANCE, gapComposer, 3072, 4);
                gapComposer.end(false);
                DBUtil.AndroidFragment(padding, fragmentState, bundleOf, SettingsImportScreenKt$SettingsImportContent$$inlined$AndroidFragment$1.INSTANCE, gapComposer, 0);
                gapComposer = gapComposer;
                gapComposer.end(false);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(settingsImportAction, function0, function02, paddingValues, i, 8);
            }
        }

        public static final void SettingsImportScreen(SettingsImportAction settingsImportAction, Function0 function0, Function0 function02, Modifier modifier, Composer composer, int i) {
            Modifier modifier2;
            function0.getClass();
            function02.getClass();
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(1606817253);
            int i2 = i | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | 3072;
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1048257441, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(4, function02), gapComposer);
                ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-896205863, new ArchiveOperations$$ExternalSyntheticLambda2(settingsImportAction, function0, function02, 7), gapComposer);
                modifier2 = Modifier.Companion.$$INSTANCE;
                ScaffoldKt.Scaffold(modifier2, rememberComposableLambda, null, null, null, null, rememberComposableLambda2, gapComposer, 1572918, 60);
            } else {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(settingsImportAction, function0, function02, modifier2, i, 11);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0159  */
        /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0045  */
        /* renamed from: TextBodyMedium-ZHfKjFs, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void m825TextBodyMediumZHfKjFs(java.lang.String r32, androidx.compose.ui.Modifier r33, long r34, int r36, int r37, kotlin.jvm.functions.Function1 r38, androidx.compose.runtime.Composer r39, int r40, int r41) {
            /*
                Method dump skipped, instructions count: 358
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.Data.Companion.m825TextBodyMediumZHfKjFs(java.lang.String, androidx.compose.ui.Modifier, long, int, int, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
        }

        public static final Object bringIntoView(DelegatableNode delegatableNode, Function0 function0, ContinuationImpl continuationImpl) {
            Object obj;
            NodeCoordinator requireLayoutCoordinates;
            Object bringIntoView;
            NodeChain nodeChain;
            if (((Modifier.Node) delegatableNode).node.isAttached) {
                Modifier.Node node = (Modifier.Node) delegatableNode;
                if (!node.node.isAttached) {
                    InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                }
                Modifier.Node node2 = node.node.parent;
                LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(delegatableNode);
                loop0: while (true) {
                    obj = null;
                    if (requireLayoutNode == null) {
                        break;
                    }
                    if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 524288) != 0) {
                        while (node2 != null) {
                            if ((node2.kindSet & 524288) != 0) {
                                Modifier.Node node3 = node2;
                                MutableVector mutableVector = null;
                                while (node3 != null) {
                                    if (node3 instanceof BringIntoViewModifierNode) {
                                        obj = node3;
                                        break loop0;
                                    }
                                    if ((node3.kindSet & 524288) != 0 && (node3 instanceof DelegatingNode)) {
                                        int i = 0;
                                        for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                            if ((node4.kindSet & 524288) != 0) {
                                                i++;
                                                if (i == 1) {
                                                    node3 = node4;
                                                } else {
                                                    if (mutableVector == null) {
                                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node3 != null) {
                                                        mutableVector.add(node3);
                                                        node3 = null;
                                                    }
                                                    mutableVector.add(node4);
                                                }
                                            }
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    node3 = HitTestResultKt.access$pop(mutableVector);
                                }
                            }
                            node2 = node2.parent;
                        }
                    }
                    requireLayoutNode = requireLayoutNode.getParent$ui();
                    node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
                }
                BringIntoViewModifierNode bringIntoViewModifierNode = (BringIntoViewModifierNode) obj;
                if (bringIntoViewModifierNode != null && (bringIntoView = bringIntoViewModifierNode.bringIntoView((requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(delegatableNode)), new FocusTargetNode$invalidateFocus$1(9, function0, requireLayoutCoordinates), continuationImpl)) == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return bringIntoView;
                }
            }
            return Unit.INSTANCE;
        }

        public static int checkSelfPermission(Context context, String str) {
            int noteProxyOpNoThrow;
            int myPid = Process.myPid();
            int myUid = Process.myUid();
            String packageName = context.getPackageName();
            if (context.checkPermission(str, myPid, myUid) != -1) {
                String permissionToOp = AppOpsManager.permissionToOp(str);
                if (permissionToOp != null) {
                    if (packageName == null) {
                        String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                        if (packagesForUid != null && packagesForUid.length > 0) {
                            packageName = packagesForUid[0];
                        }
                    }
                    int myUid2 = Process.myUid();
                    String packageName2 = context.getPackageName();
                    if (myUid2 != myUid || !Objects.equals(packageName2, packageName)) {
                        noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                    } else if (Build.VERSION.SDK_INT >= 29) {
                        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                        noteProxyOpNoThrow = appOpsManager == null ? 1 : appOpsManager.checkOpNoThrow(permissionToOp, Binder.getCallingUid(), packageName);
                        if (noteProxyOpNoThrow == 0) {
                            noteProxyOpNoThrow = appOpsManager != null ? appOpsManager.checkOpNoThrow(permissionToOp, myUid, AppOpsManagerCompat$Api29Impl.getOpPackageName(context)) : 1;
                        }
                    } else {
                        noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                    }
                    if (noteProxyOpNoThrow != 0) {
                        return -2;
                    }
                }
                return 0;
            }
            return -1;
        }

        public static final AutoValue_Config_Option createCaptureRequestOption(CaptureRequest.Key key) {
            key.getClass();
            return new AutoValue_Config_Option("camera2.captureRequest.option." + key.getName(), Object.class, key);
        }

        public static CameraCaptureCallback createComboCallback(CameraCaptureCallback... cameraCaptureCallbackArr) {
            List asList = Arrays.asList(cameraCaptureCallbackArr);
            return asList.isEmpty() ? new CameraCaptureCallbacks$NoOpCameraCaptureCallback() : asList.size() == 1 ? (CameraCaptureCallback) asList.get(0) : new MetadataImageReader.AnonymousClass1(asList);
        }

        public static Data fromByteArray(byte[] bArr) {
            bArr.getClass();
            if (bArr.length > 10240) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Data cannot occupy more than 10240 bytes when serialized");
                return null;
            }
            if (bArr.length == 0) {
                return Data.EMPTY;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                byte[] bArr2 = new byte[2];
                byteArrayInputStream.read(bArr2);
                int i = 0;
                boolean z = bArr2[0] == -84 && bArr2[1] == -19;
                byteArrayInputStream.reset();
                if (z) {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int readInt = objectInputStream.readInt();
                        while (i < readInt) {
                            linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                            i++;
                        }
                        objectInputStream.close();
                    } finally {
                    }
                } else {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        short readShort = dataInputStream.readShort();
                        if (readShort == -21521) {
                            short readShort2 = dataInputStream.readShort();
                            if (readShort2 != 1) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Unsupported version number: ", readShort2));
                            }
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Magic number doesn't match: ", readShort));
                        }
                        int readInt2 = dataInputStream.readInt();
                        while (i < readInt2) {
                            linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
                            i++;
                        }
                        dataInputStream.close();
                    } finally {
                    }
                }
            } catch (IOException e) {
                Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e);
            } catch (ClassNotFoundException e2) {
                Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e2);
            }
            return new Data(linkedHashMap);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Serializable, java.lang.Double[]] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, java.lang.Float[]] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, java.lang.Long[]] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Serializable, java.lang.Integer[]] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, java.lang.Byte[]] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Serializable, java.lang.Boolean[]] */
        /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Serializable, java.lang.String[]] */
        public static final Serializable fromByteArray$readValue(DataInputStream dataInputStream, byte b) {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int readInt = dataInputStream.readInt();
                ?? r0 = new Boolean[readInt];
                while (i < readInt) {
                    r0[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return r0;
            }
            if (b == 9) {
                int readInt2 = dataInputStream.readInt();
                ?? r02 = new Byte[readInt2];
                while (i < readInt2) {
                    r02[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return r02;
            }
            if (b == 10) {
                int readInt3 = dataInputStream.readInt();
                ?? r03 = new Integer[readInt3];
                while (i < readInt3) {
                    r03[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return r03;
            }
            if (b == 11) {
                int readInt4 = dataInputStream.readInt();
                ?? r04 = new Long[readInt4];
                while (i < readInt4) {
                    r04[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return r04;
            }
            if (b == 12) {
                int readInt5 = dataInputStream.readInt();
                ?? r05 = new Float[readInt5];
                while (i < readInt5) {
                    r05[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return r05;
            }
            if (b == 13) {
                int readInt6 = dataInputStream.readInt();
                ?? r06 = new Double[readInt6];
                while (i < readInt6) {
                    r06[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return r06;
            }
            if (b != 14) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Unsupported type ", b));
                return null;
            }
            int readInt7 = dataInputStream.readInt();
            ?? r1 = new String[readInt7];
            while (i < readInt7) {
                String readUTF = dataInputStream.readUTF();
                if (Intrinsics.areEqual(readUTF, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                    readUTF = null;
                }
                r1[i] = readUTF;
                i++;
            }
            return r1;
        }

        public static int getColor(View view, int i) {
            Context context = view.getContext();
            TypedValue resolveTypedValueOrThrow = OperationKt.resolveTypedValueOrThrow(view.getContext(), i, view.getClass().getCanonicalName());
            int i2 = resolveTypedValueOrThrow.resourceId;
            return i2 != 0 ? context.getColor(i2) : resolveTypedValueOrThrow.data;
        }

        public static Integer getColorOrNull(Context context, int i) {
            TypedValue resolve = OperationKt.resolve(context.getTheme(), i);
            if (resolve == null) {
                return null;
            }
            int i2 = resolve.resourceId;
            return Integer.valueOf(i2 != 0 ? context.getColor(i2) : resolve.data);
        }

        public static int getColorRole(int i, int i2) {
            Hct hct = new Hct(i);
            hct.setInternalState(Cam16.solveToInt(hct.hue, hct.chroma, i2));
            return hct.argb;
        }

        public static ColorRoles getColorRoles(Context context, int i) {
            return OperationKt.resolveBoolean(context, R.attr.isLightTheme, true) ? new ColorRoles(getColorRole(i, 40), getColorRole(i, 100), getColorRole(i, 90), getColorRole(i, 10)) : new ColorRoles(getColorRole(i, 80), getColorRole(i, 20), getColorRole(i, 30), getColorRole(i, 90));
        }

        public static final ImageVector getSync() {
            ImageVector imageVector = _sync;
            if (imageVector != null) {
                return imageVector;
            }
            ImageVector.Builder builder = new ImageVector.Builder("Outlined.Sync", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
            int i = VectorKt.$r8$clinit;
            SolidColor solidColor = new SolidColor(Color.Black);
            Headers.Builder builder2 = new Headers.Builder(1);
            builder2.moveTo(12.0f, 4.0f);
            builder2.lineTo(12.0f, 1.0f);
            builder2.lineTo(8.0f, 5.0f);
            builder2.lineToRelative(4.0f, 4.0f);
            builder2.lineTo(12.0f, 6.0f);
            builder2.curveToRelative(3.31f, 0.0f, 6.0f, 2.69f, 6.0f, 6.0f);
            builder2.curveToRelative(0.0f, 1.01f, -0.25f, 1.97f, -0.7f, 2.8f);
            builder2.lineToRelative(1.46f, 1.46f);
            builder2.curveTo(19.54f, 15.03f, 20.0f, 13.57f, 20.0f, 12.0f);
            builder2.curveToRelative(0.0f, -4.42f, -3.58f, -8.0f, -8.0f, -8.0f);
            builder2.close();
            builder2.moveTo(12.0f, 18.0f);
            builder2.curveToRelative(-3.31f, 0.0f, -6.0f, -2.69f, -6.0f, -6.0f);
            builder2.curveToRelative(0.0f, -1.01f, 0.25f, -1.97f, 0.7f, -2.8f);
            builder2.lineTo(5.24f, 7.74f);
            builder2.curveTo(4.46f, 8.97f, 4.0f, 10.43f, 4.0f, 12.0f);
            builder2.curveToRelative(0.0f, 4.42f, 3.58f, 8.0f, 8.0f, 8.0f);
            builder2.verticalLineToRelative(3.0f);
            builder2.lineToRelative(4.0f, -4.0f);
            builder2.lineToRelative(-4.0f, -4.0f);
            builder2.verticalLineToRelative(3.0f);
            builder2.close();
            builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
            ImageVector build = builder.build();
            _sync = build;
            return build;
        }

        public static int harmonize(int i, int i2) {
            Hct hct = new Hct(i);
            Hct hct2 = new Hct(i2);
            double min = Math.min((180.0d - Math.abs(Math.abs(hct.hue - hct2.hue) - 180.0d)) * 0.5d, 15.0d);
            double d = hct.hue;
            double d2 = (hct2.hue - d) % 360.0d;
            if (d2 < 0.0d) {
                d2 += 360.0d;
            }
            double d3 = ((min * (d2 <= 180.0d ? 1.0d : -1.0d)) + d) % 360.0d;
            if (d3 < 0.0d) {
                d3 += 360.0d;
            }
            return new Hct(Cam16.solveToInt(d3, hct.chroma, hct.tone)).argb;
        }

        public static int indexOf(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            if (i == 512) {
                return 9;
            }
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("type needs to be >= FIRST and <= LAST, type=", i));
            return 0;
        }

        public static boolean isColorLight(int i) {
            if (i == 0) {
                return false;
            }
            ThreadLocal threadLocal = ColorUtils.TEMP_ARRAY;
            double[] dArr = (double[]) threadLocal.get();
            if (dArr == null) {
                dArr = new double[3];
                threadLocal.set(dArr);
            }
            int red = android.graphics.Color.red(i);
            int green = android.graphics.Color.green(i);
            int blue = android.graphics.Color.blue(i);
            if (dArr.length != 3) {
                UriKt$$ExternalSyntheticBUOutline0.m("outXyz must have a length of 3.");
                return false;
            }
            double d = red / 255.0d;
            double pow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
            double d2 = green / 255.0d;
            double pow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
            double d3 = blue / 255.0d;
            double pow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((0.1805d * pow3) + (0.3576d * pow2) + (0.4124d * pow)) * 100.0d;
            double d4 = ((0.0722d * pow3) + (0.7152d * pow2) + (0.2126d * pow)) * 100.0d;
            dArr[1] = d4;
            dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
            return d4 / 100.0d > 0.5d;
        }

        public static boolean isLightTheme(Context context) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.isLightTheme});
            boolean z = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
            return z;
        }

        public static final boolean isSelectionHandleInVisibleBound(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
            LayoutCoordinates layoutCoordinates;
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
            if (legacyTextFieldState == null || (layoutCoordinates = legacyTextFieldState.getLayoutCoordinates()) == null) {
                return false;
            }
            Rect visibleBounds = ActionBar.visibleBounds(layoutCoordinates);
            long m312getHandlePositiontuRUvjQ$foundation = textFieldSelectionManager.m312getHandlePositiontuRUvjQ$foundation(z);
            float f = visibleBounds.left;
            float f2 = visibleBounds.right;
            float intBitsToFloat = Float.intBitsToFloat((int) (m312getHandlePositiontuRUvjQ$foundation >> 32));
            if (f > intBitsToFloat || intBitsToFloat > f2) {
                return false;
            }
            float f3 = visibleBounds.top;
            float f4 = visibleBounds.bottom;
            float intBitsToFloat2 = Float.intBitsToFloat((int) (m312getHandlePositiontuRUvjQ$foundation & 4294967295L));
            return f3 <= intBitsToFloat2 && intBitsToFloat2 <= f4;
        }

        public static int layer(int i, float f, int i2) {
            return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, Math.round(android.graphics.Color.alpha(i2) * f)), i);
        }

        public static final ArrayList missingRequiredArguments(Map map, Function1 function1) {
            map.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                NavArgument navArgument = (NavArgument) entry.getValue();
                Boolean valueOf = navArgument != null ? Boolean.valueOf(navArgument.isNullable) : null;
                valueOf.getClass();
                if (!valueOf.booleanValue() && !navArgument.isDefaultValuePresent) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Set keySet = linkedHashMap.keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : keySet) {
                if (((Boolean) function1.invoke((String) obj)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }

        public static final void observe(Flow flow, LifecycleOwner lifecycleOwner, FlowCollector flowCollector) {
            flow.getClass();
            JobKt.launch$default(ViewModelKt.getLifecycleScope(lifecycleOwner), null, null, new Preferences$getAccountFlow$1(lifecycleOwner, flow, flowCollector, (Continuation) null, 22), 3);
        }

        public static MimeBodyPart parse(final NavContext navContext, InputStream inputStream) {
            final MimeBodyPart mimeBodyPart = new MimeBodyPart(0);
            final SoftPool softPool = new SoftPool(new MimeConfig(-1, -1, -1));
            softPool.threadLocalStack = new ContentHandler(softPool, navContext, mimeBodyPart) { // from class: com.fsck.k9.mailstore.MimePartStreamParser$PartBuilder
                public final MimeBodyPart decryptedRootPart;
                public final NavContext fileFactory;
                public boolean isContentDispositionAttachment;
                public boolean isMessagePart;
                public final SoftPool parser;
                public final Stack stack = new Stack();

                {
                    this.parser = softPool;
                    this.fileFactory = navContext;
                    this.decryptedRootPart = mimeBodyPart;
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void body(Uri.Builder builder, InputStream inputStream2) {
                    Part part = (Part) this.stack.peek();
                    String str = (String) builder.path;
                    NavContext navContext2 = this.fileFactory;
                    DeferredFileBody deferredFileBody = new DeferredFileBody(navContext2, str);
                    DeferredFileBody.AnonymousClass1 anonymousClass1 = deferredFileBody.new AnonymousClass1(navContext2);
                    try {
                        IOUtils.copy(inputStream2, anonymousClass1);
                        anonymousClass1.close();
                        part.setBody(deferredFileBody);
                    } catch (Throwable th) {
                        anonymousClass1.close();
                        throw th;
                    }
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void endBodyPart() {
                    this.stack.pop();
                    MimeTokenStream mimeTokenStream = (MimeTokenStream) this.parser.initializer;
                    mimeTokenStream.recursionMode = 1;
                    EntityStateMachine entityStateMachine = (EntityStateMachine) mimeTokenStream.currentStateMachine;
                    if (entityStateMachine != null) {
                        entityStateMachine.setRecursionMode(1);
                    }
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void endHeader() {
                    if (this.isMessagePart && this.isContentDispositionAttachment) {
                        MimeTokenStream mimeTokenStream = (MimeTokenStream) this.parser.initializer;
                        mimeTokenStream.recursionMode = 4;
                        EntityStateMachine entityStateMachine = (EntityStateMachine) mimeTokenStream.currentStateMachine;
                        if (entityStateMachine != null) {
                            entityStateMachine.setRecursionMode(4);
                        }
                    }
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void endMessage() {
                    this.stack.pop();
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void endMultipart() {
                    this.stack.pop();
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void epilogue(InputStream inputStream2) {
                    expect$1();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    IOUtils.copy(inputStream2, byteArrayOutputStream);
                    ((MimeMultipart) this.stack.peek()).epilogue = byteArrayOutputStream.toByteArray();
                }

                public final void expect$1() {
                    Stack stack = this.stack;
                    if (MimeMultipart.class.isInstance(stack.peek())) {
                        return;
                    }
                    UriKt$$ExternalSyntheticBUOutline0.m("Internal stack error: Expected '", MimeMultipart.class.getName(), "' found '", stack.peek().getClass().getName(), "'");
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void field(Field field) {
                    String name = field.getName();
                    ((Part) this.stack.peek()).addRawHeader(name, field.getRaw().toString());
                    String headerParameter = JisSupport.getHeaderParameter(field.getBody(), null);
                    if (UtilsKt.CONTENT_TYPE.equalsIgnoreCase(name) && JisSupport.isSameMimeType(headerParameter, "message/rfc822")) {
                        this.isMessagePart = true;
                    }
                    if ("Content-Disposition".equalsIgnoreCase(name) && "attachment".equalsIgnoreCase(headerParameter)) {
                        this.isContentDispositionAttachment = true;
                    }
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void preamble(InputStream inputStream2) {
                    expect$1();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    IOUtils.copy(inputStream2, byteArrayOutputStream);
                    ((MimeMultipart) this.stack.peek()).preamble = byteArrayOutputStream.toByteArray();
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void raw() {
                    throw new IllegalStateException("Not implemented");
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void startBodyPart() {
                    Stack stack = this.stack;
                    try {
                        Multipart multipart = (Multipart) stack.peek();
                        MimeBodyPart mimeBodyPart2 = new MimeBodyPart(0);
                        multipart.addBodyPart(mimeBodyPart2);
                        stack.push(mimeBodyPart2);
                    } catch (MessagingException e) {
                        throw new MimeException(e);
                    }
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void startHeader() {
                    this.isMessagePart = false;
                    this.isContentDispositionAttachment = false;
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void startMessage() {
                    Stack stack = this.stack;
                    if (stack.isEmpty()) {
                        stack.push(this.decryptedRootPart);
                        return;
                    }
                    Part part = (Part) stack.peek();
                    MimeMessage mimeMessage = new MimeMessage(false);
                    part.setBody(mimeMessage);
                    stack.push(mimeMessage);
                }

                @Override // org.apache.james.mime4j.parser.ContentHandler
                public final void startMultipart(Uri.Builder builder) {
                    Stack stack = this.stack;
                    Part part = (Part) stack.peek();
                    MimeMultipart mimeMultipart = new MimeMultipart((String) builder.scheme, (String) builder.query);
                    part.setBody(mimeMultipart);
                    stack.push(mimeMultipart);
                }
            };
            MimeTokenStream mimeTokenStream = (MimeTokenStream) softPool.initializer;
            mimeTokenStream.recursionMode = 1;
            EntityStateMachine entityStateMachine = (EntityStateMachine) mimeTokenStream.currentStateMachine;
            if (entityStateMachine != null) {
                entityStateMachine.setRecursionMode(1);
            }
            try {
                softPool.parse(new FixedLengthInputStream(inputStream));
                return mimeBodyPart;
            } catch (MimeException e) {
                throw new MessagingException("Failed to parse decrypted content", false, e);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x01d9, code lost:
        
            r0 = org.jsoup.helper.Validate.build(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x01dd, code lost:
        
            okhttp3.Cookie.Companion.closeFinally(r2, null);
            r10 = r0;
         */
        /* JADX WARN: Finally extract failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static androidx.room.util.TableInfo read(androidx.sqlite.SQLiteConnection r29, java.lang.String r30) {
            /*
                Method dump skipped, instructions count: 511
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.Data.Companion.read(androidx.sqlite.SQLiteConnection, java.lang.String):androidx.room.util.TableInfo");
        }

        public static void tintDrawable(Context context, Drawable drawable) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.colorControlNormal});
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(0);
            obtainStyledAttributes.recycle();
            if (colorStateList != null) {
                drawable.setTintList(colorStateList);
            }
        }

        public static byte[] toByteArrayInternalV1(Data data) {
            data.getClass();
            HashMap hashMap = data.values;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(-21521);
                    dataOutputStream.writeShort(1);
                    dataOutputStream.writeInt(hashMap.size());
                    for (Map.Entry entry : hashMap.entrySet()) {
                        toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() > 10240) {
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    dataOutputStream.close();
                    byteArray.getClass();
                    return byteArray;
                } finally {
                }
            } catch (IOException e) {
                Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        public static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) {
            int i;
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else {
                if (!(obj instanceof Object[])) {
                    DBUtil$$ExternalSyntheticBUOutline0.m$1(Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName(), "Unsupported value type ");
                    return;
                }
                Object[] objArr = (Object[]) obj;
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(objArr.getClass());
                if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Boolean[].class))) {
                    i = 8;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Byte[].class))) {
                    i = 9;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Integer[].class))) {
                    i = 10;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Long[].class))) {
                    i = 11;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Float[].class))) {
                    i = 12;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Double[].class))) {
                    i = 13;
                } else {
                    if (!orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(String[].class))) {
                        DBUtil$$ExternalSyntheticBUOutline0.m$1(Reflection.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName(), "Unsupported value type ");
                        return;
                    }
                    i = 14;
                }
                dataOutputStream.writeByte(i);
                dataOutputStream.writeInt(objArr.length);
                for (Object obj2 : objArr) {
                    if (i == 8) {
                        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                        dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                    } else if (i == 9) {
                        Byte b = obj2 instanceof Byte ? (Byte) obj2 : null;
                        dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                    } else if (i == 10) {
                        Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                        dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                    } else if (i == 11) {
                        Long l = obj2 instanceof Long ? (Long) obj2 : null;
                        dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                    } else if (i == 12) {
                        Float f = obj2 instanceof Float ? (Float) obj2 : null;
                        dataOutputStream.writeFloat(f != null ? f.floatValue() : 0.0f);
                    } else if (i == 13) {
                        Double d = obj2 instanceof Double ? (Double) obj2 : null;
                        dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                    } else if (i == 14) {
                        String str2 = obj2 instanceof String ? (String) obj2 : null;
                        if (str2 == null) {
                            str2 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                        }
                        dataOutputStream.writeUTF(str2);
                    }
                }
            }
            dataOutputStream.writeUTF(str);
        }

        public static final IncomingServerSettingsContract$State toIncomingServerSettingsState(AccountState accountState) {
            Object obj;
            accountState.getClass();
            String str = accountState.emailAddress;
            ServerSettings serverSettings = accountState.incomingServerSettings;
            int i = 6;
            if (serverSettings == null) {
                return new IncomingServerSettingsContract$State(new StringInputField(str != null ? ".".concat(StringsKt.substringAfter$default(str, "@")) : "", i), new StringInputField(str == null ? "" : str, i), 4061);
            }
            Option.AnonymousClass1 anonymousClass1 = IncomingProtocolType.Companion;
            String str2 = serverSettings.type;
            anonymousClass1.getClass();
            str2.getClass();
            Iterator it = IncomingProtocolType.$ENTRIES.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((IncomingProtocolType) obj).defaultName.equals(str2)) {
                    break;
                }
            }
            IncomingProtocolType incomingProtocolType = (IncomingProtocolType) obj;
            if (incomingProtocolType == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("Unknown protocol: ".concat(str2));
                return null;
            }
            StringInputField stringInputField = new StringInputField(serverSettings.host, i);
            ConnectionSecurity connectionSecurity = Validate.toConnectionSecurity(serverSettings.connectionSecurity);
            NumberInputField numberInputField = new NumberInputField(Long.valueOf(serverSettings.port));
            AuthenticationType authenticationType = IntRectKt.toAuthenticationType(serverSettings.authenticationType);
            StringInputField stringInputField2 = new StringInputField(serverSettings.username, i);
            String str3 = serverSettings.password;
            if (str3 == null) {
                str3 = "";
            }
            StringInputField stringInputField3 = new StringInputField(str3, i);
            String str4 = serverSettings.clientCertificateAlias;
            boolean autoDetectNamespace = DebugUtils.getAutoDetectNamespace(serverSettings);
            String pathPrefix = DebugUtils.getPathPrefix(serverSettings);
            return new IncomingServerSettingsContract$State(incomingProtocolType, stringInputField, connectionSecurity, numberInputField, authenticationType, stringInputField2, stringInputField3, str4, autoDetectNamespace, new StringInputField(pathPrefix != null ? pathPrefix : "", i), DebugUtils.isUseCompression(serverSettings), DebugUtils.isSendClientInfo(serverSettings));
        }

        public static ArrayList toMessageReferenceList(ArrayList arrayList) {
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                MessageReference parse = MathKt.parse(str);
                if (parse != null) {
                    arrayList2.add(parse);
                } else {
                    Log.w("Invalid message reference: %s", str);
                }
            }
            return arrayList2;
        }

        public static ArrayList toMessageReferenceStringList(List list) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((MessageReference) it.next()).toIdentityString());
            }
            return arrayList;
        }

        public static final LinkedHashMap toParameters(Config config) {
            Object retrieveOption;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (AutoValue_Config_Option autoValue_Config_Option : config.listOptions()) {
                Object obj = autoValue_Config_Option.token;
                CaptureRequest.Key key = obj instanceof CaptureRequest.Key ? (CaptureRequest.Key) obj : null;
                if (key != null && (retrieveOption = config.retrieveOption(autoValue_Config_Option)) != null) {
                    linkedHashMap.put(key, retrieveOption);
                }
            }
            return linkedHashMap;
        }

        public static final boolean tryAttachComposeStackTrace(Throwable th, Function0 function0) {
            List asList;
            Object invoke;
            th.getClass();
            Integer num = JDK7PlatformImplementations$ReflectSdkVersion.sdkVersion;
            DiagnosticComposeException diagnosticComposeException = null;
            if (num == null || num.intValue() >= 19) {
                Throwable[] suppressed = th.getSuppressed();
                suppressed.getClass();
                asList = Arrays.asList(suppressed);
                asList.getClass();
            } else {
                Method method = PlatformImplementations$ReflectThrowable.getSuppressed;
                if (method == null || (invoke = method.invoke(th, null)) == null) {
                    asList = EmptyList.INSTANCE;
                } else {
                    asList = Arrays.asList((Throwable[]) invoke);
                    asList.getClass();
                }
            }
            int size = asList.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                if (((Throwable) asList.get(i)) instanceof DiagnosticComposeException) {
                    return false;
                }
            }
            try {
                ComposeStackTrace composeStackTrace = (ComposeStackTrace) function0.invoke();
                if (composeStackTrace != null) {
                    boolean z2 = composeStackTrace.hasSourceInformation;
                    List list = composeStackTrace.frames;
                    if (z2) {
                        int size2 = list.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            ((ComposeStackTraceFrame) list.get(i2)).getClass();
                        }
                    } else if (!list.isEmpty()) {
                        z = true;
                    }
                }
                if (z) {
                    composeStackTrace.getClass();
                    diagnosticComposeException = new DiagnosticComposeException(composeStackTrace);
                }
            } catch (Throwable th2) {
                diagnosticComposeException = th2;
            }
            if (diagnosticComposeException != null) {
                ResultKt.addSuppressed(th, diagnosticComposeException);
            }
            return z;
        }

        public boolean canReverse() {
            return false;
        }

        public abstract int getSize(View view, ViewGroup.MarginLayoutParams marginLayoutParams);

        public abstract float getValue(MaterialShapeDrawable materialShapeDrawable);

        public abstract int getViewEdge();

        public abstract ViewPropertyAnimator getViewTranslationAnimator(View view, int i);

        public abstract void setValue(Object obj, float f);

        public abstract void start();

        public abstract void stop();

        public void reverse() {
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0044  */
        /* renamed from: TextBodyMedium-ZHfKjFs, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void m824TextBodyMediumZHfKjFs(androidx.compose.ui.text.AnnotatedString r32, androidx.compose.ui.Modifier r33, long r34, int r36, int r37, kotlin.jvm.functions.Function1 r38, androidx.compose.runtime.Composer r39, int r40, int r41) {
            /*
                Method dump skipped, instructions count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.Data.Companion.m824TextBodyMediumZHfKjFs(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, int, int, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements ImapResponseCallback {
        public final LinkedHashMap values;

        public Builder(int i) {
            switch (i) {
                case 1:
                    this.values = new LinkedHashMap(0, 0.75f, true);
                    break;
                case 2:
                    this.values = new LinkedHashMap();
                    break;
                case 3:
                    this.values = new LinkedHashMap();
                    break;
                case 4:
                    this.values = new LinkedHashMap();
                    break;
                case 5:
                    this.values = new LinkedHashMap();
                    break;
                case 6:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                default:
                    this.values = new LinkedHashMap();
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    this.values = new LinkedHashMap();
                    break;
            }
        }

        public static int getNewNotificationId(NotificationData notificationData) {
            List list = notificationData.activeNotifications;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((NotificationHolder) it.next()).notificationId));
            }
            Set set = CollectionsKt.toSet(arrayList);
            for (int i = 0; i < 9; i++) {
                LegacyAccountDto legacyAccountDto = notificationData.account;
                legacyAccountDto.getClass();
                if (i < 0 || i >= 9) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Invalid index: ", i));
                    return 0;
                }
                int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 10 + i;
                if (!set.contains(Integer.valueOf(accountNumber))) {
                    return accountNumber;
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "getNewNotificationId() called with no free notification ID");
            return 0;
        }

        public static String key(int i, String str, int i2) {
            return i + '-' + i2 + '-' + str;
        }

        public static ArrayList replace(List list, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (Object obj3 : list) {
                if (obj3 == obj) {
                    obj3 = obj2;
                }
                arrayList.add(obj3);
            }
            return arrayList;
        }

        public void addInitializer(ClassReference classReference, Function1 function1) {
            function1.getClass();
            LinkedHashMap linkedHashMap = this.values;
            if (linkedHashMap.containsKey(classReference)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(46, classReference.getQualifiedName(), "A `initializer` with the same `clazz` has already been added: ");
            } else {
                linkedHashMap.put(classReference, new ViewModelInitializer(classReference, function1));
            }
        }

        public void addMigration(Migration migration) {
            migration.getClass();
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Integer valueOf = Integer.valueOf(i);
            LinkedHashMap linkedHashMap = this.values;
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new TreeMap();
                linkedHashMap.put(valueOf, obj);
            }
            TreeMap treeMap = (TreeMap) obj;
            if (treeMap.containsKey(Integer.valueOf(i2))) {
                android.util.Log.w("ROOM", "Overriding migration " + treeMap.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap.put(Integer.valueOf(i2), migration);
        }

        public synchronized Latch addNotification(LegacyAccountDto legacyAccountDto, NotificationContent notificationContent, long j) {
            Latch latch;
            Object obj;
            Object obj2;
            try {
                legacyAccountDto.getClass();
                LinkedHashMap linkedHashMap = this.values;
                NotificationData notificationData = (NotificationData) linkedHashMap.get(legacyAccountDto.uuid);
                if (notificationData == null) {
                    EmptyList emptyList = EmptyList.INSTANCE;
                    notificationData = new NotificationData(legacyAccountDto, emptyList, emptyList, LockScreenNotificationVisibility.MESSAGE_COUNT);
                    linkedHashMap.put(legacyAccountDto.uuid, notificationData);
                }
                MessageReference messageReference = notificationContent.messageReference;
                Iterator it = notificationData.activeNotifications.iterator();
                while (true) {
                    latch = null;
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (((NotificationHolder) obj).content.messageReference.equals(messageReference)) {
                        break;
                    }
                }
                NotificationHolder notificationHolder = (NotificationHolder) obj;
                Iterator it2 = notificationData.inactiveNotifications.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it2.next();
                    if (((InactiveNotificationHolder) obj2).content.messageReference.equals(messageReference)) {
                        break;
                    }
                }
                InactiveNotificationHolder inactiveNotificationHolder = (InactiveNotificationHolder) obj2;
                if (notificationHolder != null) {
                    int i = notificationHolder.notificationId;
                    long j2 = notificationHolder.timestamp;
                    NotificationHolder notificationHolder2 = new NotificationHolder(i, j2, notificationContent);
                    NotificationHolder notificationHolder3 = new NotificationHolder(i, j2, notificationContent);
                    EmptyList emptyList2 = EmptyList.INSTANCE;
                    NotificationData copy$default = NotificationData.copy$default(notificationData, replace(notificationData.activeNotifications, notificationHolder, notificationHolder2), null, 13);
                    this.values.put(legacyAccountDto.uuid, copy$default);
                    latch = new Latch(copy$default, (List) emptyList2, notificationHolder3, false);
                } else if (inactiveNotificationHolder != null) {
                    this.values.put(legacyAccountDto.uuid, NotificationData.copy$default(notificationData, null, replace(notificationData.inactiveNotifications, inactiveNotificationHolder, new InactiveNotificationHolder(inactiveNotificationHolder.timestamp, notificationContent)), 11));
                } else if (notificationData.activeNotifications.size() == 9) {
                    NotificationHolder notificationHolder4 = (NotificationHolder) CollectionsKt.last(notificationData.activeNotifications);
                    long j3 = notificationHolder4.timestamp;
                    NotificationContent notificationContent2 = notificationHolder4.content;
                    InactiveNotificationHolder inactiveNotificationHolder2 = new InactiveNotificationHolder(j3, notificationContent2);
                    int i2 = notificationHolder4.notificationId;
                    NotificationHolder notificationHolder5 = new NotificationHolder(i2, j, notificationContent);
                    List listOf = IntOffsetKt.listOf((Object[]) new NotificationStoreOperation[]{new NotificationStoreOperation.ChangeToInactive(notificationContent2.messageReference), new NotificationStoreOperation.Add(messageReference, i2, j)});
                    NotificationData copy$default2 = NotificationData.copy$default(notificationData, CollectionsKt.plus((Collection) IntOffsetKt.listOf(notificationHolder5), (Iterable) CollectionsKt.dropLast(notificationData.activeNotifications)), CollectionsKt.plus((Collection) IntOffsetKt.listOf(inactiveNotificationHolder2), (Iterable) notificationData.inactiveNotifications), 9);
                    this.values.put(legacyAccountDto.uuid, copy$default2);
                    latch = new Latch(copy$default2, listOf, notificationHolder5, true);
                } else {
                    int newNotificationId = getNewNotificationId(notificationData);
                    NotificationHolder notificationHolder6 = new NotificationHolder(newNotificationId, j, notificationContent);
                    List listOf2 = IntOffsetKt.listOf(new NotificationStoreOperation.Add(messageReference, newNotificationId, j));
                    NotificationData copy$default3 = NotificationData.copy$default(notificationData, CollectionsKt.plus((Collection) IntOffsetKt.listOf(notificationHolder6), (Iterable) notificationData.activeNotifications), null, 13);
                    this.values.put(legacyAccountDto.uuid, copy$default3);
                    latch = new Latch(copy$default3, listOf2, notificationHolder6, false);
                }
            } catch (Throwable th) {
                throw th;
            }
            return latch;
        }

        public InitializerViewModelFactory build() {
            Collection values = this.values.values();
            values.getClass();
            ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) values.toArray(new ViewModelInitializer[0]);
            return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
        }

        public synchronized void clearNotifications(LegacyAccountDto legacyAccountDto) {
            legacyAccountDto.getClass();
            this.values.remove(legacyAccountDto.uuid);
        }

        @Override // com.fsck.k9.mail.store.imap.ImapResponseCallback
        public Object foundLiteral(ImapResponse imapResponse, FixedLengthInputStream fixedLengthInputStream) {
            imapResponse.getClass();
            if (imapResponse.tag != null || !StateLayer.equalsIgnoreCase(imapResponse.get(1), "FETCH")) {
                return null;
            }
            Object keyedValue = imapResponse.getKeyedValue("FETCH");
            keyedValue.getClass();
            ImapMessage imapMessage = (ImapMessage) this.values.get((String) ((ImapList) keyedValue).getKeyedValue("UID"));
            if (imapMessage != null) {
                imapMessage.parse(fixedLengthInputStream);
            }
            return 1;
        }

        public synchronized NotificationData initializeAccount(LegacyAccountDto legacyAccountDto, ArrayList arrayList, ArrayList arrayList2, LockScreenNotificationVisibility lockScreenNotificationVisibility) {
            NotificationData notificationData;
            legacyAccountDto.getClass();
            lockScreenNotificationVisibility.getClass();
            if (arrayList.size() > 9) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            notificationData = new NotificationData(legacyAccountDto, arrayList, arrayList2, lockScreenNotificationVisibility);
            this.values.put(legacyAccountDto.uuid, notificationData);
            return notificationData;
        }

        public synchronized boolean isAccountInitialized(LegacyAccountDto legacyAccountDto) {
            legacyAccountDto.getClass();
            return this.values.get(legacyAccountDto.uuid) != null;
        }

        public void put(Object obj, String str) {
            Object[] objArr;
            str.getClass();
            if (obj == null) {
                obj = null;
            } else {
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
                if (!orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Boolean.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Byte.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Integer.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Long.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Float.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Double.TYPE)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(String.class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Boolean[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Byte[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Integer[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Long[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Float[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Double[].class)) && !orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(String[].class))) {
                    int i = 0;
                    if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(boolean[].class))) {
                        boolean[] zArr = (boolean[]) obj;
                        String str2 = Data_Kt.TAG;
                        int length = zArr.length;
                        objArr = new Boolean[length];
                        while (i < length) {
                            objArr[i] = Boolean.valueOf(zArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(byte[].class))) {
                        byte[] bArr = (byte[]) obj;
                        String str3 = Data_Kt.TAG;
                        int length2 = bArr.length;
                        objArr = new Byte[length2];
                        while (i < length2) {
                            objArr[i] = Byte.valueOf(bArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(int[].class))) {
                        int[] iArr = (int[]) obj;
                        String str4 = Data_Kt.TAG;
                        int length3 = iArr.length;
                        objArr = new Integer[length3];
                        while (i < length3) {
                            objArr[i] = Integer.valueOf(iArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(long[].class))) {
                        long[] jArr = (long[]) obj;
                        String str5 = Data_Kt.TAG;
                        int length4 = jArr.length;
                        objArr = new Long[length4];
                        while (i < length4) {
                            objArr[i] = Long.valueOf(jArr[i]);
                            i++;
                        }
                    } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(float[].class))) {
                        float[] fArr = (float[]) obj;
                        String str6 = Data_Kt.TAG;
                        int length5 = fArr.length;
                        objArr = new Float[length5];
                        while (i < length5) {
                            objArr[i] = Float.valueOf(fArr[i]);
                            i++;
                        }
                    } else {
                        if (!orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(double[].class))) {
                            Regex$$ExternalSyntheticBUOutline0.m$1("Key ", str, " has invalid type ", orCreateKotlinClass);
                            return;
                        }
                        double[] dArr = (double[]) obj;
                        String str7 = Data_Kt.TAG;
                        int length6 = dArr.length;
                        objArr = new Double[length6];
                        while (i < length6) {
                            objArr[i] = Double.valueOf(dArr[i]);
                            i++;
                        }
                    }
                    obj = objArr;
                }
            }
            this.values.put(str, obj);
        }

        public void putAll(HashMap hashMap) {
            hashMap.getClass();
            for (Map.Entry entry : hashMap.entrySet()) {
                put(entry.getValue(), (String) entry.getKey());
            }
        }

        public List remove(String str) {
            str.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = this.values;
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                if (Intrinsics.areEqual(((WorkGenerationalId) entry.getKey()).workSpecId, str)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                linkedHashMap2.remove((WorkGenerationalId) it.next());
            }
            return CollectionsKt.toList(linkedHashMap.values());
        }

        public synchronized RemoveNotificationsResult removeNotifications(LegacyAccountDto legacyAccountDto, Function1 function1) {
            try {
                legacyAccountDto.getClass();
                LinkedHashMap linkedHashMap = this.values;
                NotificationData notificationData = (NotificationData) linkedHashMap.get(legacyAccountDto.uuid);
                if (notificationData == null) {
                    EmptyList emptyList = EmptyList.INSTANCE;
                    notificationData = new NotificationData(legacyAccountDto, emptyList, emptyList, LockScreenNotificationVisibility.MESSAGE_COUNT);
                    linkedHashMap.put(legacyAccountDto.uuid, notificationData);
                }
                RemoveNotificationsResult removeNotificationsResult = null;
                if (notificationData.activeNotifications.isEmpty()) {
                    return null;
                }
                List list = (List) function1.invoke(notificationData.getMessageReferences());
                if (list.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                List list2 = notificationData.activeNotifications;
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList4.add(((NotificationHolder) it.next()).content.messageReference);
                }
                Set set = CollectionsKt.toSet(arrayList4);
                ArrayList<MessageReference> arrayList5 = new ArrayList();
                ArrayList<MessageReference> arrayList6 = new ArrayList();
                for (Object obj : list) {
                    if (set.contains((MessageReference) obj)) {
                        arrayList5.add(obj);
                    } else {
                        arrayList6.add(obj);
                    }
                }
                if (!arrayList6.isEmpty()) {
                    List list3 = notificationData.inactiveNotifications;
                    ArrayList arrayList7 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                    Iterator it2 = list3.iterator();
                    while (it2.hasNext()) {
                        arrayList7.add(((InactiveNotificationHolder) it2.next()).content.messageReference);
                    }
                    Set set2 = CollectionsKt.toSet(arrayList7);
                    for (MessageReference messageReference : arrayList6) {
                        if (set2.contains(messageReference)) {
                            arrayList.add(new NotificationStoreOperation.Remove(messageReference));
                        }
                    }
                    Set set3 = CollectionsKt.toSet(arrayList6);
                    List list4 = notificationData.inactiveNotifications;
                    ArrayList arrayList8 = new ArrayList();
                    for (Object obj2 : list4) {
                        if (!set3.contains(((InactiveNotificationHolder) obj2).content.messageReference)) {
                            arrayList8.add(obj2);
                        }
                    }
                    notificationData = NotificationData.copy$default(notificationData, null, arrayList8, 11);
                }
                for (MessageReference messageReference2 : arrayList5) {
                    for (Object obj3 : notificationData.activeNotifications) {
                        if (((NotificationHolder) obj3).content.messageReference.equals(messageReference2)) {
                            NotificationHolder notificationHolder = (NotificationHolder) obj3;
                            if (notificationData.inactiveNotifications.isEmpty()) {
                                arrayList3.add(Integer.valueOf(notificationHolder.notificationId));
                                arrayList.add(new NotificationStoreOperation.Remove(messageReference2));
                                notificationData = NotificationData.copy$default(notificationData, CollectionsKt.minus(notificationData.activeNotifications, notificationHolder), null, 13);
                            } else {
                                InactiveNotificationHolder inactiveNotificationHolder = (InactiveNotificationHolder) CollectionsKt.first(notificationData.inactiveNotifications);
                                int i = notificationHolder.notificationId;
                                long j = inactiveNotificationHolder.timestamp;
                                NotificationContent notificationContent = inactiveNotificationHolder.content;
                                NotificationHolder notificationHolder2 = new NotificationHolder(i, j, notificationContent);
                                arrayList2.add(notificationHolder2);
                                arrayList3.add(Integer.valueOf(notificationHolder.notificationId));
                                arrayList.add(new NotificationStoreOperation.Remove(messageReference2));
                                arrayList.add(new NotificationStoreOperation.ChangeToActive(notificationContent.messageReference, i));
                                notificationData = NotificationData.copy$default(notificationData, CollectionsKt.plus(CollectionsKt.minus(notificationData.activeNotifications, notificationHolder), notificationHolder2), CollectionsKt.drop(1, notificationData.inactiveNotifications), 9);
                            }
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                this.values.put(legacyAccountDto.uuid, notificationData);
                if (!arrayList.isEmpty()) {
                    removeNotificationsResult = new RemoveNotificationsResult(notificationData, arrayList, arrayList2, arrayList3);
                }
                return removeNotificationsResult;
            } finally {
            }
        }

        public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
            LinkedHashMap linkedHashMap = this.values;
            Object obj = linkedHashMap.get(workGenerationalId);
            if (obj == null) {
                obj = new StartStopToken(workGenerationalId);
                linkedHashMap.put(workGenerationalId, obj);
            }
            return (StartStopToken) obj;
        }

        /* renamed from: build, reason: collision with other method in class */
        public Data m823build() {
            Data data = new Data(this.values);
            Companion.toByteArrayInternalV1(data);
            return data;
        }

        public /* synthetic */ Builder(LinkedHashMap linkedHashMap) {
            this.values = linkedHashMap;
        }

        public StartStopToken remove(WorkGenerationalId workGenerationalId) {
            workGenerationalId.getClass();
            return (StartStopToken) this.values.remove(workGenerationalId);
        }
    }
}
