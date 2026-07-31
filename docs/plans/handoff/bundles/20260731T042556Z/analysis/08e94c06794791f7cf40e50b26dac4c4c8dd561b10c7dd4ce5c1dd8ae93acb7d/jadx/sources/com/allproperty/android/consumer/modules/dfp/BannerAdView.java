package com.allproperty.android.consumer.modules.dfp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.events.RCTEventEmitter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BannerAdView.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0007J\u0010\u0010\u001b\u001a\u00020\u00162\b\u0010\u001c\u001a\u0004\u0018\u00010\u0011J\b\u0010\u001d\u001a\u00020\u0016H\u0002J\b\u0010\u001e\u001a\u00020\u0016H\u0002J\b\u0010\u001f\u001a\u00020 H\u0002J\u0018\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\u0016H\u0014J\u0018\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0007H\u0014J0\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0007H\u0014R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "bannerAdView", "Lcom/google/android/gms/ads/admanager/AdManagerAdView;", "adUnitId", "", "adWidth", "adHeight", "customTargeting", "Lcom/facebook/react/bridge/ReadableMap;", "isLoading", "", "hasAllProps", "setAdUnitID", "", "setAdWidth", "width", "setAdHeight", "height", "setTargeting", "targeting", "checkAndLoadAd", "loadAdIfReady", "createAdListener", "Lcom/google/android/gms/ads/AdListener;", "sendEvent", "eventName", "params", "Lcom/facebook/react/bridge/WritableMap;", "onDetachedFromWindow", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onLayout", "changed", "left", "top", "right", ViewProps.BOTTOM, "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BannerAdView extends FrameLayout {
    private int adHeight;
    private String adUnitId;
    private int adWidth;
    private AdManagerAdView bannerAdView;
    private ReadableMap customTargeting;
    private boolean hasAllProps;
    private boolean isLoading;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAdView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BannerAdView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.adWidth = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this.adHeight = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
    }

    public final void setAdUnitID(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        this.adUnitId = adUnitId;
        checkAndLoadAd();
    }

    public final void setAdWidth(int width) {
        this.adWidth = width;
        requestLayout();
        checkAndLoadAd();
    }

    public final void setAdHeight(int height) {
        this.adHeight = height;
        requestLayout();
        checkAndLoadAd();
    }

    public final void setTargeting(ReadableMap targeting) {
        this.customTargeting = targeting;
        this.hasAllProps = true;
        checkAndLoadAd();
    }

    private final void checkAndLoadAd() {
        String str;
        if (!this.hasAllProps || (str = this.adUnitId) == null || str.length() == 0) {
            return;
        }
        loadAdIfReady();
    }

    private final void loadAdIfReady() {
        String str = this.adUnitId;
        String str2 = str;
        if (str2 == null || str2.length() == 0 || this.isLoading) {
            return;
        }
        this.isLoading = true;
        AdManagerAdView adManagerAdView = this.bannerAdView;
        if (adManagerAdView != null) {
            removeView(adManagerAdView);
            adManagerAdView.destroy();
        }
        AdManagerAdView adManagerAdView2 = new AdManagerAdView(getContext());
        adManagerAdView2.setAdUnitId(str);
        adManagerAdView2.setAdSize(new AdSize(this.adWidth, this.adHeight));
        adManagerAdView2.setAdListener(createAdListener());
        this.bannerAdView = adManagerAdView2;
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        ReadableMap readableMap = this.customTargeting;
        if (readableMap != null) {
            ReadableMapKeySetIterator keySetIterator = readableMap.keySetIterator();
            while (keySetIterator.hasNextKey()) {
                String nextKey = keySetIterator.nextKey();
                String string = readableMap.getString(nextKey);
                if (string != null) {
                    builder.addCustomTargeting(nextKey, string);
                }
            }
        }
        AdManagerAdView adManagerAdView3 = this.bannerAdView;
        if (adManagerAdView3 != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            addView(adManagerAdView3, layoutParams);
        }
        AdManagerAdView adManagerAdView4 = this.bannerAdView;
        if (adManagerAdView4 != null) {
            adManagerAdView4.loadAd(builder.build());
        }
    }

    private final AdListener createAdListener() {
        return new AdListener() { // from class: com.allproperty.android.consumer.modules.dfp.BannerAdView$createAdListener$1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                AdManagerAdView adManagerAdView;
                int i;
                int i2;
                int i3;
                int i4;
                super.onAdLoaded();
                BannerAdView.this.isLoading = false;
                adManagerAdView = BannerAdView.this.bannerAdView;
                if (adManagerAdView != null) {
                    BannerAdView bannerAdView = BannerAdView.this;
                    float f = bannerAdView.getContext().getResources().getDisplayMetrics().density;
                    i3 = bannerAdView.adWidth;
                    int i5 = (int) (i3 * f);
                    i4 = bannerAdView.adHeight;
                    int i6 = (int) (i4 * f);
                    adManagerAdView.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
                    adManagerAdView.layout(0, 0, i5, i6);
                }
                BannerAdView bannerAdView2 = BannerAdView.this;
                WritableMap createMap = Arguments.createMap();
                BannerAdView bannerAdView3 = BannerAdView.this;
                i = bannerAdView3.adWidth;
                createMap.putInt("width", i);
                i2 = bannerAdView3.adHeight;
                createMap.putInt("height", i2);
                Unit unit = Unit.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(createMap, "apply(...)");
                bannerAdView2.sendEvent("onAdLoaded", createMap);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(LoadAdError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                super.onAdFailedToLoad(error);
                BannerAdView.this.isLoading = false;
                BannerAdView bannerAdView = BannerAdView.this;
                WritableMap createMap = Arguments.createMap();
                createMap.putString("error", error.getMessage());
                Unit unit = Unit.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(createMap, "apply(...)");
                bannerAdView.sendEvent("onAdFailedToLoad", createMap);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClicked() {
                super.onAdClicked();
                BannerAdView bannerAdView = BannerAdView.this;
                WritableMap createMap = Arguments.createMap();
                Intrinsics.checkNotNullExpressionValue(createMap, "createMap(...)");
                bannerAdView.sendEvent("onAdClicked", createMap);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendEvent(String eventName, WritableMap params) {
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext");
        ((RCTEventEmitter) ((ReactContext) context).getJSModule(RCTEventEmitter.class)).receiveEvent(getId(), eventName, params);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AdManagerAdView adManagerAdView = this.bannerAdView;
        if (adManagerAdView != null) {
            adManagerAdView.destroy();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        float f = getContext().getResources().getDisplayMetrics().density;
        setMeasuredDimension(FrameLayout.resolveSize((int) (this.adWidth * f), widthMeasureSpec), FrameLayout.resolveSize((int) (this.adHeight * f), heightMeasureSpec));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }
}
