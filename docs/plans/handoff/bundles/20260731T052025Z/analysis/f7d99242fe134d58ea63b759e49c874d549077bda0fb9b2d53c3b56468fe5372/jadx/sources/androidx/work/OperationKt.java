package androidx.work;

import android.content.Context;
import android.content.res.Resources;
import android.hardware.camera2.CameraCharacteristics;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import android.util.Range;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.AdapterCameraInternal;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.CalculatedUseCaseInfo;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WithAlignmentLineElement;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.scrollcapture.ScrollCapture$onScrollCaptureSearch$1;
import androidx.compose.ui.scrollcapture.ScrollCaptureCandidate;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavContext;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.atom.text.TextBodySmallKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.organism.snackbar.Material3BackedSnackbarHostState;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.oauth.AccountOAuthModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.account.server.certificate.domain.entity.FormattedServerCertificateError;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.provider.K9FeatureThemeProvider;
import coil3.disk.DiskLruCache;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.ByteBufferUtil;
import com.fsck.k9.R;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.message.html.EmailSection;
import com.fsck.k9.message.html.HTMLTag;
import com.fsck.k9.message.html.TextToHtml;
import de.cketti.changelog.XmlParser;
import j$.nio.channels.DesugarChannels;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultCssVariableNameProvider;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OperationKt {
    public static ImageVector _cancel;
    public static ImageVector _drafts;
    public static Dispatcher cameraUseCaseAdapterProvider;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004e, code lost:
    
        if (r1 == androidx.compose.runtime.Composer.Companion.Empty) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CertificateErrorDescription(app.k9mail.feature.account.server.certificate.domain.entity.FormattedServerCertificateError r9, app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter r10, androidx.compose.runtime.Composer r11, int r12) {
        /*
            r6 = r11
            androidx.compose.runtime.GapComposer r6 = (androidx.compose.runtime.GapComposer) r6
            r11 = 295094605(0x1196c94d, float:2.3789888E-28)
            r6.startRestartGroup(r11)
            boolean r11 = r6.changedInstance(r9)
            if (r11 == 0) goto L11
            r11 = 4
            goto L12
        L11:
            r11 = 2
        L12:
            r11 = r11 | r12
            r11 = r11 | 16
            r0 = r11 & 19
            r1 = 18
            r2 = 1
            if (r0 == r1) goto L1e
            r0 = r2
            goto L1f
        L1e:
            r0 = 0
        L1f:
            r11 = r11 & r2
            boolean r11 = r6.shouldExecute(r11, r0)
            if (r11 == 0) goto L7c
            r6.startDefaults()
            r11 = r12 & 1
            if (r11 == 0) goto L38
            boolean r11 = r6.getDefaultsInvalid()
            if (r11 == 0) goto L34
            goto L38
        L34:
            r6.skipToGroupEnd()
            goto L59
        L38:
            org.koin.core.scope.Scope r10 = org.koin.compose.KoinApplicationKt.currentKoinScope(r6)
            r11 = 0
            boolean r0 = r6.changed(r11)
            boolean r1 = r6.changed(r10)
            r0 = r0 | r1
            java.lang.Object r1 = r6.rememberedValue()
            if (r0 != 0) goto L50
            androidx.compose.runtime.NeverEqualPolicy r0 = androidx.compose.runtime.Composer.Companion.Empty
            if (r1 != r0) goto L56
        L50:
            java.lang.Class<app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter> r0 = app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter.class
            java.lang.Object r1 = coil3.size.ViewSizeResolver.CC.m(r0, r10, r11, r11, r6)
        L56:
            r10 = r1
            app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter r10 = (app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter) r10
        L59:
            r6.endDefaults()
            java.lang.String r11 = r9.hostname
            r10.getClass()
            java.lang.String r11 = app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter.format(r11)
            androidx.compose.ui.text.AnnotatedString r11 = androidx.core.util.DebugUtils.bold(r11)
            r0 = 2131886164(0x7f120054, float:1.94069E38)
            androidx.compose.ui.text.AnnotatedString r0 = androidx.room.util.DBUtil.annotatedStringResource(r0, r11, r6)
            r7 = 0
            r8 = 62
            r1 = 0
            r2 = 0
            r4 = 0
            r5 = 0
            androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(r0, r1, r2, r4, r5, r6, r7, r8)
            goto L7f
        L7c:
            r6.skipToGroupEnd()
        L7f:
            androidx.compose.runtime.RecomposeScopeImpl r11 = r6.endRestartGroup()
            if (r11 == 0) goto L8e
            androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3 r0 = new androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3
            r1 = 22
            r0.<init>(r12, r1, r9, r10)
            r11.block = r0
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.CertificateErrorDescription(app.k9mail.feature.account.server.certificate.domain.entity.FormattedServerCertificateError, app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter, androidx.compose.runtime.Composer, int):void");
    }

    public static final void CertificateErrorOverview(ServerCertificateErrorContract$State serverCertificateErrorContract$State, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(374528281);
        int i2 = (gapComposer.changedInstance(serverCertificateErrorContract$State) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(companion, 16.0f);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs);
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
            WarningTitle(gapComposer, 0);
            DebugUtils.m787TextTitleMediumXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_unknown_error_subtitle), null, 0L, null, 0, 0, gapComposer, 0, 62);
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal), companion, 32.0f, gapComposer);
            FormattedServerCertificateError formattedServerCertificateError = serverCertificateErrorContract$State.certificateError;
            if (formattedServerCertificateError == null) {
                gapComposer.startReplaceGroup(2025792257);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(2025792258);
                CertificateErrorDescription(formattedServerCertificateError, null, gapComposer, 8);
                gapComposer.end(false);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 22, serverCertificateErrorContract$State);
        }
    }

    /* renamed from: DpSize-YgX7TsA, reason: not valid java name */
    public static final long m835DpSizeYgX7TsA(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static final void FeatureLauncherApp(Modifier modifier, FeatureThemeProvider featureThemeProvider, Composer composer, int i) {
        FeatureThemeProvider featureThemeProvider2;
        FeatureThemeProvider featureThemeProvider3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1315972273);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | 16;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                FeatureThemeProvider rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = ViewSizeResolver.CC.m(FeatureThemeProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                featureThemeProvider3 = rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
                featureThemeProvider3 = featureThemeProvider;
            }
            gapComposer.endDefaults();
            K9FeatureThemeProvider k9FeatureThemeProvider = (K9FeatureThemeProvider) featureThemeProvider3;
            k9FeatureThemeProvider.WithTheme(Expect_jvmKt.rememberComposableLambda(1665394631, new GapComposer$$ExternalSyntheticLambda3(28, modifier, ActionBar.rememberNavController(new Navigator[0], gapComposer)), gapComposer), gapComposer, 6);
            featureThemeProvider2 = k9FeatureThemeProvider;
        } else {
            gapComposer.skipToGroupEnd();
            featureThemeProvider2 = featureThemeProvider;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 29, modifier, featureThemeProvider2);
        }
    }

    public static final void ServerCertificateErrorContent(PaddingValues paddingValues, ServerCertificateErrorContract$State serverCertificateErrorContract$State, ScrollState scrollState, Composer composer, int i) {
        int i2;
        paddingValues.getClass();
        serverCertificateErrorContract$State.getClass();
        scrollState.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1380022903);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(paddingValues) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(serverCertificateErrorContract$State) : gapComposer.changedInstance(serverCertificateErrorContract$State) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(scrollState) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.padding(Modifier.Companion.$$INSTANCE, paddingValues), Expect_jvmKt.rememberComposableLambda(465598455, new BufferedChannel$$ExternalSyntheticLambda1(9, scrollState, serverCertificateErrorContract$State), gapComposer), gapComposer, 48, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(paddingValues, serverCertificateErrorContract$State, scrollState, i, 20);
        }
    }

    public static final void SnackbarHost(Material3BackedSnackbarHostState material3BackedSnackbarHostState, Modifier modifier, Composer composer, int i) {
        material3BackedSnackbarHostState.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(790820180);
        int i2 = (gapComposer.changed(material3BackedSnackbarHostState) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            CardKt.SnackbarHost(material3BackedSnackbarHostState.m3State, modifier, null, gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 21, material3BackedSnackbarHostState, modifier);
        }
    }

    /* renamed from: TextDisplayMedium-Xl4FiYE, reason: not valid java name */
    public static final void m836TextDisplayMediumXl4FiYE(String str, Modifier modifier, long j, TextAlign textAlign, int i, int i2, Composer composer, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier modifier2;
        long j2;
        int i5;
        int i6;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(2116053795);
        if ((i3 & 6) == 0) {
            i4 = (gapComposer2.changed(str) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        int i7 = i4 | 432;
        if ((i3 & 3072) == 0) {
            i7 |= gapComposer2.changed(textAlign) ? 2048 : 1024;
        }
        int i8 = i7 | 221184;
        if (gapComposer2.shouldExecute(i8 & 1, (74899 & i8) != 74898)) {
            long j3 = Color.Unspecified;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            gapComposer = gapComposer2;
            TextKt.m362TextNvy7gAk(str, companion, j3, 0L, 0L, textAlign, 0L, 1, false, Integer.MAX_VALUE, 0, null, ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).displayMedium, gapComposer, i8 & 1022, ((i8 >> 9) & 14) | ((i8 >> 6) & 896) | ((i8 >> 3) & 57344), 109560);
            modifier2 = companion;
            j2 = j3;
            i5 = 1;
            i6 = Integer.MAX_VALUE;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            j2 = j;
            i5 = i;
            i6 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextBodySmallKt$$ExternalSyntheticLambda1(str, modifier2, j2, textAlign, i5, i6, i3);
        }
    }

    public static final void WarningTitle(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-39085706);
        if (gapComposer.shouldExecute(i & 1, i != 0)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i2 = (int) (j ^ (j >>> 32));
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ImageVector imageVector = Icons$Filled.Warning;
            long j2 = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).warning;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion, 0.0f, 0.0f, 8.0f, 0.0f, 11);
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            AtomicFU.m1009IconxqIIw2o(imageVector, SizeKt.m230requiredSize3ABfNKs(m222paddingqDBjuR0$default, 24.0f), new Color(j2), gapComposer, 0, 4);
            IntOffsetKt.m756TextHeadlineMediumXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_warning_title), new WithAlignmentLineElement(AlignmentLineKt.FirstBaseline), 0L, 0, 0, gapComposer, 0);
            gapComposer = gapComposer;
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AccountOAuthModuleKt$$ExternalSyntheticLambda1(i, 16);
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003b -> B:10:0x003e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$awaitFirstRightClickDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r6, kotlin.coroutines.jvm.internal.BaseContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1 r0 = (androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1 r0 = new androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3e
        L27:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            r6 = 0
            return r6
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
        L31:
            r0.L$0 = r6
            r0.label = r2
            java.lang.Object r7 = androidx.compose.ui.Modifier.CC.awaitPointerEvent$default(r6, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r1) goto L3e
            return r1
        L3e:
            androidx.compose.ui.input.pointer.PointerEvent r7 = (androidx.compose.ui.input.pointer.PointerEvent) r7
            int r1 = r7.buttons
            java.util.List r7 = r7.changes
            r1 = r1 & 66
            if (r1 == 0) goto L31
            int r1 = r7.size()
            r3 = 0
            r4 = r3
        L4e:
            if (r4 >= r1) goto L60
            java.lang.Object r5 = r7.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = androidx.compose.ui.input.pointer.PointerId.changedToDown(r5)
            if (r5 != 0) goto L5d
            goto L31
        L5d:
            int r4 = r4 + 1
            goto L4e
        L60:
            java.lang.Object r6 = r7.get(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.access$awaitFirstRightClickDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m837addimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        int findInsertIndex = mutableScatterMap.findInsertIndex(obj);
        boolean z = findInsertIndex < 0;
        Object obj3 = z ? null : mutableScatterMap.values[findInsertIndex];
        if (obj3 != null) {
            if (obj3 instanceof MutableScatterSet) {
                ((MutableScatterSet) obj3).add(obj2);
            } else if (obj3 != obj2) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet();
                mutableScatterSet.add(obj3);
                mutableScatterSet.add(obj2);
                obj2 = mutableScatterSet;
            }
            obj2 = obj3;
        }
        if (!z) {
            mutableScatterMap.values[findInsertIndex] = obj2;
            return;
        }
        int i = ~findInsertIndex;
        mutableScatterMap.keys[i] = obj;
        mutableScatterMap.values[i] = obj2;
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static MutableScatterMap m838constructorimpl$default() {
        long[] jArr = ScatterMapKt.EmptyGroup;
        return new MutableScatterMap();
    }

    public static final void copyOfRangeToIndexCheck(int i, int i2) {
        if (i <= i2) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Config.CC.m("toIndex (", i, ") is greater than size (", i2, ")."));
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                }
            }
            fileOutputStream.close();
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return true;
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static String decideSkippedCameraIdByHeuristic(CameraDevicesImpl cameraDevicesImpl, Integer num) {
        if (num == null) {
            return null;
        }
        try {
            if (num.intValue() == 1) {
                CameraId.m34constructorimpl("0");
                CameraMetadata m27awaitCameraMetadataFpsL5FU$default = CameraDevices$CC.m27awaitCameraMetadataFpsL5FU$default(cameraDevicesImpl, "0");
                CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
                key.getClass();
                Integer num2 = (Integer) ((Camera2CameraMetadata) m27awaitCameraMetadataFpsL5FU$default).get(key);
                if (num2 != null && num2.intValue() == 1) {
                    return DiskLruCache.VERSION;
                }
            } else if (num.intValue() == 0) {
                CameraId.m34constructorimpl(DiskLruCache.VERSION);
                CameraMetadata m27awaitCameraMetadataFpsL5FU$default2 = CameraDevices$CC.m27awaitCameraMetadataFpsL5FU$default(cameraDevicesImpl, DiskLruCache.VERSION);
                CameraCharacteristics.Key key2 = CameraCharacteristics.LENS_FACING;
                key2.getClass();
                Integer num3 = (Integer) ((Camera2CameraMetadata) m27awaitCameraMetadataFpsL5FU$default2).get(key2);
                if (num3 != null && num3.intValue() == 0) {
                    return "0";
                }
            }
            return null;
        } catch (DoNotDisturbException unused) {
            if (!Utf8.SafeProcessor.isErrorEnabled()) {
                return null;
            }
            Log.e("CXCP", "Received Do Not Disturb exception while deciding camera id to skip. Please turn off Do Not Disturb mode");
            return null;
        }
    }

    public static final FetchProfile fetchProfileOf(FetchProfile.Item... itemArr) {
        FetchProfile fetchProfile = new FetchProfile();
        for (FetchProfile.Item item : itemArr) {
            fetchProfile.add(item);
        }
        return fetchProfile;
    }

    public static String getDisplayName(NavContext navContext, int i) {
        navContext.getClass();
        if (i <= 16777215) {
            return String.valueOf(i);
        }
        try {
            Context context = navContext.context;
            context.getClass();
            String resourceName = context.getResources().getResourceName(i);
            resourceName.getClass();
            return resourceName;
        } catch (Resources.NotFoundException unused) {
            return String.valueOf(i);
        }
    }

    public static Set getExclusions() {
        try {
            Object invoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", null).invoke(null, null);
            if (invoke == null) {
                return Collections.EMPTY_SET;
            }
            Set set = (Set) invoke;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (!(it.next() instanceof int[])) {
                    return Collections.EMPTY_SET;
                }
            }
            return set;
        } catch (Throwable unused) {
            return Collections.EMPTY_SET;
        }
    }

    public static Sequence getHierarchy(NavDestination navDestination) {
        navDestination.getClass();
        return SequencesKt.generateSequence(navDestination, new RoomDatabase$$ExternalSyntheticLambda0(14));
    }

    public static int getOrientation(List list, InputStream inputStream, LruArrayPool lruArrayPool) {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, lruArrayPool);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                int orientation = ((ImageHeaderParser) list.get(i)).getOrientation(inputStream, lruArrayPool);
                if (orientation != -1) {
                    return orientation;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }

    public static final ViewParent getParentOrViewTreeDisjointParent(View view) {
        view.getClass();
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }

    public static File getTempFile(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static ImageHeaderParser.ImageType getType(List list, InputStream inputStream, LruArrayPool lruArrayPool) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, lruArrayPool);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType type = ((ImageHeaderParser) list.get(i)).getType(inputStream);
                inputStream.reset();
                if (type != ImageHeaderParser.ImageType.UNKNOWN) {
                    return type;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static final String htmlToText(String str) {
        Document parse = Jsoup.parse(str);
        parse.getClass();
        Element body = parse.body();
        LocalFolder.AnonymousClass12 anonymousClass12 = new LocalFolder.AnonymousClass12(11);
        UuidKt.traverse(anonymousClass12, body);
        String replace = anonymousClass12.toString().replace((char) 65532, ' ');
        replace.getClass();
        String replace2 = replace.replace((char) 160, ' ');
        replace2.getClass();
        return replace2;
    }

    public static final void keyOrValueNotFoundError(String str) {
        str.getClass();
        throw new IllegalArgumentException(CameraDevices$CC.m("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }

    public static final SystemClock launchOperation(SystemClock systemClock, String str, Executor executor, Function0 function0) {
        Unit unit = Unit.INSTANCE;
        systemClock.getClass();
        executor.getClass();
        MutableLiveData mutableLiveData = new MutableLiveData(SystemClock.IN_PROGRESS);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            executor.execute(new OperationKt$$ExternalSyntheticLambda0(systemClock, str, function0, mutableLiveData, callbackToFutureAdapter$Completer, 0));
            callbackToFutureAdapter$Completer.tag = unit;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        return new SystemClock();
    }

    public static MappedByteBuffer mmap(Context context, Uri uri) {
        ParcelFileDescriptor openFileDescriptor;
        FileChannel convertMaybeLegacyFileChannelFromLibrary;
        try {
            openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
        } catch (IOException unused) {
        }
        if (openFileDescriptor == null) {
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
                return null;
            }
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(fileInputStream.getChannel());
                MappedByteBuffer map = convertMaybeLegacyFileChannelFromLibrary.map(FileChannel.MapMode.READ_ONLY, 0L, convertMaybeLegacyFileChannelFromLibrary.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } finally {
            }
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0366 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x036e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:211:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void populate(final android.view.ViewStructure r38, androidx.compose.ui.node.LayoutNode r39, android.view.autofill.AutofillId r40, java.lang.String r41, androidx.compose.ui.spatial.RectManager r42) {
        /*
            Method dump skipped, instructions count: 997
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.populate(android.view.ViewStructure, androidx.compose.ui.node.LayoutNode, android.view.autofill.AutofillId, java.lang.String, androidx.compose.ui.spatial.RectManager):void");
    }

    /* renamed from: remove-impl, reason: not valid java name */
    public static final boolean m839removeimpl(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        Object obj3 = mutableScatterMap.get(obj);
        if (obj3 == null) {
            return false;
        }
        if (!(obj3 instanceof MutableScatterSet)) {
            if (!obj3.equals(obj2)) {
                return false;
            }
            mutableScatterMap.remove(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
        boolean remove = mutableScatterSet.remove(obj2);
        if (remove && mutableScatterSet.isEmpty()) {
            mutableScatterMap.remove(obj);
        }
        return remove;
    }

    /* renamed from: removeScope-impl, reason: not valid java name */
    public static final void m840removeScopeimpl(MutableScatterMap mutableScatterMap, Object obj) {
        boolean z;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj2 = mutableScatterMap.keys[i4];
                        Object obj3 = mutableScatterMap.values[i4];
                        if (obj3 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                            mutableScatterSet.remove(obj);
                            z = mutableScatterSet.isEmpty();
                        } else {
                            z = obj3 == obj;
                        }
                        if (z) {
                            mutableScatterMap.removeValueAt(i4);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public static TypedValue resolve(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Resources.Theme theme, int i, boolean z) {
        TypedValue resolve = resolve(theme, i);
        return (resolve == null || resolve.type != 18) ? z : resolve.data != 0;
    }

    public static TypedValue resolveTypedValueOrThrow(Context context, int i, String str) {
        TypedValue resolve = resolve(context.getTheme(), i);
        if (resolve != null) {
            return resolve;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    public static final void simulateAddUseCases(LegacySessionConfig legacySessionConfig, ResolvedFeatureGroup resolvedFeatureGroup, CameraInfoInternal cameraInfoInternal) {
        CalculatedUseCaseInfo calculateAndValidateUseCases;
        Dispatcher dispatcher = cameraUseCaseAdapterProvider;
        if (dispatcher == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("mCameraUseCaseAdapterProvider must be initialized first!");
            return;
        }
        String cameraId = cameraInfoInternal.getCameraId();
        cameraId.getClass();
        CameraInternal camera = ((CameraRepository) dispatcher.executorServiceOrNull).getCamera(cameraId);
        AdapterCameraInfo adapterCameraInfo = new AdapterCameraInfo(camera.getCameraInfoInternal(), CameraConfigs.DEFAULT_CAMERA_CONFIG);
        SurfaceRequest.AnonymousClass1 anonymousClass1 = SurfaceRequest.AnonymousClass1.DEFAULT;
        CameraUseCaseAdapter cameraUseCaseAdapter = new CameraUseCaseAdapter(camera, null, adapterCameraInfo, null, anonymousClass1, anonymousClass1, (CameraCoordinatorAdapter) dispatcher.readyAsyncCalls, (CardView.AnonymousClass1) dispatcher.runningSyncCalls, (UseCaseConfigFactory) dispatcher.runningAsyncCalls);
        cameraUseCaseAdapter.setViewPort();
        cameraUseCaseAdapter.setEffects((List) legacySessionConfig.effects);
        cameraUseCaseAdapter.setSessionType();
        cameraUseCaseAdapter.setFrameRate((Range) legacySessionConfig.frameRateRange);
        List list = (List) legacySessionConfig.useCases;
        Utf8.SafeProcessor.d("CameraUseCaseAdapter", "simulateAddUseCases: appUseCasesToAdd = " + list + ", featureGroup = " + resolvedFeatureGroup);
        synchronized (cameraUseCaseAdapter.mLock) {
            AdapterCameraInternal adapterCameraInternal = cameraUseCaseAdapter.mCameraInternal;
            CameraConfig cameraConfig = cameraUseCaseAdapter.mCameraConfig;
            adapterCameraInternal.setExtendedConfig(cameraConfig);
            AdapterCameraInternal adapterCameraInternal2 = cameraUseCaseAdapter.mSecondaryCameraInternal;
            if (adapterCameraInternal2 != null) {
                adapterCameraInternal2.setExtendedConfig(cameraConfig);
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(cameraUseCaseAdapter.mAppUseCases);
            linkedHashSet.addAll(list);
            HashMap applyFeatureGroup = CameraUseCaseAdapter.applyFeatureGroup(linkedHashSet, resolvedFeatureGroup);
            try {
                try {
                    calculateAndValidateUseCases = cameraUseCaseAdapter.calculateAndValidateUseCases(linkedHashSet, cameraUseCaseAdapter.mSecondaryCameraInternal != null);
                    CameraUseCaseAdapter.restoreFeatureGroup(applyFeatureGroup);
                } catch (IllegalArgumentException e) {
                    throw new CameraUseCaseAdapter.CameraException(e);
                }
            } catch (Throwable th) {
                CameraUseCaseAdapter.restoreFeatureGroup(applyFeatureGroup);
                throw th;
            }
        }
        calculateAndValidateUseCases.getClass();
    }

    public static final String textToHtml(String str) {
        DefaultCssClassNameProvider defaultCssClassNameProvider = (DefaultCssClassNameProvider) CloseableKt.get$default(DefaultCssClassNameProvider.class);
        XmlParser xmlParser = new XmlParser(defaultCssClassNameProvider, (DefaultCssVariableNameProvider) CloseableKt.get$default(DefaultCssVariableNameProvider.class), str);
        StringBuilder sb = (StringBuilder) xmlParser.result;
        sb.append("<pre class=\"" + defaultCssClassNameProvider.plainTextMessagePreClassName + "\">");
        Iterator it = Operation$State.extract(str).iterator();
        while (it.hasNext()) {
            EmailSection emailSection = (EmailSection) it.next();
            xmlParser.appendBlockQuoteElement(emailSection.quoteDepth);
            new TextToHtml(emailSection, sb, true, HTMLTag.DIV).appendAsHtmlFragment();
        }
        xmlParser.appendBlockQuoteElement(0);
        sb.append("</pre>");
        return sb.toString();
    }

    public static final String textToHtmlFragment(String str, HTMLTag hTMLTag) {
        str.getClass();
        hTMLTag.getClass();
        List list = TextToHtml.HTML_MODIFIERS;
        StringBuilder sb = new StringBuilder(str.length() + 512);
        new TextToHtml(str, sb, false, hTMLTag).appendAsHtmlFragment();
        return sb.toString();
    }

    public static final ButtonColors toMaterial3Colors(app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors buttonColors) {
        buttonColors.getClass();
        return new ButtonColors(buttonColors.containerColor, buttonColors.contentColor, buttonColors.disabledContainerColor, buttonColors.disabledContentColor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0029, code lost:
    
        if (r3 == null) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State toOutgoingServerSettingsState(app.k9mail.feature.account.common.domain.entity.AccountState r12) {
        /*
            r12.getClass()
            java.lang.String r0 = r12.emailAddress
            com.fsck.k9.mail.ServerSettings r1 = r12.outgoingServerSettings
            java.lang.String r2 = ""
            if (r1 == 0) goto L19
            com.fsck.k9.mail.AuthType r3 = r1.authenticationType
            if (r3 == 0) goto L19
            app.k9mail.feature.account.common.domain.entity.AuthenticationType r3 = androidx.compose.ui.unit.IntRectKt.toAuthenticationType(r3)
            boolean r3 = r3.isPasswordRequired
            if (r3 != 0) goto L19
        L17:
            r3 = r2
            goto L2c
        L19:
            if (r1 == 0) goto L1f
            java.lang.String r3 = r1.password
            if (r3 != 0) goto L2c
        L1f:
            com.fsck.k9.mail.ServerSettings r12 = r12.incomingServerSettings
            if (r12 == 0) goto L27
            java.lang.String r12 = r12.password
        L25:
            r3 = r12
            goto L29
        L27:
            r12 = 0
            goto L25
        L29:
            if (r3 != 0) goto L2c
            goto L17
        L2c:
            r12 = 6
            if (r1 == 0) goto L62
            app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State r4 = new app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State
            net.thunderbird.core.validation.input.StringInputField r5 = new net.thunderbird.core.validation.input.StringInputField
            java.lang.String r0 = r1.host
            r5.<init>(r0, r12)
            com.fsck.k9.mail.ConnectionSecurity r0 = r1.connectionSecurity
            app.k9mail.feature.account.common.domain.entity.ConnectionSecurity r6 = org.jsoup.helper.Validate.toConnectionSecurity(r0)
            net.thunderbird.core.validation.input.NumberInputField r7 = new net.thunderbird.core.validation.input.NumberInputField
            int r0 = r1.port
            long r8 = (long) r0
            java.lang.Long r0 = java.lang.Long.valueOf(r8)
            r7.<init>(r0)
            com.fsck.k9.mail.AuthType r0 = r1.authenticationType
            app.k9mail.feature.account.common.domain.entity.AuthenticationType r8 = androidx.compose.ui.unit.IntRectKt.toAuthenticationType(r0)
            net.thunderbird.core.validation.input.StringInputField r9 = new net.thunderbird.core.validation.input.StringInputField
            java.lang.String r0 = r1.username
            r9.<init>(r0, r12)
            net.thunderbird.core.validation.input.StringInputField r10 = new net.thunderbird.core.validation.input.StringInputField
            r10.<init>(r3, r12)
            java.lang.String r11 = r1.clientCertificateAlias
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            return r4
        L62:
            net.thunderbird.core.validation.input.StringInputField r1 = new net.thunderbird.core.validation.input.StringInputField
            if (r0 != 0) goto L68
            r4 = r2
            goto L69
        L68:
            r4 = r0
        L69:
            r1.<init>(r4, r12)
            net.thunderbird.core.validation.input.StringInputField r4 = new net.thunderbird.core.validation.input.StringInputField
            r4.<init>(r3, r12)
            net.thunderbird.core.validation.input.StringInputField r3 = new net.thunderbird.core.validation.input.StringInputField
            if (r0 == 0) goto L81
            java.lang.String r2 = "@"
            java.lang.String r0 = kotlin.text.StringsKt.substringAfter$default(r0, r2)
            java.lang.String r2 = "."
            java.lang.String r2 = r2.concat(r0)
        L81:
            r3.<init>(r2, r12)
            app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State r12 = new app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State
            r0 = 78
            r12.<init>(r3, r1, r4, r0)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.toOutgoingServerSettingsState(app.k9mail.feature.account.common.domain.entity.AccountState):app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State");
    }

    public static final void visitScrollCaptureCandidates(SemanticsNode semanticsNode, int i, ScrollCapture$onScrollCaptureSearch$1 scrollCapture$onScrollCaptureSearch$1) {
        SemanticsNode semanticsNode2;
        MutableVector mutableVector = new MutableVector(new SemanticsNode[16]);
        List children$ui = semanticsNode.getChildren$ui(false, false);
        while (true) {
            mutableVector.addAll(mutableVector.size, children$ui);
            while (true) {
                int i2 = mutableVector.size;
                if (i2 == 0) {
                    return;
                }
                semanticsNode2 = (SemanticsNode) mutableVector.removeAt(i2 - 1);
                boolean isHidden = SemanticsNodeKt.isHidden(semanticsNode2);
                SemanticsConfiguration semanticsConfiguration = semanticsNode2.unmergedConfig;
                MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
                if (!isHidden && !mutableScatterMap.containsKey(SemanticsProperties.Disabled)) {
                    NodeCoordinator findCoordinatorToGetBounds$ui = semanticsNode2.findCoordinatorToGetBounds$ui();
                    if (findCoordinatorToGetBounds$ui == null) {
                        throw Modifier.CC.m405m("Expected semantics node to have a coordinator.");
                    }
                    IntRect roundToIntRect = IntRectKt.roundToIntRect(RulerKt.boundsInWindow(findCoordinatorToGetBounds$ui, true));
                    if (roundToIntRect.left < roundToIntRect.right && roundToIntRect.top < roundToIntRect.bottom) {
                        Object obj = semanticsConfiguration.props.get(SemanticsActions.ScrollByOffset);
                        if (obj == null) {
                            obj = null;
                        }
                        Function2 function2 = (Function2) obj;
                        Object obj2 = mutableScatterMap.get(SemanticsProperties.VerticalScrollAxisRange);
                        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) (obj2 != null ? obj2 : null);
                        if (function2 != null && scrollAxisRange != null && ((Number) scrollAxisRange.maxValue.invoke()).floatValue() > 0.0f) {
                            int i3 = 1 + i;
                            scrollCapture$onScrollCaptureSearch$1.invoke(new ScrollCaptureCandidate(semanticsNode2, i3, roundToIntRect, findCoordinatorToGetBounds$ui));
                            visitScrollCaptureCandidates(semanticsNode2, i3, scrollCapture$onScrollCaptureSearch$1);
                        }
                    }
                }
            }
            children$ui = semanticsNode2.getChildren$ui(false, false);
        }
    }

    public static final void withArguments(Fragment fragment, Pair... pairArr) {
        fragment.setArguments(Util.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length)));
    }

    public static boolean resolveBoolean(Context context, int i, boolean z) {
        return resolveBoolean(context.getTheme(), i, z);
    }

    public static ImageHeaderParser.ImageType getType(List list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType type = ((ImageHeaderParser) list.get(i)).getType(byteBuffer);
                AtomicReference atomicReference = ByteBufferUtil.BUFFER_REF;
                if (type != ImageHeaderParser.ImageType.UNKNOWN) {
                    return type;
                }
            } catch (Throwable th) {
                AtomicReference atomicReference2 = ByteBufferUtil.BUFFER_REF;
                throw th;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i);
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            boolean copyToFile = copyToFile(file, inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return copyToFile;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
