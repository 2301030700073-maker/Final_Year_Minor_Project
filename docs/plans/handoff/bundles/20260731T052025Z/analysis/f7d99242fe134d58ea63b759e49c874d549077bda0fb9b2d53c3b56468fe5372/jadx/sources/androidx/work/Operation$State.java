package androidx.work;

import android.animation.TimeInterpolator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import androidx.activity.ComponentActivity;
import androidx.activity.compose.LocalActivityKt;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.TooltipCompat$Api26Impl;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.InitializationException;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.view.PreviewView;
import androidx.collection.internal.Lock;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda8;
import androidx.compose.material3.pulltorefresh.PullToRefreshDefaults;
import androidx.compose.material3.pulltorefresh.PullToRefreshElement;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidContentType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.ClearAndSetSemanticsElement;
import androidx.compose.ui.text.MultiParagraph$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavControllerViewModelKt;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.serialization.InternalNavType;
import androidx.navigation.ui.ActionBarOnDestinationChangedListener;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.transition.Transition;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.SwitchKt$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
import app.k9mail.feature.account.edit.navigation.DefaultAccountEditNavigation;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda8;
import app.k9mail.feature.account.setup.navigation.AccountSetupRoute;
import app.k9mail.feature.account.setup.navigation.DefaultAccountSetupNavigation;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.main.navigation.DefaultOnboardingNavigation;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.network.internal.UtilsKt;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder$1;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.Registry;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataRewinderRegistry$1;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.model.AssetUriLoader;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ResourceLoader$UriFactory;
import com.bumptech.glide.load.model.UriLoader;
import com.bumptech.glide.load.model.stream.QMediaStoreUriLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.BitmapImageDecoderResourceDecoder;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.ExifInterfaceImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.file.FileDecoder;
import com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameResourceDecoder;
import com.bumptech.glide.load.resource.gif.StreamGifDecoder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.module.AppGlideModule;
import com.fsck.k9.R;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.contacts.ContactImageBitmapDecoder;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.message.html.EmailSection;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.base.BaseActivity;
import com.google.android.material.R$styleable;
import com.jcraft.jzlib.Adler32;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.KSerializer;
import net.thunderbird.app.common.feature.MessageListLauncher;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$AdvancedFetchingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$FetchingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$GeneralSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$ReadingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$SearchSettings;
import net.thunderbird.feature.account.settings.impl.DefaultAccountSettingsNavigation;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingContentKt$$ExternalSyntheticLambda8;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda14;
import net.thunderbird.feature.changelog.internal.DefaultChangelogNavigation;
import net.thunderbird.feature.changelog.internal.DefaultChangelogNavigation$$ExternalSyntheticLambda0;
import net.thunderbird.feature.debug.settings.navigation.NoOpSecretDebugSettingsNavigation;
import net.thunderbird.feature.funding.noop.NoOpFundingNavigation;
import net.thunderbird.feature.navigation.changelog.api.ChangelogRoute;
import net.thunderbird.feature.thundermail.internal.common.navigation.DefaultThundermailNavigation;
import net.thunderbird.feature.thundermail.internal.common.navigation.DefaultThundermailNavigation$$ExternalSyntheticLambda3;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import okio.Path;
import okio.PriorityQueue;
import org.jsoup.helper.Validate;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Operation$State implements Function {
    public static ImageVector _delete;
    public static ImageVector _send;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FAILURE extends Operation$State {
        public final Throwable mThrowable;

        public FAILURE(Throwable th) {
            this.mThrowable = th;
        }

        public final String toString() {
            return "FAILURE (" + this.mThrowable.getMessage() + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SUCCESS extends Operation$State {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ SUCCESS(int i) {
            this.$r8$classId = i;
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return "SUCCESS";
                default:
                    return "IN_PROGRESS";
            }
        }
    }

    public Operation$State() {
        new ConcurrentHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AccountOAuthView(kotlin.jvm.functions.Function1 r16, app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel r17, androidx.compose.ui.Modifier r18, boolean r19, androidx.compose.runtime.Composer r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.AccountOAuthView(kotlin.jvm.functions.Function1, app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel, androidx.compose.ui.Modifier, boolean, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: CircularArrowProgressIndicator-RPmYEkk, reason: not valid java name */
    public static final void m826CircularArrowProgressIndicatorRPmYEkk(FloatProducer floatProducer, long j, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1353562852);
        int i2 = (gapComposer.changed(floatProducer) ? 4 : 2) | i | (gapComposer.changed(j) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            Object obj = rememberedValue;
            if (rememberedValue == neverEqualPolicy) {
                AndroidPath Path = AndroidPath_androidKt.Path();
                Path.m470setFillTypeoQ8Xj4U(1);
                gapComposer.updateRememberedValue(Path);
                obj = Path;
            }
            AndroidPath androidPath = (AndroidPath) obj;
            Object rememberedValue2 = gapComposer.rememberedValue();
            int i3 = 6;
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.derivedStateOf(new ImageLoader$Builder$$ExternalSyntheticLambda1(i3, floatProducer));
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            State animateFloatAsState = AnimateAsStateKt.animateFloatAsState(((Number) ((State) rememberedValue2).getValue()).floatValue(), CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer), null, gapComposer, 0, 28);
            int i4 = i2 & 14;
            boolean z = i4 == 4;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new DiskLruCache$$ExternalSyntheticLambda0(i3, floatProducer);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(new ClearAndSetSemanticsElement((Function1) rememberedValue3), 16.0f);
            boolean changed = (i4 == 4) | gapComposer.changed(animateFloatAsState) | ((i2 & 112) == 32) | gapComposer.changedInstance(androidPath);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed || rememberedValue4 == neverEqualPolicy) {
                MultiParagraph$$ExternalSyntheticLambda0 multiParagraph$$ExternalSyntheticLambda0 = new MultiParagraph$$ExternalSyntheticLambda0(floatProducer, animateFloatAsState, j, androidPath, 2);
                gapComposer.updateRememberedValue(multiParagraph$$ExternalSyntheticLambda0);
                rememberedValue4 = multiParagraph$$ExternalSyntheticLambda0;
            }
            ImageKt.Canvas(0, gapComposer, m234size3ABfNKs, (Function1) rememberedValue4);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldImplKt$$ExternalSyntheticLambda8(floatProducer, j, i);
        }
    }

    public static final AndroidContentType ContentType(String str) {
        return new AndroidContentType(Validate.setOf(str));
    }

    public static DensityImpl Density$default() {
        return new DensityImpl(1.0f, 1.0f);
    }

    public static final void FeatureLauncherNavHost(final NavHostController navHostController, final Function0 function0, Modifier modifier, MessageListLauncher messageListLauncher, DefaultAccountEditNavigation defaultAccountEditNavigation, DefaultAccountSettingsNavigation defaultAccountSettingsNavigation, DefaultAccountSetupNavigation defaultAccountSetupNavigation, DefaultOnboardingNavigation defaultOnboardingNavigation, NoOpFundingNavigation noOpFundingNavigation, NoOpSecretDebugSettingsNavigation noOpSecretDebugSettingsNavigation, DefaultThundermailNavigation defaultThundermailNavigation, DefaultChangelogNavigation defaultChangelogNavigation, Composer composer, final int i) {
        final Modifier modifier2;
        final MessageListLauncher messageListLauncher2;
        final DefaultAccountEditNavigation defaultAccountEditNavigation2;
        final DefaultAccountSettingsNavigation defaultAccountSettingsNavigation2;
        final DefaultAccountSetupNavigation defaultAccountSetupNavigation2;
        final DefaultOnboardingNavigation defaultOnboardingNavigation2;
        final NoOpFundingNavigation noOpFundingNavigation2;
        final DefaultThundermailNavigation defaultThundermailNavigation2;
        final DefaultChangelogNavigation defaultChangelogNavigation2;
        GapComposer gapComposer;
        final NoOpSecretDebugSettingsNavigation noOpSecretDebugSettingsNavigation2;
        Modifier modifier3;
        int i2;
        NoOpFundingNavigation noOpFundingNavigation3;
        final DefaultAccountSetupNavigation defaultAccountSetupNavigation3;
        final MessageListLauncher messageListLauncher3;
        DefaultChangelogNavigation defaultChangelogNavigation3;
        final DefaultAccountSettingsNavigation defaultAccountSettingsNavigation3;
        final DefaultThundermailNavigation defaultThundermailNavigation3;
        final DefaultOnboardingNavigation defaultOnboardingNavigation3;
        final NoOpSecretDebugSettingsNavigation noOpSecretDebugSettingsNavigation3;
        final DefaultAccountEditNavigation defaultAccountEditNavigation3;
        int i3;
        DefaultOnboardingNavigation defaultOnboardingNavigation4;
        DefaultThundermailNavigation defaultThundermailNavigation4;
        DefaultAccountSetupNavigation defaultAccountSetupNavigation4;
        DefaultAccountEditNavigation defaultAccountEditNavigation4;
        DefaultAccountSettingsNavigation defaultAccountSettingsNavigation4;
        NoOpFundingNavigation noOpFundingNavigation4;
        NoOpSecretDebugSettingsNavigation noOpSecretDebugSettingsNavigation4;
        MessageListLauncher messageListLauncher4;
        navHostController.getClass();
        function0.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1548780397);
        int i4 = i | (gapComposer2.changedInstance(navHostController) ? 4 : 2) | (gapComposer2.changedInstance(function0) ? 32 : 16) | 306783616;
        if (gapComposer2.shouldExecute(i4 & 1, (306783379 & i4) != 306783378)) {
            gapComposer2.startDefaults();
            int i5 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i5 == 0 || gapComposer2.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope);
                Object rememberedValue = gapComposer2.rememberedValue();
                Object obj2 = rememberedValue;
                if (changed || rememberedValue == obj) {
                    obj2 = ViewSizeResolver.CC.m(MessageListLauncher.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                MessageListLauncher messageListLauncher5 = (MessageListLauncher) obj2;
                Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed2 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope2);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                Object obj3 = rememberedValue2;
                if (changed2 || rememberedValue2 == obj) {
                    obj3 = ViewSizeResolver.CC.m(DefaultAccountEditNavigation.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                DefaultAccountEditNavigation defaultAccountEditNavigation5 = (DefaultAccountEditNavigation) obj3;
                Scope currentKoinScope3 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed3 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope3);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                Object obj4 = rememberedValue3;
                if (changed3 || rememberedValue3 == obj) {
                    obj4 = ViewSizeResolver.CC.m(DefaultAccountSettingsNavigation.class, currentKoinScope3, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                DefaultAccountSettingsNavigation defaultAccountSettingsNavigation5 = (DefaultAccountSettingsNavigation) obj4;
                Scope currentKoinScope4 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed4 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope4);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                Object obj5 = rememberedValue4;
                if (changed4 || rememberedValue4 == obj) {
                    obj5 = ViewSizeResolver.CC.m(DefaultAccountSetupNavigation.class, currentKoinScope4, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                DefaultAccountSetupNavigation defaultAccountSetupNavigation5 = (DefaultAccountSetupNavigation) obj5;
                Scope currentKoinScope5 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed5 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope5);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changed5 || rememberedValue5 == obj) {
                    rememberedValue5 = ViewSizeResolver.CC.m(DefaultOnboardingNavigation.class, currentKoinScope5, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                DefaultOnboardingNavigation defaultOnboardingNavigation5 = (DefaultOnboardingNavigation) rememberedValue5;
                Scope currentKoinScope6 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed6 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope6);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changed6 || rememberedValue6 == obj) {
                    rememberedValue6 = ViewSizeResolver.CC.m(NoOpFundingNavigation.class, currentKoinScope6, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                NoOpFundingNavigation noOpFundingNavigation5 = (NoOpFundingNavigation) rememberedValue6;
                Scope currentKoinScope7 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed7 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope7);
                Object rememberedValue7 = gapComposer2.rememberedValue();
                if (changed7 || rememberedValue7 == obj) {
                    rememberedValue7 = ViewSizeResolver.CC.m(NoOpSecretDebugSettingsNavigation.class, currentKoinScope7, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                NoOpSecretDebugSettingsNavigation noOpSecretDebugSettingsNavigation5 = (NoOpSecretDebugSettingsNavigation) rememberedValue7;
                int i6 = i4 & (-2147482625);
                Scope currentKoinScope8 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed8 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope8);
                Object rememberedValue8 = gapComposer2.rememberedValue();
                if (changed8 || rememberedValue8 == obj) {
                    rememberedValue8 = ViewSizeResolver.CC.m(DefaultThundermailNavigation.class, currentKoinScope8, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                DefaultThundermailNavigation defaultThundermailNavigation5 = (DefaultThundermailNavigation) rememberedValue8;
                Scope currentKoinScope9 = KoinApplicationKt.currentKoinScope(gapComposer2);
                boolean changed9 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope9);
                Object rememberedValue9 = gapComposer2.rememberedValue();
                if (changed9 || rememberedValue9 == obj) {
                    rememberedValue9 = ViewSizeResolver.CC.m(DefaultChangelogNavigation.class, currentKoinScope9, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                }
                modifier3 = Modifier.Companion.$$INSTANCE;
                i2 = i6;
                noOpFundingNavigation3 = noOpFundingNavigation5;
                defaultAccountSetupNavigation3 = defaultAccountSetupNavigation5;
                messageListLauncher3 = messageListLauncher5;
                defaultChangelogNavigation3 = (DefaultChangelogNavigation) rememberedValue9;
                defaultAccountSettingsNavigation3 = defaultAccountSettingsNavigation5;
                defaultThundermailNavigation3 = defaultThundermailNavigation5;
                defaultOnboardingNavigation3 = defaultOnboardingNavigation5;
                noOpSecretDebugSettingsNavigation3 = noOpSecretDebugSettingsNavigation5;
                defaultAccountEditNavigation3 = defaultAccountEditNavigation5;
            } else {
                gapComposer2.skipToGroupEnd();
                modifier3 = modifier;
                messageListLauncher3 = messageListLauncher;
                defaultAccountEditNavigation3 = defaultAccountEditNavigation;
                defaultAccountSetupNavigation3 = defaultAccountSetupNavigation;
                defaultOnboardingNavigation3 = defaultOnboardingNavigation;
                noOpSecretDebugSettingsNavigation3 = noOpSecretDebugSettingsNavigation;
                defaultThundermailNavigation3 = defaultThundermailNavigation;
                defaultChangelogNavigation3 = defaultChangelogNavigation;
                i2 = i4 & (-2147482625);
                defaultAccountSettingsNavigation3 = defaultAccountSettingsNavigation;
                noOpFundingNavigation3 = noOpFundingNavigation;
            }
            gapComposer2.endDefaults();
            Object consume = gapComposer2.consume(LocalActivityKt.LocalActivity);
            consume.getClass();
            final ComponentActivity componentActivity = (ComponentActivity) consume;
            Modifier modifier4 = modifier3;
            OnboardingRoute.Onboarding onboarding = new OnboardingRoute.Onboarding(null);
            final DefaultChangelogNavigation defaultChangelogNavigation4 = defaultChangelogNavigation3;
            boolean changedInstance = gapComposer2.changedInstance(defaultChangelogNavigation3) | ((i2 & 112) == 32) | gapComposer2.changedInstance(defaultOnboardingNavigation3) | gapComposer2.changedInstance(messageListLauncher3) | gapComposer2.changedInstance(componentActivity) | gapComposer2.changedInstance(navHostController) | gapComposer2.changedInstance(defaultThundermailNavigation3) | gapComposer2.changedInstance(defaultAccountSetupNavigation3) | gapComposer2.changedInstance(defaultAccountEditNavigation3) | gapComposer2.changedInstance(defaultAccountSettingsNavigation3) | gapComposer2.changedInstance(noOpFundingNavigation3) | gapComposer2.changedInstance(noOpSecretDebugSettingsNavigation3);
            Object rememberedValue10 = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue10 == obj) {
                final NoOpFundingNavigation noOpFundingNavigation6 = noOpFundingNavigation3;
                i3 = i2;
                Object obj6 = new Function1() { // from class: app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj7;
                        navGraphBuilder.getClass();
                        DefaultChangelogNavigation.this.getClass();
                        final Function0 function02 = function0;
                        function02.getClass();
                        final int i7 = 0;
                        final int i8 = 1;
                        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-739062790, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(i7, function02), true);
                        KSerializer serializer = ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(ChangelogRoute.class));
                        EmptyMap emptyMap = EmptyMap.INSTANCE;
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(ChangelogRoute.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(serializer, emptyMap, "app://changelog"), null, null)), composableLambdaImpl);
                        MessageListLauncher messageListLauncher6 = messageListLauncher3;
                        ComponentActivity componentActivity2 = componentActivity;
                        NavHostController navHostController2 = navHostController;
                        FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = new FeatureLauncherNavHostKt$$ExternalSyntheticLambda2(messageListLauncher6, componentActivity2, navHostController2);
                        defaultOnboardingNavigation3.getClass();
                        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(277904205, new CoilImageKt$$ExternalSyntheticLambda11(5, featureLauncherNavHostKt$$ExternalSyntheticLambda2), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(OnboardingRoute.Onboarding.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(OnboardingRoute.Onboarding.class)), emptyMap, "app://onboarding"), null, null)), composableLambdaImpl2);
                        NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0 = new NavController$$ExternalSyntheticLambda0(navHostController2, 20);
                        FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda22 = new FeatureLauncherNavHostKt$$ExternalSyntheticLambda2(navHostController2, messageListLauncher6, componentActivity2);
                        defaultThundermailNavigation3.getClass();
                        ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(347581688, new DefaultThundermailNavigation$$ExternalSyntheticLambda3(navController$$ExternalSyntheticLambda0, featureLauncherNavHostKt$$ExternalSyntheticLambda22, i7), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(ThundermailRoute.SignInWithThundermail.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(ThundermailRoute.SignInWithThundermail.class)), emptyMap, "app://thundermail/sign-in"), null, null)), composableLambdaImpl3);
                        ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(488893089, new DefaultThundermailNavigation$$ExternalSyntheticLambda3(featureLauncherNavHostKt$$ExternalSyntheticLambda22, navController$$ExternalSyntheticLambda0), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(ThundermailRoute.ScanQrCode.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(ThundermailRoute.ScanQrCode.class)), emptyMap, "app://thundermail/scan-qr-code"), null, null)), composableLambdaImpl4);
                        int i9 = 2;
                        ComposableLambdaImpl composableLambdaImpl5 = new ComposableLambdaImpl(-1384320448, new DefaultThundermailNavigation$$ExternalSyntheticLambda3(navController$$ExternalSyntheticLambda0, featureLauncherNavHostKt$$ExternalSyntheticLambda22, i9), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(ThundermailRoute.IncomingSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(ThundermailRoute.IncomingSettings.class)), emptyMap, "app://thundermail/incoming-settings"), null, null)), composableLambdaImpl5);
                        ComposableLambdaImpl composableLambdaImpl6 = new ComposableLambdaImpl(1037433311, new CoilImageKt$$ExternalSyntheticLambda11(12, featureLauncherNavHostKt$$ExternalSyntheticLambda22), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(ThundermailRoute.Permissions.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(ThundermailRoute.Permissions.class)), emptyMap, "app://thundermail/permissions/{accountId}"), null, null)), composableLambdaImpl6);
                        DI$$ExternalSyntheticLambda0 dI$$ExternalSyntheticLambda0 = new DI$$ExternalSyntheticLambda0(14, messageListLauncher6, navHostController2);
                        defaultAccountSetupNavigation3.getClass();
                        ComposableLambdaImpl composableLambdaImpl7 = new ComposableLambdaImpl(-30535395, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(i8, (Object) function02, (Object) dI$$ExternalSyntheticLambda0), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountSetupRoute.AccountSetup.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountSetupRoute.AccountSetup.class)), emptyMap, "app://account/setup"), null, null)), composableLambdaImpl7);
                        final DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(25, componentActivity2);
                        defaultAccountEditNavigation3.getClass();
                        ComposableLambdaImpl composableLambdaImpl8 = new ComposableLambdaImpl(1627291880, new Function4() { // from class: app.k9mail.feature.account.edit.navigation.DefaultAccountEditNavigation$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function4
                            public final Object invoke(Object obj8, Object obj9, Object obj10, Object obj11) {
                                int i10 = i7;
                                Unit unit = Unit.INSTANCE;
                                Function0 function03 = function02;
                                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda02 = diskLruCache$$ExternalSyntheticLambda0;
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj9;
                                Composer composer2 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScopeImpl) obj8).getClass();
                                navBackStackEntry.getClass();
                                switch (i10) {
                                    case 0:
                                        Utf8.SafeProcessor.EditIncomingServerSettingsNavHost(((AccountEditRoute.IncomingServerSettings) MathKt.toRoute(navBackStackEntry, Reflection.getOrCreateKotlinClass(AccountEditRoute.IncomingServerSettings.class))).accountId, diskLruCache$$ExternalSyntheticLambda02, function03, composer2, 0);
                                        break;
                                    default:
                                        Data.Companion.EditOutgoingServerSettingsNavHost(((AccountEditRoute.OutgoingServerSettings) MathKt.toRoute(navBackStackEntry, Reflection.getOrCreateKotlinClass(AccountEditRoute.OutgoingServerSettings.class))).accountId, diskLruCache$$ExternalSyntheticLambda02, function03, composer2, 0);
                                        break;
                                }
                                return unit;
                            }
                        }, true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountEditRoute.IncomingServerSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountEditRoute.IncomingServerSettings.class)), emptyMap, "app://account/edit/incoming"), null, null)), composableLambdaImpl8);
                        ComposableLambdaImpl composableLambdaImpl9 = new ComposableLambdaImpl(-1281790703, new Function4() { // from class: app.k9mail.feature.account.edit.navigation.DefaultAccountEditNavigation$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function4
                            public final Object invoke(Object obj8, Object obj9, Object obj10, Object obj11) {
                                int i10 = i8;
                                Unit unit = Unit.INSTANCE;
                                Function0 function03 = function02;
                                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda02 = diskLruCache$$ExternalSyntheticLambda0;
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj9;
                                Composer composer2 = (Composer) obj10;
                                ((Integer) obj11).getClass();
                                ((AnimatedContentScopeImpl) obj8).getClass();
                                navBackStackEntry.getClass();
                                switch (i10) {
                                    case 0:
                                        Utf8.SafeProcessor.EditIncomingServerSettingsNavHost(((AccountEditRoute.IncomingServerSettings) MathKt.toRoute(navBackStackEntry, Reflection.getOrCreateKotlinClass(AccountEditRoute.IncomingServerSettings.class))).accountId, diskLruCache$$ExternalSyntheticLambda02, function03, composer2, 0);
                                        break;
                                    default:
                                        Data.Companion.EditOutgoingServerSettingsNavHost(((AccountEditRoute.OutgoingServerSettings) MathKt.toRoute(navBackStackEntry, Reflection.getOrCreateKotlinClass(AccountEditRoute.OutgoingServerSettings.class))).accountId, diskLruCache$$ExternalSyntheticLambda02, function03, composer2, 0);
                                        break;
                                }
                                return unit;
                            }
                        }, true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountEditRoute.OutgoingServerSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountEditRoute.OutgoingServerSettings.class)), emptyMap, "app://account/edit/outgoing"), null, null)), composableLambdaImpl9);
                        defaultAccountSettingsNavigation3.getClass();
                        ComposableLambdaImpl composableLambdaImpl10 = new ComposableLambdaImpl(1757953417, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(i8, function02), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$GeneralSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountSettingsRoute$GeneralSettings.class)), emptyMap, "app://account/settings/general"), null, null)), composableLambdaImpl10);
                        ComposableLambdaImpl composableLambdaImpl11 = new ComposableLambdaImpl(1577471872, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(i9, function02), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$ReadingMailSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountSettingsRoute$ReadingMailSettings.class)), emptyMap, "app://account/settings/reading_mail"), null, null)), composableLambdaImpl11);
                        ComposableLambdaImpl composableLambdaImpl12 = new ComposableLambdaImpl(-1462713407, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(3, function02), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$FetchingMailSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountSettingsRoute$FetchingMailSettings.class)), emptyMap, "app://account/settings/fetching_mail"), null, null)), composableLambdaImpl12);
                        ComposableLambdaImpl composableLambdaImpl13 = new ComposableLambdaImpl(-207931390, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(4, function02), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$AdvancedFetchingMailSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountSettingsRoute$AdvancedFetchingMailSettings.class)), emptyMap, "app://account/settings/fetching_mail/advanced"), null, null)), composableLambdaImpl13);
                        ComposableLambdaImpl composableLambdaImpl14 = new ComposableLambdaImpl(1046850627, new DefaultChangelogNavigation$$ExternalSyntheticLambda0(5, function02), true);
                        OAuthBearer.composable(navGraphBuilder, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$SearchSettings.class), IntOffsetKt.listOf(new NavDeepLink(InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(Reflection.getOrCreateKotlinClass(AccountSettingsRoute$SearchSettings.class)), emptyMap, "app://account/settings/search"), null, null)), composableLambdaImpl14);
                        noOpFundingNavigation6.getClass();
                        noOpSecretDebugSettingsNavigation3.getClass();
                        return Unit.INSTANCE;
                    }
                };
                defaultOnboardingNavigation4 = defaultOnboardingNavigation3;
                defaultThundermailNavigation4 = defaultThundermailNavigation3;
                defaultAccountSetupNavigation4 = defaultAccountSetupNavigation3;
                defaultAccountEditNavigation4 = defaultAccountEditNavigation3;
                defaultAccountSettingsNavigation4 = defaultAccountSettingsNavigation3;
                noOpFundingNavigation4 = noOpFundingNavigation6;
                noOpSecretDebugSettingsNavigation4 = noOpSecretDebugSettingsNavigation3;
                messageListLauncher4 = messageListLauncher3;
                gapComposer2.updateRememberedValue(obj6);
                rememberedValue10 = obj6;
            } else {
                noOpFundingNavigation4 = noOpFundingNavigation3;
                defaultOnboardingNavigation4 = defaultOnboardingNavigation3;
                defaultThundermailNavigation4 = defaultThundermailNavigation3;
                defaultAccountSetupNavigation4 = defaultAccountSetupNavigation3;
                defaultAccountEditNavigation4 = defaultAccountEditNavigation3;
                defaultAccountSettingsNavigation4 = defaultAccountSettingsNavigation3;
                noOpSecretDebugSettingsNavigation4 = noOpSecretDebugSettingsNavigation3;
                messageListLauncher4 = messageListLauncher3;
                i3 = i2;
            }
            Utf8.SafeProcessor.NavHost(navHostController, onboarding, modifier4, null, null, null, null, null, null, (Function1) rememberedValue10, gapComposer2, i3 & 910);
            modifier2 = modifier4;
            gapComposer = gapComposer2;
            defaultOnboardingNavigation2 = defaultOnboardingNavigation4;
            messageListLauncher2 = messageListLauncher4;
            defaultThundermailNavigation2 = defaultThundermailNavigation4;
            defaultChangelogNavigation2 = defaultChangelogNavigation4;
            defaultAccountSetupNavigation2 = defaultAccountSetupNavigation4;
            defaultAccountEditNavigation2 = defaultAccountEditNavigation4;
            defaultAccountSettingsNavigation2 = defaultAccountSettingsNavigation4;
            noOpFundingNavigation2 = noOpFundingNavigation4;
            noOpSecretDebugSettingsNavigation2 = noOpSecretDebugSettingsNavigation4;
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
            messageListLauncher2 = messageListLauncher;
            defaultAccountEditNavigation2 = defaultAccountEditNavigation;
            defaultAccountSettingsNavigation2 = defaultAccountSettingsNavigation;
            defaultAccountSetupNavigation2 = defaultAccountSetupNavigation;
            defaultOnboardingNavigation2 = defaultOnboardingNavigation;
            noOpFundingNavigation2 = noOpFundingNavigation;
            defaultThundermailNavigation2 = defaultThundermailNavigation;
            defaultChangelogNavigation2 = defaultChangelogNavigation;
            gapComposer = gapComposer2;
            noOpSecretDebugSettingsNavigation2 = noOpSecretDebugSettingsNavigation;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(function0, modifier2, messageListLauncher2, defaultAccountEditNavigation2, defaultAccountSettingsNavigation2, defaultAccountSetupNavigation2, defaultOnboardingNavigation2, noOpFundingNavigation2, noOpSecretDebugSettingsNavigation2, defaultThundermailNavigation2, defaultChangelogNavigation2, i) { // from class: app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda1
                public final /* synthetic */ Function0 f$1;
                public final /* synthetic */ DefaultThundermailNavigation f$10;
                public final /* synthetic */ DefaultChangelogNavigation f$11;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ MessageListLauncher f$3;
                public final /* synthetic */ DefaultAccountEditNavigation f$4;
                public final /* synthetic */ DefaultAccountSettingsNavigation f$5;
                public final /* synthetic */ DefaultAccountSetupNavigation f$6;
                public final /* synthetic */ DefaultOnboardingNavigation f$7;
                public final /* synthetic */ NoOpFundingNavigation f$8;
                public final /* synthetic */ NoOpSecretDebugSettingsNavigation f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj7, Object obj8) {
                    ((Integer) obj8).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    Operation$State.FeatureLauncherNavHost(NavHostController.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, (Composer) obj7, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final long GridItemSpan(int i) {
        if (!(i > 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("The span value should be higher than 0");
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void NavigationDrawerItem(androidx.compose.runtime.internal.ComposableLambdaImpl r18, boolean r19, kotlin.jvm.functions.Function0 r20, androidx.compose.ui.Modifier r21, kotlin.jvm.functions.Function2 r22, kotlin.jvm.functions.Function2 r23, androidx.compose.runtime.Composer r24, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.NavigationDrawerItem(androidx.compose.runtime.internal.ComposableLambdaImpl, boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void OutgoingServerSettingsScreen(Function0 function0, Function0 function02, OutgoingServerSettingsViewModel outgoingServerSettingsViewModel, Modifier modifier, Composer composer, int i) {
        OutgoingServerSettingsViewModel outgoingServerSettingsViewModel2;
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        outgoingServerSettingsViewModel.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-310661760);
        int i2 = 4;
        int i3 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | (gapComposer.changedInstance(function02) ? 32 : 16) | (gapComposer.changedInstance(outgoingServerSettingsViewModel) ? 256 : 128) | 3072;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            int i4 = i3 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(outgoingServerSettingsViewModel.state, gapComposer);
            boolean z = (((i4 & 14) ^ 6) > 4 && gapComposer.changedInstance(outgoingServerSettingsViewModel)) || (i4 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            int i5 = 3;
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(outgoingServerSettingsViewModel, i5);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Continuation continuation = null;
            outgoingServerSettingsViewModel2 = outgoingServerSettingsViewModel;
            Updater.LaunchedEffect(gapComposer, outgoingServerSettingsViewModel.effect, new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(outgoingServerSettingsViewModel, continuation, function02, function0, 2));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            boolean changed = gapComposer.changed(function1);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(i5, continuation, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function1);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(15, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), Expect_jvmKt.rememberComposableLambda(-1482324420, new GapComposer$$ExternalSyntheticLambda3(25, outgoingServerSettingsViewModel2, function1), gapComposer), Expect_jvmKt.rememberComposableLambda(1775526299, new Updater$$ExternalSyntheticLambda0(i5, function1), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(1059513460, new ArchiveOperations$$ExternalSyntheticLambda2(outgoingServerSettingsViewModel2, collectAsStateWithLifecycle, function1, i2), gapComposer), gapComposer, 1573296, 56);
            modifier2 = companion;
        } else {
            outgoingServerSettingsViewModel2 = outgoingServerSettingsViewModel;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(function0, function02, outgoingServerSettingsViewModel2, modifier2, i, 7);
        }
    }

    public static final void PullToRefreshBox(boolean z, Function0 function0, Modifier modifier, PullToRefreshStateImpl pullToRefreshStateImpl, Function3 function3, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        BiasAlignment biasAlignment = Alignment.Companion.TopStart;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-532332839);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(pullToRefreshStateImpl) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(biasAlignment) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Modifier then = modifier.then(new PullToRefreshElement(z, function0, pullToRefreshStateImpl, PullToRefreshDefaults.PositionalThreshold));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
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
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Object valueOf = Integer.valueOf(((i2 >> 15) & 112) | 6);
            Object obj = BoxScopeInstance.INSTANCE;
            composableLambdaImpl.invoke(obj, gapComposer, valueOf);
            function3.invoke(obj, gapComposer, Integer.valueOf(((i2 >> 12) & 112) | 6));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(z, function0, modifier, pullToRefreshStateImpl, function3, composableLambdaImpl, i);
        }
    }

    public static final void Switch(boolean z, Function1 function1, Modifier modifier, boolean z2, Composer composer, int i) {
        Function1 function12;
        boolean z3;
        boolean z4;
        Modifier modifier2;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1740486559);
        int i2 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | 3456;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            function12 = function1;
            SwitchKt.Switch(z, function12, companion, null, gapComposer, (i2 & 1022) | 24576);
            z3 = z;
            modifier2 = companion;
            z4 = true;
        } else {
            function12 = function1;
            z3 = z;
            gapComposer.skipToGroupEnd();
            z4 = z2;
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda0(z3, function12, modifier2, z4, i);
        }
    }

    /* renamed from: TextDisplayMediumAutoResize-OxOnQKw, reason: not valid java name */
    public static final void m827TextDisplayMediumAutoResizeOxOnQKw(int i, long j, Composer composer, Modifier modifier, String str) {
        GapComposer gapComposer;
        long j2;
        Modifier modifier2;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-811306007);
        int i2 = i | (gapComposer2.changed(str) ? 4 : 2) | 3504;
        int i3 = 1;
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            long j3 = Color.Unspecified;
            TextStyle textStyle = ((ThemeTypography) gapComposer2.consume(ThemeTypographyKt.LocalThemeTypography)).displayMedium;
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.mutableStateOf$default(textStyle);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState2 = (MutableState) rememberedValue2;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 8);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier drawWithContent = ClipKt.drawWithContent(companion, (Function1) rememberedValue3);
            TextStyle textStyle2 = (TextStyle) mutableState2.getValue();
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new SearchSettingContentKt$$ExternalSyntheticLambda8(mutableState2, mutableState, i3);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            gapComposer = gapComposer2;
            TextKt.m362TextNvy7gAk(str, drawWithContent, j3, 0L, 0L, null, 0L, 0, false, 0, 0, (Function1) rememberedValue4, textStyle2, gapComposer, i2 & 910, 1575942, 56312);
            j2 = j3;
            modifier2 = companion;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            j2 = j;
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChangelogScreenKt$$ExternalSyntheticLambda14(str, modifier2, j2, i);
        }
    }

    public static QuirkSettings buildQuirkSettings(Context context, Bundle bundle) {
        boolean z = bundle.getBoolean("androidx.camera.core.quirks.DEFAULT_QUIRK_ENABLED", true);
        String[] loadQuirks = loadQuirks(context, bundle, "androidx.camera.core.quirks.FORCE_ENABLED");
        String[] loadQuirks2 = loadQuirks(context, bundle, "androidx.camera.core.quirks.FORCE_DISABLED");
        Utf8.SafeProcessor.d("QuirkSettingsLoader", "Loaded quirk settings from metadata:");
        Utf8.SafeProcessor.d("QuirkSettingsLoader", "  KEY_DEFAULT_QUIRK_ENABLED = " + z);
        Utf8.SafeProcessor.d("QuirkSettingsLoader", "  KEY_QUIRK_FORCE_ENABLED = " + Arrays.toString(loadQuirks));
        Utf8.SafeProcessor.d("QuirkSettingsLoader", "  KEY_QUIRK_FORCE_DISABLED = " + Arrays.toString(loadQuirks2));
        return new QuirkSettings(z, new HashSet(resolveQuirkNames(loadQuirks)), new HashSet(resolveQuirkNames(loadQuirks2)));
    }

    public static void checkBoundsIndexes$kotlin_stdlib(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            Regex$$ExternalSyntheticBUOutline0.m(i3, Config.CC.m91m("startIndex: ", i, ", endIndex: ", i2, ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "startIndex: ", " > endIndex: "));
        }
    }

    public static void checkRangeIndexes$kotlin_stdlib(int i, int i2, int i3) {
        if (i < 0 || i2 > i3) {
            Regex$$ExternalSyntheticBUOutline0.m(i3, Config.CC.m91m("fromIndex: ", i, ", toIndex: ", i2, ", size: "));
        } else {
            if (i <= i2) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "fromIndex: ", " > toIndex: "));
        }
    }

    public static Registry createAndInitRegistry(Glide glide, List list, AppGlideModule appGlideModule) {
        ResourceDecoder gifFrameResourceDecoder;
        ResourceDecoder contactImageBitmapDecoder;
        BitmapPool bitmapPool;
        int i;
        String str;
        Class cls;
        BitmapPool bitmapPool2 = glide.bitmapPool;
        LruArrayPool lruArrayPool = glide.arrayPool;
        GlideContext glideContext = glide.glideContext;
        Context applicationContext = glideContext.getApplicationContext();
        GlideExperiments glideExperiments = glideContext.experiments;
        Registry registry = new Registry();
        Class<InputStream> cls2 = InputStream.class;
        DefaultImageHeaderParser defaultImageHeaderParser = new DefaultImageHeaderParser();
        Headers.Builder builder = registry.imageHeaderParserRegistry;
        synchronized (builder) {
            builder.namesAndValues.add(defaultImageHeaderParser);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            registry.register(new ExifInterfaceImageHeaderParser());
        }
        Resources resources = applicationContext.getResources();
        ArrayList imageHeaderParsers = registry.getImageHeaderParsers();
        ByteBufferGifDecoder byteBufferGifDecoder = new ByteBufferGifDecoder(applicationContext, imageHeaderParsers, bitmapPool2, lruArrayPool);
        ResourceDecoder videoDecoder = new VideoDecoder(bitmapPool2, new GlideBuilder$1());
        Downsampler downsampler = new Downsampler(registry.getImageHeaderParsers(), resources.getDisplayMetrics(), bitmapPool2, lruArrayPool);
        if (i2 < 28 || !glideExperiments.experiments.containsKey(SchemaInfoUtilKt.class)) {
            gifFrameResourceDecoder = new GifFrameResourceDecoder(1, downsampler);
            contactImageBitmapDecoder = new ContactImageBitmapDecoder(3, downsampler, lruArrayPool);
        } else {
            contactImageBitmapDecoder = new BitmapImageDecoderResourceDecoder(2);
            gifFrameResourceDecoder = new BitmapImageDecoderResourceDecoder(1);
        }
        if (i2 >= 28) {
            i = i2;
            bitmapPool = bitmapPool2;
            registry.append("Animation", InputStream.class, Drawable.class, new AnimatedImageDecoder.StreamAnimatedImageDecoder(new AnimatedImageDecoder(imageHeaderParsers, lruArrayPool), 0));
            registry.append("Animation", ByteBuffer.class, Drawable.class, new AnimatedImageDecoder.StreamAnimatedImageDecoder(new AnimatedImageDecoder(imageHeaderParsers, lruArrayPool), 1));
        } else {
            bitmapPool = bitmapPool2;
            i = i2;
        }
        ResourceDecoder resourceDrawableDecoder = new ResourceDrawableDecoder(applicationContext);
        ResourceEncoder bitmapEncoder = new BitmapEncoder(lruArrayPool);
        ResourceTranscoder priorityQueue = new PriorityQueue();
        ResourceTranscoder unitTranscoder = new UnitTranscoder(1);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        registry.append(ByteBuffer.class, new ByteBufferEncoder(0));
        registry.append(InputStream.class, new Configuration.Builder(16, lruArrayPool));
        registry.append("Bitmap", ByteBuffer.class, Bitmap.class, gifFrameResourceDecoder);
        registry.append("Bitmap", InputStream.class, Bitmap.class, contactImageBitmapDecoder);
        String str2 = Build.FINGERPRINT;
        if ("robolectric".equals(str2)) {
            str = str2;
            cls = ParcelFileDescriptor.class;
        } else {
            str = str2;
            ResourceDecoder gifFrameResourceDecoder2 = new GifFrameResourceDecoder(2, downsampler);
            cls = ParcelFileDescriptor.class;
            registry.append("Bitmap", cls, Bitmap.class, gifFrameResourceDecoder2);
        }
        BitmapPool bitmapPool3 = bitmapPool;
        registry.append("Bitmap", AssetFileDescriptor.class, Bitmap.class, new VideoDecoder(bitmapPool3, new Adler32(15)));
        registry.append("Bitmap", cls, Bitmap.class, videoDecoder);
        ModelLoaderFactory modelLoaderFactory = ByteBufferEncoder.FACTORY;
        registry.append(Bitmap.class, Bitmap.class, modelLoaderFactory);
        registry.append("Bitmap", Bitmap.class, Bitmap.class, new FileDecoder(1));
        registry.append(Bitmap.class, bitmapEncoder);
        registry.append("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new ContactImageBitmapDecoder(resources, gifFrameResourceDecoder));
        registry.append("BitmapDrawable", InputStream.class, BitmapDrawable.class, new ContactImageBitmapDecoder(resources, contactImageBitmapDecoder));
        registry.append("BitmapDrawable", cls, BitmapDrawable.class, new ContactImageBitmapDecoder(resources, videoDecoder));
        registry.append(BitmapDrawable.class, new Base64Util(18, bitmapPool3, bitmapEncoder));
        registry.append("Animation", InputStream.class, GifDrawable.class, new StreamGifDecoder(imageHeaderParsers, byteBufferGifDecoder, lruArrayPool));
        registry.append("Animation", ByteBuffer.class, GifDrawable.class, byteBufferGifDecoder);
        registry.append(GifDrawable.class, new Transition.AnonymousClass1());
        registry.append(StandardGifDecoder.class, StandardGifDecoder.class, modelLoaderFactory);
        registry.append("Bitmap", StandardGifDecoder.class, Bitmap.class, new GifFrameResourceDecoder(0, bitmapPool3));
        registry.append("legacy_append", Uri.class, Drawable.class, resourceDrawableDecoder);
        int i3 = 2;
        registry.append("legacy_append", Uri.class, Bitmap.class, new ContactImageBitmapDecoder(i3, resourceDrawableDecoder, bitmapPool3));
        registry.register(new DataRewinderRegistry$1(i3));
        registry.append(File.class, ByteBuffer.class, new ByteBufferEncoder(6));
        int i4 = 7;
        registry.append(File.class, InputStream.class, new FileLoader.StreamFactory(i4, new ByteBufferEncoder(9)));
        registry.append("legacy_append", File.class, File.class, new FileDecoder(0));
        registry.append(File.class, cls, new FileLoader.StreamFactory(i4, new ByteBufferEncoder(8)));
        registry.append(File.class, File.class, modelLoaderFactory);
        registry.register(new InputStreamRewinder.Factory(lruArrayPool));
        if (!"robolectric".equals(str)) {
            registry.register(new DataRewinderRegistry$1(1));
        }
        ModelLoaderFactory navContext = new NavContext(applicationContext, 5);
        ModelLoaderFactory navContext2 = new NavContext(applicationContext, 3);
        ModelLoaderFactory navContext3 = new NavContext(applicationContext, 4);
        Class cls3 = Integer.TYPE;
        registry.append(cls3, InputStream.class, navContext);
        registry.append(Integer.class, InputStream.class, navContext);
        registry.append(cls3, AssetFileDescriptor.class, navContext2);
        registry.append(Integer.class, AssetFileDescriptor.class, navContext2);
        registry.append(cls3, Drawable.class, navContext3);
        registry.append(Integer.class, Drawable.class, navContext3);
        registry.append(Uri.class, InputStream.class, new NavContext(applicationContext, 8));
        registry.append(Uri.class, AssetFileDescriptor.class, new NavContext(applicationContext, 7));
        ModelLoaderFactory resourceLoader$UriFactory = new ResourceLoader$UriFactory(0, resources);
        ModelLoaderFactory resourceLoader$UriFactory2 = new ResourceLoader$UriFactory(1, resources);
        ModelLoaderFactory resourceLoader$UriFactory3 = new ResourceLoader$UriFactory(2, resources);
        registry.append(Integer.class, Uri.class, resourceLoader$UriFactory);
        registry.append(cls3, Uri.class, resourceLoader$UriFactory);
        registry.append(Integer.class, AssetFileDescriptor.class, resourceLoader$UriFactory2);
        registry.append(cls3, AssetFileDescriptor.class, resourceLoader$UriFactory2);
        registry.append(Integer.class, InputStream.class, resourceLoader$UriFactory3);
        registry.append(cls3, InputStream.class, resourceLoader$UriFactory3);
        int i5 = 14;
        registry.append(String.class, InputStream.class, new Configuration.Builder(14));
        registry.append(Uri.class, InputStream.class, new Configuration.Builder(14));
        registry.append(String.class, InputStream.class, new ByteBufferEncoder(13));
        int i6 = 12;
        registry.append(String.class, cls, new ByteBufferEncoder(i6));
        registry.append(String.class, AssetFileDescriptor.class, new ByteBufferEncoder(11));
        registry.append(Uri.class, InputStream.class, new AssetUriLoader.StreamFactory(applicationContext.getAssets(), 0));
        registry.append(Uri.class, AssetFileDescriptor.class, new AssetUriLoader.StreamFactory(applicationContext.getAssets(), 1));
        registry.append(Uri.class, InputStream.class, new NavContext(applicationContext, 9));
        registry.append(Uri.class, InputStream.class, new NavContext(applicationContext, 10));
        if (i >= 29) {
            registry.append(Uri.class, InputStream.class, new QMediaStoreUriLoader.InputStreamFactory(applicationContext, cls2));
            registry.append(Uri.class, cls, new QMediaStoreUriLoader.InputStreamFactory(applicationContext, cls));
        }
        registry.append(Uri.class, InputStream.class, new UriLoader.StreamFactory(contentResolver, 0));
        registry.append(Uri.class, cls, new UriLoader.StreamFactory(contentResolver, 2));
        registry.append(Uri.class, AssetFileDescriptor.class, new UriLoader.StreamFactory(contentResolver, 1));
        registry.append(Uri.class, InputStream.class, new ByteBufferEncoder(i5));
        registry.append(URL.class, InputStream.class, new Lock());
        registry.append(Uri.class, File.class, new NavContext(applicationContext, 6));
        registry.append(GlideUrl.class, InputStream.class, new Configuration.Builder(17));
        int i7 = 3;
        registry.append(byte[].class, ByteBuffer.class, new ByteBufferEncoder(i7));
        registry.append(byte[].class, InputStream.class, new ByteBufferEncoder(5));
        registry.append(Uri.class, Uri.class, modelLoaderFactory);
        registry.append(Drawable.class, Drawable.class, modelLoaderFactory);
        registry.append("legacy_append", Drawable.class, Drawable.class, new FileDecoder(2));
        registry.register(Bitmap.class, BitmapDrawable.class, new ResourceLoader$UriFactory(i7, resources));
        registry.register(Bitmap.class, byte[].class, priorityQueue);
        registry.register(Drawable.class, byte[].class, new ImapSync(bitmapPool3, priorityQueue, unitTranscoder, i6));
        registry.register(GifDrawable.class, byte[].class, unitTranscoder);
        ResourceDecoder videoDecoder2 = new VideoDecoder(bitmapPool3, new Path.Companion());
        registry.append("legacy_append", ByteBuffer.class, Bitmap.class, videoDecoder2);
        registry.append("legacy_append", ByteBuffer.class, BitmapDrawable.class, new ContactImageBitmapDecoder(resources, videoDecoder2));
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw Config.CC.m(it);
        }
        if (appGlideModule != null) {
            appGlideModule.registerComponents(applicationContext, glide, registry);
        }
        return registry;
    }

    /* renamed from: drawArrow-uDrxG_w, reason: not valid java name */
    public static final void m828drawArrowuDrxG_w(DrawScope drawScope, AndroidPath androidPath, Rect rect, long j, float f, FlingCalculator flingCalculator) {
        androidPath.reset();
        androidPath.internalPath.moveTo(0.0f, 0.0f);
        float mo177toPx0680j_4 = drawScope.mo177toPx0680j_4(10.0f);
        float f2 = flingCalculator.magicPhysicalCoefficient;
        androidPath.lineTo((mo177toPx0680j_4 * f2) / 2.0f, drawScope.mo177toPx0680j_4(5.0f) * f2);
        androidPath.lineTo(drawScope.mo177toPx0680j_4(10.0f) * f2, 0.0f);
        float intBitsToFloat = (Float.intBitsToFloat((int) (rect.m445getCenterF1C5BW0() >> 32)) + (Math.min(rect.right - rect.left, rect.bottom - rect.top) / 2.0f)) - ((drawScope.mo177toPx0680j_4(10.0f) * f2) / 2.0f);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (rect.m445getCenterF1C5BW0() & 4294967295L)) - drawScope.mo177toPx0680j_4(2.5f);
        androidPath.m471translatek4lQ0M((Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L));
        float mo177toPx0680j_42 = flingCalculator.friction - drawScope.mo177toPx0680j_4(2.5f);
        long mo533getCenterF1C5BW0 = drawScope.mo533getCenterF1C5BW0();
        MenuHostHelper drawContext = drawScope.getDrawContext();
        long m795getSizeNHjbRc = drawContext.m795getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            ((PreviewView.AnonymousClass1) drawContext.mOnInvalidateMenuCallback).m98rotateUv8p0NA(mo177toPx0680j_42, mo533getCenterF1C5BW0);
            Modifier.CC.m400drawPathLG529CI$default(drawScope, androidPath, j, f, new Stroke(drawScope.mo177toPx0680j_4(2.5f), 0.0f, 0, 0, 30), 48);
        } finally {
            Config.CC.m(drawContext, m795getSizeNHjbRc);
        }
    }

    public static ArrayList extract(String str) {
        char c;
        int i;
        String str2 = str;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        EmailSection.Builder builder = new EmailSection.Builder(str2, 0);
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 1;
        while (i4 < str2.length()) {
            char charAt = str2.charAt(i4);
            int i12 = i5 + 1;
            if (i11 != 0) {
                if (charAt == '\n') {
                    if (i7 != i8) {
                        if (!((ArrayList) builder.segments).isEmpty()) {
                            arrayList.add(builder.build());
                        }
                        builder = new EmailSection.Builder(str2, i8);
                        i9 = i5 - i6;
                        i7 = i8;
                    }
                    if (i8 > 0) {
                        ((ArrayList) builder.segments).add(new EmailSection.Segment(i5 - i6, i12));
                    }
                } else if (charAt == ' ') {
                    i6++;
                } else if (charAt != '>') {
                    i10 = i5 - i6;
                    if (i7 != i8) {
                        if (!((ArrayList) builder.segments).isEmpty()) {
                            arrayList.add(builder.build());
                        }
                        builder = new EmailSection.Builder(str2, i8);
                        i11 = i2;
                        i7 = i8;
                        i9 = i10;
                    } else {
                        i11 = i2;
                    }
                } else {
                    if (i7 == 0 && i8 == 0 && i9 != (i = i3 + 1)) {
                        builder.addSegment(i2, i9, i);
                    }
                    i8++;
                    i6 = i2;
                }
                c = '\n';
            } else {
                c = '\n';
                if (charAt == '\n' && i8 > 0) {
                    builder.addSegment(i6, i10, i12);
                }
            }
            if (charAt == c) {
                i3 = i5;
                i11 = 1;
                i6 = 0;
                i8 = 0;
            }
            i4++;
            i2 = 0;
            str2 = str;
            i5 = i12;
        }
        if (i7 == 0) {
            builder.addSegment(0, i9, str.length());
        } else if (i11 == 0) {
            builder.addSegment(i6, i10, str.length());
        }
        if (!((ArrayList) builder.segments).isEmpty()) {
            arrayList.add(builder.build());
        }
        return arrayList;
    }

    public static FontsContractCompat$FontInfo findBestInfo(FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        FontsContractCompat$FontInfo fontsContractCompat$FontInfo = null;
        int i3 = Integer.MAX_VALUE;
        for (FontsContractCompat$FontInfo fontsContractCompat$FontInfo2 : fontsContractCompat$FontInfoArr) {
            int abs = (Math.abs(fontsContractCompat$FontInfo2.mWeight - i2) * 2) + (fontsContractCompat$FontInfo2.mItalic == z ? 0 : 1);
            if (fontsContractCompat$FontInfo == null || i3 > abs) {
                fontsContractCompat$FontInfo = fontsContractCompat$FontInfo2;
                i3 = abs;
            }
        }
        return fontsContractCompat$FontInfo;
    }

    public static ArrayList findMultipartEncryptedParts(Part part) {
        ArrayList arrayList = new ArrayList();
        Stack stack = new Stack();
        stack.push(part);
        while (!stack.isEmpty()) {
            Part part2 = (Part) stack.pop();
            Body body = part2.getBody();
            if (isPartMultipartEncrypted(part2)) {
                arrayList.add(part2);
            } else if (body instanceof Multipart) {
                Multipart multipart = (Multipart) body;
                for (int size = multipart.mParts.size() - 1; size >= 0; size--) {
                    stack.push(multipart.getBodyPart(size));
                }
            }
        }
        return arrayList;
    }

    public static ArrayList findPgpInlineParts(Part part) {
        ArrayList arrayList = new ArrayList();
        Stack stack = new Stack();
        stack.push(part);
        while (!stack.isEmpty()) {
            Part part2 = (Part) stack.pop();
            Body body = part2.getBody();
            if (isPartPgpInlineEncryptedOrSigned(part2)) {
                arrayList.add(part2);
            } else if (body instanceof Multipart) {
                Multipart multipart = (Multipart) body;
                for (int size = multipart.mParts.size() - 1; size >= 0; size--) {
                    stack.push(multipart.getBodyPart(size));
                }
            }
        }
        return arrayList;
    }

    public static MimeBodyPart findPrimaryPartInAlternative(Part part) {
        Body body = part.getBody();
        if (!part.isMimeType("multipart/alternative") || !(body instanceof Multipart)) {
            return null;
        }
        Multipart multipart = (Multipart) body;
        if (multipart.mParts.size() == 0) {
            return null;
        }
        MimeBodyPart bodyPart = multipart.getBodyPart(0);
        if (isPartPgpInlineEncryptedOrSigned(bodyPart)) {
            return bodyPart;
        }
        return null;
    }

    public static final String[] getContentHints(ContentType contentType) {
        contentType.getClass();
        return (String[]) ((AndroidContentType) contentType).androidAutofillHints.toArray(new String[0]);
    }

    public static NavControllerViewModel getInstance(ViewModelStore viewModelStore) {
        viewModelStore.getClass();
        InitializerViewModelFactory initializerViewModelFactory = NavControllerViewModelKt.FACTORY;
        CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
        initializerViewModelFactory.getClass();
        empty.getClass();
        Dispatcher dispatcher = new Dispatcher(viewModelStore, initializerViewModelFactory, empty);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NavControllerViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName != null) {
            return (NavControllerViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
        return null;
    }

    /* renamed from: getInt-impl, reason: not valid java name */
    public static final int m829getIntimpl(String str, Bundle bundle) {
        str.getClass();
        int i = bundle.getInt(str, Integer.MIN_VALUE);
        if (i != Integer.MIN_VALUE || bundle.getInt(str, Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i;
        }
        OperationKt.keyOrValueNotFoundError(str);
        throw null;
    }

    public static float getLegacyControlPoint(int i, String[] strArr) {
        float parseFloat = Float.parseFloat(strArr[i]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    /* renamed from: getSavedState-impl, reason: not valid java name */
    public static final Bundle m830getSavedStateimpl(String str, Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        OperationKt.keyOrValueNotFoundError(str);
        throw null;
    }

    public static final ImageVector getSend() {
        ImageVector imageVector = _send;
        if (imageVector != null) {
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("AutoMirrored.Outlined.Send", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(4.01f, 6.03f);
        builder2.lineToRelative(7.51f, 3.22f);
        builder2.lineToRelative(-7.52f, -1.0f);
        builder2.lineToRelative(0.01f, -2.22f);
        builder2.moveToRelative(7.5f, 8.72f);
        builder2.lineTo(4.0f, 17.97f);
        builder2.verticalLineToRelative(-2.22f);
        builder2.lineToRelative(7.51f, -1.0f);
        builder2.moveTo(2.01f, 3.0f);
        builder2.lineTo(2.0f, 10.0f);
        builder2.lineToRelative(15.0f, 2.0f);
        builder2.lineToRelative(-15.0f, 2.0f);
        builder2.lineToRelative(0.01f, 7.0f);
        builder2.lineTo(23.0f, 12.0f);
        builder2.lineTo(2.01f, 3.0f);
        builder2.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        ImageVector build = builder.build();
        _send = build;
        return build;
    }

    /* renamed from: getString-impl, reason: not valid java name */
    public static final String m831getStringimpl(String str, Bundle bundle) {
        str.getClass();
        String string = bundle.getString(str);
        if (string != null) {
            return string;
        }
        OperationKt.keyOrValueNotFoundError(str);
        throw null;
    }

    /* renamed from: getStringArray-impl, reason: not valid java name */
    public static final String[] m832getStringArrayimpl(String str, Bundle bundle) {
        str.getClass();
        String[] stringArray = bundle.getStringArray(str);
        if (stringArray != null) {
            return stringArray;
        }
        OperationKt.keyOrValueNotFoundError(str);
        throw null;
    }

    public static final boolean isBackwardCompatible(CameraDevicesImpl cameraDevicesImpl, String str) {
        str.getClass();
        cameraDevicesImpl.getClass();
        if (Intrinsics.areEqual(Build.FINGERPRINT, "robolectric")) {
            if (!Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                return true;
            }
            Log.d("CXCP", "isBackwardCompatible method returns true because robolectric build detected.");
            return true;
        }
        try {
            CameraId.m34constructorimpl(str);
            CameraMetadata m27awaitCameraMetadataFpsL5FU$default = CameraDevices$CC.m27awaitCameraMetadataFpsL5FU$default(cameraDevicesImpl, str);
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
            key.getClass();
            int[] iArr = (int[]) ((Camera2CameraMetadata) m27awaitCameraMetadataFpsL5FU$default).get(key);
            if (iArr != null) {
                return ArraysKt___ArraysKt.contains(iArr, 0);
            }
            return false;
        } catch (CameraAccessException e) {
            if (Utf8.SafeProcessor.isErrorEnabled()) {
                Log.e("CXCP", "Error while accessing metadata for cameraID: ".concat(str), e);
            }
            throw new InitializationException(e);
        }
    }

    public static boolean isLegacyEasingType(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static boolean isMultipartEncryptedOpenPgpProtocol(Part part) {
        if (JisSupport.isSameMimeType(part.getMimeType(), "multipart/encrypted")) {
            return "application/pgp-encrypted".equalsIgnoreCase(JisSupport.getHeaderParameter(part.getContentType(), "protocol"));
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Part is not multipart/encrypted!");
        return false;
    }

    /* renamed from: isNull-impl, reason: not valid java name */
    public static final boolean m833isNullimpl(String str, Bundle bundle) {
        str.getClass();
        return bundle.containsKey(str) && bundle.get(str) == null;
    }

    public static boolean isPartMultipartEncrypted(Part part) {
        if (JisSupport.isSameMimeType(part.getMimeType(), "multipart/encrypted") && (part.getBody() instanceof MimeMultipart)) {
            MimeMultipart mimeMultipart = (MimeMultipart) part.getBody();
            if (mimeMultipart.mParts.size() == 2) {
                String headerParameter = JisSupport.getHeaderParameter(part.getContentType(), "protocol");
                boolean z = headerParameter == null && mimeMultipart.getBodyPart(1).mBody == null;
                boolean isSameMimeType = JisSupport.isSameMimeType(headerParameter, mimeMultipart.getBodyPart(0).getMimeType());
                if (z || isSameMimeType) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isPartMultipartSigned(Part part) {
        if (JisSupport.isSameMimeType(part.getMimeType(), "multipart/signed") && (part.getBody() instanceof MimeMultipart)) {
            MimeMultipart mimeMultipart = (MimeMultipart) part.getBody();
            if (mimeMultipart.mParts.size() == 2) {
                String headerParameter = JisSupport.getHeaderParameter(part.getContentType(), "protocol");
                boolean z = headerParameter == null && mimeMultipart.getBodyPart(0).mBody == null;
                boolean isSameMimeType = JisSupport.isSameMimeType(headerParameter, mimeMultipart.getBodyPart(1).getMimeType());
                if (z || isSameMimeType) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isPartPgpInlineEncrypted(Part part) {
        String textFromPart;
        if (part == null || ((!part.isMimeType(UtilsKt.MIME_TYPE_TEXT_PLAIN) && !part.isMimeType("application/pgp")) || (textFromPart = JisSupport.getTextFromPart(part, 36L)) == null || textFromPart.length() == 0)) {
            return false;
        }
        return textFromPart.trim().startsWith("-----BEGIN PGP MESSAGE-----");
    }

    public static boolean isPartPgpInlineEncryptedOrSigned(Part part) {
        String textFromPart;
        if ((!part.isMimeType(UtilsKt.MIME_TYPE_TEXT_PLAIN) && !part.isMimeType("application/pgp")) || (textFromPart = JisSupport.getTextFromPart(part, 36L)) == null || textFromPart.length() == 0) {
            return false;
        }
        String trim = textFromPart.trim();
        return trim.startsWith("-----BEGIN PGP MESSAGE-----") || trim.startsWith("-----BEGIN PGP SIGNED MESSAGE-----");
    }

    public static String[] loadQuirks(Context context, Bundle bundle, String str) {
        if (!bundle.containsKey(str)) {
            return new String[0];
        }
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            Utf8.SafeProcessor.w("QuirkSettingsLoader", "Resource ID not found for key: ".concat(str));
            return new String[0];
        }
        try {
            return context.getResources().getStringArray(i);
        } catch (Resources.NotFoundException e) {
            Utf8.SafeProcessor.w("QuirkSettingsLoader", "Quirk class names resource not found: " + i, e);
            return new String[0];
        }
    }

    public static final void putEnum(Bundle bundle, String str, Enum r2) {
        r2.getClass();
        bundle.putString(str, r2.name());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashSet resolveQuirkNames(java.lang.String[] r8) {
        /*
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            int r1 = r8.length
            r2 = 0
        L7:
            if (r2 >= r1) goto L4a
            r3 = r8[r2]
            java.lang.String r4 = "QuirkSettingsLoader"
            java.lang.Class r5 = java.lang.Class.forName(r3)     // Catch: java.lang.ClassNotFoundException -> L2f
            java.lang.Class<androidx.camera.core.impl.Quirk> r6 = androidx.camera.core.impl.Quirk.class
            boolean r6 = r6.isAssignableFrom(r5)     // Catch: java.lang.ClassNotFoundException -> L2f
            if (r6 == 0) goto L1a
            goto L42
        L1a:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.ClassNotFoundException -> L2f
            r5.<init>()     // Catch: java.lang.ClassNotFoundException -> L2f
            r5.append(r3)     // Catch: java.lang.ClassNotFoundException -> L2f
            java.lang.String r6 = " does not implement the Quirk interface."
            r5.append(r6)     // Catch: java.lang.ClassNotFoundException -> L2f
            java.lang.String r5 = r5.toString()     // Catch: java.lang.ClassNotFoundException -> L2f
            androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.w(r4, r5)     // Catch: java.lang.ClassNotFoundException -> L2f
            goto L41
        L2f:
            r5 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Class not found: "
            r6.<init>(r7)
            r6.append(r3)
            java.lang.String r3 = r6.toString()
            androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.w(r4, r3, r5)
        L41:
            r5 = 0
        L42:
            if (r5 == 0) goto L47
            r0.add(r5)
        L47:
            int r2 = r2 + 1
            goto L7
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.resolveQuirkNames(java.lang.String[]):java.util.HashSet");
    }

    public static int resolveThemeDuration(Context context, int i, int i2) {
        TypedValue resolve = OperationKt.resolve(context.getTheme(), i);
        return (resolve == null || resolve.type != 16) ? i2 : resolve.data;
    }

    public static TimeInterpolator resolveThemeInterpolator(Context context, int i, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            UriKt$$ExternalSyntheticBUOutline0.m("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            return null;
        }
        String valueOf = String.valueOf(typedValue.string);
        if (!isLegacyEasingType(valueOf, "cubic-bezier") && !isLegacyEasingType(valueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (isLegacyEasingType(valueOf, "cubic-bezier")) {
            String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
            if (split.length == 4) {
                return new PathInterpolator(getLegacyControlPoint(0, split), getLegacyControlPoint(1, split), getLegacyControlPoint(2, split), getLegacyControlPoint(3, split));
            }
            DBUtil$$ExternalSyntheticBUOutline0.m("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ", split.length);
            return null;
        }
        if (!isLegacyEasingType(valueOf, "path")) {
            UriKt$$ExternalSyntheticBUOutline0.m("Invalid motion easing type: ".concat(valueOf));
            return null;
        }
        String substring = valueOf.substring(5, valueOf.length() - 1);
        android.graphics.Path path = new android.graphics.Path();
        try {
            MathKt.nodesToPath(MathKt.createNodesFromPathData(substring), path);
            return new PathInterpolator(path);
        } catch (RuntimeException e) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Error in parsing ".concat(substring), (Throwable) e);
            return null;
        }
    }

    public static SpringForce resolveThemeSpringForce(Context context) {
        TypedValue resolve = OperationKt.resolve(context.getTheme(), R.attr.motionSpringFastSpatial);
        int[] iArr = R$styleable.MaterialSpring;
        TypedArray obtainStyledAttributes = resolve == null ? context.obtainStyledAttributes(null, iArr, 0, R.style.Motion_Material3_Spring_Standard_Fast_Spatial) : context.obtainStyledAttributes(resolve.resourceId, iArr);
        SpringForce springForce = new SpringForce();
        try {
            float f = obtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f2 = obtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            springForce.setStiffness(f);
            springForce.setDampingRatio(f2);
            return springForce;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            TooltipCompat$Api26Impl.setTooltipText(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler = TooltipCompatHandler.sPendingHandler;
        if (tooltipCompatHandler != null && tooltipCompatHandler.mAnchor == view) {
            TooltipCompatHandler.setPendingHandler(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new TooltipCompatHandler(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler2 = TooltipCompatHandler.sActiveHandler;
        if (tooltipCompatHandler2 != null && tooltipCompatHandler2.mAnchor == view) {
            tooltipCompatHandler2.hide();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static final void setupActionBarWithNavController(BaseActivity baseActivity, NavHostController navHostController, Fragment.AnonymousClass7 anonymousClass7) {
        navHostController.getClass();
        ActionBarOnDestinationChangedListener actionBarOnDestinationChangedListener = new ActionBarOnDestinationChangedListener(baseActivity, anonymousClass7);
        NavControllerImpl navControllerImpl = navHostController.impl;
        navControllerImpl.getClass();
        navControllerImpl.onDestinationChangedListeners.add(actionBarOnDestinationChangedListener);
        ArrayDeque arrayDeque = navControllerImpl.backQueue;
        if (arrayDeque.isEmpty()) {
            return;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.last();
        actionBarOnDestinationChangedListener.onDestinationChanged(navControllerImpl.navController, navBackStackEntry.destination, navBackStackEntry.impl.getArguments$navigation_common_release());
    }

    public static final String stringResource(int i, Object[] objArr, Composer composer) {
        return ((Resources) ((GapComposer) composer).consume(AndroidCompositionLocals_androidKt.LocalResources)).getString(i, Arrays.copyOf(objArr, objArr.length));
    }

    /* renamed from: toMap-impl, reason: not valid java name */
    public static final MapBuilder m834toMapimpl(Bundle bundle) {
        MapBuilder mapBuilder = new MapBuilder(bundle.size());
        for (String str : bundle.keySet()) {
            str.getClass();
            mapBuilder.put(str, bundle.get(str));
        }
        return mapBuilder.build();
    }

    public abstract Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, Resources resources, int i);

    public abstract Typeface createFromFontInfo(Context context, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i);

    public Typeface createFromFontInfoWithFallback(Context context, List list, int i) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        File tempFile = OperationKt.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (OperationKt.copyToFile(tempFile, resources, i)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    public abstract void onFailed(Throwable th);

    public abstract void onLoaded(Dispatcher dispatcher);

    public static final String stringResource(Composer composer, int i) {
        return ((Resources) ((GapComposer) composer).consume(AndroidCompositionLocals_androidKt.LocalResources)).getString(i);
    }

    public static final void NavigationDrawerItem(String str, Function0 function0, Function2 function2, Composer composer, int i) {
        int i2;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1767943223);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(false) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        int i3 = i & 3072;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i3 == 0) {
            i2 |= gapComposer.changed(companion) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 16384 : 8192;
        }
        int i4 = i2 | 196608;
        if (gapComposer.shouldExecute(i4 & 1, (74899 & i4) != 74898)) {
            NavigationDrawerItem(Expect_jvmKt.rememberComposableLambda(-95315342, new LoadingItemKt$$ExternalSyntheticLambda0(str, 6), gapComposer), false, function0, companion, function2, null, gapComposer, (i4 & 112) | 6 | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (i4 & 458752), 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3((Object) str, function0, (Object) function2, i, 17);
        }
    }
}
