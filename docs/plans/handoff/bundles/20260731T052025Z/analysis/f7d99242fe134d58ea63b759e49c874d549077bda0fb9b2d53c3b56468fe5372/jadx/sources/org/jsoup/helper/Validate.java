package org.jsoup.helper;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.hardware.camera2.CameraAccessException;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Layout;
import android.util.Log;
import android.view.View;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.ActionBar;
import androidx.camera.view.PreviewView;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.modifiers.MinLinesConstrainer;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.style.IndentationFixSpan_androidKt$WhenMappings;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.core.util.DebugUtils;
import androidx.core.view.ViewKt$allViews$1;
import androidx.customview.poolingcontainer.PoolingContainerListenerHolder;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.sqlite.SQLite;
import androidx.work.Configuration;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import app.k9mail.core.android.common.contact.CachingContactRepository;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.core.ui.compose.designsystem.atom.text.TextBodySmallKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldLabelKt;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Error;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.fsck.k9.R;
import com.fsck.k9.activity.setup.AccountSetupCompositionKt$$ExternalSyntheticLambda2;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.message.MessageHeaderCollector;
import com.fsck.k9.ui.messagelist.MessageListAppearance;
import com.fsck.k9.ui.messagelist.MessageListItem;
import com.google.android.material.shape.ShapePath;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.state.Account;
import net.thunderbird.feature.mail.message.list.ui.state.Avatar;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressStyle;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import okhttp3.CacheControl;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okio.Okio;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.stream.MimeConfig;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SoftPool;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Validate {
    public static ImageVector _expandMore;
    public static ImageVector _outbox;

    /* JADX WARN: Removed duplicated region for block: B:103:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ButtonOutlined(java.lang.String r20, kotlin.jvm.functions.Function0 r21, androidx.compose.ui.Modifier r22, boolean r23, androidx.compose.ui.graphics.vector.ImageVector r24, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors r25, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonShape r26, androidx.compose.foundation.layout.PaddingValues r27, androidx.compose.runtime.Composer r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.Validate.ButtonOutlined(java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.vector.ImageVector, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonShape, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void CameraPreviewView(final DrawResult drawResult, final Modifier modifier, Composer composer, final int i) {
        GapComposer gapComposer;
        RecomposeScopeImpl endRestartGroup;
        Function2 function2;
        drawResult.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-475431081);
        int i2 = (gapComposer2.changed(drawResult) ? 4 : 2) | i | (gapComposer2.changed(modifier) ? 32 : 16);
        final int i3 = 1;
        if (!gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            GapComposer gapComposer3 = gapComposer2;
            gapComposer3.skipToGroupEnd();
            gapComposer = gapComposer3;
        } else {
            if (((Boolean) gapComposer2.consume(InspectionModeKt.LocalInspectionMode)).booleanValue()) {
                gapComposer2.startReplaceGroup(1234963976);
                DBUtil.m807TextTitleLargeXl4FiYE("Camera preview", ImageKt.m132backgroundbw27NRU(modifier, Color.DarkGray, ColorKt.RectangleShape), 0L, new TextAlign(3), 0, 0, gapComposer2, 6, 52);
                gapComposer2.end(false);
                endRestartGroup = gapComposer2.endRestartGroup();
                if (endRestartGroup != null) {
                    function2 = new Function2(drawResult, modifier, i, r5) { // from class: app.k9mail.feature.migration.qrcode.ui.CameraPreviewViewKt$$ExternalSyntheticLambda0
                        public final /* synthetic */ int $r8$classId;
                        public final /* synthetic */ DrawResult f$0;
                        public final /* synthetic */ Modifier f$1;

                        {
                            this.$r8$classId = r4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i4 = this.$r8$classId;
                            Unit unit = Unit.INSTANCE;
                            Modifier modifier2 = this.f$1;
                            DrawResult drawResult2 = this.f$0;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i4) {
                                case 0:
                                    Validate.CameraPreviewView(drawResult2, modifier2, composer2, Updater.updateChangedFlags(1));
                                    break;
                                default:
                                    Validate.CameraPreviewView(drawResult2, modifier2, composer2, Updater.updateChangedFlags(1));
                                    break;
                            }
                            return unit;
                        }
                    };
                    endRestartGroup.block = function2;
                }
                return;
            }
            GapComposer gapComposer4 = gapComposer2;
            gapComposer4.startReplaceGroup(1235151371);
            gapComposer4.end(false);
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposer4.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            Context context = (Context) gapComposer4.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Object rememberedValue = gapComposer4.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            Object obj = rememberedValue;
            if (rememberedValue == neverEqualPolicy) {
                PreviewView previewView = new PreviewView(context);
                previewView.setBackgroundColor(0);
                previewView.setScaleType(PreviewView.ScaleType.FIT_CENTER);
                gapComposer4.updateRememberedValue(previewView);
                obj = previewView;
            }
            PreviewView previewView2 = (PreviewView) obj;
            int i4 = (gapComposer4.changedInstance(context) ? 1 : 0) | ((i2 & 14) == 4 ? 1 : 0) | (gapComposer4.changedInstance(lifecycleOwner) ? 1 : 0) | (gapComposer4.changedInstance(previewView2) ? 1 : 0);
            Object rememberedValue2 = gapComposer4.rememberedValue();
            if (i4 != 0 || rememberedValue2 == neverEqualPolicy) {
                NavHostKt$NavHost$29$1 navHostKt$NavHost$29$1 = new NavHostKt$NavHost$29$1(context, drawResult, lifecycleOwner, previewView2, (Continuation) null, 20);
                gapComposer4.updateRememberedValue(navHostKt$NavHost$29$1);
                rememberedValue2 = navHostKt$NavHost$29$1;
            }
            Updater.LaunchedEffect(gapComposer4, 1, (Function2) rememberedValue2);
            boolean changedInstance = gapComposer4.changedInstance(previewView2);
            Object rememberedValue3 = gapComposer4.rememberedValue();
            Object obj2 = rememberedValue3;
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(26, previewView2);
                gapComposer4.updateRememberedValue(diskLruCache$$ExternalSyntheticLambda0);
                obj2 = diskLruCache$$ExternalSyntheticLambda0;
            }
            AndroidView_androidKt.AndroidView((Function1) obj2, modifier, null, gapComposer4, i2 & 112);
            gapComposer = gapComposer4;
        }
        endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            function2 = new Function2(drawResult, modifier, i, i3) { // from class: app.k9mail.feature.migration.qrcode.ui.CameraPreviewViewKt$$ExternalSyntheticLambda0
                public final /* synthetic */ int $r8$classId;
                public final /* synthetic */ DrawResult f$0;
                public final /* synthetic */ Modifier f$1;

                {
                    this.$r8$classId = i3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj22) {
                    int i42 = this.$r8$classId;
                    Unit unit = Unit.INSTANCE;
                    Modifier modifier2 = this.f$1;
                    DrawResult drawResult2 = this.f$0;
                    Composer composer2 = (Composer) obj3;
                    ((Integer) obj22).getClass();
                    switch (i42) {
                        case 0:
                            Validate.CameraPreviewView(drawResult2, modifier2, composer2, Updater.updateChangedFlags(1));
                            break;
                        default:
                            Validate.CameraPreviewView(drawResult2, modifier2, composer2, Updater.updateChangedFlags(1));
                            break;
                    }
                    return unit;
                }
            };
            endRestartGroup.block = function2;
        }
    }

    public static final void ClientCertificateInput(String str, Function1 function1, Modifier modifier, String str2, PaddingValuesImpl paddingValuesImpl, Composer composer, int i) {
        Modifier modifier2;
        Modifier modifier3;
        String str3;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-62160855);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | 384 | (gapComposer.changed(str2) ? 2048 : 1024) | (gapComposer.changed(paddingValuesImpl) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                modifier3 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            Modifier padding = OffsetKt.padding(companion, paddingValuesImpl);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier then = padding.then(fillElement).then(modifier3);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Object consume = gapComposer.consume(LocalActivityKt.LocalActivity);
            consume.getClass();
            Activity activity = (Activity) consume;
            if (str == null) {
                gapComposer.startReplaceGroup(-258706044);
                str3 = Operation$State.stringResource(gapComposer, R.string.account_server_settings_client_certificate_none_selected);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-258706323);
                gapComposer.end(false);
                str3 = str;
            }
            boolean changedInstance = ((i2 & 112) == 32) | gapComposer.changedInstance(activity) | ((i2 & 14) == 4);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ConnectPlan$$ExternalSyntheticLambda0(activity, function1, str, 11);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TextFieldLabelKt.TextFieldOutlinedFakeSelect(str3, (Function0) rememberedValue, fillElement, str2, gapComposer, (i2 & 7168) | 384);
            gapComposer.end(true);
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(str, function1, modifier2, str2, paddingValuesImpl, i, 4);
        }
    }

    public static final void MessageItemContent(MessageListItem messageListItem, boolean z, boolean z2, ContactRepository contactRepository, DefaultAvatarMonogramCreator defaultAvatarMonogramCreator, Function0 function0, Function0 function02, Function0 function03, Function1 function1, MessageListAppearance messageListAppearance, Composer composer, int i) {
        GapComposer gapComposer;
        String str;
        MessageListItem messageListItem2;
        CharSequence charSequence = messageListItem.displayName;
        Address address = messageListItem.displayAddress;
        contactRepository.getClass();
        defaultAvatarMonogramCreator.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        function1.getClass();
        messageListAppearance.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1052279749);
        int i2 = i | (gapComposer2.changedInstance(messageListItem) ? 4 : 2) | (gapComposer2.changed(z) ? 32 : 16) | (gapComposer2.changed(z2) ? 256 : 128) | (gapComposer2.changed(contactRepository) ? 2048 : 1024) | (gapComposer2.changed(defaultAvatarMonogramCreator) ? 16384 : 8192) | (gapComposer2.changedInstance(function0) ? 131072 : 65536) | (gapComposer2.changedInstance(function02) ? 1048576 : 524288) | (gapComposer2.changedInstance(function03) ? 8388608 : 4194304) | (gapComposer2.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer2.changedInstance(messageListAppearance) ? 536870912 : 268435456);
        boolean z3 = true;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 306783379) != 306783378)) {
            boolean changed = gapComposer2.changed(address != null ? address.address : null);
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changed || rememberedValue == obj) {
                if (address == null || (str = address.address) == null) {
                    str = "";
                }
                rememberedValue = Updater.mutableStateOf$default(((CachingContactRepository) contactRepository).getPhotoUri(str));
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            boolean changed2 = gapComposer2.changed(address != null ? address.address : null) | gapComposer2.changed(charSequence.toString());
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue2 == obj) {
                rememberedValue2 = Updater.mutableStateOf$default(DefaultAvatarMonogramCreator.create(charSequence.toString(), address != null ? address.address : null));
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            boolean z4 = messageListAppearance.showContactPicture;
            String str2 = (String) ((MutableState) rememberedValue2).getValue();
            Uri uri = (Uri) mutableState.getValue();
            String uri2 = uri != null ? uri.toString() : null;
            int i3 = (i2 & 896) | 8 | (i2 & 14) | ((i2 << 6) & 7168);
            boolean changed3 = ((((i3 & 896) ^ 384) > 256 && gapComposer2.changed(z2)) || (i3 & 384) == 256) | ((((i3 & 14) ^ 6) > 4 && gapComposer2.changed(messageListItem)) || (i3 & 6) == 4) | gapComposer2.changed(z4) | ((((i3 & 7168) ^ 3072) > 2048 && gapComposer2.changed(z)) || (i3 & 3072) == 2048) | gapComposer2.changed(str2) | gapComposer2.changed(uri2);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changed3 || rememberedValue3 == obj) {
                messageListItem2 = messageListItem;
                rememberedValue3 = toMessageItemUi(messageListItem2, z4, z2, z, str2, uri2);
                gapComposer2.updateRememberedValue(rememberedValue3);
            } else {
                messageListItem2 = messageListItem;
            }
            MessageItemUi messageItemUi = (MessageItemUi) rememberedValue3;
            int i4 = i2 & 1879048192;
            boolean z5 = i4 == 536870912 || gapComposer2.changed(messageListAppearance);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (z5 || rememberedValue4 == obj) {
                rememberedValue4 = new MessageListPreferences(messageListAppearance.density, messageListAppearance.showingThreadedList, false, messageListAppearance.showContactPicture, messageListAppearance.stars, messageListAppearance.senderAboveSubject, messageListAppearance.previewLines, messageListAppearance.dateTimeFormat, PersistentOrderedSet.EMPTY, messageListAppearance.backGroundAsReadIndicator);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            MessageListPreferences messageListPreferences = (MessageListPreferences) rememberedValue4;
            if (i4 != 536870912 && !gapComposer2.changed(messageListAppearance)) {
                z3 = false;
            }
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (z3 || rememberedValue5 == obj) {
                Object messageItemAccountIndicator = messageListAppearance.showAccountIndicator ? new MessageItemAccountIndicator(ColorKt.Color(messageListItem2.account.profile.color)) : null;
                gapComposer2.updateRememberedValue(messageItemAccountIndicator);
                rememberedValue5 = messageItemAccountIndicator;
            }
            MessageItemAccountIndicator messageItemAccountIndicator2 = (MessageItemAccountIndicator) rememberedValue5;
            if (messageListItem2.isRead) {
                gapComposer2.startReplaceGroup(1923585533);
                CacheControl.Companion.ReadMessageItem(messageItemUi, messageListPreferences, messageItemAccountIndicator2, function0, function02, function03, function1, null, gapComposer2, (i2 >> 6) & 4193280, 128);
                gapComposer = gapComposer2;
                gapComposer.end(false);
            } else {
                gapComposer = gapComposer2;
                gapComposer.startReplaceGroup(1923596095);
                Cookie.Companion.UnreadMessageItem(messageItemUi, messageListPreferences, messageItemAccountIndicator2, function0, function02, function03, function1, null, gapComposer, (i2 >> 6) & 4193280, 128);
                gapComposer.end(false);
            }
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AccountSetupCompositionKt$$ExternalSyntheticLambda2(messageListItem, z, z2, contactRepository, defaultAvatarMonogramCreator, function0, function02, function03, function1, messageListAppearance, i);
        }
    }

    public static final void ServerValidationScreen(Function0 function0, Function0 function02, BaseServerValidationViewModel baseServerValidationViewModel, BrandNameProvider brandNameProvider, Modifier modifier, String str, Composer composer, int i, int i2) {
        String str2;
        int i3;
        GapComposer gapComposer;
        BaseServerValidationViewModel baseServerValidationViewModel2;
        Modifier modifier2;
        String str3;
        function0.getClass();
        function02.getClass();
        baseServerValidationViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1526242568);
        int i4 = 4;
        int i5 = i | (gapComposer2.changedInstance(function0) ? 4 : 2) | (gapComposer2.changedInstance(function02) ? 32 : 16) | (gapComposer2.changedInstance(baseServerValidationViewModel) ? 256 : 128) | (gapComposer2.changed(brandNameProvider) ? 2048 : 1024);
        int i6 = i5 | 24576;
        int i7 = i2 & 32;
        if (i7 != 0) {
            i3 = i5 | 221184;
            str2 = str;
        } else {
            str2 = str;
            i3 = i6 | (gapComposer2.changed(str2) ? 131072 : 65536);
        }
        if (gapComposer2.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            Continuation continuation = null;
            String str4 = i7 != 0 ? null : str2;
            int i8 = i3 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(baseServerValidationViewModel.state, gapComposer2);
            boolean z = (((i8 & 14) ^ 6) > 4 && gapComposer2.changedInstance(baseServerValidationViewModel)) || (i8 & 6) == 4;
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(baseServerValidationViewModel, 5);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer2, baseServerValidationViewModel.effect, new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(baseServerValidationViewModel, continuation, function0, function02, 3));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            boolean changed = gapComposer2.changed(function1);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(i4, continuation, function1);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer2, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer2.changed(function1);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(21, function1);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer2, 0, 1);
            boolean z2 = ((ServerValidationContract$State) collectAsStateWithLifecycle.getValue()).error instanceof ServerValidationContract$Error.CertificateError;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            if (z2) {
                gapComposer2.startReplaceGroup(-1767909013);
                boolean changed3 = gapComposer2.changed(function1);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (changed3 || rememberedValue4 == obj) {
                    rememberedValue4 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(22, function1);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function03 = (Function0) rememberedValue4;
                boolean changed4 = gapComposer2.changed(function1);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changed4 || rememberedValue5 == obj) {
                    rememberedValue5 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(23, function1);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                gapComposer = gapComposer2;
                baseServerValidationViewModel2 = baseServerValidationViewModel;
                IntOffsetKt.ServerCertificateErrorScreen(function03, (Function0) rememberedValue5, companion, null, gapComposer, 384);
                gapComposer.end(false);
            } else {
                gapComposer = gapComposer2;
                baseServerValidationViewModel2 = baseServerValidationViewModel;
                gapComposer.startReplaceGroup(-1767675986);
                if (str4 != null) {
                    gapComposer.startReplaceGroup(-1767654565);
                    DBUtil.ServerValidationToolbarScreen(str4, baseServerValidationViewModel2, companion, gapComposer, ((i3 >> 15) & 14) | ((i3 >> 3) & 112) | 384);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-1767474362);
                    IntRectKt.ServerValidationMainScreen(baseServerValidationViewModel2, brandNameProvider, companion, gapComposer, i8 & 1022);
                    gapComposer.end(false);
                }
                gapComposer.end(false);
            }
            modifier2 = companion;
            str3 = str4;
        } else {
            gapComposer = gapComposer2;
            baseServerValidationViewModel2 = baseServerValidationViewModel;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            str3 = str2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(function0, function02, baseServerValidationViewModel2, brandNameProvider, modifier2, str3, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0045  */
    /* renamed from: TextLabelLarge-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1066TextLabelLargeXl4FiYE(java.lang.String r31, androidx.compose.ui.Modifier r32, long r33, int r35, int r36, androidx.compose.runtime.Composer r37, int r38, int r39) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.Validate.m1066TextLabelLargeXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: TextLabelLarge-ZHfKjFs, reason: not valid java name */
    public static final void m1067TextLabelLargeZHfKjFs(AnnotatedString annotatedString, Modifier modifier, long j, int i, int i2, PersistentMap persistentMap, Composer composer, int i3) {
        int i4;
        GapComposer gapComposer;
        int i5;
        int i6;
        PersistentMap persistentMap2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1676663197);
        if ((i3 & 6) == 0) {
            i4 = (gapComposer2.changed(annotatedString) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i4 |= gapComposer2.changed(j) ? 256 : 128;
        }
        int i7 = i4 | 1797120;
        if (gapComposer2.shouldExecute(i7 & 1, (599187 & i7) != 599186)) {
            PersistentOrderedMap persistentOrderedMap = PersistentOrderedMap.EMPTY;
            persistentOrderedMap.getClass();
            gapComposer = gapComposer2;
            TextKt.m363TextZ58ophY(annotatedString, modifier, j, 0L, 0L, null, 0L, 1, false, Integer.MAX_VALUE, 0, persistentOrderedMap, null, ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).labelLarge, gapComposer, i7 & 1022, ((i7 >> 9) & 14) | ((i7 >> 6) & 896) | ((i7 >> 3) & 57344) | (i7 & 3670016), 175096);
            i5 = 1;
            i6 = Integer.MAX_VALUE;
            persistentMap2 = persistentOrderedMap;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            i5 = i;
            i6 = i2;
            persistentMap2 = persistentMap;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextBodySmallKt$$ExternalSyntheticLambda1(annotatedString, modifier, j, i5, i6, persistentMap2, i3);
        }
    }

    /* renamed from: add-impl, reason: not valid java name */
    public static final void m1068addimpl(MutableIntList mutableIntList, int i) {
        if (mutableIntList._size == 0 || !(mutableIntList.get(0) == i || mutableIntList.get(mutableIntList._size - 1) == i)) {
            int i2 = mutableIntList._size;
            mutableIntList.add(i);
            while (i2 > 0) {
                int i3 = ((i2 + 1) >>> 1) - 1;
                int i4 = mutableIntList.get(i3);
                if (i <= i4) {
                    break;
                }
                mutableIntList.set(i2, i4);
                i2 = i3;
            }
            mutableIntList.set(i2, i);
        }
    }

    public static SetBuilder build(SetBuilder setBuilder) {
        MapBuilder mapBuilder = setBuilder.backing;
        mapBuilder.build();
        return mapBuilder.size > 0 ? setBuilder : SetBuilder.Empty;
    }

    public static final void callPoolingContainerOnRelease(View view) {
        view.getClass();
        SequenceBuilderIterator it = Base64.iterator(new ViewKt$allViews$1(view, null, 0));
        while (it.hasNext()) {
            ArrayList arrayList = getPoolingContainerListenerHolder((View) it.next()).listeners;
            for (int lastIndex = IntOffsetKt.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
                ((ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0) arrayList.get(lastIndex)).f$0.disposeComposition();
            }
        }
    }

    public static void checkMainThread() {
        RelationUtil.checkState("Not in application's main thread", isMainThread());
    }

    public static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] convertToLongArray(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        return jArr;
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1069equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static MinLinesConstrainer from(MinLinesConstrainer minLinesConstrainer, LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily$Resolver fontFamily$Resolver) {
        if (minLinesConstrainer != null && layoutDirection == minLinesConstrainer.layoutDirection && ParagraphKt.resolveDefaults(textStyle, layoutDirection).equals(minLinesConstrainer.inputTextStyle) && density.getDensity() == minLinesConstrainer.density.density && fontFamily$Resolver == minLinesConstrainer.fontFamilyResolver) {
            return minLinesConstrainer;
        }
        MinLinesConstrainer minLinesConstrainer2 = MinLinesConstrainer.last;
        if (minLinesConstrainer2 != null && layoutDirection == minLinesConstrainer2.layoutDirection && ParagraphKt.resolveDefaults(textStyle, layoutDirection).equals(minLinesConstrainer2.inputTextStyle) && density.getDensity() == minLinesConstrainer2.density.density && fontFamily$Resolver == minLinesConstrainer2.fontFamilyResolver) {
            return minLinesConstrainer2;
        }
        MinLinesConstrainer minLinesConstrainer3 = new MinLinesConstrainer(layoutDirection, ParagraphKt.resolveDefaults(textStyle, layoutDirection), new DensityImpl(density.getDensity(), density.getFontScale()), fontFamily$Resolver);
        MinLinesConstrainer.last = minLinesConstrainer3;
        return minLinesConstrainer3;
    }

    /* renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
    public static int m1070fromPVuDhNw$camera_camera2_pipe(Exception exc) {
        boolean z = false;
        if (!(exc instanceof CameraAccessException)) {
            if (exc instanceof IllegalArgumentException) {
                return 7;
            }
            if (exc instanceof SecurityException) {
                return 8;
            }
            if (Build.VERSION.SDK_INT == 28) {
                if (exc instanceof RuntimeException) {
                    StackTraceElement[] stackTrace = ((RuntimeException) exc).getStackTrace();
                    stackTrace.getClass();
                    z = Intrinsics.areEqual(stackTrace.length == 0 ? null : stackTrace[0].getMethodName(), "_enableShutterSound");
                }
                if (z) {
                    return 10;
                }
            }
            Log.w("CXCP", "Unexpected throwable: " + exc);
            return 11;
        }
        CameraAccessException cameraAccessException = (CameraAccessException) exc;
        int reason = cameraAccessException.getReason();
        if (reason == 1) {
            return 3;
        }
        if (reason == 2) {
            return 6;
        }
        if (reason == 3) {
            return 0;
        }
        if (reason == 4) {
            return 1;
        }
        if (reason == 5) {
            return 2;
        }
        Log.w("CXCP", "Unexpected CameraAccessException: " + cameraAccessException);
        return 11;
    }

    public static final String fromServerSettingsType(String str) {
        str.getClass();
        int hashCode = str.hashCode();
        if (hashCode != 3235923) {
            if (hashCode != 3446786) {
                if (hashCode == 3534422 && str.equals("smtp")) {
                    return "SMTP";
                }
            } else if (str.equals("pop3")) {
                return "POP3";
            }
        } else if (str.equals("imap")) {
            return "IMAP";
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Unsupported type: ".concat(str));
        return null;
    }

    public static final WorkGenerationalId generationalId(WorkSpec workSpec) {
        workSpec.getClass();
        return new WorkGenerationalId(workSpec.id, workSpec.generation);
    }

    public static final SavedStateRegistryOwner get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_saved_state_registry_owner);
            SavedStateRegistryOwner savedStateRegistryOwner = tag instanceof SavedStateRegistryOwner ? (SavedStateRegistryOwner) tag : null;
            if (savedStateRegistryOwner != null) {
                return savedStateRegistryOwner;
            }
            Object parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final float getEllipsizedLeftPadding(Layout layout, int i, Paint paint) {
        float abs;
        float width;
        float lineLeft = layout.getLineLeft(i);
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(i) <= 0 || layout.getParagraphDirection(i) != 1 || lineLeft >= 0.0f) {
            return 0.0f;
        }
        float measureText = paint.measureText("…") + (layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)) - lineLeft);
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment == null ? -1 : IndentationFixSpan_androidKt$WhenMappings.$EnumSwitchMapping$0[paragraphAlignment.ordinal()]) == 1) {
            abs = Math.abs(lineLeft);
            width = (layout.getWidth() - measureText) / 2.0f;
        } else {
            abs = Math.abs(lineLeft);
            width = layout.getWidth() - measureText;
        }
        return width + abs;
    }

    public static final float getEllipsizedRightPadding(Layout layout, int i, Paint paint) {
        float width;
        float width2;
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        if (layout.getEllipsisCount(i) <= 0) {
            return 0.0f;
        }
        if (layout.getParagraphDirection(i) != -1 || layout.getWidth() >= layout.getLineRight(i)) {
            return 0.0f;
        }
        float measureText = paint.measureText("…") + (layout.getLineRight(i) - layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)));
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment != null ? IndentationFixSpan_androidKt$WhenMappings.$EnumSwitchMapping$0[paragraphAlignment.ordinal()] : -1) == 1) {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = (layout.getWidth() - measureText) / 2.0f;
        } else {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = layout.getWidth() - measureText;
        }
        return width - width2;
    }

    public static String getFingerprintErrorString(Context context, int i) {
        if (context == null) {
            return "";
        }
        if (i == 1) {
            return context.getString(R.string.fingerprint_error_hw_not_available);
        }
        if (i != 7) {
            switch (i) {
                case 9:
                    break;
                case 10:
                    return context.getString(R.string.fingerprint_error_user_canceled);
                case 11:
                    return context.getString(R.string.fingerprint_error_no_fingerprints);
                case BasicTextKt.ShiftMeta /* 12 */:
                    return context.getString(R.string.fingerprint_error_hw_not_present);
                default:
                    Log.e("BiometricUtils", "Unknown error code: " + i);
                    return context.getString(R.string.default_error_msg);
            }
        }
        return context.getString(R.string.fingerprint_error_lockout);
    }

    public static final ImageVector getOutbox() {
        ImageVector imageVector = _outbox;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.Outbox", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(19.0f, 3.0f);
        builder2.lineTo(4.99f, 3.0f);
        builder2.curveToRelative(-1.11f, 0.0f, -1.98f, 0.9f, -1.98f, 2.0f);
        builder2.lineTo(3.0f, 19.0f);
        builder2.curveToRelative(0.0f, 1.1f, 0.88f, 2.0f, 1.99f, 2.0f);
        builder2.lineTo(19.0f, 21.0f);
        builder2.curveToRelative(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        builder2.lineTo(21.0f, 5.0f);
        builder2.curveToRelative(0.0f, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
        builder2.close();
        builder2.moveTo(19.0f, 15.0f);
        builder2.horizontalLineToRelative(-4.0f);
        builder2.curveToRelative(0.0f, 1.66f, -1.35f, 3.0f, -3.0f, 3.0f);
        builder2.reflectiveCurveToRelative(-3.0f, -1.34f, -3.0f, -3.0f);
        builder2.lineTo(4.99f, 15.0f);
        builder2.lineTo(4.99f, 5.0f);
        builder2.lineTo(19.0f, 5.0f);
        builder2.verticalLineToRelative(10.0f);
        builder2.close();
        builder2.moveTo(8.0f, 11.0f);
        builder2.horizontalLineToRelative(2.0f);
        builder2.verticalLineToRelative(3.0f);
        builder2.horizontalLineToRelative(4.0f);
        builder2.verticalLineToRelative(-3.0f);
        builder2.horizontalLineToRelative(2.0f);
        Modifier.CC.m(builder2, -4.0f, -4.0f, -4.0f, 4.0f);
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        ImageVector build = builder.build();
        _outbox = build;
        return build;
    }

    public static final PoolingContainerListenerHolder getPoolingContainerListenerHolder(View view) {
        PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(R.id.pooling_container_listener_holder_tag);
        if (poolingContainerListenerHolder != null) {
            return poolingContainerListenerHolder;
        }
        PoolingContainerListenerHolder poolingContainerListenerHolder2 = new PoolingContainerListenerHolder();
        view.setTag(R.id.pooling_container_listener_holder_tag, poolingContainerListenerHolder2);
        return poolingContainerListenerHolder2;
    }

    public static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static void isTrue(boolean z) {
        if (!z) {
            throw new ValidationException("Must be true");
        }
    }

    public static Set minus(Set set, Iterable iterable) {
        set.getClass();
        Collection<?> list = iterable instanceof Collection ? (Collection) iterable : CollectionsKt.toList(iterable);
        if (list.isEmpty()) {
            return CollectionsKt.toSet(set);
        }
        if (!(list instanceof Set)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(set);
            linkedHashSet.removeAll(list);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (Object obj : set) {
            if (!((Set) list).contains(obj)) {
                linkedHashSet2.add(obj);
            }
        }
        return linkedHashSet2;
    }

    public static Set mutableSetOf(Object... objArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(objArr.length));
        ArraysKt___ArraysKt.toCollection(objArr, linkedHashSet);
        return linkedHashSet;
    }

    public static final NavOptions navOptions(Function1 function1) {
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        function1.invoke(navOptionsBuilder);
        NavOptions.Builder builder = navOptionsBuilder.builder;
        builder.singleTop = false;
        builder.restoreState = false;
        String str = navOptionsBuilder.popUpToRoute;
        if (str != null) {
            boolean z = navOptionsBuilder.inclusive;
            boolean z2 = navOptionsBuilder.saveState;
            builder.popUpToRoute = str;
            builder.popUpToId = -1;
            builder.popUpToInclusive = z;
            builder.popUpToSaveState = z2;
        } else {
            int i = navOptionsBuilder.popUpToId;
            boolean z3 = navOptionsBuilder.inclusive;
            boolean z4 = navOptionsBuilder.saveState;
            builder.popUpToId = i;
            builder.popUpToRoute = null;
            builder.popUpToInclusive = z3;
            builder.popUpToSaveState = z4;
        }
        return builder.build();
    }

    public static void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            throw new ValidationException("String must not be empty");
        }
    }

    public static void notNull(Object obj) {
        if (obj == null) {
            throw new ValidationException("Object must not be null");
        }
    }

    public static final void parse(ByteArrayInputStream byteArrayInputStream, MessageHeaderCollector messageHeaderCollector) {
        SoftPool softPool = new SoftPool(new MimeConfig(-1, -1, -1));
        softPool.threadLocalStack = new Configuration.Builder(24, messageHeaderCollector);
        try {
            softPool.parse(byteArrayInputStream);
        } catch (IOException e) {
            throw new MessagingException("I/O error parsing headers", false, e);
        } catch (MimeException e2) {
            throw new MessagingException("Error parsing headers", false, e2);
        }
    }

    public static LinkedHashSet plus(Set set, Iterable iterable) {
        set.getClass();
        iterable.getClass();
        Integer valueOf = iterable instanceof Collection ? Integer.valueOf(((Collection) iterable).size()) : null;
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(valueOf != null ? set.size() + valueOf.intValue() : set.size() * 2));
        linkedHashSet.addAll(set);
        CollectionsKt.addAll(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static void runOnMain(Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
        } else {
            RelationUtil.checkState("Unable to post to main thread", new Handler(Looper.getMainLooper()).post(runnable));
        }
    }

    public static Set setOf(Object obj) {
        Set singleton = Collections.singleton(obj);
        singleton.getClass();
        return singleton;
    }

    public static boolean startsWith(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr.length >= bArr2.length) {
            for (int i = 0; i < bArr2.length; i++) {
                if (bArr[i] == bArr2[i]) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: takeMax-impl, reason: not valid java name */
    public static final int m1071takeMaximpl(MutableIntList mutableIntList) {
        int i;
        int i2 = mutableIntList._size;
        int i3 = mutableIntList.get(0);
        while (mutableIntList._size != 0 && mutableIntList.get(0) == i3) {
            mutableIntList.set(0, mutableIntList.last());
            mutableIntList.removeAt(mutableIntList._size - 1);
            int i4 = mutableIntList._size;
            int i5 = i4 >>> 1;
            int i6 = 0;
            while (i6 < i5) {
                int i7 = mutableIntList.get(i6);
                int i8 = (i6 + 1) * 2;
                int i9 = i8 - 1;
                int i10 = mutableIntList.get(i9);
                if (i8 >= i4 || (i = mutableIntList.get(i8)) <= i10) {
                    if (i10 > i7) {
                        mutableIntList.set(i6, i10);
                        mutableIntList.set(i9, i7);
                        i6 = i9;
                    }
                } else if (i > i7) {
                    mutableIntList.set(i6, i);
                    mutableIntList.set(i8, i7);
                    i6 = i8;
                }
            }
        }
        return i3;
    }

    public static final ConnectionSecurity toConnectionSecurity(com.fsck.k9.mail.ConnectionSecurity connectionSecurity) {
        connectionSecurity.getClass();
        int ordinal = connectionSecurity.ordinal();
        if (ordinal == 0) {
            return ConnectionSecurity.None;
        }
        if (ordinal == 1) {
            return ConnectionSecurity.StartTLS;
        }
        if (ordinal == 2) {
            return ConnectionSecurity.TLS;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final com.fsck.k9.mail.ConnectionSecurity toMailConnectionSecurity(ConnectionSecurity connectionSecurity) {
        connectionSecurity.getClass();
        int ordinal = connectionSecurity.ordinal();
        if (ordinal == 0) {
            return com.fsck.k9.mail.ConnectionSecurity.NONE;
        }
        if (ordinal == 1) {
            return com.fsck.k9.mail.ConnectionSecurity.STARTTLS_REQUIRED;
        }
        if (ordinal == 2) {
            return com.fsck.k9.mail.ConnectionSecurity.SSL_TLS_REQUIRED;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final MessageItemUi toMessageItemUi(MessageListItem messageListItem, boolean z, boolean z2, boolean z3, String str, String str2) {
        String str3;
        messageListItem.getClass();
        str.getClass();
        boolean z4 = messageListItem.isRead;
        MessageItemUi.State state = z4 ? MessageItemUi.State.Read : MessageItemUi.State.Unread;
        String str4 = messageListItem.messageUid;
        String identityString = messageListItem.getMessageReference().toIdentityString();
        MessageItemUi.State state2 = state;
        LegacyAccount legacyAccount = messageListItem.account;
        Account account = new Account(legacyAccount.id, ColorKt.Color(legacyAccount.profile.color));
        Address address = messageListItem.displayAddress;
        if (address == null || (str3 = address.address) == null) {
            str3 = "";
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        int indexOf$default = StringsKt.indexOf$default(messageListItem.displayName, ',', 0, 6);
        if (indexOf$default == -1 && !z4) {
            createListBuilder.add(new ComposedAddressStyle.Bold(null));
        } else if (indexOf$default < 0 || indexOf$default > Integer.MAX_VALUE || z4) {
            createListBuilder.add(new ComposedAddressStyle.Regular(0));
        } else {
            createListBuilder.add(new ComposedAddressStyle.Bold(Integer.valueOf(indexOf$default)));
            createListBuilder.add(new ComposedAddressStyle.Regular(indexOf$default));
        }
        ComposedAddressUi composedAddressUi = new ComposedAddressUi(str3, Okio.toPersistentList(IntOffsetKt.build(createListBuilder)), z ? (!z || str2 == null) ? new Avatar.Monogram(str) : new Avatar.Image(str2) : null, new Color(ColorKt.Color(messageListItem.contactColor)));
        String str5 = messageListItem.subject;
        if (str5 == null) {
            str5 = "n/a";
        }
        return new MessageItemUi(state2, str4, identityString, account, composedAddressUi, str5, messageListItem.previewText, messageListItem.displayMessageDateTime, messageListItem.hasAttachments, messageListItem.isStarred, messageListItem.isMessageEncrypted, messageListItem.isAnswered, messageListItem.isForwarded, z2, messageListItem.threadCount, z3);
    }

    /* renamed from: toSize-ozmzZPI, reason: not valid java name */
    public static final long m1072toSizeozmzZPI(long j) {
        return (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j >> 32)) << 32);
    }

    public static final long toSmtpDefaultPort(ConnectionSecurity connectionSecurity) {
        connectionSecurity.getClass();
        int ordinal = connectionSecurity.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            return 587L;
        }
        if (ordinal == 2) {
            return 465L;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return 0L;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1073toStringimpl(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            return "CornerRadius.circular(" + SQLite.toStringAsFixed(Float.intBitsToFloat(i)) + ')';
        }
        return "CornerRadius.elliptical(" + SQLite.toStringAsFixed(Float.intBitsToFloat(i)) + ", " + SQLite.toStringAsFixed(Float.intBitsToFloat(i2)) + ')';
    }

    public abstract void getCornerPath(ShapePath shapePath, float f, float f2);

    public static void isTrue(String str, boolean z) {
        if (!z) {
            throw new ValidationException(str);
        }
    }

    public static void notEmpty(String str, String str2) {
        if (str.length() == 0) {
            throw new ValidationException(str2);
        }
    }

    public static LinkedHashSet plus(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }

    public static LinkedHashSet minus(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(set.size()));
        boolean z = false;
        for (Object obj2 : set) {
            boolean z2 = true;
            if (!z && Intrinsics.areEqual(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public void registerComponents(Context context, Glide glide, Registry registry) {
    }
}
