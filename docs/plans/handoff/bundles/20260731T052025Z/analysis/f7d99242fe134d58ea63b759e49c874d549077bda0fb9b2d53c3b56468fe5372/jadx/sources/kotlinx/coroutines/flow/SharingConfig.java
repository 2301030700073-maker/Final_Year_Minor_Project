package kotlinx.coroutines.flow;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.ConfigureSurfaceToSecondarySessionFailQuirk;
import androidx.camera.camera2.compat.quirk.PreviewOrientationIncorrectQuirk;
import androidx.camera.camera2.compat.quirk.TextureViewIsClosedQuirk;
import androidx.camera.camera2.compat.quirk.UseTorchAsFlashQuirk;
import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$UseCaseCameraComponentImpl;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.config.UseCaseCameraConfig$$ExternalSyntheticLambda0;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.impl.UseCaseCameraState;
import androidx.camera.camera2.impl.UseCaseSurfaceManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculatorImpl;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.Quirks;
import androidx.cardview.widget.CardView;
import androidx.collection.ArraySet;
import androidx.compose.runtime.ProvidedValue;
import androidx.core.app.AlarmManagerCompat$Api31Impl;
import androidx.core.app.AppOpsManagerCompat$Api29Impl;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompatBuilder$Api24Impl;
import androidx.core.app.NotificationCompatBuilder$Api26Impl;
import androidx.core.app.NotificationCompatBuilder$Api28Impl;
import androidx.core.app.NotificationCompatBuilder$Api36Impl;
import androidx.core.app.RemoteInput;
import androidx.core.graphics.drawable.IconCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Operation$State;
import dagger.internal.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.json.internal.JsonPath$Tombstone;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SharingConfig implements Provider {
    public final /* synthetic */ int $r8$classId;
    public Object context;
    public int extraBufferCapacity;
    public Object onBufferOverflow;
    public Object upstream;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v36, types: [android.graphics.drawable.Icon] */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v46 */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r3v19, types: [android.app.Notification$Builder] */
    public SharingConfig(NotificationCompat$Builder notificationCompat$Builder) {
        ArrayList arrayList;
        String str;
        int i;
        Bundle[] bundleArr;
        ArrayList arrayList2;
        ?? r17;
        ?? r11;
        Iterator it;
        this.$r8$classId = 2;
        this.context = new Bundle();
        this.onBufferOverflow = notificationCompat$Builder;
        Context context = notificationCompat$Builder.mContext;
        ArrayList arrayList3 = notificationCompat$Builder.mPeople;
        ArrayList arrayList4 = notificationCompat$Builder.mPersonList;
        String str2 = notificationCompat$Builder.mChannelId;
        ArrayList arrayList5 = notificationCompat$Builder.mInvisibleActions;
        if (Build.VERSION.SDK_INT >= 26) {
            this.upstream = NotificationCompatBuilder$Api26Impl.createBuilder(context, str2);
        } else {
            this.upstream = new Notification.Builder(context);
        }
        Notification notification = notificationCompat$Builder.mNotification;
        Context context2 = null;
        int i2 = 0;
        ((Notification.Builder) this.upstream).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(notificationCompat$Builder.mContentTitle).setContentText(notificationCompat$Builder.mContentText).setContentInfo(null).setContentIntent(notificationCompat$Builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(notificationCompat$Builder.mNumber).setProgress(0, 0, false);
        Notification.Builder builder = (Notification.Builder) this.upstream;
        IconCompat iconCompat = notificationCompat$Builder.mLargeIcon;
        builder.setLargeIcon(iconCompat == null ? null : iconCompat.toIcon(context));
        ((Notification.Builder) this.upstream).setSubText(notificationCompat$Builder.mSubText).setUsesChronometer(false).setPriority(notificationCompat$Builder.mPriority);
        Iterator it2 = notificationCompat$Builder.mActions.iterator();
        while (it2.hasNext()) {
            NotificationCompat$Action notificationCompat$Action = (NotificationCompat$Action) it2.next();
            IconCompat iconCompat2 = notificationCompat$Action.getIconCompat();
            boolean z = notificationCompat$Action.mAllowGeneratedReplies;
            Bundle bundle = notificationCompat$Action.mExtras;
            int i3 = i2;
            if (iconCompat2 != null) {
                r17 = context2;
                r11 = iconCompat2.toIcon(context2);
            } else {
                Context context3 = context2;
                r17 = context3;
                r11 = context3;
            }
            Notification.Action.Builder builder2 = new Notification.Action.Builder((Icon) r11, notificationCompat$Action.title, notificationCompat$Action.actionIntent);
            RemoteInput[] remoteInputArr = notificationCompat$Action.mRemoteInputs;
            if (remoteInputArr != null) {
                int length = remoteInputArr.length;
                android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[length];
                it = it2;
                if (remoteInputArr.length > 0) {
                    RemoteInput remoteInput = remoteInputArr[i3];
                    throw r17;
                }
                for (int i4 = i3; i4 < length; i4++) {
                    builder2.addRemoteInput(remoteInputArr2[i4]);
                }
            } else {
                it = it2;
            }
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putBoolean("android.support.allowGeneratedReplies", z);
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 24) {
                NotificationCompatBuilder$Api24Impl.setAllowGeneratedReplies(builder2, z);
            }
            bundle2.putInt("android.support.action.semanticAction", i3);
            if (i5 >= 28) {
                NotificationCompatBuilder$Api28Impl.setSemanticAction(builder2);
            }
            if (i5 >= 29) {
                AppOpsManagerCompat$Api29Impl.setContextual(builder2);
            }
            if (i5 >= 31) {
                AlarmManagerCompat$Api31Impl.setAuthenticationRequired(builder2);
            }
            bundle2.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.mShowsUserInterface);
            builder2.addExtras(bundle2);
            ((Notification.Builder) this.upstream).addAction(builder2.build());
            context2 = r17;
            it2 = it;
            i2 = 0;
        }
        ?? r172 = context2;
        Bundle bundle3 = notificationCompat$Builder.mExtras;
        if (bundle3 != null) {
            ((Bundle) this.context).putAll(bundle3);
        }
        ((Notification.Builder) this.upstream).setShowWhen(notificationCompat$Builder.mShowWhen);
        ((Notification.Builder) this.upstream).setLocalOnly(notificationCompat$Builder.mLocalOnly);
        ((Notification.Builder) this.upstream).setGroup(notificationCompat$Builder.mGroupKey);
        ((Notification.Builder) this.upstream).setSortKey(r172);
        ((Notification.Builder) this.upstream).setGroupSummary(notificationCompat$Builder.mGroupSummary);
        this.extraBufferCapacity = notificationCompat$Builder.mGroupAlertBehavior;
        ((Notification.Builder) this.upstream).setCategory(notificationCompat$Builder.mCategory);
        ((Notification.Builder) this.upstream).setColor(notificationCompat$Builder.mColor);
        ((Notification.Builder) this.upstream).setVisibility(notificationCompat$Builder.mVisibility);
        ((Notification.Builder) this.upstream).setPublicVersion(notificationCompat$Builder.mPublicVersion);
        ((Notification.Builder) this.upstream).setSound(notification.sound, notification.audioAttributes);
        if (Build.VERSION.SDK_INT < 28) {
            if (arrayList4 == null) {
                arrayList2 = null;
            } else {
                arrayList2 = new ArrayList(arrayList4.size());
                Iterator it3 = arrayList4.iterator();
                if (it3.hasNext()) {
                    throw Config.CC.m(it3);
                }
            }
            if (arrayList2 != null) {
                if (arrayList3 == null) {
                    arrayList3 = arrayList2;
                } else {
                    ArraySet arraySet = new ArraySet(arrayList3.size() + arrayList2.size());
                    arraySet.addAll(arrayList2);
                    arraySet.addAll(arrayList3);
                    arrayList3 = new ArrayList(arraySet);
                }
            }
        }
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                ((Notification.Builder) this.upstream).addPerson((String) it4.next());
            }
        }
        if (arrayList5.size() > 0) {
            if (notificationCompat$Builder.mExtras == null) {
                notificationCompat$Builder.mExtras = new Bundle();
            }
            Bundle bundle4 = notificationCompat$Builder.mExtras.getBundle("android.car.EXTENSIONS");
            bundle4 = bundle4 == null ? new Bundle() : bundle4;
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            int i6 = 0;
            while (i6 < arrayList5.size()) {
                String num = Integer.toString(i6);
                NotificationCompat$Action notificationCompat$Action2 = (NotificationCompat$Action) arrayList5.get(i6);
                Bundle bundle7 = new Bundle();
                IconCompat iconCompat3 = notificationCompat$Action2.getIconCompat();
                ArrayList arrayList6 = arrayList4;
                Bundle bundle8 = notificationCompat$Action2.mExtras;
                String str3 = str2;
                bundle7.putInt("icon", iconCompat3 != null ? iconCompat3.getResId() : 0);
                bundle7.putCharSequence("title", notificationCompat$Action2.title);
                bundle7.putParcelable("actionIntent", notificationCompat$Action2.actionIntent);
                Bundle bundle9 = bundle8 != null ? new Bundle(bundle8) : new Bundle();
                bundle9.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action2.mAllowGeneratedReplies);
                bundle7.putBundle("extras", bundle9);
                RemoteInput[] remoteInputArr3 = notificationCompat$Action2.mRemoteInputs;
                if (remoteInputArr3 == null) {
                    bundleArr = null;
                } else {
                    bundleArr = new Bundle[remoteInputArr3.length];
                    if (remoteInputArr3.length > 0) {
                        RemoteInput remoteInput2 = remoteInputArr3[0];
                        new Bundle();
                        throw null;
                    }
                }
                bundle7.putParcelableArray("remoteInputs", bundleArr);
                bundle7.putBoolean("showsUserInterface", notificationCompat$Action2.mShowsUserInterface);
                bundle7.putInt("semanticAction", 0);
                bundle6.putBundle(num, bundle7);
                i6++;
                arrayList4 = arrayList6;
                str2 = str3;
            }
            arrayList = arrayList4;
            str = str2;
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            if (notificationCompat$Builder.mExtras == null) {
                notificationCompat$Builder.mExtras = new Bundle();
            }
            notificationCompat$Builder.mExtras.putBundle("android.car.EXTENSIONS", bundle4);
            ((Bundle) this.context).putBundle("android.car.EXTENSIONS", bundle5);
        } else {
            arrayList = arrayList4;
            str = str2;
        }
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 24) {
            ((Notification.Builder) this.upstream).setExtras(notificationCompat$Builder.mExtras);
            NotificationCompatBuilder$Api24Impl.setRemoteInputHistory((Notification.Builder) this.upstream);
        }
        if (i7 >= 26) {
            NotificationCompatBuilder$Api26Impl.setBadgeIconType((Notification.Builder) this.upstream);
            NotificationCompatBuilder$Api26Impl.setSettingsText((Notification.Builder) this.upstream);
            NotificationCompatBuilder$Api26Impl.setShortcutId((Notification.Builder) this.upstream);
            NotificationCompatBuilder$Api26Impl.setTimeoutAfter((Notification.Builder) this.upstream);
            NotificationCompatBuilder$Api26Impl.setGroupAlertBehavior((Notification.Builder) this.upstream, notificationCompat$Builder.mGroupAlertBehavior);
            if (!TextUtils.isEmpty(str)) {
                ((Notification.Builder) this.upstream).setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i7 >= 28) {
            Iterator it5 = arrayList.iterator();
            if (it5.hasNext()) {
                throw Config.CC.m(it5);
            }
        }
        if (i7 >= 29) {
            AppOpsManagerCompat$Api29Impl.setAllowSystemGeneratedContextualActions((Notification.Builder) this.upstream, notificationCompat$Builder.mAllowSystemGeneratedContextualActions);
            AppOpsManagerCompat$Api29Impl.setBubbleMetadata((Notification.Builder) this.upstream);
        }
        if (i7 >= 31 && (i = notificationCompat$Builder.mFgsDeferBehavior) != 0) {
            AlarmManagerCompat$Api31Impl.setForegroundServiceBehavior((Notification.Builder) this.upstream, i);
        }
        if (i7 >= 36) {
            NotificationCompatBuilder$Api36Impl.setShortCriticalText((Notification.Builder) this.upstream);
        }
        if (notificationCompat$Builder.mSilent) {
            if (((NotificationCompat$Builder) this.onBufferOverflow).mGroupSummary) {
                this.extraBufferCapacity = 2;
            } else {
                this.extraBufferCapacity = 1;
            }
            ((Notification.Builder) this.upstream).setVibrate(null);
            ((Notification.Builder) this.upstream).setSound(null);
            int i8 = notification.defaults & (-4);
            notification.defaults = i8;
            ((Notification.Builder) this.upstream).setDefaults(i8);
            if (i7 >= 26) {
                if (TextUtils.isEmpty(((NotificationCompat$Builder) this.onBufferOverflow).mGroupKey)) {
                    ((Notification.Builder) this.upstream).setGroup("silent");
                }
                NotificationCompatBuilder$Api26Impl.setGroupAlertBehavior((Notification.Builder) this.upstream, this.extraBufferCapacity);
            }
        }
    }

    public static void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    @Override // javax.inject.Provider
    public Object get() {
        DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl = (DaggerCameraAppComponent$CameraAppComponentImpl) this.upstream;
        DaggerCameraAppComponent$UseCaseCameraComponentImpl daggerCameraAppComponent$UseCaseCameraComponentImpl = (DaggerCameraAppComponent$UseCaseCameraComponentImpl) this.context;
        DaggerCameraAppComponent$CameraComponentImpl daggerCameraAppComponent$CameraComponentImpl = (DaggerCameraAppComponent$CameraComponentImpl) this.onBufferOverflow;
        int i = this.extraBufferCapacity;
        switch (i) {
            case 0:
                UseCaseGraphContext useCaseGraphContext = (UseCaseGraphContext) daggerCameraAppComponent$UseCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get();
                UseCaseThreads useCaseThreads = (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get();
                if (daggerCameraAppComponent$UseCaseCameraComponentImpl.provideSessionProcessorProvider.get() == null) {
                    return new UseCaseCameraImpl(useCaseGraphContext, useCaseThreads, (UseCaseCameraRequestControl) daggerCameraAppComponent$UseCaseCameraComponentImpl.deferredUseCaseCameraRequestControlProvider.get(), daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseSurfaceManagerProvider, daggerCameraAppComponent$UseCaseCameraComponentImpl.provideSessionConfigAdapterProvider, daggerCameraAppComponent$UseCaseCameraComponentImpl.provideCapturePipelineProvider);
                }
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return null;
            case 1:
                UseCaseCameraConfig useCaseCameraConfig = daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraConfig;
                CameraStateAdapter cameraStateAdapter = (CameraStateAdapter) daggerCameraAppComponent$CameraComponentImpl.cameraStateAdapterProvider.get();
                useCaseCameraConfig.getClass();
                cameraStateAdapter.getClass();
                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "Prepared UseCaseGraphContext (Deferred)");
                }
                return new UseCaseGraphContext(new UseCaseCameraConfig$$ExternalSyntheticLambda0(useCaseCameraConfig, 0), cameraStateAdapter, useCaseCameraConfig.graphStateToCameraStateAdapter, new UseCaseCameraConfig$$ExternalSyntheticLambda0(useCaseCameraConfig, 1));
            case 2:
                daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraConfig.getClass();
                return null;
            case 3:
                return new DeferredUseCaseCameraRequestControl(daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraRequestControlImplProvider, (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get());
            case 4:
                return new UseCaseCameraRequestControlImpl(daggerCameraAppComponent$UseCaseCameraComponentImpl.provideCapturePipelineProvider, daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraStateProvider, (UseCaseGraphContext) daggerCameraAppComponent$UseCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get(), daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseSurfaceManagerProvider, (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), (CameraXConfig) daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig.path);
            case 5:
                Provider provider = daggerCameraAppComponent$UseCaseCameraComponentImpl.capturePipelineImplProvider;
                Provider provider2 = daggerCameraAppComponent$UseCaseCameraComponentImpl.capturePipelineTorchCorrectionProvider;
                provider.getClass();
                provider2.getClass();
                if (CapturePipelineTorchCorrection.isEnabled) {
                    Object obj = provider2.get();
                    obj.getClass();
                    return (CapturePipeline) obj;
                }
                Object obj2 = provider.get();
                obj2.getClass();
                return (CapturePipeline) obj2;
            case 6:
                CaptureConfigAdapter captureConfigAdapter = (CaptureConfigAdapter) daggerCameraAppComponent$UseCaseCameraComponentImpl.captureConfigAdapterProvider.get();
                FlashControl flashControl = (FlashControl) daggerCameraAppComponent$CameraComponentImpl.flashControlProvider.get();
                TorchControl torchControl = (TorchControl) daggerCameraAppComponent$CameraComponentImpl.torchControlProvider.get();
                VideoUsageControl videoUsageControl = (VideoUsageControl) daggerCameraAppComponent$CameraComponentImpl.videoUsageControlProvider.get();
                UseCaseThreads useCaseThreads2 = (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get();
                ComboRequestListener comboRequestListener = (ComboRequestListener) daggerCameraAppComponent$CameraComponentImpl.comboRequestListenerProvider.get();
                CameraQuirks cameraQuirks = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                CameraDevicesImpl cameraDevices = daggerCameraAppComponent$CameraComponentImpl.cameraAppComponentImpl.getCameraDevices();
                IntrinsicZoomCalculatorImpl intrinsicZoomCalculatorImpl = (IntrinsicZoomCalculatorImpl) daggerCameraAppComponent$CameraComponentImpl.intrinsicZoomCalculatorImplProvider.get();
                cameraQuirks.getClass();
                intrinsicZoomCalculatorImpl.getClass();
                return new CapturePipelineImpl(captureConfigAdapter, flashControl, torchControl, videoUsageControl, useCaseThreads2, comboRequestListener, cameraQuirks.getQuirks().contains(UseTorchAsFlashQuirk.class) ? new BiometricPrompt(cameraQuirks, cameraDevices, intrinsicZoomCalculatorImpl) : TargetAspectRatio.INSTANCE$7, (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraStateProvider, (UseCaseGraphContext) daggerCameraAppComponent$UseCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get());
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                CameraPipeCameraProperties cameraPipeCameraProperties = (CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                UseCaseGraphContext useCaseGraphContext2 = (UseCaseGraphContext) daggerCameraAppComponent$UseCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get();
                ZslControl zslControl = (ZslControl) daggerCameraAppComponent$CameraComponentImpl.provideZslControlProvider.get();
                UseCaseThreads useCaseThreads3 = (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get();
                daggerCameraAppComponent$CameraComponentImpl.templateParamsOverride();
                cameraPipeCameraProperties.getClass();
                useCaseGraphContext2.getClass();
                zslControl.getClass();
                useCaseThreads3.getClass();
                CaptureConfigAdapter captureConfigAdapter2 = new CaptureConfigAdapter();
                CameraMetadata.Companion companion = CameraMetadata.Companion;
                CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
                companion.getClass();
                CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
                return captureConfigAdapter2;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new UseCaseCameraState((UseCaseGraphContext) daggerCameraAppComponent$UseCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get(), daggerCameraAppComponent$CameraComponentImpl.templateParamsOverride());
            case 9:
                return new CapturePipelineTorchCorrection((CameraPipeCameraProperties) daggerCameraAppComponent$CameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), daggerCameraAppComponent$UseCaseCameraComponentImpl.capturePipelineImplProvider, (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get(), (TorchControl) daggerCameraAppComponent$CameraComponentImpl.torchControlProvider.get());
            case 10:
                UseCaseThreads useCaseThreads4 = (UseCaseThreads) daggerCameraAppComponent$CameraComponentImpl.provideUseCaseThreadsProvider.get();
                CameraPipeImpl cameraPipeImpl = (CameraPipeImpl) daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig.authority;
                MathKt.checkNotNullFromProvides(cameraPipeImpl);
                CameraQuirks cameraQuirks2 = (CameraQuirks) daggerCameraAppComponent$CameraComponentImpl.cameraQuirksProvider.get();
                cameraQuirks2.getClass();
                Quirks quirks = cameraQuirks2.getQuirks();
                return new UseCaseSurfaceManager(useCaseThreads4, cameraPipeImpl, (quirks.contains(ConfigureSurfaceToSecondarySessionFailQuirk.class) || quirks.contains(PreviewOrientationIncorrectQuirk.class) || quirks.contains(TextureViewIsClosedQuirk.class)) ? new CardView.AnonymousClass1(7) : TargetAspectRatio.INSTANCE$3, (SessionConfigAdapter) daggerCameraAppComponent$UseCaseCameraComponentImpl.provideSessionConfigAdapterProvider.get());
            case 11:
                return daggerCameraAppComponent$UseCaseCameraComponentImpl.useCaseCameraConfig.sessionConfigAdapter;
            default:
                throw new AssertionError(i);
        }
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.extraBufferCapacity + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((Object[]) this.onBufferOverflow)[i2];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                boolean areEqual = Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$2);
                int[] iArr = (int[]) this.context;
                if (!areEqual) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(serialDescriptor.getElementName(i3));
                    }
                } else if (iArr[i2] != -1) {
                    sb.append("[");
                    sb.append(((int[]) this.context)[i2]);
                    sb.append("]");
                }
            } else if (obj == JsonPath$Tombstone.INSTANCE$1) {
                sb.append("[<debug info disabled>]");
            } else if (obj != JsonPath$Tombstone.INSTANCE) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public void resize() {
        int i = this.extraBufferCapacity * 2;
        this.onBufferOverflow = Arrays.copyOf((Object[]) this.onBufferOverflow, i);
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = -1;
        }
        ArraysKt___ArraysKt.copyInto$default(0, 0, 14, (int[]) this.context, iArr);
        this.context = iArr;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 5:
                return getPath();
            default:
                return super.toString();
        }
    }

    public SharingConfig(ProvidedValue providedValue) {
        this.$r8$classId = 5;
        this.upstream = providedValue;
        this.onBufferOverflow = new Object[8];
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        this.context = iArr;
        this.extraBufferCapacity = -1;
    }

    public SharingConfig(NavBackStackEntry navBackStackEntry, int i) {
        this.$r8$classId = 3;
        this.upstream = navBackStackEntry.id;
        this.extraBufferCapacity = i;
        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.impl;
        this.onBufferOverflow = navBackStackEntryImpl.getArguments$navigation_common_release();
        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        this.context = bundleOf;
        navBackStackEntryImpl.savedStateRegistryController.performSave(bundleOf);
    }

    public SharingConfig(Bundle bundle) {
        this.$r8$classId = 3;
        bundle.getClass();
        this.upstream = Operation$State.m831getStringimpl("nav-entry-state:id", bundle);
        this.extraBufferCapacity = Operation$State.m829getIntimpl("nav-entry-state:destination-id", bundle);
        this.onBufferOverflow = Operation$State.m830getSavedStateimpl("nav-entry-state:args", bundle);
        this.context = Operation$State.m830getSavedStateimpl("nav-entry-state:saved-state", bundle);
    }

    public /* synthetic */ SharingConfig() {
        this.$r8$classId = 4;
    }

    public SharingConfig(int i, CoroutineContext coroutineContext, BufferOverflow bufferOverflow, Flow flow) {
        this.$r8$classId = 0;
        this.upstream = flow;
        this.extraBufferCapacity = i;
        this.onBufferOverflow = bufferOverflow;
        this.context = coroutineContext;
    }

    public SharingConfig(DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl, DaggerCameraAppComponent$CameraComponentImpl daggerCameraAppComponent$CameraComponentImpl, DaggerCameraAppComponent$UseCaseCameraComponentImpl daggerCameraAppComponent$UseCaseCameraComponentImpl, int i) {
        this.$r8$classId = 1;
        this.upstream = daggerCameraAppComponent$CameraAppComponentImpl;
        this.onBufferOverflow = daggerCameraAppComponent$CameraComponentImpl;
        this.context = daggerCameraAppComponent$UseCaseCameraComponentImpl;
        this.extraBufferCapacity = i;
    }
}
