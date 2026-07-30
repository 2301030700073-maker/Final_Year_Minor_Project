package com.amazonaws.mobileconnectors.amazonmobileanalytics;

import android.content.Context;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.CognitoCachingCredentialsProvider;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.http.RequestTimingHandler;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.SDKInfo;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.FileSessionStore;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.DefaultSessionClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.validate.EncodingValidator;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.validate.FileManagerValidator;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.validate.PermissionValidator;
import com.amazonaws.services.mobileanalytics.AmazonMobileAnalyticsClient;
import com.amazonaws.util.VersionInfoUtils;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MobileAnalyticsManager {

    /* renamed from: do, reason: not valid java name */
    public static final SDKInfo f8793do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final EncodingValidator f8794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final FileManagerValidator f8795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final PermissionValidator f8796do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String f8797do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashMap<String, MobileAnalyticsManager> f8798do;

    /* renamed from: if, reason: not valid java name */
    public static final PermissionValidator f8799if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DefaultEventClient f8800do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DefaultSessionClient f8801do;

    static {
        String str = VersionInfoUtils.f9082do;
        f8797do = "2.2.15";
        f8793do = new SDKInfo("AmazonMobileAnalyticsSDK", "2.2.15");
        f8796do = new PermissionValidator("android.permission.INTERNET");
        f8799if = new PermissionValidator("android.permission.ACCESS_NETWORK_STATE");
        f8798do = new HashMap<>();
        f8794do = new EncodingValidator();
        f8795do = new FileManagerValidator();
    }

    public MobileAnalyticsManager(Context context, CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider, AnalyticsConfig analyticsConfig) {
        try {
            if (context == null) {
                throw new NullPointerException("The application context provided must not be null");
            }
            AmazonMobileAnalyticsClient amazonMobileAnalyticsClient = new AmazonMobileAnalyticsClient(cognitoCachingCredentialsProvider, analyticsConfig.f8790do);
            f8796do.m5116do(context);
            f8799if.m5116do(context);
            f8794do.getClass();
            try {
                "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".getBytes("UTF-8");
                DefaultAnalyticsContext defaultAnalyticsContext = new DefaultAnalyticsContext(amazonMobileAnalyticsClient, context, f8793do, analyticsConfig.f8792if);
                f8795do.getClass();
                FileManagerValidator.m5115do(defaultAnalyticsContext);
                DefaultEventClient defaultEventClient = new DefaultEventClient(defaultAnalyticsContext, analyticsConfig.f8791do);
                this.f8800do = defaultEventClient;
                DefaultSessionClient defaultSessionClient = new DefaultSessionClient(defaultAnalyticsContext, defaultEventClient, new FileSessionStore(defaultAnalyticsContext));
                this.f8801do = defaultSessionClient;
                ((AmazonWebServiceClient) defaultAnalyticsContext.f8808do).f8666do.add(new RequestTimingHandler(defaultAnalyticsContext.f8805do.f8834do, defaultEventClient));
                synchronized (defaultSessionClient) {
                    defaultSessionClient.f8947do.mo5111try();
                }
                String.format("Amazon Mobile Analytics SDK(%s) initialization successfully completed", f8797do);
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException("UTF-8 encoding is not supported", e);
            }
        } catch (RuntimeException e2) {
            throw new InitializationException(e2.getLocalizedMessage());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static MobileAnalyticsManager m5067do(Context context) {
        MobileAnalyticsManager mobileAnalyticsManager;
        CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider = new CognitoCachingCredentialsProvider(context);
        HashMap<String, MobileAnalyticsManager> hashMap = f8798do;
        synchronized (hashMap) {
            if (!hashMap.containsKey("0de7788050864972a25d2d9c40c503e0")) {
                hashMap.put("0de7788050864972a25d2d9c40c503e0", new MobileAnalyticsManager(context, cognitoCachingCredentialsProvider, new AnalyticsConfig()));
            }
            mobileAnalyticsManager = hashMap.get("0de7788050864972a25d2d9c40c503e0");
        }
        return mobileAnalyticsManager;
    }
}
