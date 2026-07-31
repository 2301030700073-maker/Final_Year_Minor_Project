package com.hcaptcha.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AndroidRuntimeException;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptchaConfig;
import com.hcaptcha.sdk.tasks.OnFailureListener;
import com.hcaptcha.sdk.tasks.OnOpenListener;
import com.hcaptcha.sdk.tasks.OnSuccessListener;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.MultipartBody;
import org.maplibre.android.annotations.Marker;
import org.maplibre.android.maps.IconManager;
import org.maplibre.android.maps.MapView;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptcha {
    public final Object activity;
    public Object captchaVerifier;
    public Object hCaptchaException;
    public Object handler;
    public final Object internalConfig;
    public final Object onFailureListeners;
    public final Object onOpenListeners;
    public final Object onSuccessListeners;
    public Object result;

    public HCaptcha(ActivityGalleryBinding activityGalleryBinding, NameResolver nameResolver, DeclarationDescriptor declarationDescriptor, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, VersionRequirementTable versionRequirementTable, BinaryVersion binaryVersion, DeserializedContainerSource deserializedContainerSource, GsonBuilder gsonBuilder, List list) {
        nameResolver.getClass();
        declarationDescriptor.getClass();
        versionRequirementTable.getClass();
        binaryVersion.getClass();
        list.getClass();
        this.result = activityGalleryBinding;
        this.hCaptchaException = nameResolver;
        this.onSuccessListeners = declarationDescriptor;
        this.onFailureListeners = dispatcher$promoteAndExecute$Effects;
        this.onOpenListeners = versionRequirementTable;
        this.handler = binaryVersion;
        this.activity = deserializedContainerSource;
        this.captchaVerifier = new GsonBuilder(this, gsonBuilder, list, "Deserializer for \"" + declarationDescriptor.getName() + '\"', deserializedContainerSource != null ? deserializedContainerSource.getPresentableString() : "[container not found]");
        this.internalConfig = new MemberDeserializer(this);
    }

    public HCaptcha childContext(DeclarationDescriptor declarationDescriptor, List list, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, VersionRequirementTable versionRequirementTable, BinaryVersion binaryVersion) {
        list.getClass();
        nameResolver.getClass();
        versionRequirementTable.getClass();
        binaryVersion.getClass();
        ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) this.result;
        int i = binaryVersion.major;
        if ((i != 1 || binaryVersion.minor < 4) && i <= 1) {
            versionRequirementTable = (VersionRequirementTable) this.onOpenListeners;
        }
        return new HCaptcha(activityGalleryBinding, nameResolver, declarationDescriptor, dispatcher$promoteAndExecute$Effects, versionRequirementTable, binaryVersion, (DeserializedContainerSource) this.activity, (GsonBuilder) this.captchaVerifier, list);
    }

    public void deselectMarkers() {
        ArrayList arrayList = (ArrayList) this.onOpenListeners;
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Marker marker = (Marker) it.next();
            if (marker != null && marker.infoWindowShown) {
                throw null;
            }
        }
        arrayList.clear();
    }

    public void setup(HCaptchaConfig hCaptchaConfig) {
        HCaptchaInternalConfig hCaptchaInternalConfig = (HCaptchaInternalConfig) this.internalConfig;
        BaseActivity baseActivity = (BaseActivity) this.activity;
        hCaptchaConfig.getDiagnosticLog().getClass();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(hCaptchaConfig);
        try {
            if (!Boolean.TRUE.equals(hCaptchaConfig.getHideDialog())) {
                if (!Animation.CC.m23m((Object) baseActivity)) {
                    throw new IllegalStateException("Visual hCaptcha challenge verification requires FragmentActivity.");
                }
                this.captchaVerifier = HCaptchaDialogFragment.newInstance(baseActivity, hCaptchaConfig, hCaptchaInternalConfig, anonymousClass1);
            } else {
                HCaptchaConfig.HCaptchaConfigBuilder builder = hCaptchaConfig.toBuilder();
                builder.size$value = HCaptchaSize.INVISIBLE;
                builder.size$set = true;
                builder.loading$value = Boolean.FALSE;
                builder.loading$set = true;
                this.captchaVerifier = new HCaptchaHeadlessWebView(baseActivity, builder.build(), hCaptchaInternalConfig, anonymousClass1);
            }
        } catch (AndroidRuntimeException unused) {
            anonymousClass1.onFailure(new HCaptchaException(HCaptchaError.ERROR, null));
        }
    }

    public void tryCb() {
        boolean z = false;
        if (((Symbol) this.result) != null) {
            Iterator it = ((CopyOnWriteArrayList) this.onSuccessListeners).iterator();
            while (it.hasNext()) {
                ((OnSuccessListener) it.next()).onSuccess((Symbol) this.result);
                z = true;
            }
        }
        if (((HCaptchaException) this.hCaptchaException) != null) {
            Iterator it2 = ((CopyOnWriteArrayList) this.onFailureListeners).iterator();
            while (it2.hasNext()) {
                ((OnFailureListener) it2.next()).onFailure((HCaptchaException) this.hCaptchaException);
                z = true;
            }
        }
        if (z) {
            this.result = null;
            this.hCaptchaException = null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.hcaptcha.sdk.HCaptcha$1, reason: invalid class name */
    public final class AnonymousClass1 implements Parcelable {
        public final /* synthetic */ HCaptchaConfig val$inputConfig;

        public AnonymousClass1(HCaptchaConfig hCaptchaConfig) {
            this.val$inputConfig = hCaptchaConfig;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final void onFailure(HCaptchaException hCaptchaException) {
            HCaptcha hCaptcha = HCaptcha.this;
            hCaptcha.hCaptchaException = hCaptchaException;
            hCaptcha.tryCb();
        }

        public final void onOpen() {
            Iterator it = ((CopyOnWriteArrayList) HCaptcha.this.onOpenListeners).iterator();
            while (it.hasNext()) {
                ((OnOpenListener) it.next()).onOpen();
            }
        }

        public final void onSuccess(String str) {
            long tokenExpiration = this.val$inputConfig.getTokenExpiration();
            HCaptcha hCaptcha = HCaptcha.this;
            ((Handler) hCaptcha.handler).postDelayed(new Task$$ExternalSyntheticLambda0(0, hCaptcha), TimeUnit.SECONDS.toMillis(tokenExpiration));
            hCaptcha.result = new Symbol(7, str);
            hCaptcha.tryCb();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
        }
    }

    public HCaptcha(WikiSwipeRefreshLayout wikiSwipeRefreshLayout, LinearLayout linearLayout, TextView textView, WikiErrorView wikiErrorView, ProgressBar progressBar, RecyclerView recyclerView, WikiSwipeRefreshLayout wikiSwipeRefreshLayout2, LinearLayout linearLayout2, TextView textView2) {
        this.result = wikiSwipeRefreshLayout;
        this.hCaptchaException = linearLayout;
        this.onSuccessListeners = textView;
        this.onFailureListeners = wikiErrorView;
        this.onOpenListeners = progressBar;
        this.handler = recyclerView;
        this.activity = wikiSwipeRefreshLayout2;
        this.captchaVerifier = linearLayout2;
        this.internalConfig = textView2;
    }

    public HCaptcha(MapView mapView, LongSparseArray longSparseArray, IconManager iconManager, IconManager iconManager2, MultipartBody.Builder builder, MapView.AnonymousClass2 anonymousClass2) {
        this.onSuccessListeners = new IconManager();
        this.onOpenListeners = new ArrayList();
        this.result = mapView;
        this.onFailureListeners = longSparseArray;
        this.hCaptchaException = iconManager;
        this.activity = iconManager2;
        this.internalConfig = builder;
        this.captchaVerifier = anonymousClass2;
    }

    public HCaptcha(BaseActivity baseActivity, HCaptchaInternalConfig hCaptchaInternalConfig) {
        this.handler = new Handler(Looper.getMainLooper());
        this.onSuccessListeners = new CopyOnWriteArrayList();
        this.onFailureListeners = new CopyOnWriteArrayList();
        this.onOpenListeners = new CopyOnWriteArrayList();
        this.result = null;
        this.hCaptchaException = null;
        this.activity = baseActivity;
        this.internalConfig = hCaptchaInternalConfig;
    }
}
