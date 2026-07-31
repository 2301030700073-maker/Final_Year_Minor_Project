package kotlin.math;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Path;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.graphics.PathParser$PathDataNode;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavArgument;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.navigation.fragment.NavHostFragment;
import androidx.navigation.serialization.RouteDecoder;
import androidx.work.Data;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.autodiscovery.api.ConnectionSecurity;
import app.k9mail.core.ui.compose.designsystem.atom.text.TextBodySmallKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.content.OutgoingFormItemsKt$$ExternalSyntheticLambda5;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.R;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.filter.Base64;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.message.SimpleMessageFormat;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysJvmKt$asList$3;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineStart;
import net.thunderbird.core.common.net.HostNameUtils;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* loaded from: classes.dex */
public abstract class MathKt {
    public static ImageVector _arrowBack;
    public static ImageVector _close;
    public static ImageVector _visibility;

    public MathKt(View view) {
        new PathInterpolator(0.1f, 0.1f, 0.0f, 1.0f);
        Context context = view.getContext();
        Operation$State.resolveThemeDuration(context, R.attr.motionDurationMedium2, 300);
        Operation$State.resolveThemeDuration(context, R.attr.motionDurationShort3, 150);
        Operation$State.resolveThemeDuration(context, R.attr.motionDurationShort2, 100);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AccountOAuthContent(app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State r21, kotlin.jvm.functions.Function1 r22, boolean r23, androidx.compose.runtime.Composer r24, int r25) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.AccountOAuthContent(app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State, kotlin.jvm.functions.Function1, boolean, androidx.compose.runtime.Composer, int):void");
    }

