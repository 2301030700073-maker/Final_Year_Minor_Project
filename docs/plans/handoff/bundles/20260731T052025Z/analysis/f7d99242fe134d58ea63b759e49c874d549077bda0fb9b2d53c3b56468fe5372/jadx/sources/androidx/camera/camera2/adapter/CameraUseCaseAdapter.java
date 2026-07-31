package androidx.camera.camera2.adapter;

import android.app.Application;
import android.content.Context;
import android.hardware.camera2.CameraCaptureSession;
import android.util.ArrayMap;
import android.util.Log;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.MutableTagBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.datastore.core.Api26Impl;
import androidx.datastore.preferences.protobuf.Utf8;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraUseCaseAdapter implements UseCaseConfigFactory {
    public final DisplayInfoManager displayInfoManager;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CaptureCallbackContainer extends CameraCaptureCallback {
        public final CameraCaptureSession.CaptureCallback captureCallback;

        public CaptureCallbackContainer(CameraCaptureSession.CaptureCallback captureCallback) {
            this.captureCallback = captureCallback;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class DefaultCaptureOptionsUnpacker {
        public static final DefaultCaptureOptionsUnpacker INSTANCE = new DefaultCaptureOptionsUnpacker();

        public void unpack(UseCaseConfig useCaseConfig, RawField rawField) {
            useCaseConfig.getClass();
            CaptureConfig defaultCaptureConfig = useCaseConfig.getDefaultCaptureConfig();
            OptionsBundle optionsBundle = OptionsBundle.EMPTY_BUNDLE;
            optionsBundle.getClass();
            AutoValue_Config_Option autoValue_Config_Option = CaptureConfig.OPTION_RESOLVED_FRAME_RATE;
            HashSet hashSet = new HashSet();
            MutableOptionsBundle create = MutableOptionsBundle.create();
            ArrayList arrayList = new ArrayList();
            MutableTagBundle create2 = MutableTagBundle.create();
            ArrayList arrayList2 = new ArrayList(hashSet);
            OptionsBundle from = OptionsBundle.from(create);
            ArrayList arrayList3 = new ArrayList(arrayList);
            TagBundle tagBundle = TagBundle.EMPTY_TAGBUNDLE;
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = create2.mTagMap;
            for (String str : arrayMap2.keySet()) {
                arrayMap.put(str, arrayMap2.get(str));
            }
            int i = -1;
            new CaptureConfig(arrayList2, from, -1, arrayList3, new TagBundle(arrayMap));
            if (defaultCaptureConfig != null) {
                i = defaultCaptureConfig.mTemplateType;
                rawField.addAllCameraCaptureCallbacks(defaultCaptureConfig.mCameraCaptureCallbacks);
                optionsBundle = defaultCaptureConfig.mImplementationOptions;
                ((MutableTagBundle) rawField.nameLowerCase).mTagMap.putAll((Map) defaultCaptureConfig.mTagBundle.mTagMap);
                List unmodifiableList = DesugarCollections.unmodifiableList(defaultCaptureConfig.mSurfaces);
                unmodifiableList.getClass();
                Iterator it = unmodifiableList.iterator();
                while (it.hasNext()) {
                    ((HashSet) rawField.raw).add((DeferrableSurface) it.next());
                }
            }
            rawField.name = MutableOptionsBundle.from((Config) optionsBundle);
            new Camera2ImplConfig(useCaseConfig);
            Object retrieveOption = useCaseConfig.retrieveOption(Camera2ImplConfig.TEMPLATE_TYPE_OPTION, Integer.valueOf(i));
            retrieveOption.getClass();
            rawField.delimiterIdx = ((Number) retrieveOption).intValue();
            CameraCaptureSession.CaptureCallback captureCallback = (CameraCaptureSession.CaptureCallback) useCaseConfig.retrieveOption(Camera2ImplConfig.SESSION_CAPTURE_CALLBACK_OPTION, null);
            if (captureCallback != null) {
                rawField.addCameraCaptureCallback(new CaptureCallbackContainer(captureCallback));
            }
            Preview.Builder builder = new Preview.Builder(2);
            useCaseConfig.findOptions(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(0, builder, useCaseConfig));
            rawField.addImplementationOptions(new BiometricPrompt(OptionsBundle.from(builder.mMutableConfig)));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DefaultSessionOptionsUnpacker {
        public static final DefaultSessionOptionsUnpacker INSTANCE = new DefaultSessionOptionsUnpacker();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImageCaptureOptionUnpacker extends DefaultCaptureOptionsUnpacker {
        public static final ImageCaptureOptionUnpacker INSTANCE = new ImageCaptureOptionUnpacker();

        @Override // androidx.camera.camera2.adapter.CameraUseCaseAdapter.DefaultCaptureOptionsUnpacker
        public final void unpack(UseCaseConfig useCaseConfig, RawField rawField) {
            useCaseConfig.getClass();
            super.unpack(useCaseConfig, rawField);
            if (!(useCaseConfig instanceof ImageCaptureConfig)) {
                UriKt$$ExternalSyntheticBUOutline0.m("config is not ImageCaptureConfig");
                return;
            }
            Preview.Builder builder = new Preview.Builder(1);
            Api26Impl.toggleHDRPlus(builder, (ImageCaptureConfig) useCaseConfig);
            rawField.addImplementationOptions(builder.build());
        }
    }

    public CameraUseCaseAdapter(Context context) {
        context.getClass();
        this.displayInfoManager = DisplayInfoManager.Companion.getInstance(context);
        if ((context instanceof Application) && Utf8.SafeProcessor.isInfoEnabled()) {
            Log.i("CXCP", "The provided context (" + context + ") is application scoped and will be used to infer the default display for computing the default preview size, orientation, and default aspect ratio for UseCase outputs.");
        }
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Created UseCaseConfigurationMap");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b7 A[LOOP:0: B:20:0x00b1->B:22:0x00b7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0163 A[LOOP:1: B:43:0x015d->B:45:0x0163, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0132  */
    @Override // androidx.camera.core.impl.UseCaseConfigFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.Config getConfig(androidx.camera.core.impl.UseCaseConfigFactory.CaptureType r32, int r33) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.CameraUseCaseAdapter.getConfig(androidx.camera.core.impl.UseCaseConfigFactory$CaptureType, int):androidx.camera.core.impl.Config");
    }
}
