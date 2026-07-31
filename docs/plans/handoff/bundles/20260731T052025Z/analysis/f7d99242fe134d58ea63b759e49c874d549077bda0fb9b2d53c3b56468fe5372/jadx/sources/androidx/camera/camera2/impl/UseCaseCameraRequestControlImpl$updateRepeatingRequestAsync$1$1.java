package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.ArrayMap;
import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.MutableTagBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.TagBundle;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Data;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferredImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1 extends SuspendLambda implements Function1 {
    public final /* synthetic */ boolean $isPrimary;
    public final /* synthetic */ LinkedHashSet $runningUseCases;
    public int label;
    public final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(LinkedHashSet linkedHashSet, boolean z, UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Continuation continuation) {
        super(1, continuation);
        this.$runningUseCases = linkedHashSet;
        this.$isPrimary = z;
        this.this$0 = useCaseCameraRequestControlImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(this.$runningUseCases, this.$isPrimary, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        LinkedHashMap linkedHashMap = useCaseCameraRequestControlImpl.infoBundleMap;
        int i = this.label;
        int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "UseCaseCameraRequestControlImpl: Building SessionConfig...");
        }
        SessionConfigAdapter sessionConfigAdapter = new SessionConfigAdapter(this.$runningUseCases, this.$isPrimary);
        SessionConfig sessionConfig = ((SessionConfig.ValidatingBuilder) sessionConfigAdapter.validatingBuilder$delegate.getValue()).isValid() ? (SessionConfig) sessionConfigAdapter.sessionConfig$delegate.getValue() : null;
        if (sessionConfig == null) {
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", "Using default SessionConfig");
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            HashSet hashSet = new HashSet();
            MutableOptionsBundle create = MutableOptionsBundle.create();
            ArrayList arrayList = new ArrayList();
            ArrayMap arrayMap = MutableTagBundle.create().mTagMap;
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList(linkedHashSet);
            ArrayList arrayList6 = new ArrayList(arrayList2);
            ArrayList arrayList7 = new ArrayList(arrayList3);
            ArrayList arrayList8 = new ArrayList(arrayList4);
            ArrayList arrayList9 = new ArrayList(hashSet);
            OptionsBundle from = OptionsBundle.from(create);
            ArrayList arrayList10 = new ArrayList(arrayList);
            TagBundle tagBundle = TagBundle.EMPTY_TAGBUNDLE;
            ArrayMap arrayMap2 = new ArrayMap();
            for (String str : arrayMap.keySet()) {
                arrayMap2.put(str, arrayMap.get(str));
                arrayList7 = arrayList7;
            }
            i2 = 1;
            sessionConfig = new SessionConfig(arrayList5, arrayList6, arrayList7, arrayList8, new CaptureConfig(arrayList9, from, 1, arrayList10, new TagBundle(arrayMap2)), null, null, 0, null);
        }
        CaptureConfig captureConfig = sessionConfig.mRepeatingCaptureConfig;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "UseCaseCameraRequestControlImpl: SessionConfig built. Updating state...");
        }
        CompletableDeferredImpl completableDeferredImpl = UseCaseCameraRequestControlImpl.submitFailedResult;
        UseCaseThreads$$ExternalSyntheticLambda0 useCaseThreads$$ExternalSyntheticLambda0 = useCaseCameraRequestControlImpl.threads.sequentialExecutor;
        Preview.Builder builder = new Preview.Builder(1);
        if (!captureConfig.getExpectedFrameRateRange().equals(AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            CaptureRequest.Key key = CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE;
            key.getClass();
            builder.mMutableConfig.insertOption(Data.Companion.createCaptureRequestOption(key), captureConfig.getExpectedFrameRateRange());
        }
        builder.insertAllOptions(captureConfig.mImplementationOptions);
        TagBundle tagBundle2 = captureConfig.mTagBundle;
        tagBundle2.getClass();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayMap arrayMap3 = tagBundle2.mTagMap;
        Set<String> keySet = arrayMap3.keySet();
        keySet.getClass();
        for (String str2 : keySet) {
            Object obj2 = arrayMap3.get(str2);
            obj2.getClass();
            linkedHashMap2.put(str2, obj2);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap2);
        useCaseThreads$$ExternalSyntheticLambda0.getClass();
        List list = captureConfig.mCameraCaptureCallbacks;
        list.getClass();
        CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cameraCallbackMap.addCaptureCallback((CameraCaptureCallback) it.next(), useCaseThreads$$ExternalSyntheticLambda0);
        }
        linkedHashMap.put(UseCaseCameraRequestControl.Type.SESSION_CONFIG, new UseCaseCameraRequestControlImpl.InfoBundle(builder, linkedHashMap3, Validate.mutableSetOf(cameraCallbackMap), new RequestTemplate(captureConfig.mTemplateType)));
        UseCaseGraphContext useCaseGraphContext = useCaseCameraRequestControlImpl.useCaseGraphContext;
        List unmodifiableList = DesugarCollections.unmodifiableList(captureConfig.mSurfaces);
        unmodifiableList.getClass();
        LinkedHashSet streamIdsFromSurfaces = useCaseGraphContext.getStreamIdsFromSurfaces(unmodifiableList);
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "UseCaseCameraRequestControlImpl: State update processing.");
        }
        UseCaseCameraRequestControlImpl.InfoBundle merge = UseCaseCameraRequestControlImpl.merge(linkedHashMap);
        this.label = i2;
        Object updateCameraStateAsync = useCaseCameraRequestControlImpl.updateCameraStateAsync(merge, streamIdsFromSurfaces, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return updateCameraStateAsync == coroutineSingletons ? coroutineSingletons : updateCameraStateAsync;
    }
}
