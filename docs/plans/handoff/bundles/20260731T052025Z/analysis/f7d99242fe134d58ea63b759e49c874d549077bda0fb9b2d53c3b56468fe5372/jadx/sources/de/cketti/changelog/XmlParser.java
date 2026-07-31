package de.cketti.changelog;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.DrawableUtils;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.adapter.CameraControlStateAdapter;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.adapter.CameraInternalAdapter;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.EncoderProfilesProviderAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.camera2.compat.Camera2CameraControlCompatImpl;
import androidx.camera.camera2.compat.EvCompImpl;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.AfRegionFlipHorizontallyQuirk;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailWithAutoFlashQuirk;
import androidx.camera.camera2.compat.quirk.TorchFlashRequiredFor3aUpdateQuirk;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraComponentImpl;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.State3AControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculatorImpl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.AndroidExtensionSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidMHighSpeedSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidMSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidPSessionFactory;
import androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor;
import androidx.camera.camera2.pipe.compat.Camera2MetadataProvider;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.compat.ConcurrentSessionSequencers;
import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.camera.camera2.pipe.config.CameraPipeModule$Companion$provideCameraContext$1;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent$CameraGraphComponentImpl;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent$CameraPipeComponentImpl;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.GraphState3A;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.AutoValue_CameraThreadConfig;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectIntMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.spatial.RectListKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Configuration;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.bumptech.glide.util.pool.FactoryPools;
import com.eygraber.uri.Uri;
import com.fsck.k9.mailstore.LocalStore;
import dagger.internal.DoubleCheck;
import dagger.internal.Provider;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import net.openid.appauth.AuthorizationRequest;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultCssVariableNameProvider;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Headers;
import okhttp3.Protocol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.util.BufferRecycler;
import org.apache.james.mime4j.util.ByteSequence;
import org.jsoup.SerializationException;
import org.minidns.iterative.ReliableDnsClient;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class XmlParser implements Provider, ByteSequence {
    public final /* synthetic */ int $r8$classId;
    public int lastVersionCode;
    public Object result;
    public Object xmlPullParser;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cd, code lost:
    
        if (r9 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public XmlParser(kotlin.ranges.IntRange r13, androidx.compose.foundation.lazy.layout.LazyLayoutKt r14) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: de.cketti.changelog.XmlParser.<init>(kotlin.ranges.IntRange, androidx.compose.foundation.lazy.layout.LazyLayoutKt):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01df, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01d7, code lost:
    
        if (r12.size() <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01d9, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r12, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e0, code lost:
    
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f2, code lost:
    
        if (r10 == 1) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01f5, code lost:
    
        if (r10 == 2) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01f7, code lost:
    
        r1 = r0.tmpLocation;
        r0 = r0.tmpMatrix;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01fd, code lost:
    
        if (r13 == 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ff, code lost:
    
        if (r13 == 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0201, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0203, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0217, code lost:
    
        r12 = new android.graphics.LinearGradient(r23, r26, r27, r16, r1, r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x025b, code lost:
    
        return new de.cketti.changelog.XmlParser(r1, 11, r12, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0211, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0214, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x021b, code lost:
    
        r1 = 0;
        r12 = new android.graphics.SweepGradient(r8, r9, r0.tmpLocation, r0.tmpMatrix);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0226, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x022b, code lost:
    
        if (r25 <= 0.0f) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x022d, code lost:
    
        r2 = r0.tmpLocation;
        r0 = r0.tmpMatrix;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0234, code lost:
    
        if (r13 == 1) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0237, code lost:
    
        if (r13 == 2) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0239, code lost:
    
        r3 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x024e, code lost:
    
        r12 = new android.graphics.RadialGradient(r8, r9, r25, r2, r0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0248, code lost:
    
        r3 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x024b, code lost:
    
        r3 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0263, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e4, code lost:
    
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e6, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r6, r11, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ec, code lost:
    
        r0 = new androidx.compose.ui.platform.CalculateMatrixToWindowApi21(r6, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static de.cketti.changelog.XmlParser createFromXml(android.content.res.Resources r29, int r30, android.content.res.Resources.Theme r31) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: de.cketti.changelog.XmlParser.createFromXml(android.content.res.Resources, int, android.content.res.Resources$Theme):de.cketti.changelog.XmlParser");
    }

    public void addInterval(int i, LazyLayoutIntervalContent$Interval lazyLayoutIntervalContent$Interval) {
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("size should be >=0");
        }
        if (i == 0) {
            return;
        }
        IntervalList$Interval intervalList$Interval = new IntervalList$Interval(this.lastVersionCode, i, lazyLayoutIntervalContent$Interval);
        this.lastVersionCode += i;
        ((MutableVector) this.xmlPullParser).add(intervalList$Interval);
    }

    public void append(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr == null) {
            return;
        }
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.lastVersionCode + i2;
        if (i4 > ((byte[]) this.result).length) {
            expand$1(i4);
        }
        System.arraycopy(bArr, i, (byte[]) this.result, this.lastVersionCode, i2);
        this.lastVersionCode = i4;
    }

    public void appendBlockQuoteElement(int i) {
        int i2;
        StringBuilder sb = (StringBuilder) this.result;
        int i3 = this.lastVersionCode;
        if (i3 > i) {
            int i4 = i3 - i;
            for (int i5 = 0; i5 < i4; i5++) {
                sb.append("</blockquote>");
            }
        } else if (i > i3 && (i2 = i3 + 1) <= i) {
            while (true) {
                sb.append("<blockquote class=\"gmail_quote\" style=\"margin-bottom: 1ex; " + ViewSizeResolver.CC.m(((DefaultCssVariableNameProvider) this.xmlPullParser).blockquoteDefaultBorderLeftColor, ": ", i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "#ccc" : "#e9b96e" : "#fcaf3e" : "#8ae234" : "#ad7fa8" : "#729fcf", ";") + "\">");
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.lastVersionCode = i;
    }

    public void applySupportImageTint() {
        ConnectionSpec.Builder builder;
        ImageView imageView = (ImageView) this.xmlPullParser;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable == null || (builder = (ConnectionSpec.Builder) this.result) == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, builder, imageView.getDrawableState());
    }

    public void assertElementStart(String str) {
        String name = ((XmlPullParser) this.xmlPullParser).getName();
        if (!str.equals(name)) {
            throw new SerializationException(ViewSizeResolver.CC.m("Unexpected tag: ", name, " (wanted: ", str, ")"));
        }
    }

    @Override // org.apache.james.mime4j.util.ByteSequence
    public byte byteAt(int i) {
        if (i < 0 || i >= this.lastVersionCode) {
            throw new IndexOutOfBoundsException();
        }
        return ((byte[]) this.result)[i];
    }

    public void expand$1(int i) {
        BufferRecycler bufferRecycler = (BufferRecycler) this.xmlPullParser;
        byte[] allocByteBuffer = bufferRecycler.allocByteBuffer(0, Math.max(((byte[]) this.result).length << 1, i));
        System.arraycopy((byte[]) this.result, 0, allocByteBuffer, 0, this.lastVersionCode);
        bufferRecycler.releaseByteBuffer(0, (byte[]) this.result);
        this.result = allocByteBuffer;
    }

    @Override // javax.inject.Provider
    public Object get() {
        Object useCaseManager;
        Object graphProcessorImpl;
        Object obj;
        int i = 8;
        int i2 = 2;
        int i3 = 1;
        boolean z = false;
        boolean z2 = false;
        switch (this.$r8$classId) {
            case 2:
                DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl = (DaggerCameraAppComponent$CameraAppComponentImpl) this.xmlPullParser;
                DaggerCameraAppComponent$CameraComponentImpl daggerCameraAppComponent$CameraComponentImpl = (DaggerCameraAppComponent$CameraComponentImpl) this.result;
                int i4 = this.lastVersionCode;
                switch (i4) {
                    case 0:
                        LocalStore.AnonymousClass8 anonymousClass8 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass8.getClass();
                        return new CameraInternalAdapter(anonymousClass8, (UseCaseManager) daggerCameraAppComponent$CameraComponentImpl.useCaseManagerProvider.get(), (CameraInfoInternal) daggerCameraAppComponent$CameraComponentImpl.cameraInfoAdapterProvider.get(), (CameraControlInternal) daggerCameraAppComponent$CameraComponentImpl.cameraControlAdapterProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), (CameraStateAdapter) daggerCameraAppComponent$CameraComponentImpl.cameraStateAdapterProvider.get());
                    case 1:
                        Uri.Builder builder = daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig;
                        Uri.Builder builder2 = daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig;
                        CameraPipeImpl cameraPipeImpl = (CameraPipeImpl) builder.authority;
                        MathKt.checkNotNullFromProvides(cameraPipeImpl);
                        CameraCoordinatorAdapter cameraCoordinatorAdapter = (CameraCoordinatorAdapter) builder2.fragment;
                        MathKt.checkNotNullFromProvides(cameraCoordinatorAdapter);
                        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(i, daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl, z ? 1 : 0);
                        ZslControl zslControl = (ZslControl) daggerCameraAppComponent$CameraComponentImpl.provideZslControlProvider.get();
                        LowLightBoostControl lowLightBoostControl = (LowLightBoostControl) daggerCameraAppComponent$CameraComponentImpl.lowLightBoostControlProvider.get();
                        Headers.Builder builder3 = new Headers.Builder(9);
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.evCompControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.flashControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.focusMeteringControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.state3AControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.stillCaptureRequestControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.torchControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.lowLightBoostControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.videoUsageControlProvider.get());
                        builder3.add(daggerCameraAppComponent$CameraComponentImpl.zoomControlProvider.get());
                        ArrayList arrayList = builder3.namesAndValues;
                        Set singleton = arrayList.isEmpty() ? Collections.EMPTY_SET : arrayList.size() == 1 ? Collections.singleton(arrayList.get(0)) : DesugarCollections.unmodifiableSet(new HashSet(arrayList));
                        Camera2CameraControl camera2CameraControl = (Camera2CameraControl) daggerCameraAppComponent$CameraComponentImpl.provideCamera2CameraControlProvider.get();
                        CameraStateAdapter cameraStateAdapter = (CameraStateAdapter) daggerCameraAppComponent$CameraComponentImpl.cameraStateAdapterProvider.get();
                        ConnectionPool connectionPool = daggerCameraAppComponent$CameraComponentImpl.cameraInternalAdapterProvider;
                        Provider provider = daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider;
                        Provider provider2 = daggerCameraAppComponent$CameraComponentImpl.cameraInfoAdapterProvider;
                        EncoderProfilesProvider encoderProfilesProvider = (EncoderProfilesProvider) daggerCameraAppComponent$CameraComponentImpl.provideEncoderProfilesProvider.get();
                        CameraPipeCameraProperties cameraPipeCameraProperties = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        CameraXConfig cameraXConfig = (CameraXConfig) builder2.path;
                        CameraGraphConfigProvider cameraGraphConfigProvider = (CameraGraphConfigProvider) daggerCameraAppComponent$CameraComponentImpl.cameraGraphConfigProvider.get();
                        Context context = (Context) builder2.scheme;
                        useCaseManager = new UseCaseManager(cameraPipeImpl, cameraCoordinatorAdapter, anonymousClass1, zslControl, lowLightBoostControl, singleton, camera2CameraControl, cameraStateAdapter, connectionPool, provider, provider2, encoderProfilesProvider, cameraPipeCameraProperties, cameraXConfig, cameraGraphConfigProvider, context, DisplayInfoManager.Companion.getInstance(context));
                        break;
                    case 2:
                        CameraPipeCameraProperties cameraPipeCameraProperties2 = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        cameraPipeCameraProperties2.getClass();
                        return new ZslControlImpl(cameraPipeCameraProperties2);
                    case 3:
                        LocalStore.AnonymousClass8 anonymousClass82 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass82.getClass();
                        return new CameraPipeCameraProperties(anonymousClass82, (CameraMetadata) daggerCameraAppComponent$CameraComponentImpl.provideCameraMetadataProvider.get());
                    case 4:
                        CameraPipeImpl cameraPipeImpl2 = (CameraPipeImpl) daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig.authority;
                        MathKt.checkNotNullFromProvides(cameraPipeImpl2);
                        LocalStore.AnonymousClass8 anonymousClass83 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass83.getClass();
                        try {
                            return CameraDevices$CC.m27awaitCameraMetadataFpsL5FU$default(cameraPipeImpl2.cameras(), anonymousClass83.val$attachmentId);
                        } catch (DoNotDisturbException unused) {
                            if (!Utf8.SafeProcessor.isErrorEnabled()) {
                                return null;
                            }
                            Log.e("CXCP", "Failed to inject camera metadata: Do Not Disturb mode is on.");
                            return null;
                        }
                    case 5:
                        return new LowLightBoostControl((CameraMetadata) daggerCameraAppComponent$CameraComponentImpl.provideCameraMetadataProvider.get(), (State3AControl) daggerCameraAppComponent$CameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), (ComboRequestListener) daggerCameraAppComponent$CameraComponentImpl.comboRequestListenerProvider.get());
                    case 6:
                        CameraPipeCameraProperties cameraPipeCameraProperties3 = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        CameraQuirks cameraQuirks = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                        cameraQuirks.getClass();
                        return new State3AControl(cameraPipeCameraProperties3, (DeviceQuirks.getAll().get(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class) == null && !cameraQuirks.getQuirks().contains(ImageCaptureFailWithAutoFlashQuirk.class)) ? TargetAspectRatio.INSTANCE$2 : TargetAspectRatio.INSTANCE, (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return new CameraQuirks((CameraMetadata) daggerCameraAppComponent$CameraComponentImpl.provideCameraMetadataProvider.get(), (StreamConfigurationMapCompat) daggerCameraAppComponent$CameraComponentImpl.streamConfigurationMapCompatProvider.get());
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return new StreamConfigurationMapCompat((StreamConfigurationMap) daggerCameraAppComponent$CameraComponentImpl.provideStreamConfigurationMapProvider.get(), (OutputSizesCorrector) daggerCameraAppComponent$CameraComponentImpl.outputSizesCorrectorProvider.get());
                    case 9:
                        CameraMetadata cameraMetadata = (CameraMetadata) daggerCameraAppComponent$CameraComponentImpl.provideCameraMetadataProvider.get();
                        if (cameraMetadata == null) {
                            return null;
                        }
                        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
                        key.getClass();
                        return (StreamConfigurationMap) ((Camera2CameraMetadata) cameraMetadata).get(key);
                    case 10:
                        CameraMetadata cameraMetadata2 = (CameraMetadata) daggerCameraAppComponent$CameraComponentImpl.provideCameraMetadataProvider.get();
                        return new OutputSizesCorrector(cameraMetadata2);
                    case 11:
                        LocalStore.AnonymousClass8 anonymousClass84 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass84.getClass();
                        Executor executor = ((AutoValue_CameraThreadConfig) daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig.opaquePart).cameraExecutor;
                        executor.getClass();
                        CoroutineDispatcher from = JobKt.from(executor);
                        return new UseCaseThreads(JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), from).plus(new CoroutineName("CXCP-UseCase-" + anonymousClass84.val$attachmentId))), executor, from);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return new ComboRequestListener();
                    case 13:
                        return new EvCompControl((EvCompImpl) daggerCameraAppComponent$CameraComponentImpl.evCompImplProvider.get());
                    case 14:
                        return new EvCompImpl((CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), (ComboRequestListener) daggerCameraAppComponent$CameraComponentImpl.comboRequestListenerProvider.get());
                    case OffsetKt.Horizontal /* 15 */:
                        CameraPipeCameraProperties cameraPipeCameraProperties4 = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        State3AControl state3AControl = (State3AControl) daggerCameraAppComponent$CameraComponentImpl.state3AControlProvider.get();
                        UseCaseThreads useCaseThreads = (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get();
                        TorchControl torchControl = (TorchControl) daggerCameraAppComponent$CameraComponentImpl.torchControlProvider.get();
                        CameraQuirks cameraQuirks2 = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                        cameraQuirks2.getClass();
                        useCaseManager = new FlashControl(cameraPipeCameraProperties4, state3AControl, useCaseThreads, torchControl, cameraQuirks2.getQuirks().contains(TorchFlashRequiredFor3aUpdateQuirk.class) ? TargetAspectRatio.INSTANCE$8 : TargetAspectRatio.INSTANCE$6);
                        break;
                    case 16:
                        return new TorchControl((CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (State3AControl) daggerCameraAppComponent$CameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 17:
                        CameraPipeCameraProperties cameraPipeCameraProperties5 = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        CameraQuirks cameraQuirks3 = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                        cameraQuirks3.getClass();
                        useCaseManager = new FocusMeteringControl(cameraPipeCameraProperties5, cameraQuirks3.getQuirks().contains(AfRegionFlipHorizontallyQuirk.class) ? TargetAspectRatio.INSTANCE$1 : TargetAspectRatio.INSTANCE$4, (State3AControl) daggerCameraAppComponent$CameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), daggerCameraAppComponent$CameraComponentImpl.zoomCompat());
                        break;
                    case 18:
                        return new StillCaptureRequestControl((FlashControl) daggerCameraAppComponent$CameraComponentImpl.flashControlProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 19:
                        return new VideoUsageControl();
                    case 20:
                        return new ZoomControl(daggerCameraAppComponent$CameraComponentImpl.zoomCompat());
                    case 21:
                        Camera2CameraControlCompatImpl camera2CameraControlCompatImpl = (Camera2CameraControlCompatImpl) daggerCameraAppComponent$CameraComponentImpl.camera2CameraControlCompatImplProvider.get();
                        UseCaseThreads useCaseThreads2 = (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get();
                        ComboRequestListener comboRequestListener = (ComboRequestListener) daggerCameraAppComponent$CameraComponentImpl.comboRequestListenerProvider.get();
                        camera2CameraControlCompatImpl.getClass();
                        useCaseThreads2.getClass();
                        comboRequestListener.getClass();
                        return new Camera2CameraControl(camera2CameraControlCompatImpl, useCaseThreads2, comboRequestListener);
                    case 22:
                        return new Camera2CameraControlCompatImpl();
                    case 23:
                        return new CameraStateAdapter();
                    case 24:
                        CameraPipeCameraProperties cameraPipeCameraProperties6 = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        LocalStore.AnonymousClass8 anonymousClass85 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass85.getClass();
                        useCaseManager = new CameraInfoAdapter(cameraPipeCameraProperties6, anonymousClass85, (CameraStateAdapter) daggerCameraAppComponent$CameraComponentImpl.cameraStateAdapterProvider.get(), (CameraControlStateAdapter) daggerCameraAppComponent$CameraComponentImpl.cameraControlStateAdapterProvider.get(), (CameraCallbackMap) daggerCameraAppComponent$CameraComponentImpl.cameraCallbackMapProvider.get(), (FocusMeteringControl) daggerCameraAppComponent$CameraComponentImpl.focusMeteringControlProvider.get(), (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get(), (EncoderProfilesProvider) daggerCameraAppComponent$CameraComponentImpl.provideEncoderProfilesProvider.get(), (StreamConfigurationMapCompat) daggerCameraAppComponent$CameraComponentImpl.streamConfigurationMapCompatProvider.get(), (IntrinsicZoomCalculatorImpl) daggerCameraAppComponent$CameraComponentImpl.intrinsicZoomCalculatorImplProvider.get(), daggerCameraAppComponent$CameraComponentImpl.streamSpecsCalculator);
                        break;
                    case 25:
                        ZoomControl zoomControl = (ZoomControl) daggerCameraAppComponent$CameraComponentImpl.zoomControlProvider.get();
                        EvCompControl evCompControl = (EvCompControl) daggerCameraAppComponent$CameraComponentImpl.evCompControlProvider.get();
                        TorchControl torchControl2 = (TorchControl) daggerCameraAppComponent$CameraComponentImpl.torchControlProvider.get();
                        LowLightBoostControl lowLightBoostControl2 = (LowLightBoostControl) daggerCameraAppComponent$CameraComponentImpl.lowLightBoostControlProvider.get();
                        zoomControl.getClass();
                        evCompControl.getClass();
                        torchControl2.getClass();
                        lowLightBoostControl2.getClass();
                        return new CameraControlStateAdapter();
                    case 26:
                        return new CameraCallbackMap();
                    case 27:
                        String str = (String) daggerCameraAppComponent$CameraComponentImpl.provideCameraIdStringProvider.get();
                        CameraQuirks cameraQuirks4 = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                        str.getClass();
                        cameraQuirks4.getClass();
                        return new EncoderProfilesProviderAdapter(str, cameraQuirks4.getQuirks());
                    case 28:
                        LocalStore.AnonymousClass8 anonymousClass86 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass86.getClass();
                        String str2 = anonymousClass86.val$attachmentId;
                        MathKt.checkNotNullFromProvides(str2);
                        return str2;
                    case 29:
                        daggerCameraAppComponent$CameraAppComponentImpl.getCameraDevices().getClass();
                        return new IntrinsicZoomCalculatorImpl();
                    case 30:
                        CameraCallbackMap cameraCallbackMap = (CameraCallbackMap) daggerCameraAppComponent$CameraComponentImpl.cameraCallbackMapProvider.get();
                        ComboRequestListener comboRequestListener2 = (ComboRequestListener) daggerCameraAppComponent$CameraComponentImpl.comboRequestListenerProvider.get();
                        LocalStore.AnonymousClass8 anonymousClass87 = daggerCameraAppComponent$CameraComponentImpl.cameraConfig;
                        anonymousClass87.getClass();
                        CameraQuirks cameraQuirks5 = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                        ZslControl zslControl2 = (ZslControl) daggerCameraAppComponent$CameraComponentImpl.provideZslControlProvider.get();
                        TemplateParamsOverride templateParamsOverride = daggerCameraAppComponent$CameraComponentImpl.templateParamsOverride();
                        CameraMetadata cameraMetadata3 = (CameraMetadata) daggerCameraAppComponent$CameraComponentImpl.provideCameraMetadataProvider.get();
                        Uri.Builder builder4 = daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig;
                        CameraXConfig cameraXConfig2 = (CameraXConfig) builder4.path;
                        CardView.AnonymousClass1 anonymousClass12 = (CardView.AnonymousClass1) builder4.query;
                        MathKt.checkNotNullFromProvides(anonymousClass12);
                        return new CameraGraphConfigProvider(cameraCallbackMap, comboRequestListener2, anonymousClass87, cameraQuirks5, zslControl2, templateParamsOverride, cameraMetadata3, cameraXConfig2, anonymousClass12);
                    case 31:
                        return new CameraControlAdapter((CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (EvCompControl) daggerCameraAppComponent$CameraComponentImpl.evCompControlProvider.get(), (FlashControl) daggerCameraAppComponent$CameraComponentImpl.flashControlProvider.get(), (FocusMeteringControl) daggerCameraAppComponent$CameraComponentImpl.focusMeteringControlProvider.get(), (StillCaptureRequestControl) daggerCameraAppComponent$CameraComponentImpl.stillCaptureRequestControlProvider.get(), (TorchControl) daggerCameraAppComponent$CameraComponentImpl.torchControlProvider.get(), (LowLightBoostControl) daggerCameraAppComponent$CameraComponentImpl.lowLightBoostControlProvider.get(), (ZoomControl) daggerCameraAppComponent$CameraComponentImpl.zoomControlProvider.get(), (ZslControl) daggerCameraAppComponent$CameraComponentImpl.provideZslControlProvider.get(), (Camera2CameraControl) daggerCameraAppComponent$CameraComponentImpl.provideCamera2CameraControlProvider.get(), (UseCaseManager) daggerCameraAppComponent$CameraComponentImpl.useCaseManagerProvider.get(), (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), (VideoUsageControl) daggerCameraAppComponent$CameraComponentImpl.videoUsageControlProvider.get());
                    default:
                        throw new AssertionError(i4);
                }
                return useCaseManager;
            case 3:
                DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl = (DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser;
                AuthorizationRequest.Builder builder5 = (AuthorizationRequest.Builder) this.result;
                Uri.Builder builder6 = (Uri.Builder) builder5.mConfiguration;
                int i5 = this.lastVersionCode;
                switch (i5) {
                    case 0:
                        CoroutineScope coroutineScope = (CoroutineScope) ((Provider) builder5.mLoginHint).get();
                        Threads threads = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        StrictMode strictMode = (StrictMode) daggerCameraPipeComponent$CameraPipeComponentImpl.provideStrictModeProvider.get();
                        CameraGraph$Config cameraGraph$Config = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config);
                        GraphProcessorImpl graphProcessorImpl2 = (GraphProcessorImpl) builder6.authority;
                        SurfaceGraph surfaceGraph = (SurfaceGraph) builder6.fragment;
                        Camera2CameraStatusMonitor camera2CameraStatusMonitor = (Camera2CameraStatusMonitor) ((Provider) builder5.mResponseType).get();
                        CaptureSessionFactory captureSessionFactory = (CaptureSessionFactory) ((Provider) builder5.mCodeVerifierChallengeMethod).get();
                        DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl2 = (DaggerCameraPipeComponent$CameraPipeComponentImpl) builder5.mClientId;
                        Threads threads2 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl2.provideThreadsProvider.get();
                        CameraGraph$Config cameraGraph$Config2 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config2);
                        return new Camera2CameraController(coroutineScope, threads, strictMode, cameraGraph$Config, graphProcessorImpl2, surfaceGraph, camera2CameraStatusMonitor, captureSessionFactory, new LocalStore.AnonymousClass7(threads2, cameraGraph$Config2, (StreamGraphImpl) builder6.query, (Camera2Quirks) daggerCameraPipeComponent$CameraPipeComponentImpl2.camera2QuirksProvider.get(), (StrictMode) daggerCameraPipeComponent$CameraPipeComponentImpl2.provideStrictModeProvider.get()), (PruningCamera2DeviceManager) daggerCameraPipeComponent$CameraPipeComponentImpl.pruningCamera2DeviceManagerProvider.get(), (CameraSurfaceManager) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraSurfaceManagerProvider.get(), (Camera2Quirks) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2QuirksProvider.get(), (SystemTimeSource) daggerCameraPipeComponent$CameraPipeComponentImpl.systemTimeSourceProvider.get(), (CameraGraphId) builder6.scheme, (Camera2Backend) builder6.path, (StreamGraphImpl) builder6.query, (ConcurrentSessionSequencers) daggerCameraPipeComponent$CameraPipeComponentImpl.concurrentSessionSequencersProvider.get());
                    case 1:
                        Threads threads3 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        Job job = (Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get();
                        threads3.getClass();
                        job.getClass();
                        return JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job), threads3.lightweightDispatcher.plus(new CoroutineName("CXCP-Camera2Controller"))));
                    case 2:
                        Provider provider3 = daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraManagerProvider;
                        Threads threads4 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        CameraGraph$Config cameraGraph$Config3 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config3);
                        Job job2 = (Job) daggerCameraPipeComponent$CameraPipeComponentImpl.provideCameraPipeJobProvider.get();
                        provider3.getClass();
                        threads4.getClass();
                        job2.getClass();
                        return new Camera2CameraStatusMonitor(provider3, threads4, cameraGraph$Config3.camera, job2);
                    case 3:
                        XmlParser xmlParser = (XmlParser) builder5.mScope;
                        XmlParser xmlParser2 = (XmlParser) builder5.mState;
                        XmlParser xmlParser3 = (XmlParser) builder5.mNonce;
                        XmlParser xmlParser4 = (XmlParser) builder5.mCodeVerifier;
                        XmlParser xmlParser5 = (XmlParser) builder5.mCodeVerifierChallenge;
                        CameraGraph$Config cameraGraph$Config4 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config4);
                        xmlParser.getClass();
                        xmlParser2.getClass();
                        xmlParser3.getClass();
                        xmlParser4.getClass();
                        xmlParser5.getClass();
                        int i6 = cameraGraph$Config4.sessionMode;
                        if (i6 == 2) {
                            if (Build.VERSION.SDK_INT >= 31) {
                                return (CaptureSessionFactory) xmlParser5.get();
                            }
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot use Extension sessions below Android S");
                            return null;
                        }
                        int i7 = Build.VERSION.SDK_INT;
                        if (i7 >= 28) {
                            return (CaptureSessionFactory) xmlParser4.get();
                        }
                        if (i6 == 1) {
                            return (CaptureSessionFactory) xmlParser2.get();
                        }
                        if (i7 >= 24) {
                            return (CaptureSessionFactory) xmlParser3.get();
                        }
                        if (cameraGraph$Config4.input == null) {
                            return (CaptureSessionFactory) xmlParser.get();
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Reprocessing is not supported on Android M");
                        return null;
                    case 4:
                        Threads threads5 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        StreamGraphImpl streamGraphImpl = (StreamGraphImpl) builder6.query;
                        CameraGraph$Config cameraGraph$Config5 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config5);
                        return new AndroidMSessionFactory(threads5, streamGraphImpl, cameraGraph$Config5, 0);
                    case 5:
                        return new AndroidMHighSpeedSessionFactory((StreamGraphImpl) builder6.query, (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get());
                    case 6:
                        Threads threads6 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        StreamGraphImpl streamGraphImpl2 = (StreamGraphImpl) builder6.query;
                        CameraGraph$Config cameraGraph$Config6 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config6);
                        return new AndroidMSessionFactory(threads6, streamGraphImpl2, cameraGraph$Config6, 1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        Threads threads7 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        CameraGraph$Config cameraGraph$Config7 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config7);
                        return new AndroidPSessionFactory(threads7, cameraGraph$Config7, (StreamGraphImpl) builder6.query);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        Threads threads8 = (Threads) daggerCameraPipeComponent$CameraPipeComponentImpl.provideThreadsProvider.get();
                        CameraGraph$Config cameraGraph$Config8 = (CameraGraph$Config) builder6.opaquePart;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config8);
                        return new AndroidExtensionSessionFactory(threads8, cameraGraph$Config8, (StreamGraphImpl) builder6.query, (Camera2MetadataProvider) daggerCameraPipeComponent$CameraPipeComponentImpl.camera2MetadataCacheProvider.get(), (StrictMode) daggerCameraPipeComponent$CameraPipeComponentImpl.provideStrictModeProvider.get());
                    default:
                        throw new AssertionError(i5);
                }
            default:
                int i8 = this.lastVersionCode;
                int i9 = 3;
                switch (i8) {
                    case 0:
                        CameraGraph$Config cameraGraph$Config9 = (CameraGraph$Config) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule.mCardBackground;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config9);
                        CameraMetadata cameraMetadata4 = (CameraMetadata) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraMetadataProvider.get();
                        GraphProcessorImpl graphProcessorImpl3 = (GraphProcessorImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphProcessorImplProvider.get();
                        GraphProcessorImpl graphProcessorImpl4 = (GraphProcessorImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphProcessorImplProvider.get();
                        StreamGraphImpl streamGraphImpl3 = (StreamGraphImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).streamGraphImplProvider.get();
                        SurfaceGraph surfaceGraph2 = (SurfaceGraph) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideSurfaceGraphProvider.get();
                        Camera2CameraController camera2CameraController = (Camera2CameraController) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraControllerProvider.get();
                        FrameDistributor frameDistributor = (FrameDistributor) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideFrameDistributorProvider.get();
                        FrameCaptureQueue frameCaptureQueue = (FrameCaptureQueue) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).frameCaptureQueueProvider.get();
                        AudioRestrictionControllerImpl audioRestrictionControllerImpl = (AudioRestrictionControllerImpl) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).audioRestrictionControllerImplProvider.get();
                        DaggerCameraPipeComponent$CameraGraphComponentImpl daggerCameraPipeComponent$CameraGraphComponentImpl = (DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result;
                        return new CameraGraphImpl(cameraGraph$Config9, cameraMetadata4, graphProcessorImpl3, graphProcessorImpl4, streamGraphImpl3, surfaceGraph2, camera2CameraController, frameDistributor, frameCaptureQueue, audioRestrictionControllerImpl, (CameraGraphId) daggerCameraPipeComponent$CameraGraphComponentImpl.cameraGraphConfigModule.this$0, (CameraGraphParametersImpl) daggerCameraPipeComponent$CameraGraphComponentImpl.cameraGraphParametersImplProvider.get(), (CameraGraphRequestListenersImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphRequestListenersImplProvider.get(), (GraphSessionLock) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphSessionLockProvider.get(), (CoroutineScope) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraGraphCoroutineScopeProvider.get(), (Controller3A) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).controller3AProvider.get());
                    case 1:
                        CameraGraph$Config cameraGraph$Config10 = (CameraGraph$Config) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule.mCardBackground;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config10);
                        CameraBackend cameraBackend = (CameraBackend) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraBackendProvider.get();
                        cameraBackend.getClass();
                        String str3 = cameraGraph$Config10.camera;
                        str3.getClass();
                        return ((Camera2Backend) cameraBackend).camera2MetadataCache.m63awaitCameraMetadataEfqyGwQ(str3);
                    case 2:
                        CameraBackendsImpl cameraBackendsImpl = (CameraBackendsImpl) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideCameraBackendsProvider.get();
                        MathKt.checkNotNullFromProvides((CameraGraph$Config) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule.mCardBackground);
                        CameraPipeModule$Companion$provideCameraContext$1 cameraPipeModule$Companion$provideCameraContext$1 = (CameraPipeModule$Companion$provideCameraContext$1) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideCameraContextProvider.get();
                        cameraBackendsImpl.getClass();
                        cameraPipeModule$Companion$provideCameraContext$1.getClass();
                        CameraBackend cameraBackend2 = cameraBackendsImpl.f1default;
                        MathKt.checkNotNullFromProvides(cameraBackend2);
                        return cameraBackend2;
                    case 3:
                        Threads threads9 = (Threads) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideThreadsProvider.get();
                        CardView.AnonymousClass1 anonymousClass13 = ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule;
                        CameraGraphId cameraGraphId = (CameraGraphId) anonymousClass13.this$0;
                        CameraGraph$Config cameraGraph$Config11 = (CameraGraph$Config) anonymousClass13.mCardBackground;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config11);
                        graphProcessorImpl = new GraphProcessorImpl(threads9, cameraGraphId, cameraGraph$Config11, (Listener3A) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).listener3AProvider.get(), (List) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideRequestListenersProvider.get(), (Camera2Quirks) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).camera2QuirksProvider.get());
                        return graphProcessorImpl;
                    case 4:
                        return new Listener3A();
                    case 5:
                        CameraGraph$Config cameraGraph$Config12 = (CameraGraph$Config) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule.mCardBackground;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config12);
                        Listener3A listener3A = (Listener3A) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).listener3AProvider.get();
                        FrameDistributor frameDistributor2 = (FrameDistributor) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideFrameDistributorProvider.get();
                        listener3A.getClass();
                        frameDistributor2.getClass();
                        ArrayList mutableListOf = IntOffsetKt.mutableListOf(listener3A);
                        mutableListOf.add(listener3A);
                        mutableListOf.add(frameDistributor2);
                        mutableListOf.addAll(cameraGraph$Config12.defaultListeners);
                        obj = mutableListOf;
                        return obj;
                    case 6:
                        StreamGraphImpl streamGraphImpl4 = (StreamGraphImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).streamGraphImplProvider.get();
                        FrameCaptureQueue frameCaptureQueue2 = (FrameCaptureQueue) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).frameCaptureQueueProvider.get();
                        CameraMetadata cameraMetadata5 = (CameraMetadata) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraMetadataProvider.get();
                        SystemClockOffsets systemClockOffsets = (SystemClockOffsets) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideSystemClockOffsetsProvider.get();
                        streamGraphImpl4.getClass();
                        frameCaptureQueue2.getClass();
                        cameraMetadata5.getClass();
                        systemClockOffsets.getClass();
                        CameraCharacteristics.Key key2 = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE;
                        key2.getClass();
                        Integer num = (Integer) ((Camera2CameraMetadata) cameraMetadata5).get(key2);
                        if (num != null) {
                            num.intValue();
                        }
                        return new FrameDistributor(streamGraphImpl4, frameCaptureQueue2);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        CameraMetadata cameraMetadata6 = (CameraMetadata) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraMetadataProvider.get();
                        CameraGraph$Config cameraGraph$Config13 = (CameraGraph$Config) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule.mCardBackground;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config13);
                        ((Threads) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideThreadsProvider.get()).getClass();
                        graphProcessorImpl = new StreamGraphImpl(cameraMetadata6, cameraGraph$Config13, new Option.AnonymousClass1(), ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraControllerProvider);
                        return graphProcessorImpl;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        CardView.AnonymousClass1 anonymousClass14 = ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).cameraGraphConfigModule;
                        CameraGraphId cameraGraphId2 = (CameraGraphId) anonymousClass14.this$0;
                        CameraGraph$Config cameraGraph$Config14 = (CameraGraph$Config) anonymousClass14.mCardBackground;
                        MathKt.checkNotNullFromProvides(cameraGraph$Config14);
                        CameraBackend cameraBackend3 = (CameraBackend) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraBackendProvider.get();
                        CameraPipeModule$Companion$provideCameraContext$1 cameraPipeModule$Companion$provideCameraContext$12 = (CameraPipeModule$Companion$provideCameraContext$1) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideCameraContextProvider.get();
                        GraphProcessorImpl graphProcessorImpl5 = (GraphProcessorImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphProcessorImplProvider.get();
                        StreamGraphImpl streamGraphImpl5 = (StreamGraphImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).streamGraphImplProvider.get();
                        SurfaceGraph surfaceGraph3 = (SurfaceGraph) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideSurfaceGraphProvider.get();
                        cameraBackend3.getClass();
                        cameraPipeModule$Companion$provideCameraContext$12.getClass();
                        graphProcessorImpl5.getClass();
                        streamGraphImpl5.getClass();
                        surfaceGraph3.getClass();
                        Camera2Backend camera2Backend = (Camera2Backend) cameraBackend3;
                        BiometricPrompt biometricPrompt = camera2Backend.camera2CameraControllerComponent;
                        Uri.Builder builder7 = new Uri.Builder(camera2Backend, cameraGraphId2, cameraGraph$Config14, graphProcessorImpl5, streamGraphImpl5, surfaceGraph3, camera2Backend);
                        DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl3 = (DaggerCameraPipeComponent$CameraPipeComponentImpl) biometricPrompt.mClientFragmentManager;
                        AuthorizationRequest.Builder builder8 = new AuthorizationRequest.Builder();
                        builder8.mClientId = daggerCameraPipeComponent$CameraPipeComponentImpl3;
                        builder8.mConfiguration = builder7;
                        builder8.mLoginHint = DoubleCheck.provider(new XmlParser(i3, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8));
                        builder8.mResponseType = DoubleCheck.provider(new XmlParser(i2, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8));
                        builder8.mScope = new XmlParser(4, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8);
                        builder8.mState = new XmlParser(5, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8);
                        builder8.mNonce = new XmlParser(6, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8);
                        builder8.mCodeVerifier = new XmlParser(7, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8);
                        builder8.mCodeVerifierChallenge = new XmlParser(i, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8);
                        builder8.mCodeVerifierChallengeMethod = DoubleCheck.provider(new XmlParser(i9, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8));
                        builder8.mRedirectUri = DoubleCheck.provider(new XmlParser(z2 ? 1 : 0, i9, daggerCameraPipeComponent$CameraPipeComponentImpl3, builder8));
                        Camera2CameraController camera2CameraController2 = (Camera2CameraController) ((Provider) builder8.mRedirectUri).get();
                        synchronized (camera2Backend.lock) {
                            camera2Backend.activeCameraControllers.add(camera2CameraController2);
                        }
                        MathKt.checkNotNullFromProvides(camera2CameraController2);
                        return camera2CameraController2;
                    case 9:
                        StreamGraphImpl streamGraphImpl6 = (StreamGraphImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).streamGraphImplProvider.get();
                        ConnectionPool connectionPool2 = ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraControllerProvider;
                        CameraSurfaceManager cameraSurfaceManager = (CameraSurfaceManager) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideCameraSurfaceManagerProvider.get();
                        streamGraphImpl6.getClass();
                        connectionPool2.getClass();
                        cameraSurfaceManager.getClass();
                        obj = new SurfaceGraph(streamGraphImpl6, connectionPool2, cameraSurfaceManager, streamGraphImpl6.imageSourceMap);
                        return obj;
                    case 10:
                        return new FrameCaptureQueue();
                    case 11:
                        long j = Long.MAX_VALUE;
                        long j2 = Long.MAX_VALUE;
                        for (int i10 = 0; i10 < 3; i10++) {
                            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                            System.currentTimeMillis();
                            long elapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos() - elapsedRealtimeNanos;
                            if (elapsedRealtimeNanos2 < j2) {
                                j2 = elapsedRealtimeNanos2;
                            }
                        }
                        for (int i11 = 0; i11 < 3; i11++) {
                            long nanoTime = System.nanoTime();
                            SystemClock.elapsedRealtimeNanos();
                            long nanoTime2 = System.nanoTime() - nanoTime;
                            if (nanoTime2 < j) {
                                j = nanoTime2;
                            }
                        }
                        return new SystemClockOffsets();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        graphProcessorImpl = new CameraGraphParametersImpl((GraphSessionLock) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphSessionLockProvider.get(), (GraphProcessorImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphProcessorImplProvider.get(), (CoroutineScope) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraGraphCoroutineScopeProvider.get());
                        return graphProcessorImpl;
                    case 13:
                        return new GraphSessionLock();
                    case 14:
                        Threads threads10 = (Threads) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideThreadsProvider.get();
                        Job job3 = (Job) ((DaggerCameraPipeComponent$CameraPipeComponentImpl) this.xmlPullParser).provideCameraPipeJobProvider.get();
                        threads10.getClass();
                        job3.getClass();
                        return JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job3), threads10.lightweightDispatcher.plus(new CoroutineName("CXCP-Graph"))));
                    case OffsetKt.Horizontal /* 15 */:
                        graphProcessorImpl = new CameraGraphRequestListenersImpl((GraphSessionLock) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphSessionLockProvider.get(), (GraphProcessorImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphProcessorImplProvider.get(), (CoroutineScope) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraGraphCoroutineScopeProvider.get());
                        return graphProcessorImpl;
                    case 16:
                        graphProcessorImpl = new Controller3A((GraphProcessorImpl) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphProcessorImplProvider.get(), (CameraMetadata) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).provideCameraMetadataProvider.get(), (GraphState3A) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).graphState3AProvider.get(), (Listener3A) ((DaggerCameraPipeComponent$CameraGraphComponentImpl) this.result).listener3AProvider.get());
                        return graphProcessorImpl;
                    case 17:
                        return new GraphState3A();
                    default:
                        throw new AssertionError(i8);
                }
        }
    }

    public int getIndex(Object obj) {
        MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) this.xmlPullParser;
        int findKeyIndex = mutableObjectIntMap.findKeyIndex(obj);
        if (findKeyIndex >= 0) {
            return mutableObjectIntMap.values[findKeyIndex];
        }
        return -1;
    }

    public void insert(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2, boolean z3, int i7) {
        long[] jArr = (long[]) this.xmlPullParser;
        int i8 = this.lastVersionCode;
        int i9 = i8 + 3;
        this.lastVersionCode = i9;
        int length = jArr.length;
        if (length <= i9) {
            int max = Math.max(length * 2, i9);
            this.xmlPullParser = Arrays.copyOf(jArr, max);
            this.result = Arrays.copyOf((long[]) this.result, max);
        }
        long[] jArr2 = (long[]) this.xmlPullParser;
        jArr2[i8] = (i2 << 32) | (i3 & 4294967295L);
        jArr2[i8 + 1] = (i4 << 32) | (i5 & 4294967295L);
        int i10 = i6 & 33554431;
        jArr2[i8 + 2] = ((z3 ? 1L : 0L) << 63) | ((z2 ? 1L : 0L) << 62) | ((z ? 1L : 0L) << 61) | 1152921504606846976L | (Math.min(0, 1023) << 50) | (i10 << 25) | (i & 33554431);
        if (i6 < 0) {
            return;
        }
        for (int i11 = i7 != -1 ? i7 : i8 - 3; i11 >= 0; i11 -= 3) {
            int i12 = i11 + 2;
            long j = jArr2[i12];
            if ((((int) j) & 33554431) == i10) {
                int i13 = (i8 - i11) / 3;
                int i14 = RectListKt.$r8$clinit;
                jArr2[i12] = (Math.min(i13, 1023) << 50) | (j & (-1151795604700004353L));
                return;
            }
        }
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return ((Shader) this.xmlPullParser) == null && (colorStateList = (ColorStateList) this.result) != null && colorStateList.isStateful();
    }

    @Override // org.apache.james.mime4j.util.ByteSequence
    public int length() {
        return this.lastVersionCode;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.xmlPullParser;
        Context context = imageView.getContext();
        int[] iArr = R$styleable.AppCompatImageView;
        MenuHostHelper obtainStyledAttributes = MenuHostHelper.obtainStyledAttributes(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.mMenuProviders;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) obtainStyledAttributes.mMenuProviders, i, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = Utf8.SafeProcessor.getDrawable(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(obtainStyledAttributes.getColorStateList(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(DrawableUtils.parseTintMode(typedArray.getInt(3, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public boolean parseReleaseElement() {
        int next;
        assertElementStart("release");
        XmlPullParser xmlPullParser = (XmlPullParser) this.xmlPullParser;
        if (xmlPullParser.getAttributeValue(null, "version") == null) {
            throw new SerializationException("Missing attribute: ".concat("version"));
        }
        String attributeValue = xmlPullParser.getAttributeValue(null, "version");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "date");
        if (xmlPullParser.getAttributeValue(null, "versioncode") == null) {
            throw new SerializationException("Missing attribute: ".concat("versioncode"));
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "versioncode");
        try {
            int parseInt = Integer.parseInt(attributeValue3);
            int i = this.lastVersionCode;
            if (i != -1 && parseInt <= i) {
                return true;
            }
            ArrayList arrayList = new ArrayList();
            do {
                next = xmlPullParser.next();
                if (next == 2) {
                    assertElementStart("change");
                    xmlPullParser.next();
                    if (xmlPullParser.getEventType() != 4) {
                        throw new SerializationException("Expected text");
                    }
                    String replaceAll = xmlPullParser.getText().trim().replaceAll("\\s+", " ");
                    xmlPullParser.next();
                    if (xmlPullParser.getEventType() != 3) {
                        throw new SerializationException("Expected </change>");
                    }
                    arrayList.add(replaceAll);
                }
            } while (next != 3);
            if (arrayList.isEmpty()) {
                throw new SerializationException("<release> tag must contain at least one <change> element");
            }
            ((ArrayList) this.result).add(new ReleaseItem(parseInt, attributeValue, attributeValue2, arrayList));
            return false;
        } catch (NumberFormatException unused) {
            throw new SerializationException(CameraDevices$CC.m("Invalid version code value: ", attributeValue3));
        }
    }

    public List readChangeLog() {
        int next;
        XmlPullParser xmlPullParser = (XmlPullParser) this.xmlPullParser;
        while (xmlPullParser.getEventType() != 2) {
            try {
                xmlPullParser.next();
            } catch (IOException | XmlPullParserException e) {
                throw new IllegalStateException(e);
            }
        }
        assertElementStart("changelog");
        do {
            next = xmlPullParser.next();
            if (next == 2 && parseReleaseElement()) {
                break;
            }
        } while (next != 1);
        return DesugarCollections.unmodifiableList((ArrayList) this.result);
    }

    public void remove(int i) {
        int i2 = this.lastVersionCode;
        if (i2 < 0 || i < 0 || i < 0 || i > i2) {
            throw new IndexOutOfBoundsException();
        }
        if (i == 0) {
            return;
        }
        int i3 = i2 - i;
        if (i3 > 0) {
            byte[] bArr = (byte[]) this.result;
            System.arraycopy(bArr, i, bArr, 0, i3);
        }
        this.lastVersionCode -= i;
    }

    public void setImageResource(int i) {
        ImageView imageView = (ImageView) this.xmlPullParser;
        if (i != 0) {
            Drawable drawable = Utf8.SafeProcessor.getDrawable(imageView.getContext(), i);
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageDrawable(null);
        }
        applySupportImageTint();
    }

    @Override // org.apache.james.mime4j.util.ByteSequence
    public byte[] toByteArray() {
        int i = this.lastVersionCode;
        byte[] bArr = new byte[i];
        if (i > 0) {
            System.arraycopy((byte[]) this.result, 0, bArr, 0, i);
        }
        return bArr;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 14:
                StringBuilder sb = new StringBuilder();
                if (((Protocol) this.xmlPullParser) == Protocol.HTTP_1_0) {
                    sb.append("HTTP/1.0");
                } else {
                    sb.append("HTTP/1.1");
                }
                sb.append(' ');
                sb.append(this.lastVersionCode);
                sb.append(' ');
                sb.append((String) this.result);
                return sb.toString();
            case OffsetKt.Horizontal /* 15 */:
                return new String((byte[]) this.result, 0, this.lastVersionCode, StandardCharsets.ISO_8859_1);
            default:
                return super.toString();
        }
    }

    public void updateHasCallbacks(int i, boolean z) {
        int i2 = i & 33554431;
        long[] jArr = (long[]) this.xmlPullParser;
        int i3 = this.lastVersionCode;
        for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
            int i5 = i4 + 2;
            long j = jArr[i5];
            if ((((int) j) & 33554431) == i2) {
                long j2 = 8070450532247928831L & j;
                long j3 = z ? 1L : 0L;
                jArr[i5] = j2 | (1152921504606846976L * j3) | (j3 * Long.MIN_VALUE);
                return;
            }
        }
    }

    public void updateSubhierarchy(int i, int i2, long j) {
        int i3;
        char c;
        char c2;
        long[] jArr = (long[]) this.xmlPullParser;
        long[] jArr2 = (long[]) this.result;
        jArr2[0] = j;
        int i4 = 1;
        while (i4 > 0) {
            i4--;
            long j2 = jArr2[i4];
            int i5 = 33554431;
            int i6 = ((int) j2) & 33554431;
            char c3 = 25;
            int i7 = ((int) (j2 >> 25)) & 33554431;
            char c4 = '2';
            int i8 = ((int) (j2 >> 50)) & 1023;
            int i9 = i8 == 1023 ? this.lastVersionCode : (i8 * 3) + i7;
            if (i7 < 0) {
                return;
            }
            while (i7 < jArr.length - 2 && i7 < i9) {
                int i10 = i7 + 2;
                long j3 = jArr[i10];
                if ((((int) (j3 >> c3)) & i5) == i6) {
                    long j4 = jArr[i7];
                    int i11 = i7 + 1;
                    i3 = i5;
                    c = c3;
                    long j5 = jArr[i11];
                    c2 = c4;
                    jArr[i7] = ((((int) j4) + i2) & 4294967295L) | ((((int) (j4 >> 32)) + i) << 32);
                    jArr[i11] = ((((int) j5) + i2) & 4294967295L) | ((((int) (j5 >> 32)) + i) << 32);
                    jArr[i10] = (((j3 >> 63) & 1) << 60) | j3;
                    if ((((int) (j3 >> c2)) & 1023) > 0) {
                        int i12 = RectListKt.$r8$clinit;
                        jArr2[i4] = ((-1125899873288193L) & j3) | (((i7 + 3) & i3) << c);
                        i4++;
                    }
                } else {
                    i3 = i5;
                    c = c3;
                    c2 = c4;
                }
                i7 += 3;
                i5 = i3;
                c3 = c;
                c4 = c2;
            }
        }
    }

    public void withRect(int i, Function4 function4) {
        int i2 = i & 33554431;
        long[] jArr = (long[]) this.xmlPullParser;
        int i3 = this.lastVersionCode;
        for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
            if ((((int) jArr[i4 + 2]) & 33554431) == i2) {
                long j = jArr[i4];
                long j2 = jArr[i4 + 1];
                function4.invoke(Integer.valueOf((int) (j >> 32)), Integer.valueOf((int) j), Integer.valueOf((int) (j2 >> 32)), Integer.valueOf((int) j2));
                return;
            }
        }
    }

    public void append(int i) {
        int i2 = this.lastVersionCode + 1;
        if (i2 > ((byte[]) this.result).length) {
            expand$1(i2);
        }
        ((byte[]) this.result)[this.lastVersionCode] = (byte) i;
        this.lastVersionCode = i2;
    }

    public /* synthetic */ XmlParser(int i, int i2, Object obj, Object obj2) {
        this.$r8$classId = i2;
        this.xmlPullParser = obj;
        this.result = obj2;
        this.lastVersionCode = i;
    }

    public XmlParser(DefaultCssClassNameProvider defaultCssClassNameProvider, DefaultCssVariableNameProvider defaultCssVariableNameProvider, String str) {
        this.$r8$classId = 13;
        this.xmlPullParser = defaultCssVariableNameProvider;
        this.result = new StringBuilder(str.length() + 2048);
    }

    public XmlParser(Protocol protocol, int i, String str) {
        this.$r8$classId = 14;
        this.xmlPullParser = protocol;
        this.lastVersionCode = i;
        this.result = str;
    }

    public XmlParser(ReliableDnsClient.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 16;
        this.result = new HashMap();
        this.xmlPullParser = anonymousClass1;
    }

    public XmlParser(ArrayList arrayList, int i, MotionEvent motionEvent) {
        this.$r8$classId = 9;
        this.result = arrayList;
        this.lastVersionCode = i;
        this.xmlPullParser = motionEvent;
        if (arrayList.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("changes cannot be empty");
            throw null;
        }
    }

    public XmlParser(BufferRecycler bufferRecycler, int i) {
        this.$r8$classId = 15;
        if (i >= 0) {
            this.result = bufferRecycler.allocByteBuffer(0, i);
            this.xmlPullParser = bufferRecycler;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Buffer capacity may not be negative");
            throw null;
        }
    }

    public XmlParser(ImageView imageView) {
        this.$r8$classId = 1;
        this.lastVersionCode = 0;
        this.xmlPullParser = imageView;
    }

    public /* synthetic */ XmlParser(int i) {
        this.$r8$classId = i;
    }

    public XmlParser(XmlPullParser xmlPullParser, int i) {
        this.$r8$classId = 0;
        this.xmlPullParser = xmlPullParser;
        this.lastVersionCode = i;
        this.result = new ArrayList();
    }

    public XmlParser() {
        this.$r8$classId = 5;
        this.xmlPullParser = new MutableVector(new IntervalList$Interval[16]);
    }

    public XmlParser(ViewConfiguration viewConfiguration) {
        this.$r8$classId = 7;
        this.xmlPullParser = viewConfiguration;
    }

    public XmlParser(GlideSuppliers$1 glideSuppliers$1) {
        this.$r8$classId = 12;
        this.result = FactoryPools.threadSafe(150, new Configuration.Builder(10, this));
        this.xmlPullParser = glideSuppliers$1;
    }

    public IntervalList$Interval get(int i) {
        if (i < 0 || i >= this.lastVersionCode) {
            StringBuilder m30m = CameraDevices$CC.m30m(i, "Index ", ", size ");
            m30m.append(this.lastVersionCode);
            InlineClassHelperKt.throwIndexOutOfBoundsException(m30m.toString());
        }
        IntervalList$Interval intervalList$Interval = (IntervalList$Interval) this.result;
        if (intervalList$Interval != null) {
            int i2 = intervalList$Interval.startIndex;
            if (i < intervalList$Interval.size + i2 && i2 <= i) {
                return intervalList$Interval;
            }
        }
        MutableVector mutableVector = (MutableVector) this.xmlPullParser;
        IntervalList$Interval intervalList$Interval2 = (IntervalList$Interval) mutableVector.content[LazyLayoutKt.access$binarySearch(i, mutableVector)];
        this.result = intervalList$Interval2;
        return intervalList$Interval2;
    }
}
