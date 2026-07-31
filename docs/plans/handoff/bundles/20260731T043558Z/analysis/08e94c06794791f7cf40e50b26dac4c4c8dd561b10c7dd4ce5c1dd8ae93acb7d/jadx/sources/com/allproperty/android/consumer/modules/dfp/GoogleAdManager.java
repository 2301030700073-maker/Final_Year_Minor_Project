package com.allproperty.android.consumer.modules.dfp;

import android.app.Activity;
import com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GoogleAdManager.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016J*\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0018\u0010\u001a\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000fH\u0007J\u0014\u0010\u001c\u001a\u00020\u001d*\u00020\u000b2\u0006\u0010\f\u001a\u00020\nH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/allproperty/android/consumer/modules/dfp/GoogleAdManager;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "context", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "getContext", "()Lcom/facebook/react/bridge/ReactApplicationContext;", "customFormatAdList", "", "", "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;", "index", "Ljava/util/concurrent/atomic/AtomicInteger;", "getName", "", "getConstants", "", "loadMastheadImage", "", "adUnitId", "templateId", "customTargeting", "Lcom/facebook/react/bridge/ReadableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "performClick", SDKConstants.PARAM_KEY, "toMap", "Lcom/facebook/react/bridge/WritableMap;", "Companion", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class GoogleAdManager extends ReactContextBaseJavaModule {
    private static final String INDEX = "index";
    private static final String REACT_CLASS = "GoogleAdManager";
    private final ReactApplicationContext context;
    private final Map<Integer, CustomFormatAd> customFormatAdList;
    private final AtomicInteger index;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleAdManager(ReactApplicationContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.customFormatAdList = new LinkedHashMap();
        this.index = new AtomicInteger(0);
    }

    public final ReactApplicationContext getContext() {
        return this.context;
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.bridge.BaseJavaModule
    public Map<String, String> getConstants() {
        return MapsKt.mapOf(TuplesKt.to("logo", "CTALogo"), TuplesKt.to("description", "Description"), TuplesKt.to(SDKConstants.PARAM_GAME_REQUESTS_CTA, "CalltoAction"), TuplesKt.to("headline", "Headline"), TuplesKt.to("image", "Image"), TuplesKt.to("index", "index"));
    }

    @ReactMethod
    public final void loadMastheadImage(String adUnitId, String templateId, ReadableMap customTargeting, final Promise promise) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        Intrinsics.checkNotNullParameter(promise, "promise");
        DfpCustomFormatAdLoader dfpCustomFormatAdLoader = new DfpCustomFormatAdLoader(this.context, adUnitId, templateId, customTargeting);
        dfpCustomFormatAdLoader.setCallback(new CustomFormatAdLoader.Callback() { // from class: com.allproperty.android.consumer.modules.dfp.GoogleAdManager$loadMastheadImage$1
            @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader.Callback
            public void onAdLoaded(CustomFormatAd ad) {
                AtomicInteger atomicInteger;
                Map map;
                WritableMap map2;
                Intrinsics.checkNotNullParameter(ad, "ad");
                atomicInteger = GoogleAdManager.this.index;
                int andIncrement = atomicInteger.getAndIncrement();
                Integer valueOf = Integer.valueOf(andIncrement);
                map = GoogleAdManager.this.customFormatAdList;
                map.put(valueOf, ad);
                Promise promise2 = promise;
                map2 = GoogleAdManager.this.toMap(ad, andIncrement);
                promise2.resolve(map2);
            }

            @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader.Callback
            public void onAdFailedToLoad() {
                promise.resolve(null);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:11:0x005d, code lost:
            
                if (r2.length() != 0) goto L29;
             */
            /* JADX WARN: Code restructure failed: missing block: B:12:0x0060, code lost:
            
                r0 = r5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:13:0x006c, code lost:
            
                r4 = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
            
                r4 = r4.getText("MastheadShowcaseURL");
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x0066, code lost:
            
                if (r4 == null) goto L33;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
            
                r0 = r4.toString();
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
            
                r5 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x0023, code lost:
            
                if (r5.equals("Image") == false) goto L34;
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
            
                r4 = r4.getText("MastheadShowcaseURL");
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x002c, code lost:
            
                if (r5.equals("Description") == false) goto L34;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x0035, code lost:
            
                if (r5.equals("Headline") == false) goto L34;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x0043, code lost:
            
                if (r5.equals("CalltoAction") != false) goto L20;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x0070, code lost:
            
                r4 = "";
             */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
            
                if (r5.equals("CTALogo") == false) goto L34;
             */
            /* JADX WARN: Code restructure failed: missing block: B:5:0x0045, code lost:
            
                r5 = r4.getText("CTAURL");
                r0 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:6:0x004c, code lost:
            
                if (r5 == null) goto L23;
             */
            /* JADX WARN: Code restructure failed: missing block: B:7:0x004e, code lost:
            
                r5 = r5.toString();
             */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0054, code lost:
            
                r2 = r5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:9:0x0057, code lost:
            
                if (r2 == null) goto L30;
             */
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
            java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
            	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
            	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
            	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
             */
            @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onAdClicked(com.allproperty.android.consumer.modules.dfp.CustomFormatAd r4, java.lang.String r5) {
                /*
                    r3 = this;
                    java.lang.String r0 = "ad"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                    java.lang.String r0 = "key"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                    int r0 = r5.hashCode()
                    java.lang.String r1 = "MastheadShowcaseURL"
                    switch(r0) {
                        case -2140077809: goto L3d;
                        case -1050414604: goto L2f;
                        case -56677412: goto L26;
                        case 70760763: goto L1d;
                        case 1800456123: goto L14;
                        default: goto L13;
                    }
                L13:
                    goto L70
                L14:
                    java.lang.String r0 = "CTALogo"
                    boolean r5 = r5.equals(r0)
                    if (r5 != 0) goto L45
                    goto L70
                L1d:
                    java.lang.String r0 = "Image"
                    boolean r5 = r5.equals(r0)
                    if (r5 != 0) goto L38
                    goto L70
                L26:
                    java.lang.String r0 = "Description"
                    boolean r5 = r5.equals(r0)
                    if (r5 != 0) goto L45
                    goto L70
                L2f:
                    java.lang.String r0 = "Headline"
                    boolean r5 = r5.equals(r0)
                    if (r5 != 0) goto L38
                    goto L70
                L38:
                    java.lang.CharSequence r4 = r4.getText(r1)
                    goto L74
                L3d:
                    java.lang.String r0 = "CalltoAction"
                    boolean r5 = r5.equals(r0)
                    if (r5 == 0) goto L70
                L45:
                    java.lang.String r5 = "CTAURL"
                    java.lang.CharSequence r5 = r4.getText(r5)
                    r0 = 0
                    if (r5 == 0) goto L53
                    java.lang.String r5 = r5.toString()
                    goto L54
                L53:
                    r5 = r0
                L54:
                    r2 = r5
                    java.lang.CharSequence r2 = (java.lang.CharSequence) r2
                    if (r2 == 0) goto L62
                    int r2 = r2.length()
                    if (r2 != 0) goto L60
                    goto L62
                L60:
                    r0 = r5
                    goto L6c
                L62:
                    java.lang.CharSequence r4 = r4.getText(r1)
                    if (r4 == 0) goto L6c
                    java.lang.String r0 = r4.toString()
                L6c:
                    r4 = r0
                    java.lang.CharSequence r4 = (java.lang.CharSequence) r4
                    goto L74
                L70:
                    java.lang.String r4 = ""
                    java.lang.CharSequence r4 = (java.lang.CharSequence) r4
                L74:
                    com.allproperty.android.consumer.modules.EventEmitter$Companion r5 = com.allproperty.android.consumer.modules.EventEmitter.Companion
                    com.allproperty.android.consumer.modules.EventEmitter r5 = r5.getInstance()
                    if (r5 == 0) goto L85
                    java.lang.String r0 = "masthead"
                    java.lang.String r4 = java.lang.String.valueOf(r4)
                    r5.sendNativeEvent(r0, r4)
                L85:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.allproperty.android.consumer.modules.dfp.GoogleAdManager$loadMastheadImage$1.onAdClicked(com.allproperty.android.consumer.modules.dfp.CustomFormatAd, java.lang.String):void");
            }
        });
        dfpCustomFormatAdLoader.loadAd();
    }

    @ReactMethod
    public final void performClick(final int index, final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Activity currentActivity = getCurrentActivity();
        if (currentActivity != null) {
            currentActivity.runOnUiThread(new Runnable() { // from class: com.allproperty.android.consumer.modules.dfp.GoogleAdManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    GoogleAdManager.performClick$lambda$0(GoogleAdManager.this, index, key);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void performClick$lambda$0(GoogleAdManager googleAdManager, int i, String str) {
        CustomFormatAd customFormatAd = googleAdManager.customFormatAdList.get(Integer.valueOf(i));
        if (customFormatAd != null) {
            customFormatAd.performClick(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WritableMap toMap(CustomFormatAd customFormatAd, int i) {
        WritableMap createMap = Arguments.createMap();
        createMap.putString("MastheadImage", customFormatAd.getImage("MastheadImage"));
        createMap.putString("CTALogo", customFormatAd.getImage("CTALogo"));
        createMap.putString("Description", String.valueOf(customFormatAd.getText("Description")));
        createMap.putString("CalltoAction", String.valueOf(customFormatAd.getText("CalltoAction")));
        createMap.putString("Image", customFormatAd.getImage("Image"));
        createMap.putString("Headline", String.valueOf(customFormatAd.getText("Headline")));
        createMap.putInt("index", i);
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }
}