    /* renamed from: AutoDiscoveryServerSettingsView-Zl2X39w, reason: not valid java name */
    public static final void m982AutoDiscoveryServerSettingsViewZl2X39w(String str, String str2, int i, ConnectionSecurity connectionSecurity, Modifier modifier, String str3, boolean z, Composer composer, int i2) {
        String string;
        str2.getClass();
        connectionSecurity.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(653678319);
        int i3 = i2 | (gapComposer.changed(str2) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | (gapComposer.changed(connectionSecurity.ordinal()) ? 2048 : 1024) | (gapComposer.changed(str3) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer, 0);
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
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            builder.append(z ? "Incoming" : "Outgoing");
            builder.append(" ");
            FontWeight fontWeight = FontWeight.Bold;
            int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, fontWeight, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
            try {
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                builder.append(upperCase);
                builder.pop(pushStyle);
                builder.append(" ");
                builder.append("configuration");
                Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(builder.toAnnotatedString(), null, 0L, 0, 0, gapComposer, 0, 62);
                ImageVector imageVector = z ? Icons$Outlined.Inbox : Icons$Outlined.Outbox;
                builder = new AnnotatedString.Builder();
                builder.append("Server");
                builder.append(": ");
                String isLegalIPv4Address = HostNameUtils.isLegalIPv4Address(str2);
                if (isLegalIPv4Address == null) {
                    isLegalIPv4Address = HostNameUtils.isLegalIPv6Address(str2);
                }
                if (isLegalIPv4Address != null) {
                    builder.append(str2);
                } else {
                    builder.append(StringsKt.substringBefore$default(str2, ".").concat("."));
                    pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, fontWeight, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                    try {
                        builder.append(StringsKt.substringAfter$default(str2, "."));
                    } finally {
                    }
                }
                builder.append(":" + i);
                ServerSettingRow(imageVector, builder.toAnnotatedString(), null, gapComposer, 0);
                ImageVector imageVector2 = Icons$Outlined.Security;
                StringBuilder sb = new StringBuilder(16);
                new ArrayList();
                ArrayList arrayList = new ArrayList();
                new ArrayList();
                sb.append("Security: ");
                resources.getClass();
                int ordinal = connectionSecurity.ordinal();
                if (ordinal == 0) {
                    string = resources.getString(R.string.account_setup_auto_discovery_connection_security_start_tls);
                    string.getClass();
                } else if (ordinal != 1) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                } else {
                    string = resources.getString(R.string.account_setup_auto_discovery_connection_security_ssl);
                    string.getClass();
                }
                sb.append(string);
                String sb2 = sb.toString();
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i5 = 0; i5 < size; i5++) {
                    arrayList2.add(((AnnotatedString.Builder.MutableRange) arrayList.get(i5)).toRange(sb.length()));
                }
                ServerSettingRow(imageVector2, new AnnotatedString(sb2, arrayList2), null, gapComposer, 0);
                if (str3.length() > 0) {
                    gapComposer.startReplaceGroup(1405994670);
                    ImageVector imageVector3 = Icons$Outlined.AccountCircle;
                    StringBuilder sb3 = new StringBuilder(16);
                    new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    new ArrayList();
                    sb3.append("Username: ");
                    sb3.append(str3);
                    String sb4 = sb3.toString();
                    ArrayList arrayList4 = new ArrayList(arrayList3.size());
                    int size2 = arrayList3.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        arrayList4.add(((AnnotatedString.Builder.MutableRange) arrayList3.get(i6)).toRange(sb3.length()));
                    }
                    ServerSettingRow(imageVector3, new AnnotatedString(sb4, arrayList4), null, gapComposer, 0);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(1406235881);
                    gapComposer.end(false);
                }
                gapComposer.end(true);
            } finally {
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(str, str2, i, connectionSecurity, modifier, str3, z, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x0269, code lost:
    
        if (r14.changed(false) != false) goto L177;
     */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0323  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyGrid(androidx.compose.ui.Modifier r38, final androidx.compose.foundation.lazy.grid.LazyGridState r39, androidx.compose.foundation.lazy.grid.GridSlotCache r40, androidx.compose.foundation.layout.PaddingValues r41, androidx.compose.foundation.gestures.DefaultFlingBehavior r42, boolean r43, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r44, androidx.compose.foundation.layout.Arrangement$Vertical r45, androidx.compose.foundation.layout.Arrangement$Horizontal r46, kotlin.jvm.functions.Function1 r47, androidx.compose.runtime.Composer r48, int r49, int r50) {
        /*
            Method dump skipped, instructions count: 906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.LazyGrid(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.grid.LazyGridState, androidx.compose.foundation.lazy.grid.GridSlotCache, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.gestures.DefaultFlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void NavigationDrawerItemBadge(String str, Modifier modifier, ImageVector imageVector, Composer composer, int i) {
        GapComposer gapComposer;
        Modifier modifier2;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(42734753);
        int i2 = i | (gapComposer2.changed(str) ? 4 : 2) | 48 | (gapComposer2.changed(imageVector) ? 256 : 128);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
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
            Updater.m380setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer = gapComposer2;
            Validate.m1066TextLabelLargeXl4FiYE(str, null, 0L, 0, 0, gapComposer, i2 & 14, 62);
            if (imageVector != null) {
                gapComposer.startReplaceGroup(-908315671);
                ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(companion, 16.0f);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                AtomicFU.m1009IconxqIIw2o(imageVector, OffsetKt.m222paddingqDBjuR0$default(m234size3ABfNKs, 2.0f, 0.0f, 0.0f, 0.0f, 14), null, gapComposer, (i2 >> 6) & 14, 12);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-908104251);
                gapComposer.end(false);
            }
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(str, modifier2, imageVector, i, 8);
        }
    }

    public static final void OutgoingServerSettingsContent(InteractionMode interactionMode, OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, Function1 function1, Modifier modifier, Composer composer, int i) {
        interactionMode.getClass();
        outgoingServerSettingsContract$State.getClass();
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1081399887);
        int i2 = (gapComposer.changed(interactionMode.ordinal()) ? 4 : 2) | i | (gapComposer.changedInstance(outgoingServerSettingsContract$State) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changed(modifier) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ScaffoldKt.ResponsiveWidthContainer(TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "OutgoingServerSettingsContent").then(modifier), Expect_jvmKt.rememberComposableLambda(-75401167, new OutgoingFormItemsKt$$ExternalSyntheticLambda5(interactionMode, outgoingServerSettingsContract$State, function1, (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources)), gapComposer), gapComposer, 48, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(interactionMode, outgoingServerSettingsContract$State, function1, modifier, i, 6);
        }
    }

    public static final void ServerSettingRow(ImageVector imageVector, AnnotatedString annotatedString, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(376639047);
        int i2 = i | (gapComposer.changed(imageVector) ? 4 : 2) | (gapComposer.changed(annotatedString) ? 32 : 16) | 3456;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = fillElement.then(companion);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
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
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            gapComposer.startReplaceGroup(-532214089);
            gapComposer.end(false);
            Data.Companion.m824TextBodyMediumZHfKjFs(annotatedString, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, (i2 >> 3) & 14, 126);
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(imageVector, annotatedString, modifier2, i, 11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x005e  */
    /* renamed from: Surface-_UMDTes, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m983Surface_UMDTes(androidx.compose.ui.Modifier r23, androidx.compose.ui.graphics.Shape r24, long r25, long r27, float r29, final androidx.compose.runtime.internal.ComposableLambdaImpl r30, androidx.compose.runtime.Composer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.m983Surface_UMDTes(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, float, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: TextBodySmall-Xl4FiYE, reason: not valid java name */
    public static final void m984TextBodySmallXl4FiYE(String str, Modifier modifier, long j, TextAlign textAlign, int i, int i2, Composer composer, int i3, int i4) {
        Modifier modifier2;
        int i5;
        long j2;
        int i6;
        TextAlign textAlign2;
        int i7;
        GapComposer gapComposer;
        int i8;
        long j3;
        TextAlign textAlign3;
        int i9;
        Modifier modifier3;
        long j4;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(836928739);
        int i10 = i3 | (gapComposer2.changed(str) ? 4 : 2);
        int i11 = i4 & 2;
        if (i11 != 0) {
            i5 = i10 | 48;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            i5 = i10 | (gapComposer2.changed(modifier2) ? 32 : 16);
        }
        int i12 = i4 & 4;
        if (i12 != 0) {
            i6 = i5 | 384;
            j2 = j;
        } else {
            j2 = j;
            i6 = i5 | (gapComposer2.changed(j2) ? 256 : 128);
        }
        int i13 = i4 & 8;
        if (i13 != 0) {
            i7 = i6 | 3072;
            textAlign2 = textAlign;
        } else {
            textAlign2 = textAlign;
            i7 = i6 | (gapComposer2.changed(textAlign2) ? 2048 : 1024);
        }
        int i14 = i7 | 221184;
        if (gapComposer2.shouldExecute(i14 & 1, (74899 & i14) != 74898)) {
            Modifier modifier4 = i11 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
            if (i12 != 0) {
                modifier3 = modifier4;
                j4 = Color.Unspecified;
            } else {
                modifier3 = modifier4;
                j4 = j2;
            }
            TextAlign textAlign4 = i13 != 0 ? null : textAlign2;
            int i15 = i14 & 1022;
            int i16 = ((i14 >> 9) & 14) | 24960;
            Modifier modifier5 = modifier3;
            gapComposer = gapComposer2;
            TextKt.m362TextNvy7gAk(str, modifier5, j4, 0L, 0L, textAlign4, 0L, 1, false, Integer.MAX_VALUE, 0, null, ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).bodySmall, gapComposer, i15, i16, 109560);
            modifier2 = modifier5;
            j3 = j4;
            textAlign3 = textAlign4;
            i8 = 1;
            i9 = Integer.MAX_VALUE;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            i8 = i;
            j3 = j2;
            textAlign3 = textAlign2;
            i9 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextBodySmallKt$$ExternalSyntheticLambda1(str, modifier2, j3, textAlign3, i8, i9, i3, i4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0044  */
    /* renamed from: TextBodySmall-ZHfKjFs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m985TextBodySmallZHfKjFs(final androidx.compose.ui.text.AnnotatedString r32, androidx.compose.ui.Modifier r33, long r34, androidx.compose.ui.text.style.TextAlign r36, int r37, int r38, kotlinx.collections.immutable.PersistentMap r39, androidx.compose.runtime.Composer r40, final int r41, final int r42) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.m985TextBodySmallZHfKjFs(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, androidx.compose.ui.text.style.TextAlign, int, int, kotlinx.collections.immutable.PersistentMap, androidx.compose.runtime.Composer, int, int):void");
    }

    public static boolean canMorph(PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        if (pathParser$PathDataNodeArr == null || pathParser$PathDataNodeArr2 == null || pathParser$PathDataNodeArr.length != pathParser$PathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            PathParser$PathDataNode pathParser$PathDataNode = pathParser$PathDataNodeArr[i];
            char c = pathParser$PathDataNode.mType;
            PathParser$PathDataNode pathParser$PathDataNode2 = pathParser$PathDataNodeArr2[i];
            if (c != pathParser$PathDataNode2.mType || pathParser$PathDataNode.mParams.length != pathParser$PathDataNode2.mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static void checkNotNullFromProvides(Object obj) {
        if (obj != null) {
            return;
        }
        Regex$$ExternalSyntheticBUOutline0.m("Cannot return null from a non-@Nullable @Provides method");
    }

    public static float[] copyOfRange(float[] fArr, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return null;
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int min = Math.min(i, length);
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.emoji2.text.FontRequestEmojiCompatConfig create(android.content.Context r13) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            r2 = 6
            if (r0 < r1) goto Ld
            androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28 r0 = new androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28
            r0.<init>(r2)
            goto L12
        Ld:
            okio.AsyncTimeout$Companion r0 = new okio.AsyncTimeout$Companion
            r0.<init>(r2)
        L12:
            android.content.pm.PackageManager r1 = r13.getPackageManager()
            java.lang.String r2 = "Package manager required to locate emoji font provider"
            androidx.room.util.RelationUtil.checkNotNull(r1, r2)
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "androidx.content.action.LOAD_EMOJI_FONT"
            r2.<init>(r3)
            r3 = 0
            java.util.List r2 = r1.queryIntentContentProviders(r2, r3)
            java.util.Iterator r2 = r2.iterator()
        L2b:
            boolean r4 = r2.hasNext()
            r5 = 0
            if (r4 == 0) goto L47
            java.lang.Object r4 = r2.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r4.providerInfo
            if (r4 == 0) goto L2b
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L2b
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L2b
            goto L48
        L47:
            r4 = r5
        L48:
            if (r4 != 0) goto L4c
        L4a:
            r6 = r5
            goto L7d
        L4c:
            java.lang.String r7 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            java.lang.String r8 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            android.content.pm.Signature[] r0 = r0.getSigningSignatures(r1, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            r1.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            int r2 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
        L5a:
            if (r3 >= r2) goto L68
            r4 = r0[r3]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            byte[] r4 = r4.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            r1.add(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            int r3 = r3 + 1
            goto L5a
        L68:
            java.util.List r10 = java.util.Collections.singletonList(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            androidx.core.provider.FontRequest r6 = new androidx.core.provider.FontRequest     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            java.lang.String r9 = "emojicompat-emoji-font"
            r11 = 0
            r12 = 0
            r6.<init>(r7, r8, r9, r10, r11, r12)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            goto L7d
        L76:
            r0 = move-exception
            java.lang.String r1 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r1, r0)
            goto L4a
        L7d:
            if (r6 != 0) goto L80
            goto L8a
        L80:
            androidx.emoji2.text.FontRequestEmojiCompatConfig r5 = new androidx.emoji2.text.FontRequestEmojiCompatConfig
            androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader r0 = new androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader
            r0.<init>(r13, r6)
            r5.<init>(r0)
        L8a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.create(android.content.Context):androidx.emoji2.text.FontRequestEmojiCompatConfig");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:35:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.graphics.PathParser$PathDataNode[] createNodesFromPathData(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.createNodesFromPathData(java.lang.String):androidx.core.graphics.PathParser$PathDataNode[]");
    }

    public static PathParser$PathDataNode[] deepCopyNodes(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = new PathParser$PathDataNode[pathParser$PathDataNodeArr.length];
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            pathParser$PathDataNodeArr2[i] = new PathParser$PathDataNode(pathParser$PathDataNodeArr[i]);
        }
        return pathParser$PathDataNodeArr2;
    }

    public static final boolean defaultValueEqualsCommon(String str, String str2) {
        str.getClass();
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    int i4 = i3 + 1;
                    if (i3 == 0 && charAt != '(') {
                        break;
                    }
                    if (charAt == '(') {
                        i2++;
                    } else if (charAt == ')' && i2 - 1 == 0 && i3 != str.length() - 1) {
                        break;
                    }
                    i++;
                    i3 = i4;
                } else if (i2 == 0) {
                    return Intrinsics.areEqual(StringsKt.trim(str.substring(1, str.length() - 1)).toString(), str2);
                }
            }
        }
        return false;
    }

    public static final NavHostController findNavController(Fragment fragment) {
        Dialog dialog;
        Window window;
        fragment.getClass();
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.mParentFragment) {
            if (fragment2 instanceof NavHostFragment) {
                return ((NavHostFragment) fragment2).getNavHostController$navigation_fragment_release();
            }
            Fragment fragment3 = fragment2.getParentFragmentManager().mPrimaryNav;
            if (fragment3 instanceof NavHostFragment) {
                return ((NavHostFragment) fragment3).getNavHostController$navigation_fragment_release();
            }
        }
        View view = fragment.mView;
        if (view != null) {
            return Util.findNavController(view);
        }
        DialogFragment dialogFragment = fragment instanceof DialogFragment ? (DialogFragment) fragment : null;
        View decorView = (dialogFragment == null || (dialog = dialogFragment.getDialog()) == null || (window = dialog.getWindow()) == null) ? null : window.getDecorView();
        if (decorView != null) {
            return Util.findNavController(decorView);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", fragment, " does not have a NavController set"));
        return null;
    }

    /* renamed from: fitPrioritizingHeight-Zbe2FdA, reason: not valid java name */
    public static long m986fitPrioritizingHeightZbe2FdA(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int min = Math.min(i3, 262142);
        int min2 = i4 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i4, 262142);
        int i6 = min2 == Integer.MAX_VALUE ? min : min2;
        if (i6 >= 8191) {
            if (i6 < 32767) {
                i5 = 65534;
            } else if (i6 < 65535) {
                i5 = 32766;
            } else {
                if (i6 >= 262143) {
                    ConstraintsKt.throwInvalidConstraintsSizeException(i6);
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        return ConstraintsKt.Constraints(Math.min(i5, i), i2 != Integer.MAX_VALUE ? Math.min(i5, i2) : Integer.MAX_VALUE, min, min2);
    }

    /* renamed from: fitPrioritizingWidth-Zbe2FdA, reason: not valid java name */
    public static long m987fitPrioritizingWidthZbe2FdA(int i, int i2, int i3, int i4) {
        int i5 = 262142;
        int min = Math.min(i, 262142);
        int min2 = i2 == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.min(i2, 262142);
        int i6 = min2 == Integer.MAX_VALUE ? min : min2;
        if (i6 >= 8191) {
            if (i6 < 32767) {
                i5 = 65534;
            } else if (i6 < 65535) {
                i5 = 32766;
            } else {
                if (i6 >= 262143) {
                    ConstraintsKt.throwInvalidConstraintsSizeException(i6);
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    return 0L;
                }
                i5 = 8190;
            }
        }
        return ConstraintsKt.Constraints(min, min2, Math.min(i5, i3), i4 != Integer.MAX_VALUE ? Math.min(i5, i4) : Integer.MAX_VALUE);
    }

    public static final String formatString(Collection collection) {
        collection.getClass();
        return !collection.isEmpty() ? StringsKt__IndentKt.prependIndent(CollectionsKt.joinToString$default(collection, ",\n", "\n", "\n", null, 56), "    ").concat("},") : " }";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArraysKt___ArraysJvmKt$asList$3 getAvailableAeModes(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
        key.getClass();
        int[] iArr = {0};
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (obj != 0) {
            iArr = obj;
        }
        return new ArraysKt___ArraysJvmKt$asList$3(iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArraysKt___ArraysJvmKt$asList$3 getAvailableAfModes(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
        key.getClass();
        int[] iArr = {0};
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (obj != 0) {
            iArr = obj;
        }
        return new ArraysKt___ArraysJvmKt$asList$3(iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ArraysKt___ArraysJvmKt$asList$3 getAvailableAwbModes(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES;
        key.getClass();
        int[] iArr = {0};
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (obj != 0) {
            iArr = obj;
        }
        return new ArraysKt___ArraysJvmKt$asList$3(iArr);
    }

    public static String getBodyTextFromMessage(Part part, SimpleMessageFormat simpleMessageFormat) {
        if (simpleMessageFormat == SimpleMessageFormat.HTML) {
            Part findFirstPartByMimeType = JisSupport.findFirstPartByMimeType(part, "text/html");
            if (findFirstPartByMimeType != null) {
                Log.d("getBodyTextFromMessage: HTML requested, HTML found.", new Object[0]);
                String textFromPart = JisSupport.getTextFromPart(findFirstPartByMimeType, -1L);
                return textFromPart != null ? textFromPart : "";
            }
            Part findFirstPartByMimeType2 = JisSupport.findFirstPartByMimeType(part, UtilsKt.MIME_TYPE_TEXT_PLAIN);
            if (findFirstPartByMimeType2 != null) {
                Log.d("getBodyTextFromMessage: HTML requested, text found.", new Object[0]);
                String textFromPart2 = JisSupport.getTextFromPart(findFirstPartByMimeType2, -1L);
                return OperationKt.textToHtml(textFromPart2 != null ? textFromPart2 : "");
            }
        } else if (simpleMessageFormat == SimpleMessageFormat.TEXT) {
            Part findFirstPartByMimeType3 = JisSupport.findFirstPartByMimeType(part, UtilsKt.MIME_TYPE_TEXT_PLAIN);
            if (findFirstPartByMimeType3 != null) {
                Log.d("getBodyTextFromMessage: Text requested, text found.", new Object[0]);
                String textFromPart3 = JisSupport.getTextFromPart(findFirstPartByMimeType3, -1L);
                return textFromPart3 != null ? textFromPart3 : "";
            }
            Part findFirstPartByMimeType4 = JisSupport.findFirstPartByMimeType(part, "text/html");
            if (findFirstPartByMimeType4 != null) {
                Log.d("getBodyTextFromMessage: Text requested, HTML found.", new Object[0]);
                String textFromPart4 = JisSupport.getTextFromPart(findFirstPartByMimeType4, -1L);
                return OperationKt.htmlToText(textFromPart4 != null ? textFromPart4 : "");
            }
        }
        return "";
    }

    public static final int getSupportedAeMode(CameraMetadata cameraMetadata, int i) {
        cameraMetadata.getClass();
        return getAvailableAeModes(cameraMetadata).contains(Integer.valueOf(i)) ? i : getAvailableAeModes(cameraMetadata).contains(1) ? 1 : 0;
    }

    public static final ImageVector getVisibility() {
        ImageVector imageVector = _visibility;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Visibility", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder m = Modifier.CC.m(12.0f, 6.0f);
        m.curveToRelative(3.79f, 0.0f, 7.17f, 2.13f, 8.82f, 5.5f);
        m.curveTo(19.17f, 14.87f, 15.79f, 17.0f, 12.0f, 17.0f);
        m.reflectiveCurveToRelative(-7.17f, -2.13f, -8.82f, -5.5f);
        m.curveTo(4.83f, 8.13f, 8.21f, 6.0f, 12.0f, 6.0f);
        m.moveToRelative(0.0f, -2.0f);
        m.curveTo(7.0f, 4.0f, 2.73f, 7.11f, 1.0f, 11.5f);
        m.curveTo(2.73f, 15.89f, 7.0f, 19.0f, 12.0f, 19.0f);
        m.reflectiveCurveToRelative(9.27f, -3.11f, 11.0f, -7.5f);
        m.curveTo(21.27f, 7.11f, 17.0f, 4.0f, 12.0f, 4.0f);
        m.close();
        m.moveTo(12.0f, 9.0f);
        m.curveToRelative(1.38f, 0.0f, 2.5f, 1.12f, 2.5f, 2.5f);
        m.reflectiveCurveTo(13.38f, 14.0f, 12.0f, 14.0f);
        m.reflectiveCurveToRelative(-2.5f, -1.12f, -2.5f, -2.5f);
        m.reflectiveCurveTo(10.62f, 9.0f, 12.0f, 9.0f);
        m.moveToRelative(0.0f, -2.0f);
        m.curveToRelative(-2.48f, 0.0f, -4.5f, 2.02f, -4.5f, 4.5f);
        m.reflectiveCurveTo(9.52f, 16.0f, 12.0f, 16.0f);
        m.reflectiveCurveToRelative(4.5f, -2.02f, 4.5f, -4.5f);
        m.reflectiveCurveTo(14.48f, 7.0f, 12.0f, 7.0f);
        m.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", m.namesAndValues);
        ImageVector build = builder.build();
        _visibility = build;
        return build;
    }

    public static void incrementAll(List list) {
        if (list.isEmpty()) {
            return;
        }
        int i = 0;
        do {
            try {
                ((DeferrableSurface) list.get(i)).incrementUseCount();
                i++;
            } catch (DeferrableSurface.SurfaceClosedException e) {
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    ((DeferrableSurface) list.get(i2)).decrementUseCount();
                }
                throw e;
            }
        } while (i < list.size());
    }

    public static CallbackToFutureAdapter$SafeFuture launchFuture$default(CoroutineContext coroutineContext, Function2 function2) {
        coroutineContext.getClass();
        return OAuthBearer.getFuture(new PreviewView$1$$ExternalSyntheticLambda2(coroutineContext, CoroutineStart.DEFAULT, function2, 3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void nodesToPath(PathParser$PathDataNode[] pathParser$PathDataNodeArr, Path path) {
        int i;
        float[] fArr;
        int i2;
        PathParser$PathDataNode pathParser$PathDataNode;
        int i3;
        char c;
        float f;
        float f2;
        PathParser$PathDataNode pathParser$PathDataNode2;
        boolean z;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = pathParser$PathDataNodeArr;
        Path path2 = path;
        float[] fArr2 = new float[6];
        int length = pathParser$PathDataNodeArr2.length;
        int i4 = 0;
        int i5 = 0;
        char c2 = 'm';
        while (i5 < length) {
            PathParser$PathDataNode pathParser$PathDataNode3 = pathParser$PathDataNodeArr2[i5];
            char c3 = pathParser$PathDataNode3.mType;
            float[] fArr3 = pathParser$PathDataNode3.mParams;
            float f11 = fArr2[i4];
            float f12 = fArr2[1];
            float f13 = fArr2[2];
            float f14 = fArr2[3];
            float f15 = fArr2[4];
            int i6 = i4;
            float f16 = fArr2[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f15, f16);
                    f11 = f15;
                    f13 = f11;
                    f12 = f16;
                    f14 = f12;
                default:
                    i = 2;
                    break;
            }
            float f17 = f15;
            float f18 = f16;
            float f19 = f11;
            float f20 = f12;
            int i7 = i6;
            while (i7 < fArr3.length) {
                if (c3 == 'A') {
                    fArr = fArr3;
                    i2 = i7;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    float f21 = f19;
                    float f22 = f20;
                    i3 = i5;
                    c = c3;
                    int i8 = i2 + 5;
                    int i9 = i2 + 6;
                    PathParser$PathDataNode.drawArc(path, f21, f22, fArr[i8], fArr[i9], fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3] != 0.0f ? 1 : i6, fArr[i2 + 4] != 0.0f ? 1 : i6);
                    f13 = fArr[i8];
                    f = fArr[i9];
                    f14 = f;
                    f2 = f13;
                } else if (c3 == 'C') {
                    fArr = fArr3;
                    i2 = i7;
                    i3 = i5;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    c = c3;
                    int i10 = i2 + 2;
                    int i11 = i2 + 3;
                    int i12 = i2 + 4;
                    int i13 = i2 + 5;
                    path2.cubicTo(fArr[i2], fArr[i2 + 1], fArr[i10], fArr[i11], fArr[i12], fArr[i13]);
                    float f23 = fArr[i12];
                    float f24 = fArr[i13];
                    f13 = fArr[i10];
                    f14 = fArr[i11];
                    f = f24;
                    f2 = f23;
                } else if (c3 == 'H') {
                    fArr = fArr3;
                    i2 = i7;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    c = c3;
                    f = f20;
                    i3 = i5;
                    path2.lineTo(fArr[i2], f);
                    f2 = fArr[i2];
                } else if (c3 == 'Q') {
                    fArr = fArr3;
                    i2 = i7;
                    i3 = i5;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    c = c3;
                    int i14 = i2 + 1;
                    int i15 = i2 + 2;
                    int i16 = i2 + 3;
                    path2.quadTo(fArr[i2], fArr[i14], fArr[i15], fArr[i16]);
                    float f25 = fArr[i2];
                    float f26 = fArr[i14];
                    float f27 = fArr[i15];
                    float f28 = fArr[i16];
                    f13 = f25;
                    f14 = f26;
                    f2 = f27;
                    f = f28;
                } else if (c3 == 'V') {
                    fArr = fArr3;
                    i2 = i7;
                    i3 = i5;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    f2 = f19;
                    c = c3;
                    path2.lineTo(f2, fArr[i2]);
                    f = fArr[i2];
                } else if (c3 != 'a') {
                    if (c3 == 'c') {
                        fArr = fArr3;
                        i2 = i7;
                        int i17 = i2 + 2;
                        int i18 = i2 + 3;
                        int i19 = i2 + 4;
                        int i20 = i2 + 5;
                        path2.rCubicTo(fArr[i2], fArr[i2 + 1], fArr[i17], fArr[i18], fArr[i19], fArr[i20]);
                        float f29 = fArr[i17] + f19;
                        float f30 = fArr[i18] + f20;
                        f19 += fArr[i19];
                        f20 += fArr[i20];
                        f13 = f29;
                        f14 = f30;
                    } else if (c3 != 'h') {
                        if (c3 != 'q') {
                            if (c3 != 'v') {
                                if (c3 == 'L') {
                                    fArr = fArr3;
                                    i2 = i7;
                                    int i21 = i2 + 1;
                                    path2.lineTo(fArr[i2], fArr[i21]);
                                    f2 = fArr[i2];
                                    f = fArr[i21];
                                } else if (c3 == 'M') {
                                    fArr = fArr3;
                                    i2 = i7;
                                    f2 = fArr[i2];
                                    f = fArr[i2 + 1];
                                    if (i2 > 0) {
                                        path2.lineTo(f2, f);
                                    } else {
                                        path2.moveTo(f2, f);
                                        f17 = f2;
                                        f18 = f;
                                    }
                                } else if (c3 != 'S') {
                                    if (c3 == 'T') {
                                        fArr = fArr3;
                                        i2 = i7;
                                        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                            f19 = (f19 * 2.0f) - f13;
                                            f20 = (f20 * 2.0f) - f14;
                                        }
                                        int i22 = i2 + 1;
                                        path2.quadTo(f19, f20, fArr[i2], fArr[i22]);
                                        f2 = fArr[i2];
                                        f = fArr[i22];
                                        pathParser$PathDataNode = pathParser$PathDataNode3;
                                        f13 = f19;
                                        f14 = f20;
                                    } else if (c3 == 'l') {
                                        fArr = fArr3;
                                        i2 = i7;
                                        int i23 = i2 + 1;
                                        path2.rLineTo(fArr[i2], fArr[i23]);
                                        f19 += fArr[i2];
                                        f6 = fArr[i23];
                                    } else if (c3 == 'm') {
                                        fArr = fArr3;
                                        i2 = i7;
                                        float f31 = fArr[i2];
                                        f19 += f31;
                                        float f32 = fArr[i2 + 1];
                                        f20 += f32;
                                        if (i2 > 0) {
                                            path2.rLineTo(f31, f32);
                                        } else {
                                            path2.rMoveTo(f31, f32);
                                            pathParser$PathDataNode = pathParser$PathDataNode3;
                                            f2 = f19;
                                            f17 = f2;
                                            f = f20;
                                            f18 = f;
                                        }
                                    } else if (c3 != 's') {
                                        if (c3 != 't') {
                                            fArr = fArr3;
                                            i2 = i7;
                                            pathParser$PathDataNode = pathParser$PathDataNode3;
                                            f2 = f19;
                                        } else {
                                            if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                                f9 = f19 - f13;
                                                f10 = f20 - f14;
                                            } else {
                                                f10 = 0.0f;
                                                f9 = 0.0f;
                                            }
                                            int i24 = i7 + 1;
                                            path2.rQuadTo(f9, f10, fArr3[i7], fArr3[i24]);
                                            float f33 = f9 + f19;
                                            float f34 = f10 + f20;
                                            float f35 = f19 + fArr3[i7];
                                            f20 += fArr3[i24];
                                            f14 = f34;
                                            fArr = fArr3;
                                            i2 = i7;
                                            pathParser$PathDataNode = pathParser$PathDataNode3;
                                            f2 = f35;
                                            f13 = f33;
                                        }
                                        f = f20;
                                    } else {
                                        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                            f7 = f20 - f14;
                                            f8 = f19 - f13;
                                        } else {
                                            f8 = 0.0f;
                                            f7 = 0.0f;
                                        }
                                        int i25 = i7;
                                        int i26 = i25 + 1;
                                        int i27 = i25 + 2;
                                        int i28 = i25 + 3;
                                        fArr = fArr3;
                                        i2 = i25;
                                        path2.rCubicTo(f8, f7, fArr3[i25], fArr3[i26], fArr3[i27], fArr3[i28]);
                                        f3 = fArr[i2] + f19;
                                        f4 = fArr[i26] + f20;
                                        f19 += fArr[i27];
                                        f5 = fArr[i28];
                                    }
                                    i3 = i5;
                                    c = c3;
                                } else {
                                    fArr = fArr3;
                                    i2 = i7;
                                    if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                        f19 = (f19 * 2.0f) - f13;
                                        f20 = (f20 * 2.0f) - f14;
                                    }
                                    float f36 = f19;
                                    float f37 = f20;
                                    int i29 = i2 + 1;
                                    int i30 = i2 + 2;
                                    int i31 = i2 + 3;
                                    path2.cubicTo(f36, f37, fArr[i2], fArr[i29], fArr[i30], fArr[i31]);
                                    f13 = fArr[i2];
                                    f14 = fArr[i29];
                                    f2 = fArr[i30];
                                    f = fArr[i31];
                                }
                                i3 = i5;
                                pathParser$PathDataNode = pathParser$PathDataNode3;
                                c = c3;
                            } else {
                                fArr = fArr3;
                                i2 = i7;
                                path2.rLineTo(0.0f, fArr[i2]);
                                f6 = fArr[i2];
                            }
                            f20 += f6;
                        } else {
                            fArr = fArr3;
                            i2 = i7;
                            int i32 = i2 + 1;
                            int i33 = i2 + 2;
                            int i34 = i2 + 3;
                            path2.rQuadTo(fArr[i2], fArr[i32], fArr[i33], fArr[i34]);
                            f3 = fArr[i2] + f19;
                            f4 = fArr[i32] + f20;
                            f19 += fArr[i33];
                            f5 = fArr[i34];
                        }
                        f20 += f5;
                        f13 = f3;
                        f14 = f4;
                    } else {
                        fArr = fArr3;
                        i2 = i7;
                        path2.rLineTo(fArr[i2], 0.0f);
                        f19 += fArr[i2];
                    }
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    f2 = f19;
                    f = f20;
                    i3 = i5;
                    c = c3;
                } else {
                    fArr = fArr3;
                    i2 = i7;
                    int i35 = i2 + 5;
                    float f38 = fArr[i35] + f19;
                    int i36 = i2 + 6;
                    float f39 = fArr[i36] + f20;
                    float f40 = fArr[i2];
                    float f41 = fArr[i2 + 1];
                    float f42 = fArr[i2 + 2];
                    if (fArr[i2 + 3] != 0.0f) {
                        pathParser$PathDataNode2 = pathParser$PathDataNode3;
                        z = 1;
                    } else {
                        pathParser$PathDataNode2 = pathParser$PathDataNode3;
                        z = i6;
                    }
                    pathParser$PathDataNode = pathParser$PathDataNode2;
                    float f43 = f19;
                    c = c3;
                    float f44 = f20;
                    i3 = i5;
                    PathParser$PathDataNode.drawArc(path, f43, f44, f38, f39, f40, f41, f42, z, fArr[i2 + 4] != 0.0f ? 1 : i6);
                    f2 = f43 + fArr[i35];
                    f = f44 + fArr[i36];
                    f13 = f2;
                    f14 = f;
                }
                i7 = i2 + i;
                path2 = path;
                pathParser$PathDataNode3 = pathParser$PathDataNode;
                c3 = c;
                i5 = i3;
                f19 = f2;
                f20 = f;
                c2 = c3;
                fArr3 = fArr;
            }
            fArr2[i6] = f19;
            fArr2[1] = f20;
            fArr2[2] = f13;
            fArr2[3] = f14;
            fArr2[4] = f17;
            fArr2[5] = f18;
            c2 = pathParser$PathDataNode3.mType;
            i5++;
            pathParser$PathDataNodeArr2 = pathParser$PathDataNodeArr;
            path2 = path;
            i4 = i6;
        }
    }

    public static void onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:203:0x04f3, code lost:
    
        if (r5 == androidx.compose.runtime.Composer.Companion.Empty) goto L205;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.graphics.painter.Painter painterResource(int r45, androidx.compose.runtime.Composer r46, int r47) {
        /*
            Method dump skipped, instructions count: 1338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.math.MathKt.painterResource(int, androidx.compose.runtime.Composer, int):androidx.compose.ui.graphics.painter.Painter");
    }

    public static MessageReference parse(String str) {
        if (str == null || str.length() == 0 || str.charAt(0) != '#') {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str.substring(2), ":", false);
        if (stringTokenizer.countTokens() < 3) {
            return null;
        }
        String decode = Base64.decode(stringTokenizer.nextToken());
        String decode2 = Base64.decode(stringTokenizer.nextToken());
        decode2.getClass();
        long parseLong = Long.parseLong(decode2);
        String decode3 = Base64.decode(stringTokenizer.nextToken());
        decode.getClass();
        decode3.getClass();
        return new MessageReference(parseLong, decode, decode3);
    }

    public static final void requireNotLocalUid(String str) {
        if (str == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return;
        }
        if (StringsKt__StringsJVMKt.startsWith(str, "K9LOCAL:", false)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) "Local UID found: ".concat(str));
        }
    }

    public static final void requireValidUids(Map map) {
        if (map == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            requireNotLocalUid(str);
            if (str2 == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                return;
            }
        }
    }

    public static final int resolveColorAttribute(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue.data;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m(i, "Couldn't resolve attribute (", ")"));
        return 0;
    }

    public static int roundToInt(double d) {
        if (Double.isNaN(d)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot round NaN value.");
            return 0;
        }
        if (d > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d);
    }

    public static long roundToLong(double d) {
        if (!Double.isNaN(d)) {
            return Math.round(d);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Cannot round NaN value.");
        return 0L;
    }

    public static final Object toRoute(NavBackStackEntry navBackStackEntry, ClassReference classReference) {
        navBackStackEntry.getClass();
        Bundle arguments$navigation_common_release = navBackStackEntry.impl.getArguments$navigation_common_release();
        if (arguments$navigation_common_release == null) {
            arguments$navigation_common_release = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        }
        Map arguments = navBackStackEntry.destination.getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(arguments.size()));
        for (Map.Entry entry : arguments.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).type);
        }
        return ByteStreamsKt.serializer(classReference).deserialize(new RouteDecoder(arguments$navigation_common_release, linkedHashMap));
    }

    public abstract boolean isAppearanceLightStatusBars();

    public abstract void setAppearanceLightStatusBars(boolean z);

    public void setAppearanceLightNavigationBars(boolean z) {
    }

    public static int roundToInt(float f) {
        if (!Float.isNaN(f)) {
            return Math.round(f);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Cannot round NaN value.");
        return 0;
    }
}
