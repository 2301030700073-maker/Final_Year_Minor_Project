package com.bumptech.glide;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.ErrorRequestCoordinator;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.AndroidResourceSignature;
import com.bumptech.glide.signature.ApplicationVersionSignature;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Util;
import com.fsck.k9.mailstore.LocalFolder;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RequestBuilder extends BaseRequestOptions {
    public final Context context;
    public RequestBuilder errorBuilder;
    public final GlideContext glideContext;
    public final boolean isDefaultTransitionOptionsSet = true;
    public boolean isModelSet;
    public boolean isThumbnailBuilt;
    public Object model;
    public ArrayList requestListeners;
    public final RequestManager requestManager;
    public RequestBuilder thumbnailBuilder;
    public final Class transcodeClass;
    public GenericTransitionOptions transitionOptions;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.RequestBuilder$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;
        public static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$Priority;

        static {
            int[] iArr = new int[Priority.values().length];
            $SwitchMap$com$bumptech$glide$Priority = iArr;
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$bumptech$glide$Priority[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$bumptech$glide$Priority[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$bumptech$glide$Priority[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            $SwitchMap$android$widget$ImageView$ScaleType = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
    }

    public RequestBuilder(Glide glide, RequestManager requestManager, Class cls, Context context) {
        RequestOptions requestOptions;
        this.requestManager = requestManager;
        this.transcodeClass = cls;
        this.context = context;
        ArrayMap arrayMap = requestManager.glide.glideContext.defaultTransitionOptions;
        GenericTransitionOptions genericTransitionOptions = (GenericTransitionOptions) arrayMap.get(cls);
        if (genericTransitionOptions == null) {
            Iterator it = ((ArrayMap.EntrySet) arrayMap.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    genericTransitionOptions = (GenericTransitionOptions) entry.getValue();
                }
            }
        }
        this.transitionOptions = genericTransitionOptions == null ? GlideContext.DEFAULT_TRANSITION_OPTIONS : genericTransitionOptions;
        this.glideContext = glide.glideContext;
        Iterator it2 = requestManager.defaultRequestListeners.iterator();
        while (it2.hasNext()) {
            addListener((RequestFutureTarget) it2.next());
        }
        synchronized (requestManager) {
            requestOptions = requestManager.requestOptions;
        }
        apply((BaseRequestOptions) requestOptions);
    }

    public RequestBuilder addListener(RequestFutureTarget requestFutureTarget) {
        if (this.isAutoCloneEnabled) {
            return mo925clone().addListener(requestFutureTarget);
        }
        if (requestFutureTarget != null) {
            if (this.requestListeners == null) {
                this.requestListeners = new ArrayList();
            }
            this.requestListeners.add(requestFutureTarget);
        }
        selfOrThrowIfLocked();
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public RequestBuilder apply(BaseRequestOptions baseRequestOptions) {
        Util.checkNotNull(baseRequestOptions);
        return (RequestBuilder) super.apply(baseRequestOptions);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request buildRequestRecursive(Object obj, Target target, RequestFutureTarget requestFutureTarget, RequestCoordinator requestCoordinator, GenericTransitionOptions genericTransitionOptions, Priority priority, int i, int i2, BaseRequestOptions baseRequestOptions, Executor executor) {
        RequestCoordinator requestCoordinator2;
        RequestCoordinator requestCoordinator3;
        BaseRequestOptions baseRequestOptions2;
        SingleRequest singleRequest;
        Priority priority2;
        if (this.errorBuilder != null) {
            requestCoordinator3 = new ErrorRequestCoordinator(obj, requestCoordinator);
            requestCoordinator2 = requestCoordinator3;
        } else {
            requestCoordinator2 = null;
            requestCoordinator3 = requestCoordinator;
        }
        RequestBuilder requestBuilder = this.thumbnailBuilder;
        if (requestBuilder == null) {
            Context context = this.context;
            GlideContext glideContext = this.glideContext;
            baseRequestOptions2 = baseRequestOptions;
            singleRequest = new SingleRequest(context, glideContext, obj, this.model, this.transcodeClass, baseRequestOptions2, i, i2, priority, target, requestFutureTarget, this.requestListeners, requestCoordinator3, glideContext.engine, genericTransitionOptions.transitionFactory, executor);
        } else {
            if (this.isThumbnailBuilt) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
                return null;
            }
            GenericTransitionOptions genericTransitionOptions2 = requestBuilder.isDefaultTransitionOptionsSet ? genericTransitionOptions : requestBuilder.transitionOptions;
            if (BaseRequestOptions.isSet(requestBuilder.fields, 8)) {
                priority2 = this.thumbnailBuilder.priority;
            } else {
                int ordinal = priority.ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    priority2 = Priority.IMMEDIATE;
                } else if (ordinal == 2) {
                    priority2 = Priority.HIGH;
                } else {
                    if (ordinal != 3) {
                        DBUtil$$ExternalSyntheticBUOutline0.m$1(this.priority, "unknown priority: ");
                        return null;
                    }
                    priority2 = Priority.NORMAL;
                }
            }
            Priority priority3 = priority2;
            RequestBuilder requestBuilder2 = this.thumbnailBuilder;
            int i3 = requestBuilder2.overrideWidth;
            int i4 = requestBuilder2.overrideHeight;
            if (Util.isValidDimensions(i, i2)) {
                RequestBuilder requestBuilder3 = this.thumbnailBuilder;
                if (!Util.isValidDimensions(requestBuilder3.overrideWidth, requestBuilder3.overrideHeight)) {
                    i3 = baseRequestOptions.overrideWidth;
                    i4 = baseRequestOptions.overrideHeight;
                }
            }
            int i5 = i4;
            int i6 = i3;
            ThumbnailRequestCoordinator thumbnailRequestCoordinator = new ThumbnailRequestCoordinator(obj, requestCoordinator3);
            Context context2 = this.context;
            GlideContext glideContext2 = this.glideContext;
            SingleRequest singleRequest2 = new SingleRequest(context2, glideContext2, obj, this.model, this.transcodeClass, baseRequestOptions, i, i2, priority, target, requestFutureTarget, this.requestListeners, thumbnailRequestCoordinator, glideContext2.engine, genericTransitionOptions.transitionFactory, executor);
            this.isThumbnailBuilt = true;
            RequestBuilder requestBuilder4 = this.thumbnailBuilder;
            Request buildRequestRecursive = requestBuilder4.buildRequestRecursive(obj, target, requestFutureTarget, thumbnailRequestCoordinator, genericTransitionOptions2, priority3, i6, i5, requestBuilder4, executor);
            this.isThumbnailBuilt = false;
            thumbnailRequestCoordinator.full = singleRequest2;
            thumbnailRequestCoordinator.thumb = buildRequestRecursive;
            baseRequestOptions2 = baseRequestOptions;
            singleRequest = thumbnailRequestCoordinator;
        }
        if (requestCoordinator2 == null) {
            return singleRequest;
        }
        RequestBuilder requestBuilder5 = this.errorBuilder;
        int i7 = requestBuilder5.overrideWidth;
        int i8 = requestBuilder5.overrideHeight;
        if (Util.isValidDimensions(i, i2)) {
            RequestBuilder requestBuilder6 = this.errorBuilder;
            if (!Util.isValidDimensions(requestBuilder6.overrideWidth, requestBuilder6.overrideHeight)) {
                i7 = baseRequestOptions2.overrideWidth;
                i8 = baseRequestOptions2.overrideHeight;
            }
        }
        RequestBuilder requestBuilder7 = this.errorBuilder;
        ErrorRequestCoordinator errorRequestCoordinator = requestCoordinator2;
        Request buildRequestRecursive2 = requestBuilder7.buildRequestRecursive(obj, target, requestFutureTarget, errorRequestCoordinator, requestBuilder7.transitionOptions, requestBuilder7.priority, i7, i8, requestBuilder7, executor);
        errorRequestCoordinator.primary = singleRequest;
        errorRequestCoordinator.error = buildRequestRecursive2;
        return errorRequestCoordinator;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public RequestBuilder mo925clone() {
        RequestBuilder requestBuilder = (RequestBuilder) super.mo925clone();
        requestBuilder.transitionOptions = requestBuilder.transitionOptions.m924clone();
        if (requestBuilder.requestListeners != null) {
            requestBuilder.requestListeners = new ArrayList(requestBuilder.requestListeners);
        }
        RequestBuilder requestBuilder2 = requestBuilder.thumbnailBuilder;
        if (requestBuilder2 != null) {
            requestBuilder.thumbnailBuilder = requestBuilder2.mo925clone();
        }
        RequestBuilder requestBuilder3 = requestBuilder.errorBuilder;
        if (requestBuilder3 != null) {
            requestBuilder.errorBuilder = requestBuilder3.mo925clone();
        }
        return requestBuilder;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final boolean equals(Object obj) {
        if (!(obj instanceof RequestBuilder)) {
            return false;
        }
        RequestBuilder requestBuilder = (RequestBuilder) obj;
        return super.equals(requestBuilder) && Objects.equals(this.transcodeClass, requestBuilder.transcodeClass) && this.transitionOptions.equals(requestBuilder.transitionOptions) && Objects.equals(this.model, requestBuilder.model) && Objects.equals(this.requestListeners, requestBuilder.requestListeners) && Objects.equals(this.thumbnailBuilder, requestBuilder.thumbnailBuilder) && Objects.equals(this.errorBuilder, requestBuilder.errorBuilder) && this.isDefaultTransitionOptionsSet == requestBuilder.isDefaultTransitionOptionsSet && this.isModelSet == requestBuilder.isModelSet;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final int hashCode() {
        return Util.hashCode(this.isModelSet ? 1 : 0, Util.hashCode(this.isDefaultTransitionOptionsSet ? 1 : 0, Util.hashCode(Util.hashCode(Util.hashCode(Util.hashCode(Util.hashCode(Util.hashCode(Util.hashCode(super.hashCode(), this.transcodeClass), this.transitionOptions), this.model), this.requestListeners), this.thumbnailBuilder), this.errorBuilder), (Object) null)));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void into(android.widget.ImageView r4) {
        /*
            r3 = this;
            com.bumptech.glide.util.Util.assertMainThread()
            com.bumptech.glide.util.Util.checkNotNull(r4)
            r0 = 2048(0x800, float:2.87E-42)
            int r1 = r3.fields
            boolean r0 = com.bumptech.glide.request.BaseRequestOptions.isSet(r1, r0)
            if (r0 != 0) goto L4a
            android.widget.ImageView$ScaleType r0 = r4.getScaleType()
            if (r0 == 0) goto L4a
            int[] r0 = com.bumptech.glide.RequestBuilder.AnonymousClass1.$SwitchMap$android$widget$ImageView$ScaleType
            android.widget.ImageView$ScaleType r1 = r4.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L41;
                case 2: goto L38;
                case 3: goto L2f;
                case 4: goto L2f;
                case 5: goto L2f;
                case 6: goto L26;
                default: goto L25;
            }
        L25:
            goto L4a
        L26:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.mo925clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.optionalCenterInside()
            goto L4b
        L2f:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.mo925clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.optionalFitCenter()
            goto L4b
        L38:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.mo925clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.optionalCenterInside()
            goto L4b
        L41:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.mo925clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.optionalCenterCrop()
            goto L4b
        L4a:
            r0 = r3
        L4b:
            com.bumptech.glide.GlideContext r1 = r3.glideContext
            androidx.transition.Transition$1 r1 = r1.imageViewTargetFactory
            r1.getClass()
            java.lang.Class<android.graphics.Bitmap> r1 = android.graphics.Bitmap.class
            java.lang.Class r2 = r3.transcodeClass
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L63
            com.bumptech.glide.request.target.BitmapImageViewTarget r1 = new com.bumptech.glide.request.target.BitmapImageViewTarget
            r2 = 0
            r1.<init>(r4, r2)
            goto L71
        L63:
            java.lang.Class<android.graphics.drawable.Drawable> r1 = android.graphics.drawable.Drawable.class
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L78
            com.bumptech.glide.request.target.BitmapImageViewTarget r1 = new com.bumptech.glide.request.target.BitmapImageViewTarget
            r2 = 1
            r1.<init>(r4, r2)
        L71:
            r4 = 0
            com.bumptech.glide.util.Executors$1 r2 = com.bumptech.glide.util.Util.MAIN_THREAD_EXECUTOR
            r3.into(r1, r4, r0, r2)
            return
        L78:
            java.lang.String r3 = "Unhandled class: "
            java.lang.String r4 = ", try .as*(Class).transcode(ResourceTranscoder)"
            kotlin.text.Regex$$ExternalSyntheticBUOutline0.m$3(r2, r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.RequestBuilder.into(android.widget.ImageView):void");
    }

    public RequestBuilder load(Uri uri) {
        PackageInfo packageInfo;
        RequestBuilder loadGeneric = loadGeneric(uri);
        if (uri == null || !"android.resource".equals(uri.getScheme())) {
            return loadGeneric;
        }
        Context context = this.context;
        RequestBuilder requestBuilder = (RequestBuilder) loadGeneric.theme(context.getTheme());
        ConcurrentHashMap concurrentHashMap = ApplicationVersionSignature.PACKAGE_NAME_TO_KEY;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap2 = ApplicationVersionSignature.PACKAGE_NAME_TO_KEY;
        Key key = (Key) concurrentHashMap2.get(packageName);
        if (key == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
                packageInfo = null;
            }
            ObjectKey objectKey = new ObjectKey(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            Key key2 = (Key) concurrentHashMap2.putIfAbsent(packageName, objectKey);
            key = key2 == null ? objectKey : key2;
        }
        return (RequestBuilder) requestBuilder.signature(new AndroidResourceSignature(context.getResources().getConfiguration().uiMode & 48, key));
    }

    public final RequestBuilder loadGeneric(Object obj) {
        if (this.isAutoCloneEnabled) {
            return mo925clone().loadGeneric(obj);
        }
        this.model = obj;
        this.isModelSet = true;
        selfOrThrowIfLocked();
        return this;
    }

    public final void into(Target target, RequestFutureTarget requestFutureTarget, BaseRequestOptions baseRequestOptions, Executor executor) {
        Util.checkNotNull(target);
        if (this.isModelSet) {
            Request buildRequestRecursive = buildRequestRecursive(new Object(), target, requestFutureTarget, null, this.transitionOptions, baseRequestOptions.priority, baseRequestOptions.overrideWidth, baseRequestOptions.overrideHeight, baseRequestOptions, executor);
            Request request = target.getRequest();
            if (buildRequestRecursive.isEquivalentTo(request) && (baseRequestOptions.isCacheable || !request.isComplete())) {
                Util.checkNotNull(request, "Argument must not be null");
                if (request.isRunning()) {
                    return;
                }
                request.begin();
                return;
            }
            this.requestManager.clear(target);
            target.setRequest(buildRequestRecursive);
            RequestManager requestManager = this.requestManager;
            synchronized (requestManager) {
                requestManager.targetTracker.targets.add(target);
                LocalFolder.AnonymousClass12 anonymousClass12 = requestManager.requestTracker;
                ((Set) anonymousClass12.val$flags).add(buildRequestRecursive);
                if (!anonymousClass12.val$value) {
                    buildRequestRecursive.begin();
                } else {
                    buildRequestRecursive.clear();
                    if (Log.isLoggable("RequestTracker", 2)) {
                        Log.v("RequestTracker", "Paused, delaying request");
                    }
                    ((HashSet) anonymousClass12.val$messages).add(buildRequestRecursive);
                }
            }
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("You must call #load() before calling #into()");
    }

    public RequestBuilder load(Object obj) {
        return loadGeneric(obj);
    }

    public RequestBuilder load(File file) {
        return loadGeneric(file);
    }
}
