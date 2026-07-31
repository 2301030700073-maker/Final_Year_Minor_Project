package androidx.compose.ui.unit;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.DragEvent;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.compat.Api24Compat;
import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
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
import androidx.core.content.res.ResourcesCompat;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.widget.TextViewCompat$OreoCallback;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavType;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.webkit.internal.ApiHelperForP;
import androidx.work.BackoffPolicy;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonIconColors;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.certificate.domain.entity.ServerCertificateProperties;
import app.k9mail.feature.account.server.certificate.ui.DefaultFingerprintFormatter;
import app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationMainScreenKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.migration.qrcode.domain.entity.AccountData;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.preferences.K9StorageEditor;
import j$.net.URLDecoder;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.slf4j.helpers.Util;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IntRectKt {
    public static ImageVector _expandLess = null;
    public static ImageVector _notifications = null;
    public static volatile boolean shouldCallAppCompatResources = true;

    public static final void BulletedListItem(String str, Composer composer, int i) {
        String str2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1481277853);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
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
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE("•", OffsetKt.m220paddingVpY3zN4$default(companion, 4.0f, 0.0f, 2), 0L, null, 0, 0, gapComposer, 6, 60);
            str2 = str;
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(str2, null, 0L, null, 0, 0, gapComposer, i2 & 14, 62);
            gapComposer.end(true);
        } else {
            str2 = str;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LoadingItemKt$$ExternalSyntheticLambda0(str2, i, 7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ButtonIcon(kotlin.jvm.functions.Function0 r24, androidx.compose.ui.graphics.vector.ImageVector r25, androidx.compose.ui.Modifier r26, boolean r27, java.lang.String r28, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonIconColors r29, androidx.compose.runtime.Composer r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.unit.IntRectKt.ButtonIcon(kotlin.jvm.functions.Function0, androidx.compose.ui.graphics.vector.ImageVector, androidx.compose.ui.Modifier, boolean, java.lang.String, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonIconColors, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void Fingerprint(String str, ByteString byteString, DefaultFingerprintFormatter defaultFingerprintFormatter, Composer composer, int i) {
        String str2;
        int i2;
        byte[] bArr = byteString.data;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-699816620);
        if ((i & 6) == 0) {
            str2 = str;
            i2 = (gapComposer.changed(str2) ? 4 : 2) | i;
        } else {
            str2 = str;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(byteString) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(defaultFingerprintFormatter) : gapComposer.changedInstance(defaultFingerprintFormatter) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            long j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurfaceVariant;
            defaultFingerprintFormatter.getClass();
            if (bArr.length <= 0) {
                UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                return;
            }
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            DefaultFingerprintFormatter.appendByteAsHexNumber(builder, bArr[0]);
            int length = bArr.length;
            int i3 = 1;
            while (i3 < length) {
                long j2 = j;
                int pushStyle = builder.pushStyle(new SpanStyle(j2, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534));
                try {
                    builder.append(":");
                    builder.pop(pushStyle);
                    builder.text.append((char) 8203);
                    DefaultFingerprintFormatter.appendByteAsHexNumber(builder, bArr[i3]);
                    i3++;
                    j = j2;
                } catch (Throwable th) {
                    builder.pop(pushStyle);
                    throw th;
                }
            }
            AnnotatedString annotatedString = builder.toAnnotatedString();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j3 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j3 ^ (j3 >>> 32));
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            RelationUtil.m809TextTitleSmallXl4FiYE(str2, (Modifier) null, 0L, 0, 0, gapComposer, i2 & 14, 62);
            Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(annotatedString, null, 0L, 0, 0, gapComposer, 0, 62);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 16.0f));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(str, byteString, defaultFingerprintFormatter, i, 21);
        }
    }

    /* renamed from: IntRect-VbeCjmY, reason: not valid java name */
    public static final IntRect m764IntRectVbeCjmY(long j, long j2) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new IntRect(i, i2, ((int) (j2 >> 32)) + i, ((int) (j2 & 4294967295L)) + i2);
    }

    public static final void ServerCertificateView(ServerCertificateProperties serverCertificateProperties, Modifier modifier, DefaultServerNameFormatter defaultServerNameFormatter, DefaultFingerprintFormatter defaultFingerprintFormatter, Composer composer, int i) {
        Modifier modifier2;
        DefaultServerNameFormatter defaultServerNameFormatter2;
        DefaultFingerprintFormatter defaultFingerprintFormatter2;
        DefaultFingerprintFormatter defaultFingerprintFormatter3;
        DefaultServerNameFormatter defaultServerNameFormatter3;
        Modifier modifier3;
        ArrayList arrayList = serverCertificateProperties.subjectAlternativeNames;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-97106643);
        int i2 = i | (gapComposer.changedInstance(serverCertificateProperties) ? 4 : 2) | 1200;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                Object obj2 = rememberedValue;
                if (changed || rememberedValue == obj) {
                    obj2 = ViewSizeResolver.CC.m(DefaultServerNameFormatter.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                DefaultServerNameFormatter defaultServerNameFormatter4 = (DefaultServerNameFormatter) obj2;
                Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope2);
                Object rememberedValue2 = gapComposer.rememberedValue();
                Object obj3 = rememberedValue2;
                if (changed2 || rememberedValue2 == obj) {
                    obj3 = ViewSizeResolver.CC.m(DefaultFingerprintFormatter.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer);
                }
                defaultFingerprintFormatter3 = (DefaultFingerprintFormatter) obj3;
                defaultServerNameFormatter3 = defaultServerNameFormatter4;
                modifier3 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                defaultServerNameFormatter3 = defaultServerNameFormatter;
                defaultFingerprintFormatter3 = defaultFingerprintFormatter;
            }
            gapComposer.endDefaults();
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(modifier3, 16.0f, 16.0f, 16.0f, 0.0f, 8);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            DefaultFingerprintFormatter defaultFingerprintFormatter4 = defaultFingerprintFormatter3;
            DBUtil.m807TextTitleLargeXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_section_title), null, 0L, null, 0, 0, gapComposer, 0, 62);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 16.0f));
            if (arrayList.isEmpty()) {
                gapComposer.startReplaceGroup(-1567794113);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1568167942);
                RelationUtil.m809TextTitleSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_subject_alternative_names), (Modifier) null, 0L, 0, 0, gapComposer, 0, 62);
                gapComposer.startReplaceGroup(-1436055749);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    defaultServerNameFormatter3.getClass();
                    BulletedListItem(DefaultServerNameFormatter.format(str), gapComposer, 0);
                }
                gapComposer.end(false);
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                OffsetKt.Spacer(gapComposer, SizeKt.m226height3ABfNKs(companion, 16.0f));
                gapComposer.end(false);
            }
            RelationUtil.m809TextTitleSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_not_valid_before), (Modifier) null, 0L, 0, 0, gapComposer, 0, 62);
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(serverCertificateProperties.notValidBefore, null, 0L, null, 0, 0, gapComposer, 0, 62);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2), companion, 8.0f, gapComposer);
            RelationUtil.m809TextTitleSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_not_valid_after), (Modifier) null, 0L, 0, 0, gapComposer, 0, 62);
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(serverCertificateProperties.notValidAfter, null, 0L, null, 0, 0, gapComposer, 0, 62);
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2), companion, 16.0f, gapComposer);
            RelationUtil.m809TextTitleSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_subject), (Modifier) null, 0L, 0, 0, gapComposer, 0, 62);
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(serverCertificateProperties.subject, null, 0L, null, 0, 0, gapComposer, 0, 62);
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2), companion, 16.0f, gapComposer);
            RelationUtil.m809TextTitleSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_issuer), (Modifier) null, 0L, 0, 0, gapComposer, 0, 62);
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(serverCertificateProperties.issuer, null, 0L, null, 0, 0, gapComposer, 0, 62);
            gapComposer = gapComposer;
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2), companion, 16.0f, gapComposer);
            Util.m1093TextLabelSmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_server_certificate_fingerprints_section), null, 0L, 0, 0, gapComposer, 0, 62);
            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal2), companion, 8.0f, gapComposer);
            Fingerprint("SHA-1", serverCertificateProperties.fingerprintSha1, defaultFingerprintFormatter4, gapComposer, 6);
            Fingerprint("SHA-256", serverCertificateProperties.fingerprintSha256, defaultFingerprintFormatter4, gapComposer, 6);
            Fingerprint("SHA-512", serverCertificateProperties.fingerprintSha512, defaultFingerprintFormatter4, gapComposer, 6);
            gapComposer.end(true);
            defaultFingerprintFormatter2 = defaultFingerprintFormatter4;
            modifier2 = modifier3;
            defaultServerNameFormatter2 = defaultServerNameFormatter3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            defaultServerNameFormatter2 = defaultServerNameFormatter;
            defaultFingerprintFormatter2 = defaultFingerprintFormatter;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(serverCertificateProperties, modifier2, defaultServerNameFormatter2, defaultFingerprintFormatter2, i, 3);
        }
    }

    public static final void ServerValidationMainScreen(BaseServerValidationViewModel baseServerValidationViewModel, BrandNameProvider brandNameProvider, Modifier modifier, Composer composer, int i) {
        int i2;
        baseServerValidationViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1981730437);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(baseServerValidationViewModel) : gapComposer.changedInstance(baseServerValidationViewModel) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(brandNameProvider) : gapComposer.changedInstance(brandNameProvider) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        int i4 = 0;
        int i5 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(baseServerValidationViewModel.state, gapComposer);
            boolean z = (((i2 & 14) ^ 6) > 4 && gapComposer.changedInstance(baseServerValidationViewModel)) || (i2 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(baseServerValidationViewModel, 4);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(modifier, FlowRowOverflow.current(gapComposer).navigationBars), Expect_jvmKt.rememberComposableLambda(1941402697, new CreateAccountScreenKt$$ExternalSyntheticLambda1(brandNameProvider, i5), gapComposer), Expect_jvmKt.rememberComposableLambda(1951173258, new Updater$$ExternalSyntheticLambda0(i3, function1), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(-616473839, new ServerValidationMainScreenKt$$ExternalSyntheticLambda2(collectAsStateWithLifecycle, baseServerValidationViewModel, function1, i4), gapComposer), gapComposer, 1573296, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(baseServerValidationViewModel, brandNameProvider, modifier, i, 22);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0045  */
    /* renamed from: TextHeadlineSmall-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m765TextHeadlineSmallXl4FiYE(java.lang.String r32, androidx.compose.ui.Modifier r33, long r34, androidx.compose.ui.text.style.TextAlign r36, int r37, int r38, androidx.compose.runtime.Composer r39, int r40, int r41) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.unit.IntRectKt.m765TextHeadlineSmallXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.ui.text.style.TextAlign, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final GapAnchor asGapAnchor(GapAnchor gapAnchor) {
        if (gapAnchor == null) {
            gapAnchor = null;
        }
        if (gapAnchor != null) {
            return gapAnchor;
        }
        ComposerKt.composeRuntimeError("Inconsistent composition");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }

    public static long calculateNextRunTime(boolean z, int i, BackoffPolicy backoffPolicy, long j, long j2, int i2, boolean z2, long j3, long j4, long j5, long j6) {
        backoffPolicy.getClass();
        if (j6 != Long.MAX_VALUE && z2) {
            if (i2 != 0) {
                long j7 = j2 + 900000;
                if (j6 < j7) {
                    return j7;
                }
            }
            return j6;
        }
        if (z) {
            long scalb = backoffPolicy == BackoffPolicy.LINEAR ? j * i : (long) Math.scalb(j, i - 1);
            if (scalb > 18000000) {
                scalb = 18000000;
            }
            return j2 + scalb;
        }
        if (z2) {
            long j8 = i2 == 0 ? j2 + j3 : j2 + j5;
            return (j4 == j5 || i2 != 0) ? j8 : (j5 - j4) + j8;
        }
        if (j2 == -1) {
            return Long.MAX_VALUE;
        }
        return j2 + j3;
    }

    public static NavType checkNavType$navigation_runtime_release(TypedValue typedValue, NavType navType, NavType navType2, String str, String str2) {
        if (navType == null || navType == navType2) {
            return navType == null ? navType2 : navType;
        }
        StringBuilder m = Config.CC.m("Type is ", str, " but found ", str2, ": ");
        m.append(typedValue.data);
        throw new XmlPullParserException(m.toString());
    }

    public static String decodeUtf8(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            DBUtil$$ExternalSyntheticBUOutline0.m("UTF-8 not found");
            return null;
        }
    }

    /* renamed from: finalConstraints-tfFHcEY, reason: not valid java name */
    public static final long m766finalConstraintstfFHcEY(long j, boolean z, int i, float f) {
        int m734getMaxWidthimpl = ((z || i == 2 || i == 4 || i == 5) && Constraints.m730getHasBoundedWidthimpl(j)) ? Constraints.m734getMaxWidthimpl(j) : Integer.MAX_VALUE;
        if (Constraints.m736getMinWidthimpl(j) != m734getMaxWidthimpl) {
            m734getMaxWidthimpl = RangesKt.coerceIn(BasicTextKt.ceilToIntPx(f), Constraints.m736getMinWidthimpl(j), m734getMaxWidthimpl);
        }
        return MathKt.m987fitPrioritizingWidthZbe2FdA(0, m734getMaxWidthimpl, 0, Constraints.m733getMaxHeightimpl(j));
    }

    public static Drawable getDrawable(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (shouldCallAppCompatResources) {
                return loadDrawableV7(context2, i, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return context2.getDrawable(i);
        } catch (NoClassDefFoundError unused2) {
            shouldCallAppCompatResources = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        return resources.getDrawable(i, theme);
    }

    public static final long getPositionInRoot(PreviewView.AnonymousClass1 anonymousClass1) {
        DragEvent dragEvent = (DragEvent) anonymousClass1.this$0;
        float x = dragEvent.getX();
        float y = dragEvent.getY();
        return (Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L);
    }

    public static int getResId(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return ApiHelperForP.getResId(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon resource", e);
            return 0;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        }
    }

    public static String getResPackage(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return ApiHelperForP.getResPackage(obj);
        }
        try {
            return (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon package", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        }
    }

    public static PrecomputedTextCompat.Params getTextMetricsParams(AppCompatTextView appCompatTextView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new PrecomputedTextCompat.Params(ApiHelperForP.getTextMetricsParams(appCompatTextView));
        }
        TextPaint textPaint = new TextPaint(appCompatTextView.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = appCompatTextView.getBreakStrategy();
        int hyphenationFrequency = appCompatTextView.getHyphenationFrequency();
        if (appCompatTextView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            if (i < 28 || (appCompatTextView.getInputType() & 15) != 3) {
                boolean z = appCompatTextView.getLayoutDirection() == 1;
                switch (appCompatTextView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                        break;
                }
            } else {
                byte directionality = Character.getDirectionality(ApiHelperForP.getDigitStrings(Api24Compat.getInstance(appCompatTextView.getTextLocale()))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
        }
        return new PrecomputedTextCompat.Params(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static int getType(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return ApiHelperForP.getType(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e3);
            return -1;
        }
    }

    public static Uri getUri(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return ApiHelperForP.getUri(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon uri", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        }
    }

    public static boolean isPunctuation$ui_text(int i) {
        int type = Character.getType(i);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    public static Drawable loadDrawableV7(Context context, int i, Resources.Theme theme) {
        if (theme != null) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context);
            contextThemeWrapper.mTheme = theme;
            contextThemeWrapper.applyOverrideConfiguration(theme.getResources().getConfiguration());
            context = contextThemeWrapper;
        }
        return Utf8.SafeProcessor.getDrawable(context, i);
    }

    public static final String mapToSettingsString(AccountData.AuthenticationType authenticationType) {
        authenticationType.getClass();
        int ordinal = authenticationType.ordinal();
        if (ordinal == 0) {
            return "NONE";
        }
        if (ordinal == 1) {
            return "PLAIN";
        }
        if (ordinal == 2) {
            return "CRAM_MD5";
        }
        if (ordinal == 3) {
            return "EXTERNAL";
        }
        if (ordinal == 4) {
            return "XOAUTH2";
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static void preRotate(float[] fArr, float f) {
        Matrix.translateM(fArr, 0, 0.5f, 0.5f, 0.0f);
        Matrix.rotateM(fArr, 0, f, 0.0f, 0.0f, 1.0f);
        Matrix.translateM(fArr, 0, -0.5f, -0.5f, 0.0f);
    }

    public static void preVerticalFlip(float[] fArr) {
        Matrix.translateM(fArr, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr, 0, -0.0f, -0.5f, 0.0f);
    }

    /* renamed from: putStringList-impl, reason: not valid java name */
    public static final void m767putStringListimpl(Bundle bundle, String str, List list) {
        bundle.putStringArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
    }

    public static final void putStringWithLogging(K9StorageEditor k9StorageEditor, String str, String str2, boolean z, boolean z2) {
        if (z) {
            net.thunderbird.core.logging.legacy.Log.v("Setting %s=%s", str, (z2 || !(StringsKt__StringsJVMKt.endsWith(str, ".outgoingServerSettings", false) || StringsKt__StringsJVMKt.endsWith(str, ".incomingServerSettings", false))) ? str2 : "*sensitive*");
        }
        k9StorageEditor.putString(str, str2);
    }

    public static final IntRect roundToIntRect(Rect rect) {
        return new IntRect(Math.round(rect.left), Math.round(rect.top), Math.round(rect.right), Math.round(rect.bottom));
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            ApiHelperForP.setFirstBaselineToTopHeight(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static void setLastBaselineToBottomHeight(TextView textView, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void setLineHeight(TextView textView, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            return;
        }
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static boolean shouldShowRecipients(DefaultOutboxFolderManager defaultOutboxFolderManager, LegacyAccount legacyAccount, long j) {
        Long l = legacyAccount.inboxFolderId;
        if (l != null && j == l.longValue()) {
            return false;
        }
        Long l2 = legacyAccount.archiveFolderId;
        if (l2 != null && j == l2.longValue()) {
            return false;
        }
        Long l3 = legacyAccount.spamFolderId;
        if (l3 != null && j == l3.longValue()) {
            return false;
        }
        Long l4 = legacyAccount.trashFolderId;
        if (l4 != null && j == l4.longValue()) {
            return false;
        }
        Long l5 = legacyAccount.sentFolderId;
        if (l5 != null && j == l5.longValue()) {
            return true;
        }
        Long l6 = legacyAccount.draftsFolderId;
        return (l6 != null && j == l6.longValue()) || j == Sink$CC.getOutboxFolderIdSync$default(defaultOutboxFolderManager, legacyAccount.id);
    }

    public static final AuthType toAuthType(AuthenticationType authenticationType) {
        authenticationType.getClass();
        int ordinal = authenticationType.ordinal();
        if (ordinal == 0) {
            return AuthType.NONE;
        }
        if (ordinal == 1) {
            return AuthType.PLAIN;
        }
        if (ordinal == 2) {
            return AuthType.CRAM_MD5;
        }
        if (ordinal == 3) {
            return AuthType.EXTERNAL;
        }
        if (ordinal == 4) {
            return AuthType.XOAUTH2;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final AuthenticationType toAuthenticationType(AuthType authType) {
        authType.getClass();
        int ordinal = authType.ordinal();
        if (ordinal == 0) {
            return AuthenticationType.PasswordCleartext;
        }
        if (ordinal == 1) {
            return AuthenticationType.PasswordEncrypted;
        }
        if (ordinal == 2) {
            return AuthenticationType.ClientCertificate;
        }
        if (ordinal == 3) {
            return AuthenticationType.OAuth2;
        }
        if (ordinal == 4) {
            return AuthenticationType.None;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final ButtonIconColors toButtonIconColors(IconButtonColors iconButtonColors) {
        return new ButtonIconColors(iconButtonColors.containerColor, iconButtonColors.contentColor, iconButtonColors.disabledContainerColor, iconButtonColors.disabledContentColor);
    }

    public static ActionMode.Callback unwrapCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        return (!(callback instanceof TextViewCompat$OreoCallback) || Build.VERSION.SDK_INT < 26) ? callback : ((TextViewCompat$OreoCallback) callback).mCallback;
    }

    public static ActionMode.Callback wrapCustomSelectionActionModeCallback(ActionMode.Callback callback, TextView textView) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof TextViewCompat$OreoCallback) || callback == null) ? callback : new TextViewCompat$OreoCallback(callback, textView);
    }

    public abstract boolean getBoolean(String str, boolean z);

    public abstract InputFilter[] getFilters(InputFilter[] inputFilterArr);

    public abstract boolean isEnabled();

    public abstract void onFontRetrievalFailed(int i);

    public abstract void onFontRetrieved(Typeface typeface, boolean z);

    public abstract void putBoolean(String str, boolean z);

    public void putInt(String str, int i) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putLong(long j, String str) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putString(String str, String str2) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putStringSet(String str, Set set) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public abstract void setAllCaps(boolean z);

    public abstract void setEnabled(boolean z);

    public abstract TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod);

    public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
    }

    public static final String mapToSettingsString(AccountData.ConnectionSecurity connectionSecurity) {
        connectionSecurity.getClass();
        int ordinal = connectionSecurity.ordinal();
        if (ordinal == 0) {
            return "NONE";
        }
        if (ordinal == 1) {
            return "STARTTLS_REQUIRED";
        }
        if (ordinal == 2) {
            return "SSL_TLS_REQUIRED";
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public int getInt(String str, int i) {
        return i;
    }

    public long getLong(long j, String str) {
        return j;
    }

    public String getString(String str, String str2) {
        return str2;
    }

    public Set getStringSet(String str, Set set) {
        return set;
    }

    public void onAuthenticationError(int i, CharSequence charSequence) {
    }
}
