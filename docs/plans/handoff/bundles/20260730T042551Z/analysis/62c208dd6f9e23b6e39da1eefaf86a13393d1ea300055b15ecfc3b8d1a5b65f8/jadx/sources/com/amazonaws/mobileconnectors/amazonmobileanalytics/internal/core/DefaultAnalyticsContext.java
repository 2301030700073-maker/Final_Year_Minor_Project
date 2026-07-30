package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.configuration.PreferencesConfiguration;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.http.SDKInfoHandler;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver.Id;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver.SharedPrefsUniqueIdService;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidPreferences;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidSystem;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.SDKInfo;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.DefaultDeliveryClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.ERSRequestBuilder;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.FileEventStore;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.delivery.policy.DefaultDeliveryPolicyFactory;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.adapter.JSONEventAdapter;
import com.amazonaws.regions.Region;
import com.amazonaws.services.mobileanalytics.AmazonMobileAnalyticsClient;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class DefaultAnalyticsContext implements AnalyticsContext {

    /* renamed from: do, reason: not valid java name */
    public final Context f8802do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PreferencesConfiguration f8803do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Id f8804do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AndroidSystem f8805do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SDKInfo f8806do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DefaultDeliveryClient f8807do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AmazonMobileAnalyticsClient f8808do;

    public DefaultAnalyticsContext(AmazonMobileAnalyticsClient amazonMobileAnalyticsClient, Context context, SDKInfo sDKInfo, boolean z) {
        Id id;
        this.f8806do = sDKInfo;
        AndroidSystem androidSystem = new AndroidSystem(context);
        this.f8805do = androidSystem;
        SharedPrefsUniqueIdService sharedPrefsUniqueIdService = new SharedPrefsUniqueIdService(context);
        Id id2 = Id.f8816do;
        AndroidPreferences androidPreferences = androidSystem.f8836do;
        if (androidPreferences == null) {
            Id.m5070do();
        } else {
            synchronized (Id.class) {
            }
            Id m5071do = sharedPrefsUniqueIdService.m5071do();
            Id.m5070do();
            if (m5071do != id2) {
                id = sharedPrefsUniqueIdService.m5071do();
            } else {
                String string = androidPreferences.f8832do.getString("UniqueId", null);
                id = string != null ? new Id(string) : id2;
            }
            Id.m5070do();
            if (id == id2) {
                String uuid = UUID.randomUUID().toString();
                id2 = new Id(uuid);
                try {
                    SharedPreferences.Editor edit = androidSystem.f8836do.f8832do.edit();
                    edit.putString("UniqueId", uuid);
                    edit.commit();
                } catch (Exception unused) {
                }
            } else {
                id2 = id;
            }
        }
        this.f8804do = id2;
        ((AmazonWebServiceClient) amazonMobileAnalyticsClient).f8664do = "mobileanalytics";
        amazonMobileAnalyticsClient.m4959else(Region.m5118for());
        this.f8808do = amazonMobileAnalyticsClient;
        ((AmazonWebServiceClient) amazonMobileAnalyticsClient).f8666do.add(new SDKInfoHandler(sDKInfo));
        this.f8803do = new PreferencesConfiguration(this);
        String str = DefaultDeliveryClient.f8843do;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f8807do = new DefaultDeliveryClient(this, new DefaultDeliveryPolicyFactory(this, z), new ThreadPoolExecutor(1, 1, 0L, timeUnit, new LinkedBlockingQueue(1000), new ThreadPoolExecutor.DiscardPolicy()), new ThreadPoolExecutor(1, 1, 0L, timeUnit, new LinkedBlockingQueue(100), new ThreadPoolExecutor.DiscardPolicy()), new ERSRequestBuilder(), new FileEventStore(this), new JSONEventAdapter());
        this.f8802do = context;
    }
}
