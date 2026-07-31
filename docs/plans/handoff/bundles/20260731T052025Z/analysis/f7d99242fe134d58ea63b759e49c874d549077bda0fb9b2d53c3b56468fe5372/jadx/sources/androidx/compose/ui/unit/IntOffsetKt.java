package androidx.compose.ui.unit;

import android.app.Notification;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.EdgeEffect;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.core.widget.EdgeEffectCompat$Api31Impl;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.tracing.TraceApi29Impl;
import androidx.work.Data;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.WorkDatabasePathHelperKt;
import app.k9mail.core.ui.compose.designsystem.atom.text.TextLabelSmallKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import app.k9mail.feature.migration.qrcode.domain.entity.AccountData;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.mail.helper.Rfc822Token;
import com.fsck.k9.notification.NotificationAppearance;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.collections.ArrayAsCollection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.time.Clock;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.ui.compose.theme2.ColorRoles;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.compose.KoinApplicationKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IntOffsetKt implements SegmentFinder {
    public static ImageVector _checkCircle;
    public static ImageVector _errorOutline;

    public static final void ButtonBar(ServerCertificateErrorContract$State serverCertificateErrorContract$State, Function1 function1, ScrollState scrollState, Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1934853423);
        int i2 = i | (gapComposer.changedInstance(serverCertificateErrorContract$State) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(scrollState) ? 256 : 128) | (gapComposer.changed(modifier) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            MathKt.m983Surface_UMDTes(modifier, null, 0L, 0L, ((Dp) AnimateAsStateKt.m111animateDpAsStateAjpBEmI(scrollState.getCanScrollForward() ? 8.0f : 0.0f, null, gapComposer, 384, 10).getValue()).value, Expect_jvmKt.rememberComposableLambda(1576182156, new GapComposer$$ExternalSyntheticLambda3(23, function1, serverCertificateErrorContract$State), gapComposer), gapComposer, ((i2 >> 9) & 14) | 196608, 14);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(serverCertificateErrorContract$State, function1, scrollState, modifier, i, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ButtonFilled(java.lang.String r33, kotlin.jvm.functions.Function0 r34, androidx.compose.ui.Modifier r35, boolean r36, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors r37, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonShape r38, androidx.compose.foundation.layout.PaddingValues r39, androidx.compose.runtime.Composer r40, int r41, int r42) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.unit.IntOffsetKt.ButtonFilled(java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonColors, app.k9mail.core.ui.compose.designsystem.atom.button.ButtonShape, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void ProvideBasicTextContextMenu(Modifier modifier, ProvidableCompositionLocal providableCompositionLocal, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-714464401);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(providableCompositionLocal) ? 32 : 16;
        }
        int i3 = i & 384;
        ComposableLambdaImpl composableLambdaImpl2 = AndroidTextContextMenuToolbarProvider_androidKt.lambda$636288403;
        if (i3 == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
                gapComposer.updateRememberedValue(parcelableSnapshotMutableState);
                rememberedValue = parcelableSnapshotMutableState;
            }
            BasicTextContextMenuProvider basicTextContextMenuProvider = basicTextContextMenuProvider(composableLambdaImpl2, gapComposer, (i2 >> 6) & 14);
            Updater.CompositionLocalProvider(providableCompositionLocal.defaultProvidedValue$runtime(basicTextContextMenuProvider), Expect_jvmKt.rememberComposableLambda(274270255, new MaterialThemeKt$$ExternalSyntheticLambda0(modifier, (MutableState) rememberedValue, composableLambdaImpl, basicTextContextMenuProvider), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(modifier, providableCompositionLocal, composableLambdaImpl, i, 7);
        }
    }

    public static final void ServerCertificateErrorScreen(Function0 function0, Function0 function02, Modifier modifier, ServerCertificateErrorViewModel serverCertificateErrorViewModel, Composer composer, int i) {
        int i2;
        ServerCertificateErrorViewModel serverCertificateErrorViewModel2;
        ServerCertificateErrorViewModel serverCertificateErrorViewModel3;
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1574756096);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                serverCertificateErrorViewModel3 = (ServerCertificateErrorViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ServerCertificateErrorViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
            } else {
                gapComposer.skipToGroupEnd();
                serverCertificateErrorViewModel3 = serverCertificateErrorViewModel;
            }
            gapComposer.endDefaults();
            ScrollState rememberScrollState = ImageKt.rememberScrollState(gapComposer);
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(serverCertificateErrorViewModel3.state, gapComposer);
            boolean changedInstance = gapComposer.changedInstance(serverCertificateErrorViewModel3);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changedInstance || rememberedValue == obj) {
                rememberedValue = new ProduceKt$awaitClose$4$1(5, serverCertificateErrorViewModel3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            ServerCertificateErrorViewModel serverCertificateErrorViewModel4 = serverCertificateErrorViewModel3;
            Updater.LaunchedEffect(gapComposer, serverCertificateErrorViewModel3.effect, new Preferences$getAccountFlow$1(serverCertificateErrorViewModel3, (Continuation) null, function0, function02, 17));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            boolean changed = gapComposer.changed(function1);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(7, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue2, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            int i3 = 10;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(modifier, FlowRowOverflow.current(gapComposer).navigationBars), null, Expect_jvmKt.rememberComposableLambda(-412515493, new SegmentedButtonKt$$ExternalSyntheticLambda4(collectAsStateWithLifecycle, function1, rememberScrollState, i3), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(1110007028, new BufferedChannel$$ExternalSyntheticLambda1(i3, collectAsStateWithLifecycle, rememberScrollState), gapComposer), gapComposer, 1573248, 58);
            serverCertificateErrorViewModel2 = serverCertificateErrorViewModel4;
        } else {
            gapComposer.skipToGroupEnd();
            serverCertificateErrorViewModel2 = serverCertificateErrorViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(function0, function02, modifier, serverCertificateErrorViewModel2, i, 7);
        }
    }

    public static final void ServerValidationContent(final ServerValidationContract$State serverValidationContract$State, final boolean z, final AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, final Function1 function1, PaddingValues paddingValues, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        serverValidationContract$State.getClass();
        accountOAuthContract$ViewModel.getClass();
        function1.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-910898263);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(serverValidationContract$State) : gapComposer.changedInstance(serverValidationContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(accountOAuthContract$ViewModel) : gapComposer.changedInstance(accountOAuthContract$ViewModel) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 16384 : 8192;
        }
        int i3 = i2 | 196608;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            final Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            modifier2 = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.padding(TestTagKt.testTag(modifier2, "AccountValidationContent"), paddingValues).then(SizeKt.FillWholeMaxWidth).then(modifier2), Expect_jvmKt.rememberComposableLambda(86214953, new Function3() { // from class: app.k9mail.feature.account.server.validation.ui.ServerValidationContentKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues2 = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    paddingValues2.getClass();
                    if ((intValue & 6) == 0) {
                        intValue |= ((GapComposer) composer2).changed(paddingValues2) ? 4 : 2;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                        Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(SizeKt.FillWholeMaxSize, OffsetKt.imeLambda);
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                        ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, false, new StreamSharing$$ExternalSyntheticLambda0(6));
                        ServerValidationContract$State serverValidationContract$State2 = ServerValidationContract$State.this;
                        boolean changedInstance = gapComposer2.changedInstance(serverValidationContract$State2);
                        boolean z2 = z;
                        boolean changed = changedInstance | gapComposer2.changed(z2);
                        Resources resources2 = resources;
                        boolean changedInstance2 = changed | gapComposer2.changedInstance(resources2);
                        Function1 function12 = function1;
                        boolean changed2 = changedInstance2 | gapComposer2.changed(function12);
                        AccountOAuthContract$ViewModel accountOAuthContract$ViewModel2 = accountOAuthContract$ViewModel;
                        boolean changedInstance3 = changed2 | gapComposer2.changedInstance(accountOAuthContract$ViewModel2);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        if (changedInstance3 || rememberedValue == Composer.Companion.Empty) {
                            MenuKt$$ExternalSyntheticLambda0 menuKt$$ExternalSyntheticLambda0 = new MenuKt$$ExternalSyntheticLambda0(serverValidationContract$State2, z2, resources2, function12, accountOAuthContract$ViewModel2);
                            gapComposer2.updateRememberedValue(menuKt$$ExternalSyntheticLambda0);
                            rememberedValue = menuKt$$ExternalSyntheticLambda0;
                        }
                        ActionBar.LazyColumn(((intValue << 6) & 896) | 196608, 458, null, null, arrangement$SpacedAligned, paddingValues2, null, gapComposer2, horizontal, windowInsetsPadding, (Function1) rememberedValue, false);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 48, 0);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(serverValidationContract$State, z, accountOAuthContract$ViewModel, function1, paddingValues, modifier2, i);
        }
    }

    /* renamed from: TextHeadlineMedium-Xl4FiYE, reason: not valid java name */
    public static final void m756TextHeadlineMediumXl4FiYE(String str, Modifier modifier, long j, int i, int i2, Composer composer, int i3) {
        GapComposer gapComposer;
        long j2;
        int i4;
        int i5;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1985879869);
        int i6 = i3 | (gapComposer2.changed(str) ? 4 : 2) | (gapComposer2.changed(modifier) ? 32 : 16) | 224640;
        if (gapComposer2.shouldExecute(i6 & 1, (74899 & i6) != 74898)) {
            long j3 = Color.Unspecified;
            gapComposer = gapComposer2;
            TextKt.m362TextNvy7gAk(str, modifier, j3, 0L, 0L, null, 0L, 1, false, Integer.MAX_VALUE, 0, null, ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).headlineMedium, gapComposer, i6 & 1022, 24966, 109560);
            j2 = j3;
            i4 = 1;
            i5 = Integer.MAX_VALUE;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            j2 = j;
            i4 = i;
            i5 = i2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextLabelSmallKt$$ExternalSyntheticLambda1(str, modifier, j2, i4, i5, i3, 2);
        }
    }

    /* renamed from: access$contains-Uv8p0NA, reason: not valid java name */
    public static final boolean m757access$containsUv8p0NA(DragAndDropNode dragAndDropNode, long j) {
        if (!dragAndDropNode.node.isAttached) {
            return false;
        }
        InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) HitTestResultKt.requireLayoutNode(dragAndDropNode).nodes.innerCoordinator;
        if (!innerNodeCoordinator.tail.isAttached) {
            return false;
        }
        long mo579localToRootMKHz9U = innerNodeCoordinator.mo579localToRootMKHz9U(0L);
        float intBitsToFloat = Float.intBitsToFloat((int) (mo579localToRootMKHz9U >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (mo579localToRootMKHz9U & 4294967295L));
        long j2 = dragAndDropNode.size;
        float f = ((int) (j2 >> 32)) + intBitsToFloat;
        float f2 = ((int) (j2 & 4294967295L)) + intBitsToFloat2;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        if (intBitsToFloat > intBitsToFloat3 || intBitsToFloat3 > f) {
            return false;
        }
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
        return intBitsToFloat2 <= intBitsToFloat4 && intBitsToFloat4 <= f2;
    }

    public static ArrayList arrayListOf(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static final BasicTextContextMenuProvider basicTextContextMenuProvider(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z = (((i & 14) ^ 6) > 4 && ((GapComposer) composer).changed(composableLambdaImpl)) || (i & 6) == 4;
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (z || rememberedValue == neverEqualPolicy) {
            rememberedValue = new BasicTextContextMenuProvider(composableLambdaImpl);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) rememberedValue;
        boolean changed = gapComposer.changed(basicTextContextMenuProvider);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new TorchControl$$ExternalSyntheticLambda1(27, basicTextContextMenuProvider);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(basicTextContextMenuProvider, (Function1) rememberedValue2, gapComposer);
        return basicTextContextMenuProvider;
    }

    public static int binarySearch$default(ArrayList arrayList, Comparable comparable) {
        int size = arrayList.size();
        arrayList.getClass();
        rangeCheck$CollectionsKt__CollectionsKt(arrayList.size(), size);
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int compareValues = Util.compareValues((Comparable) arrayList.get(i3), comparable);
            if (compareValues < 0) {
                i2 = i3 + 1;
            } else {
                if (compareValues <= 0) {
                    return i3;
                }
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static ListBuilder build(ListBuilder listBuilder) {
        listBuilder.checkIsMutable$1();
        listBuilder.isReadOnly = true;
        return listBuilder.length > 0 ? listBuilder : ListBuilder.Empty;
    }

    public static Object castToSuppLibClass(Class cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(IntOffsetKt.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static final boolean contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if (obj != obj2 && !Intrinsics.areEqual(obj, obj2)) {
                if (obj != null && obj2 != null) {
                    if ((obj instanceof Bundle) && (obj2 instanceof Bundle)) {
                        if (!contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt((Bundle) obj, (Bundle) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                        if (!ArraysKt___ArraysKt.contentDeepEquals((Object[]) obj, (Object[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                        if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                        if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                        if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                        if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                        if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                        if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                        if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                        if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                            return false;
                        }
                    } else if (!obj.equals(obj2)) {
                    }
                }
                return false;
            }
        }
        return true;
    }

    public static final int contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            Object obj = bundle.get(it.next());
            i = (i * 31) + (obj instanceof Bundle ? contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt((Bundle) obj) : obj instanceof Object[] ? Arrays.deepHashCode((Object[]) obj) : obj instanceof byte[] ? Arrays.hashCode((byte[]) obj) : obj instanceof short[] ? Arrays.hashCode((short[]) obj) : obj instanceof int[] ? Arrays.hashCode((int[]) obj) : obj instanceof long[] ? Arrays.hashCode((long[]) obj) : obj instanceof float[] ? Arrays.hashCode((float[]) obj) : obj instanceof double[] ? Arrays.hashCode((double[]) obj) : obj instanceof char[] ? Arrays.hashCode((char[]) obj) : obj instanceof boolean[] ? Arrays.hashCode((boolean[]) obj) : obj != null ? obj.hashCode() : 0);
        }
        return i;
    }

    public static ListBuilder createListBuilder() {
        return new ListBuilder(10);
    }

    public static void crunch(StringBuilder sb) {
        int length = sb.length();
        int i = 0;
        while (i < length) {
            if (sb.charAt(i) == 0) {
                if (i != 0 && i != length - 1) {
                    int i2 = i - 1;
                    if (sb.charAt(i2) != ' ' && sb.charAt(i2) != 0) {
                        int i3 = i + 1;
                        if (sb.charAt(i3) != ' ' && sb.charAt(i3) != 0) {
                            i = i3;
                        }
                    }
                }
                sb.deleteCharAt(i);
                length--;
            } else {
                i++;
            }
        }
        for (int i4 = 0; i4 < length; i4++) {
            if (sb.charAt(i4) == 0) {
                sb.setCharAt(i4, ' ');
            }
        }
    }

    public static NavDestination findStartDestination(NavGraph navGraph) {
        Iterator it = SequencesKt.generateSequence(navGraph, new RoomDatabase$$ExternalSyntheticLambda0(15)).iterator();
        if (!it.hasNext()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Sequence is empty.");
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return (NavDestination) next;
    }

    /* renamed from: fromIntOrNull-kQd0u18, reason: not valid java name */
    public static AeMode m758fromIntOrNullkQd0u18(int i) {
        Object obj;
        Iterator it = AeMode.values.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AeMode) obj).value == i) {
                break;
            }
        }
        return (AeMode) obj;
    }

    public static ColorStateList getColorStateList(Context context, MenuHostHelper menuHostHelper, int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = (TypedArray) menuHostHelper.mMenuProviders;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = TraceApi29Impl.getColorStateList(context, resourceId)) == null) ? menuHostHelper.getColorStateList(i) : colorStateList;
    }

    public static float getDistance(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return EdgeEffectCompat$Api31Impl.getDistance(edgeEffect);
        }
        return 0.0f;
    }

    public static Drawable getDrawable(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawable = Utf8.SafeProcessor.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawable;
    }

    public static IntRange getIndices(Collection collection) {
        collection.getClass();
        return new IntRange(0, collection.size() - 1, 1);
    }

    public static int getLastIndex(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static int getRelativeImageRotation(int i, int i2, boolean z) {
        int i3 = z ? ((i2 - i) + 360) % 360 : (i2 + i) % 360;
        if (Utf8.SafeProcessor.isLogLevelEnabled(Utf8.SafeProcessor.truncateTag("CameraOrientationUtil"), 2)) {
            StringBuilder m91m = Config.CC.m91m("getRelativeImageRotation: destRotationDegrees=", i, ", sourceRotationDegrees=", i2, ", isOppositeFacing=");
            m91m.append(z);
            m91m.append(", result=");
            m91m.append(i3);
            Utf8.SafeProcessor.d("CameraOrientationUtil", m91m.toString());
        }
        return i3;
    }

    public static boolean isDeviceCredentialAllowed(int i) {
        return (i & 32768) != 0;
    }

    public static boolean isFontScaleAtLeast1_3(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean isMediaStoreUri(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static final boolean isQuietTime(NotificationPreference notificationPreference) {
        notificationPreference.getClass();
        if (!notificationPreference.isQuietTimeEnabled) {
            return false;
        }
        Clock clock = (Clock) CloseableKt.get$default(Clock.class);
        String str = notificationPreference.quietTimeStarts;
        String str2 = notificationPreference.quietTimeEnds;
        int access$parseTime = OAuthBearer.access$parseTime(str);
        int access$parseTime2 = OAuthBearer.access$parseTime(str2);
        if (access$parseTime == access$parseTime2) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(clock.now().toEpochMilliseconds());
        int i = calendar.get(12) + (calendar.get(11) * 60);
        return access$parseTime > access$parseTime2 ? i >= access$parseTime || i <= access$parseTime2 : i <= access$parseTime2 && access$parseTime <= i;
    }

    public static boolean isSupportedCombination(int i) {
        if (i == 15 || i == 255) {
            return true;
        }
        if (i == 32768) {
            return Build.VERSION.SDK_INT >= 30;
        }
        if (i != 32783) {
            return i == 33023 || i == 0;
        }
        int i2 = Build.VERSION.SDK_INT;
        return i2 < 28 || i2 > 29;
    }

    public static List listOf(Object... objArr) {
        if (objArr.length <= 0) {
            return EmptyList.INSTANCE;
        }
        List asList = Arrays.asList(objArr);
        asList.getClass();
        return asList;
    }

    public static final void migrateDatabase(Context context) {
        Map map;
        context.getClass();
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        databasePath.getClass();
        if (databasePath.exists()) {
            Logger$LogcatLogger.get().debug(WorkDatabasePathHelperKt.TAG, "Migrating WorkDatabase to the no-backup directory");
            File databasePath2 = context.getDatabasePath("androidx.work.workdb");
            databasePath2.getClass();
            File noBackupFilesDir = context.getNoBackupFilesDir();
            noBackupFilesDir.getClass();
            String[] strArr = WorkDatabasePathHelperKt.DATABASE_EXTRA_FILES;
            int mapCapacity = MapsKt__MapsKt.mapCapacity(strArr.length);
            if (mapCapacity < 16) {
                mapCapacity = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
            for (String str : strArr) {
                linkedHashMap.put(new File(databasePath2.getPath() + str), new File(noBackupFilesDir.getPath() + str));
            }
            if (linkedHashMap.isEmpty()) {
                map = Collections.singletonMap(databasePath2, noBackupFilesDir);
                map.getClass();
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
                linkedHashMap2.put(databasePath2, noBackupFilesDir);
                map = linkedHashMap2;
            }
            for (Map.Entry entry : map.entrySet()) {
                File file = (File) entry.getKey();
                File file2 = (File) entry.getValue();
                if (file.exists()) {
                    if (file2.exists()) {
                        Logger$LogcatLogger.get().warning(WorkDatabasePathHelperKt.TAG, "Over-writing contents of " + file2);
                    }
                    Logger$LogcatLogger.get().debug(WorkDatabasePathHelperKt.TAG, file.renameTo(file2) ? "Migrated " + file + "to " + file2 : "Renaming " + file + " to " + file2 + " failed");
                }
            }
        }
    }

    public static ArrayList mutableListOf(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static final void observeNotNull(LiveData liveData, LifecycleOwner lifecycleOwner, Function1 function1) {
        liveData.getClass();
        liveData.observe(lifecycleOwner, new BaseActivity$sam$androidx_lifecycle_Observer$0(2, new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(29, function1)));
    }

    public static float onPullDistance(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return EdgeEffectCompat$Api31Impl.onPullDistance(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }

    public static final List optimizeReadOnlyList(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : listOf(list.get(0)) : EmptyList.INSTANCE;
    }

    /* renamed from: plus-Nv-tHpc, reason: not valid java name */
    public static final long m759plusNvtHpc(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) + ((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) + ((int) (j2 & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    public static final void rangeCheck$CollectionsKt__CollectionsKt(int i, int i2) {
        if (i2 < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i2, "fromIndex (0) is greater than toIndex (", ")."));
        } else {
            if (i2 <= i) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Config.CC.m("toIndex (", i2, ") is greater than size (", i, ")."));
        }
    }

    public static MetadataList read(MappedByteBuffer mappedByteBuffer) {
        long j;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        duplicate.order(ByteOrder.BIG_ENDIAN);
        duplicate.position(duplicate.position() + 4);
        int i = duplicate.getShort() & 65535;
        if (i > 100) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Cannot read metadata.");
            return null;
        }
        duplicate.position(duplicate.position() + 6);
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                j = -1;
                break;
            }
            int i3 = duplicate.getInt();
            duplicate.position(duplicate.position() + 4);
            j = duplicate.getInt() & 4294967295L;
            duplicate.position(duplicate.position() + 4);
            if (1835365473 == i3) {
                break;
            }
            i2++;
        }
        if (j != -1) {
            duplicate.position(duplicate.position() + ((int) (j - duplicate.position())));
            duplicate.position(duplicate.position() + 12);
            long j2 = duplicate.getInt() & 4294967295L;
            for (int i4 = 0; i4 < j2; i4++) {
                int i5 = duplicate.getInt();
                long j3 = duplicate.getInt() & 4294967295L;
                duplicate.getInt();
                if (1164798569 == i5 || 1701669481 == i5) {
                    duplicate.position((int) (j3 + j));
                    MetadataList metadataList = new MetadataList();
                    duplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int position = duplicate.position() + duplicate.getInt(duplicate.position());
                    metadataList.bb = duplicate;
                    metadataList.bb_pos = position;
                    int i6 = position - duplicate.getInt(position);
                    metadataList.vtable_start = i6;
                    metadataList.vtable_size = ((ByteBuffer) metadataList.bb).getShort(i6);
                    return metadataList;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Cannot read metadata.");
        return null;
    }

    /* renamed from: round-k-4lQ0M, reason: not valid java name */
    public static final long m760roundk4lQ0M(long j) {
        return (Math.round(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (Math.round(Float.intBitsToFloat((int) (j >> 32))) << 32);
    }

    public static final void setAppearance(NotificationCompat$Builder notificationCompat$Builder, boolean z, NotificationAppearance notificationAppearance) {
        Notification notification = notificationCompat$Builder.mNotification;
        String str = notificationAppearance.ringtone;
        if (z) {
            notificationCompat$Builder.mSilent = true;
            return;
        }
        if (Build.VERSION.SDK_INT < 26) {
            if (str != null && str.length() != 0) {
                notification.sound = Uri.parse(str);
                notification.audioStreamType = -1;
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            long[] jArr = notificationAppearance.vibrationPattern;
            if (jArr != null) {
                notification.vibrate = jArr;
            }
            Integer num = notificationAppearance.ledColor;
            if (num != null) {
                notification.ledARGB = num.intValue();
                notification.ledOnMS = 500;
                notification.ledOffMS = 2000;
                notification.flags = (notification.flags & (-2)) | 1;
            }
        }
    }

    public static final void setErrorAppearance(NotificationCompat$Builder notificationCompat$Builder, GeneralSettingsManager generalSettingsManager) {
        notificationCompat$Builder.mSilent = true;
        if (isQuietTime(((DefaultGeneralSettingsManager) generalSettingsManager).getSettings().notification)) {
            return;
        }
        Notification notification = notificationCompat$Builder.mNotification;
        notification.ledARGB = -65536;
        notification.ledOnMS = 100;
        notification.ledOffMS = 100;
        notification.flags = (notification.flags & (-2)) | 1;
    }

    public static int surfaceRotationToDegrees(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 90;
        }
        if (i == 2) {
            return 180;
        }
        if (i == 3) {
            return 270;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unsupported surface rotation: ", i));
        return 0;
    }

    public static void throwCountOverflow() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static final AccountData.AuthenticationType toAuthenticationType(int i) {
        switch (i) {
            case 0:
                return AccountData.AuthenticationType.None;
            case 1:
                return AccountData.AuthenticationType.PasswordCleartext;
            case 2:
                return AccountData.AuthenticationType.PasswordEncrypted;
            case 3:
                UriKt$$ExternalSyntheticBUOutline0.m("Unsupported authentication method: Gssapi");
                return null;
            case 4:
                UriKt$$ExternalSyntheticBUOutline0.m("Unsupported authentication method: Ntlm");
                return null;
            case 5:
                return AccountData.AuthenticationType.TlsCertificate;
            case 6:
                return AccountData.AuthenticationType.OAuth2;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unsupported value: ", i));
                return null;
        }
    }

    public static Bitmap toBitmap$default(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return (intrinsicWidth == bitmapDrawable.getBitmap().getWidth() && intrinsicHeight == bitmapDrawable.getBitmap().getHeight()) ? bitmapDrawable.getBitmap() : Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), intrinsicWidth, intrinsicHeight, true);
            }
            UriKt$$ExternalSyntheticBUOutline0.m("bitmap is null");
            return null;
        }
        Rect bounds = drawable.getBounds();
        int i = bounds.left;
        int i2 = bounds.top;
        int i3 = bounds.right;
        int i4 = bounds.bottom;
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(new Canvas(createBitmap));
        drawable.setBounds(i, i2, i3, i4);
        return createBitmap;
    }

    /* renamed from: toColorRoles-DxMtmZc, reason: not valid java name */
    public static final ColorRoles m761toColorRolesDxMtmZc(long j, Context context) {
        context.getClass();
        com.google.android.material.color.ColorRoles colorRoles = Data.Companion.getColorRoles(context, ColorKt.m500toArgb8_81llA(j));
        return new ColorRoles(ColorKt.Color(colorRoles.accent), ColorKt.Color(colorRoles.onAccent), ColorKt.Color(colorRoles.accentContainer), ColorKt.Color(colorRoles.onAccentContainer));
    }

    public static final AccountData.ConnectionSecurity toConnectionSecurity(int i) {
        if (i == 0) {
            return AccountData.ConnectionSecurity.Plain;
        }
        AccountData.ConnectionSecurity connectionSecurity = AccountData.ConnectionSecurity.AlwaysStartTls;
        if (i == 1 || i == 2) {
            return connectionSecurity;
        }
        if (i == 3) {
            return AccountData.ConnectionSecurity.Tls;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unsupported value: ", i));
        return null;
    }

    public static final AccountData.IncomingServerProtocol toIncomingServerProtocol(int i) {
        if (i == 0) {
            return AccountData.IncomingServerProtocol.Imap;
        }
        if (i == 1) {
            return AccountData.IncomingServerProtocol.Pop3;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unsupported value: ", i));
        return null;
    }

    public static Rfc822Token[] tokenize(String str) {
        char charAt;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt2 = str.charAt(i);
            if (charAt2 != ',' && charAt2 != ';') {
                if (charAt2 != '\"') {
                    if (charAt2 != '(') {
                        if (charAt2 == '<') {
                            while (true) {
                                i++;
                                if (i >= length) {
                                    break;
                                }
                                char charAt3 = str.charAt(i);
                                if (charAt3 == '>') {
                                    break;
                                }
                                sb2.append(charAt3);
                            }
                        } else if (charAt2 == ' ') {
                            sb.append((char) 0);
                        } else {
                            sb.append(charAt2);
                        }
                        i++;
                        break;
                        break;
                    }
                    i++;
                    int i2 = 1;
                    while (i < length && i2 > 0) {
                        char charAt4 = str.charAt(i);
                        if (charAt4 == ')') {
                            if (i2 > 1) {
                                sb3.append(charAt4);
                            }
                            i2--;
                        } else if (charAt4 == '(') {
                            sb3.append(charAt4);
                            i2++;
                        } else if (charAt4 == '\\') {
                            int i3 = i + 1;
                            if (i3 < length) {
                                sb3.append(str.charAt(i3));
                            }
                            i += 2;
                        } else {
                            sb3.append(charAt4);
                        }
                        i++;
                    }
                } else {
                    while (true) {
                        i++;
                        while (i < length) {
                            charAt = str.charAt(i);
                            if (charAt == '\"') {
                                break;
                            }
                            if (charAt == '\\') {
                                int i4 = i + 1;
                                if (i4 < length) {
                                    sb.append(str.charAt(i4));
                                }
                                i += 2;
                            }
                        }
                        sb.append(charAt);
                    }
                    i++;
                    break;
                }
            } else {
                do {
                    i++;
                    if (i >= length) {
                        break;
                    }
                } while (str.charAt(i) == ' ');
                crunch(sb);
                if (sb2.length() > 0) {
                    arrayList.add(new Rfc822Token(sb.toString(), sb2.toString(), sb3.toString()));
                } else if (sb.length() > 0) {
                    arrayList.add(new Rfc822Token(null, sb.toString(), sb3.toString()));
                }
                sb.setLength(0);
                sb2.setLength(0);
                sb3.setLength(0);
            }
        }
        crunch(sb);
        if (sb2.length() > 0) {
            arrayList.add(new Rfc822Token(sb.toString(), sb2.toString(), sb3.toString()));
        } else if (sb.length() > 0) {
            arrayList.add(new Rfc822Token(null, sb.toString(), sb3.toString()));
        }
        return (Rfc822Token[]) arrayList.toArray(new Rfc822Token[arrayList.size()]);
    }

    public abstract int next(int i);

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextEndBoundary(int i) {
        return next(i);
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int nextStartBoundary(int i) {
        int next = next(i);
        if (next == -1 || next(next) == -1) {
            return -1;
        }
        return next;
    }

    public abstract int previous(int i);

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousEndBoundary(int i) {
        int previous = previous(i);
        if (previous == -1 || previous(previous) == -1) {
            return -1;
        }
        return previous;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public int previousStartBoundary(int i) {
        return previous(i);
    }

    public static List listOf(Object obj) {
        List singletonList = Collections.singletonList(obj);
        singletonList.getClass();
        return singletonList;
    }

    public static ColorStateList getColorStateList(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = TraceApi29Impl.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }
}
