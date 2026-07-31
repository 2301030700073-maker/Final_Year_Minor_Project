package com.braze.managers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.GeofenceTransitionType;
import com.braze.location.IBrazeGeofenceApi;
import com.braze.location.IBrazeLocationApi;
import com.braze.managers.BrazeGeofenceManager;
import com.braze.models.BrazeGeofence;
import com.braze.models.IBrazeLocation;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.PermissionUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018\u0000 ~2\u00020\u00012\u00020\u0002:\u0001~B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010!\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0007¢\u0006\u0004\b!\u0010\"J\u0019\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u001e\u001a\u00020\u0005H\u0007¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u001fH\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00112\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010+\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u0014H\u0016¢\u0006\u0004\b+\u0010\u0019J\u0017\u00100\u001a\u00020\u00112\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u001d\u00104\u001a\u00020\u00112\f\u00103\u001a\b\u0012\u0004\u0012\u00020#02H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0011H\u0016¢\u0006\u0004\b6\u0010\u0013J\u0019\u00107\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b7\u0010,J\u000f\u00108\u001a\u00020\u0011H\u0007¢\u0006\u0004\b8\u0010\u0013J%\u00109\u001a\u00020\u00112\f\u00103\u001a\b\u0012\u0004\u0012\u00020#022\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b9\u0010:R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010>R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010?R \u0010A\u001a\u00020@8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bA\u0010B\u0012\u0004\bE\u0010\u0013\u001a\u0004\bC\u0010DR \u0010G\u001a\u00020F8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bG\u0010H\u0012\u0004\bK\u0010\u0013\u001a\u0004\bI\u0010JR\u001c\u0010M\u001a\n L*\u0004\u0018\u00010\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0014\u0010P\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR \u0010S\u001a\u00020R8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bS\u0010T\u0012\u0004\bW\u0010\u0013\u001a\u0004\bU\u0010VR&\u0010Y\u001a\b\u0012\u0004\u0012\u00020#0X8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bY\u0010Z\u0012\u0004\b]\u0010\u0013\u001a\u0004\b[\u0010\\R\"\u0010^\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b^\u0010_\u0012\u0004\bb\u0010\u0013\u001a\u0004\b`\u0010aR(\u0010d\u001a\u00020c8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bd\u0010e\u0012\u0004\bj\u0010\u0013\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR*\u0010k\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bk\u0010l\u0012\u0004\bp\u0010\u0013\u001a\u0004\bm\u0010n\"\u0004\bo\u0010,R(\u0010q\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bq\u0010r\u0012\u0004\bu\u0010\u0013\u001a\u0004\bq\u0010s\"\u0004\bt\u0010\u0019R(\u0010w\u001a\u00020v8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bw\u0010x\u0012\u0004\b}\u0010\u0013\u001a\u0004\by\u0010z\"\u0004\b{\u0010|¨\u0006\u007f"}, d2 = {"Lcom/braze/managers/BrazeGeofenceManager;", "", "Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;", "Landroid/content/Context;", "context", "", "apiKey", "Lcom/braze/managers/c0;", "brazeManager", "Lcom/braze/configuration/BrazeConfigurationProvider;", "configurationProvider", "Lcom/braze/storage/e0;", "serverConfigStorageProvider", "Lcom/braze/events/e;", "internalIEventMessenger", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/braze/managers/c0;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/storage/e0;Lcom/braze/events/e;)V", "", "initializeGeofences", "()V", "", "isGeofencesEnabledFromEnvironment", "(Landroid/content/Context;)Z", "reRegisterGeofences", "setUpGeofences", "(Z)V", "Landroid/app/PendingIntent;", "geofenceRequestIntent", "tearDownGeofences", "(Landroid/app/PendingIntent;)V", "geofenceId", "Lcom/braze/enums/GeofenceTransitionType;", "geofenceTransitionType", "analyticsEnabledForGeofenceId", "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)Z", "Lcom/braze/models/BrazeGeofence;", "getBrazeGeofenceForGeofenceId", "(Ljava/lang/String;)Lcom/braze/models/BrazeGeofence;", "transitionType", "postGeofenceReport", "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V", "Lcom/braze/models/IBrazeLocation;", FirebaseAnalytics.Param.LOCATION, "requestGeofenceRefresh", "(Lcom/braze/models/IBrazeLocation;)V", "ignoreRateLimit", "Lcom/braze/models/response/m;", "serverConfig", "configureFromServerConfig", "(Lcom/braze/models/response/m;)V", "", "geofenceList", "registerGeofences", "(Ljava/util/List;)V", "unregisterGeofences", "onLocationRequestComplete", "requestSingleLocationUpdateFromGooglePlay", "registerGeofencesWithGooglePlay", "(Ljava/util/List;Landroid/app/PendingIntent;)V", "Lcom/braze/managers/c0;", "getBrazeManager", "()Lcom/braze/managers/c0;", "Lcom/braze/configuration/BrazeConfigurationProvider;", "Lcom/braze/storage/e0;", "Lcom/braze/location/a;", "brazeGeofenceApi", "Lcom/braze/location/a;", "getBrazeGeofenceApi", "()Lcom/braze/location/a;", "getBrazeGeofenceApi$annotations", "Lcom/braze/location/b;", "brazeLocationApi", "Lcom/braze/location/b;", "getBrazeLocationApi", "()Lcom/braze/location/b;", "getBrazeLocationApi$annotations", "kotlin.jvm.PlatformType", "applicationContext", "Landroid/content/Context;", "Ljava/util/concurrent/locks/ReentrantLock;", "geofenceListLock", "Ljava/util/concurrent/locks/ReentrantLock;", "Landroid/content/SharedPreferences;", "geofenceStorageSharedPreferences", "Landroid/content/SharedPreferences;", "getGeofenceStorageSharedPreferences", "()Landroid/content/SharedPreferences;", "getGeofenceStorageSharedPreferences$annotations", "", "brazeGeofences", "Ljava/util/List;", "getBrazeGeofences", "()Ljava/util/List;", "getBrazeGeofences$annotations", "geofenceTransitionPendingIntent", "Landroid/app/PendingIntent;", "getGeofenceTransitionPendingIntent", "()Landroid/app/PendingIntent;", "getGeofenceTransitionPendingIntent$annotations", "Lcom/braze/managers/i;", "brazeGeofenceReEligibilityManager", "Lcom/braze/managers/i;", "getBrazeGeofenceReEligibilityManager", "()Lcom/braze/managers/i;", "setBrazeGeofenceReEligibilityManager", "(Lcom/braze/managers/i;)V", "getBrazeGeofenceReEligibilityManager$annotations", "geofenceRequestLocation", "Lcom/braze/models/IBrazeLocation;", "getGeofenceRequestLocation", "()Lcom/braze/models/IBrazeLocation;", "setGeofenceRequestLocation", "getGeofenceRequestLocation$annotations", "isGeofencesEnabled", "Z", "()Z", "setGeofencesEnabled", "isGeofencesEnabled$annotations", "", "maxNumToRegister", "I", "getMaxNumToRegister", "()I", "setMaxNumToRegister", "(I)V", "getMaxNumToRegister$annotations", "Companion", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BrazeGeofenceManager implements IBrazeGeofenceLocationUpdateListener {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String GEOFENCE_STORAGE_SHARED_PREFS_LOCATION = "com.appboy.managers.geofences.storage";
    private final Context applicationContext;
    private final com.braze.location.a brazeGeofenceApi;
    private i brazeGeofenceReEligibilityManager;
    private final List<BrazeGeofence> brazeGeofences;
    private final com.braze.location.b brazeLocationApi;
    private final c0 brazeManager;
    private final BrazeConfigurationProvider configurationProvider;
    private final ReentrantLock geofenceListLock;
    private IBrazeLocation geofenceRequestLocation;
    private final SharedPreferences geofenceStorageSharedPreferences;
    private final PendingIntent geofenceTransitionPendingIntent;
    private boolean isGeofencesEnabled;
    private int maxNumToRegister;
    private final com.braze.storage.e0 serverConfigStorageProvider;

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/braze/managers/BrazeGeofenceManager$Companion;", "", "<init>", "()V", "", "apiKey", "getGeofenceSharedPreferencesName", "(Ljava/lang/String;)Ljava/lang/String;", "Lcom/braze/configuration/BrazeConfigurationProvider;", "configurationProvider", "", "getGeofencesEnabledFromConfiguration", "(Lcom/braze/configuration/BrazeConfigurationProvider;)Z", "Lcom/braze/storage/e0;", "serverConfigStorageProvider", "getGeofencesEnabledFromServerConfig", "(Lcom/braze/storage/e0;)Z", "", "getMaxNumToRegister", "(Lcom/braze/storage/e0;)I", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "Lcom/braze/models/BrazeGeofence;", "retrieveBrazeGeofencesFromLocalStorage", "(Landroid/content/SharedPreferences;)Ljava/util/List;", "GEOFENCE_STORAGE_SHARED_PREFS_LOCATION", "Ljava/lang/String;", "android-sdk-base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getGeofencesEnabledFromServerConfig$lambda$0() {
            return "Geofences enabled in server configuration.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getGeofencesEnabledFromServerConfig$lambda$1() {
            return "Geofences explicitly disabled via server configuration.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String getGeofencesEnabledFromServerConfig$lambda$2() {
            return "Geofences implicitly disabled via server configuration.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$3() {
            return "Did not find stored geofences.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$4() {
            return "Failed to find stored geofence keys.";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$5(String str) {
            return com.braze.a.a("Received null or blank serialized geofence string for geofence id ", str, " from shared preferences. Not parsing.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$6(String str) {
            return com.braze.i.a("Encountered Json exception while parsing stored geofence: ", str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String retrieveBrazeGeofencesFromLocalStorage$lambda$7(String str) {
            return com.braze.i.a("Encountered unexpected exception while parsing stored geofence: ", str);
        }

        @JvmStatic
        public final String getGeofenceSharedPreferencesName(String apiKey) {
            Intrinsics.checkNotNullParameter(apiKey, "apiKey");
            return "com.appboy.managers.geofences.storage." + apiKey;
        }

        @JvmStatic
        public final boolean getGeofencesEnabledFromConfiguration(BrazeConfigurationProvider configurationProvider) {
            Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
            return configurationProvider.isGeofencesEnabled();
        }

        @JvmStatic
        public final boolean getGeofencesEnabledFromServerConfig(com.braze.storage.e0 serverConfigStorageProvider) {
            Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
            if (!serverConfigStorageProvider.I()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String geofencesEnabledFromServerConfig$lambda$2;
                        geofencesEnabledFromServerConfig$lambda$2 = BrazeGeofenceManager.Companion.getGeofencesEnabledFromServerConfig$lambda$2();
                        return geofencesEnabledFromServerConfig$lambda$2;
                    }
                }, 6, (Object) null);
                return false;
            }
            if (serverConfigStorageProvider.H()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String geofencesEnabledFromServerConfig$lambda$0;
                        geofencesEnabledFromServerConfig$lambda$0 = BrazeGeofenceManager.Companion.getGeofencesEnabledFromServerConfig$lambda$0();
                        return geofencesEnabledFromServerConfig$lambda$0;
                    }
                }, 6, (Object) null);
                return true;
            }
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String geofencesEnabledFromServerConfig$lambda$1;
                    geofencesEnabledFromServerConfig$lambda$1 = BrazeGeofenceManager.Companion.getGeofencesEnabledFromServerConfig$lambda$1();
                    return geofencesEnabledFromServerConfig$lambda$1;
                }
            }, 6, (Object) null);
            return false;
        }

        @JvmStatic
        public final int getMaxNumToRegister(com.braze.storage.e0 serverConfigStorageProvider) {
            Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
            if (serverConfigStorageProvider.q() > 0) {
                return serverConfigStorageProvider.q();
            }
            return 20;
        }

        @JvmStatic
        public final List<BrazeGeofence> retrieveBrazeGeofencesFromLocalStorage(SharedPreferences sharedPreferences) {
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
            ArrayList arrayList = new ArrayList();
            Map<String, ?> all = sharedPreferences.getAll();
            if (all == null || all.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String retrieveBrazeGeofencesFromLocalStorage$lambda$3;
                        retrieveBrazeGeofencesFromLocalStorage$lambda$3 = BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$3();
                        return retrieveBrazeGeofencesFromLocalStorage$lambda$3;
                    }
                }, 7, (Object) null);
                return arrayList;
            }
            Set<String> keySet = all.keySet();
            if (keySet.isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String retrieveBrazeGeofencesFromLocalStorage$lambda$4;
                        retrieveBrazeGeofencesFromLocalStorage$lambda$4 = BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$4();
                        return retrieveBrazeGeofencesFromLocalStorage$lambda$4;
                    }
                }, 6, (Object) null);
                return arrayList;
            }
            for (final String str : keySet) {
                final String string = sharedPreferences.getString(str, null);
                if (string != null) {
                    try {
                    } catch (JSONException e) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                String retrieveBrazeGeofencesFromLocalStorage$lambda$6;
                                retrieveBrazeGeofencesFromLocalStorage$lambda$6 = BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$6(string);
                                return retrieveBrazeGeofencesFromLocalStorage$lambda$6;
                            }
                        }, 4, (Object) null);
                        Unit unit = Unit.INSTANCE;
                    } catch (Exception e2) {
                        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e2, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                String retrieveBrazeGeofencesFromLocalStorage$lambda$7;
                                retrieveBrazeGeofencesFromLocalStorage$lambda$7 = BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$7(string);
                                return retrieveBrazeGeofencesFromLocalStorage$lambda$7;
                            }
                        }, 4, (Object) null);
                        Unit unit2 = Unit.INSTANCE;
                    }
                    if (!StringsKt.isBlank(string)) {
                        arrayList.add(new BrazeGeofence(new JSONObject(string)));
                    }
                }
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String retrieveBrazeGeofencesFromLocalStorage$lambda$5;
                        retrieveBrazeGeofencesFromLocalStorage$lambda$5 = BrazeGeofenceManager.Companion.retrieveBrazeGeofencesFromLocalStorage$lambda$5(str);
                        return retrieveBrazeGeofencesFromLocalStorage$lambda$5;
                    }
                }, 6, (Object) null);
            }
            return arrayList;
        }

        private Companion() {
        }
    }

    public BrazeGeofenceManager(Context context, String apiKey, c0 brazeManager, BrazeConfigurationProvider configurationProvider, com.braze.storage.e0 serverConfigStorageProvider, com.braze.events.e internalIEventMessenger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(serverConfigStorageProvider, "serverConfigStorageProvider");
        Intrinsics.checkNotNullParameter(internalIEventMessenger, "internalIEventMessenger");
        this.brazeManager = brazeManager;
        this.configurationProvider = configurationProvider;
        this.serverConfigStorageProvider = serverConfigStorageProvider;
        com.braze.location.a aVar = new com.braze.location.a();
        this.brazeGeofenceApi = aVar;
        this.brazeLocationApi = new com.braze.location.b(context, k.d.a(configurationProvider), configurationProvider);
        this.applicationContext = context.getApplicationContext();
        this.geofenceListLock = new ReentrantLock();
        Companion companion = INSTANCE;
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences(companion.getGeofenceSharedPreferencesName(apiKey), 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.geofenceStorageSharedPreferences = sharedPreferences;
        this.brazeGeofences = CollectionsKt.toMutableList((Collection) companion.retrieveBrazeGeofencesFromLocalStorage(sharedPreferences));
        Intrinsics.checkNotNullParameter(context, "context");
        IBrazeGeofenceApi iBrazeGeofenceApi = aVar.f97a;
        this.geofenceTransitionPendingIntent = iBrazeGeofenceApi != null ? iBrazeGeofenceApi.getGeofenceTransitionPendingIntent(context) : null;
        this.brazeGeofenceReEligibilityManager = new i(context, apiKey, serverConfigStorageProvider, internalIEventMessenger);
        if (companion.getGeofencesEnabledFromServerConfig(serverConfigStorageProvider) && isGeofencesEnabledFromEnvironment(context) && aVar.f97a != null) {
            z = true;
        }
        this.isGeofencesEnabled = z;
        this.maxNumToRegister = companion.getMaxNumToRegister(serverConfigStorageProvider);
        if (aVar.f97a == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String _init_$lambda$0;
                    _init_$lambda$0 = BrazeGeofenceManager._init_$lambda$0();
                    return _init_$lambda$0;
                }
            }, 6, (Object) null);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String _init_$lambda$1;
                _init_$lambda$1 = BrazeGeofenceManager._init_$lambda$1();
                return _init_$lambda$1;
            }
        }, 6, (Object) null);
        setUpGeofences(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$0() {
        return "***Geofence API not found. Please include the android-sdk-location module***";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String _init_$lambda$1() {
        return "Calling setUpGeofences on geofence manager init";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$27(boolean z) {
        return "Geofences enabled server config value " + z + " received.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$28(BrazeGeofenceManager brazeGeofenceManager) {
        return "Geofences enabled status newly set to " + brazeGeofenceManager.isGeofencesEnabled + " during server config update.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$29(boolean z) {
        return "Geofences enabled status of `" + z + "` was unchanged during server config update.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String configureFromServerConfig$lambda$30(BrazeGeofenceManager brazeGeofenceManager) {
        return "Max number to register newly set to " + brazeGeofenceManager.maxNumToRegister + " via server config.";
    }

    public static /* synthetic */ void getBrazeGeofenceApi$annotations() {
    }

    public static /* synthetic */ void getBrazeGeofenceReEligibilityManager$annotations() {
    }

    public static /* synthetic */ void getBrazeGeofences$annotations() {
    }

    public static /* synthetic */ void getBrazeLocationApi$annotations() {
    }

    public static /* synthetic */ void getGeofenceRequestLocation$annotations() {
    }

    @JvmStatic
    public static final String getGeofenceSharedPreferencesName(String str) {
        return INSTANCE.getGeofenceSharedPreferencesName(str);
    }

    public static /* synthetic */ void getGeofenceStorageSharedPreferences$annotations() {
    }

    public static /* synthetic */ void getGeofenceTransitionPendingIntent$annotations() {
    }

    @JvmStatic
    public static final boolean getGeofencesEnabledFromConfiguration(BrazeConfigurationProvider brazeConfigurationProvider) {
        return INSTANCE.getGeofencesEnabledFromConfiguration(brazeConfigurationProvider);
    }

    @JvmStatic
    public static final boolean getGeofencesEnabledFromServerConfig(com.braze.storage.e0 e0Var) {
        return INSTANCE.getGeofencesEnabledFromServerConfig(e0Var);
    }

    @JvmStatic
    public static final int getMaxNumToRegister(com.braze.storage.e0 e0Var) {
        return INSTANCE.getMaxNumToRegister(e0Var);
    }

    public static /* synthetic */ void getMaxNumToRegister$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String initializeGeofences$lambda$2() {
        return "Request to set up geofences received.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String initializeGeofences$lambda$3() {
        return "Not automatically requesting Geofences on initialization due to configuration.";
    }

    public static /* synthetic */ void isGeofencesEnabled$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$10() {
        return "Location permissions granted and Google Play Services available. Braze Geofencing enabled via config.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$4() {
        return "Braze Geofences disabled or Braze location collection disabled in local configuration. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$5() {
        return "Fine grained location permissions not found. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$6() {
        return "Background location access permission not found. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$7() {
        return "Google Play Services not available. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$8() {
        return "Braze Geofence API is not available";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String isGeofencesEnabledFromEnvironment$lambda$9() {
        return "Google Play Services Location API not found. Geofences not enabled.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onLocationRequestComplete$lambda$40(IBrazeLocation iBrazeLocation) {
        return "Single location request was successful, requesting Geofence refresh. Location:\n " + iBrazeLocation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onLocationRequestComplete$lambda$41() {
        return "Single location request was unsuccessful, not storing last updated time.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String postGeofenceReport$lambda$22() {
        return "Braze geofences not enabled. Not posting geofence report.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String postGeofenceReport$lambda$23(String str, GeofenceTransitionType geofenceTransitionType) {
        return "Failed to record geofence " + str + " transition with transition type " + geofenceTransitionType + '.';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$31() {
        return "Braze geofences not enabled. Not adding new geofences to local storage.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$33(List list) {
        return "Received new geofence list of size: " + list.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$34(BrazeGeofenceManager brazeGeofenceManager) {
        return "Reached maximum number of new geofences: " + brazeGeofenceManager.maxNumToRegister;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$35(BrazeGeofence brazeGeofence) {
        return "Adding new geofence to local storage: " + brazeGeofence;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String registerGeofences$lambda$37$lambda$36(BrazeGeofenceManager brazeGeofenceManager) {
        return "Added " + brazeGeofenceManager.brazeGeofences.size() + " new geofences to local storage.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$24() {
        return "Braze geofences not enabled. Not requesting geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String requestGeofenceRefresh$lambda$26() {
        return "Braze geofences not enabled. Not requesting geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit requestSingleLocationUpdateFromGooglePlay$lambda$42(BrazeGeofenceManager brazeGeofenceManager, IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        brazeGeofenceManager.onLocationRequestComplete(location);
        return Unit.INSTANCE;
    }

    @JvmStatic
    public static final List<BrazeGeofence> retrieveBrazeGeofencesFromLocalStorage(SharedPreferences sharedPreferences) {
        return INSTANCE.retrieveBrazeGeofencesFromLocalStorage(sharedPreferences);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setUpGeofences$lambda$11() {
        return "Braze geofences not enabled. Geofences not set up.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setUpGeofences$lambda$12(boolean z) {
        return "Setting up geofences in setUpGeofences with reRegisterGeofences: " + z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setUpGeofences$lambda$13() {
        return "Could not get pending intent to setup geofences";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String tearDownGeofences$lambda$15() {
        return "Tearing down geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String tearDownGeofences$lambda$16() {
        return "Unregistering any Braze geofences from Google Play Services.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String tearDownGeofences$lambda$18$lambda$17() {
        return "Deleting locally stored geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterGeofences$lambda$38() {
        return "Braze geofences not enabled. Not un-registering geofences.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unregisterGeofences$lambda$39() {
        return "Tearing down all geofences.";
    }

    public final boolean analyticsEnabledForGeofenceId(String geofenceId, GeofenceTransitionType geofenceTransitionType) {
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        Intrinsics.checkNotNullParameter(geofenceTransitionType, "geofenceTransitionType");
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            BrazeGeofence brazeGeofenceForGeofenceId = getBrazeGeofenceForGeofenceId(geofenceId);
            if (brazeGeofenceForGeofenceId != null) {
                if (geofenceTransitionType == GeofenceTransitionType.ENTER) {
                    return brazeGeofenceForGeofenceId.getAnalyticsEnabledEnter();
                }
                if (geofenceTransitionType == GeofenceTransitionType.EXIT) {
                    return brazeGeofenceForGeofenceId.getAnalyticsEnabledExit();
                }
            }
            reentrantLock.unlock();
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void configureFromServerConfig(com.braze.models.response.m r13) {
        /*
            r12 = this;
            java.lang.String r0 = "serverConfig"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            boolean r0 = r13.i
            com.braze.support.BrazeLogger r9 = com.braze.support.BrazeLogger.INSTANCE
            com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda1 r6 = new com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda1
            r6.<init>()
            r7 = 7
            r8 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r1 = r9
            r2 = r12
            com.braze.support.BrazeLogger.brazelog$default(r1, r2, r3, r4, r5, r6, r7, r8)
            r10 = 1
            r11 = 0
            if (r0 == 0) goto L32
            android.content.Context r0 = r12.applicationContext
            java.lang.String r1 = "applicationContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            boolean r0 = r12.isGeofencesEnabledFromEnvironment(r0)
            if (r0 == 0) goto L32
            com.braze.location.a r0 = r12.brazeGeofenceApi
            com.braze.location.IBrazeGeofenceApi r0 = r0.f97a
            if (r0 == 0) goto L32
            r0 = r10
            goto L33
        L32:
            r0 = r11
        L33:
            boolean r1 = r12.isGeofencesEnabled
            if (r0 == r1) goto L62
            r12.isGeofencesEnabled = r0
            com.braze.support.BrazeLogger$Priority r3 = com.braze.support.BrazeLogger.Priority.I
            com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda2 r6 = new com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda2
            r6.<init>()
            r7 = 6
            r8 = 0
            r4 = 0
            r5 = 0
            r1 = r9
            r2 = r12
            com.braze.support.BrazeLogger.brazelog$default(r1, r2, r3, r4, r5, r6, r7, r8)
            boolean r0 = r12.isGeofencesEnabled
            if (r0 == 0) goto L5c
            r12.setUpGeofences(r11)
            com.braze.configuration.BrazeConfigurationProvider r0 = r12.configurationProvider
            boolean r0 = r0.isAutomaticGeofenceRequestsEnabled()
            if (r0 == 0) goto L71
            r12.requestGeofenceRefresh(r10)
            goto L71
        L5c:
            android.app.PendingIntent r0 = r12.geofenceTransitionPendingIntent
            r12.tearDownGeofences(r0)
            goto L71
        L62:
            com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda3 r6 = new com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda3
            r6.<init>()
            r7 = 7
            r8 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r1 = r9
            r2 = r12
            com.braze.support.BrazeLogger.brazelog$default(r1, r2, r3, r4, r5, r6, r7, r8)
        L71:
            int r0 = r13.g
            if (r0 < 0) goto L87
            r12.maxNumToRegister = r0
            com.braze.support.BrazeLogger$Priority r3 = com.braze.support.BrazeLogger.Priority.I
            com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda4 r6 = new com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda4
            r6.<init>()
            r7 = 6
            r8 = 0
            r4 = 0
            r5 = 0
            r1 = r9
            r2 = r12
            com.braze.support.BrazeLogger.brazelog$default(r1, r2, r3, r4, r5, r6, r7, r8)
        L87:
            com.braze.managers.i r0 = r12.brazeGeofenceReEligibilityManager
            r0.a(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.managers.BrazeGeofenceManager.configureFromServerConfig(com.braze.models.response.m):void");
    }

    public final com.braze.location.a getBrazeGeofenceApi() {
        return this.brazeGeofenceApi;
    }

    public final BrazeGeofence getBrazeGeofenceForGeofenceId(String geofenceId) {
        Object obj;
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            Iterator<T> it = this.brazeGeofences.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((BrazeGeofence) obj).getId(), geofenceId)) {
                    break;
                }
            }
            return (BrazeGeofence) obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final i getBrazeGeofenceReEligibilityManager() {
        return this.brazeGeofenceReEligibilityManager;
    }

    public final List<BrazeGeofence> getBrazeGeofences() {
        return this.brazeGeofences;
    }

    public final com.braze.location.b getBrazeLocationApi() {
        return this.brazeLocationApi;
    }

    public final c0 getBrazeManager() {
        return this.brazeManager;
    }

    public final IBrazeLocation getGeofenceRequestLocation() {
        return this.geofenceRequestLocation;
    }

    public final SharedPreferences getGeofenceStorageSharedPreferences() {
        return this.geofenceStorageSharedPreferences;
    }

    public final PendingIntent getGeofenceTransitionPendingIntent() {
        return this.geofenceTransitionPendingIntent;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initializeGeofences() {
        /*
            r9 = this;
            com.braze.support.BrazeLogger r8 = com.braze.support.BrazeLogger.INSTANCE
            com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda33 r5 = new com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda33
            r5.<init>()
            r6 = 7
            r7 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r0 = r8
            r1 = r9
            com.braze.support.BrazeLogger.brazelog$default(r0, r1, r2, r3, r4, r5, r6, r7)
            com.braze.managers.BrazeGeofenceManager$Companion r0 = com.braze.managers.BrazeGeofenceManager.INSTANCE
            com.braze.storage.e0 r1 = r9.serverConfigStorageProvider
            boolean r0 = r0.getGeofencesEnabledFromServerConfig(r1)
            r1 = 1
            if (r0 == 0) goto L31
            android.content.Context r0 = r9.applicationContext
            java.lang.String r2 = "applicationContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            boolean r0 = r9.isGeofencesEnabledFromEnvironment(r0)
            if (r0 == 0) goto L31
            com.braze.location.a r0 = r9.brazeGeofenceApi
            com.braze.location.IBrazeGeofenceApi r0 = r0.f97a
            if (r0 == 0) goto L31
            r0 = r1
            goto L32
        L31:
            r0 = 0
        L32:
            r9.isGeofencesEnabled = r0
            com.braze.configuration.BrazeConfigurationProvider r0 = r9.configurationProvider
            boolean r0 = r0.isAutomaticGeofenceRequestsEnabled()
            if (r0 == 0) goto L40
            r9.requestGeofenceRefresh(r1)
            goto L4f
        L40:
            com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda34 r5 = new com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda34
            r5.<init>()
            r6 = 7
            r7 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r0 = r8
            r1 = r9
            com.braze.support.BrazeLogger.brazelog$default(r0, r1, r2, r3, r4, r5, r6, r7)
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.managers.BrazeGeofenceManager.initializeGeofences():void");
    }

    /* renamed from: isGeofencesEnabled, reason: from getter */
    public final boolean getIsGeofencesEnabled() {
        return this.isGeofencesEnabled;
    }

    public final boolean isGeofencesEnabledFromEnvironment(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!INSTANCE.getGeofencesEnabledFromConfiguration(this.configurationProvider)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$4;
                    isGeofencesEnabledFromEnvironment$lambda$4 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$4();
                    return isGeofencesEnabledFromEnvironment$lambda$4;
                }
            }, 7, (Object) null);
            return false;
        }
        if (!PermissionUtils.hasPermission(context, "android.permission.ACCESS_FINE_LOCATION")) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$5;
                    isGeofencesEnabledFromEnvironment$lambda$5 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$5();
                    return isGeofencesEnabledFromEnvironment$lambda$5;
                }
            }, 6, (Object) null);
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29 && !PermissionUtils.hasPermission(context, "android.permission.ACCESS_BACKGROUND_LOCATION")) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$6;
                    isGeofencesEnabledFromEnvironment$lambda$6 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$6();
                    return isGeofencesEnabledFromEnvironment$lambda$6;
                }
            }, 6, (Object) null);
            return false;
        }
        if (!com.braze.support.k.a(context)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$7;
                    isGeofencesEnabledFromEnvironment$lambda$7 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$7();
                    return isGeofencesEnabledFromEnvironment$lambda$7;
                }
            }, 7, (Object) null);
            return false;
        }
        if (this.brazeGeofenceApi.f97a == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$8;
                    isGeofencesEnabledFromEnvironment$lambda$8 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$8();
                    return isGeofencesEnabledFromEnvironment$lambda$8;
                }
            }, 7, (Object) null);
            return false;
        }
        try {
            Class.forName("com.google.android.gms.location.LocationServices", false, BrazeGeofenceManager.class.getClassLoader());
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$10;
                    isGeofencesEnabledFromEnvironment$lambda$10 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$10();
                    return isGeofencesEnabledFromEnvironment$lambda$10;
                }
            }, 7, (Object) null);
            return true;
        } catch (Exception unused) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String isGeofencesEnabledFromEnvironment$lambda$9;
                    isGeofencesEnabledFromEnvironment$lambda$9 = BrazeGeofenceManager.isGeofencesEnabledFromEnvironment$lambda$9();
                    return isGeofencesEnabledFromEnvironment$lambda$9;
                }
            }, 7, (Object) null);
            return false;
        }
    }

    @Override // com.braze.managers.IBrazeGeofenceLocationUpdateListener
    public void onLocationRequestComplete(final IBrazeLocation location) {
        if (location == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda21
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String onLocationRequestComplete$lambda$41;
                    onLocationRequestComplete$lambda$41 = BrazeGeofenceManager.onLocationRequestComplete$lambda$41();
                    return onLocationRequestComplete$lambda$41;
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String onLocationRequestComplete$lambda$40;
                onLocationRequestComplete$lambda$40 = BrazeGeofenceManager.onLocationRequestComplete$lambda$40(IBrazeLocation.this);
                return onLocationRequestComplete$lambda$40;
            }
        }, 7, (Object) null);
        requestGeofenceRefresh(location);
        this.brazeGeofenceReEligibilityManager.b(DateTimeUtils.nowInSeconds());
    }

    public void postGeofenceReport(final String geofenceId, final GeofenceTransitionType transitionType) {
        Intrinsics.checkNotNullParameter(geofenceId, "geofenceId");
        Intrinsics.checkNotNullParameter(transitionType, "transitionType");
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda30
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String postGeofenceReport$lambda$22;
                    postGeofenceReport$lambda$22 = BrazeGeofenceManager.postGeofenceReport$lambda$22();
                    return postGeofenceReport$lambda$22;
                }
            }, 6, (Object) null);
            return;
        }
        com.braze.models.outgoing.event.a aVar = com.braze.models.outgoing.event.b.g;
        String obj = transitionType.toString();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = obj.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        com.braze.models.i g = aVar.g(geofenceId, lowerCase);
        if (g == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda31
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String postGeofenceReport$lambda$23;
                    postGeofenceReport$lambda$23 = BrazeGeofenceManager.postGeofenceReport$lambda$23(geofenceId, transitionType);
                    return postGeofenceReport$lambda$23;
                }
            }, 6, (Object) null);
            return;
        }
        if (analyticsEnabledForGeofenceId(geofenceId, transitionType)) {
            ((m) this.brazeManager).a(g);
        }
        BrazeGeofence brazeGeofenceForGeofenceId = getBrazeGeofenceForGeofenceId(geofenceId);
        if (brazeGeofenceForGeofenceId != null && this.brazeGeofenceReEligibilityManager.a(DateTimeUtils.nowInSeconds(), brazeGeofenceForGeofenceId, transitionType)) {
            ((m) this.brazeManager).g(g);
        }
    }

    public void registerGeofences(List<BrazeGeofence> geofenceList) {
        BrazeGeofenceManager brazeGeofenceManager = this;
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        final List<BrazeGeofence> mutableList = CollectionsKt.toMutableList((Collection) geofenceList);
        if (!brazeGeofenceManager.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String registerGeofences$lambda$31;
                    registerGeofences$lambda$31 = BrazeGeofenceManager.registerGeofences$lambda$31();
                    return registerGeofences$lambda$31;
                }
            }, 6, (Object) null);
            return;
        }
        if (brazeGeofenceManager.geofenceRequestLocation != null) {
            for (BrazeGeofence brazeGeofence : mutableList) {
                IBrazeLocation iBrazeLocation = brazeGeofenceManager.geofenceRequestLocation;
                if (iBrazeLocation != null) {
                    double latitude = iBrazeLocation.getLatitude();
                    double longitude = iBrazeLocation.getLongitude();
                    double latitude2 = brazeGeofence.getLatitude();
                    double longitude2 = brazeGeofence.getLongitude();
                    double radians = Math.toRadians(latitude2 - latitude);
                    double radians2 = Math.toRadians(longitude2 - longitude);
                    double d = 2;
                    brazeGeofence.setDistanceFromGeofenceRefresh(Math.asin(Math.sqrt((Math.cos(Math.toRadians(latitude2)) * Math.cos(Math.toRadians(latitude)) * Math.pow(Math.sin(radians2 / d), 2.0d)) + Math.pow(Math.sin(radians / d), 2.0d))) * 1.2742E7d);
                }
                brazeGeofenceManager = this;
            }
            CollectionsKt.sort(mutableList);
        }
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String registerGeofences$lambda$37$lambda$33;
                    registerGeofences$lambda$37$lambda$33 = BrazeGeofenceManager.registerGeofences$lambda$37$lambda$33(mutableList);
                    return registerGeofences$lambda$37$lambda$33;
                }
            }, 7, (Object) null);
            SharedPreferences.Editor edit = this.geofenceStorageSharedPreferences.edit();
            edit.clear();
            this.brazeGeofences.clear();
            Iterator it = mutableList.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                final BrazeGeofence brazeGeofence2 = (BrazeGeofence) it.next();
                if (i == this.maxNumToRegister) {
                    BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            String registerGeofences$lambda$37$lambda$34;
                            registerGeofences$lambda$37$lambda$34 = BrazeGeofenceManager.registerGeofences$lambda$37$lambda$34(BrazeGeofenceManager.this);
                            return registerGeofences$lambda$37$lambda$34;
                        }
                    }, 7, (Object) null);
                    break;
                }
                this.brazeGeofences.add(brazeGeofence2);
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String registerGeofences$lambda$37$lambda$35;
                        registerGeofences$lambda$37$lambda$35 = BrazeGeofenceManager.registerGeofences$lambda$37$lambda$35(BrazeGeofence.this);
                        return registerGeofences$lambda$37$lambda$35;
                    }
                }, 7, (Object) null);
                edit.putString(brazeGeofence2.getId(), brazeGeofence2.getJsonKey().toString());
                i++;
            }
            edit.apply();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String registerGeofences$lambda$37$lambda$36;
                    registerGeofences$lambda$37$lambda$36 = BrazeGeofenceManager.registerGeofences$lambda$37$lambda$36(BrazeGeofenceManager.this);
                    return registerGeofences$lambda$37$lambda$36;
                }
            }, 7, (Object) null);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            this.brazeGeofenceReEligibilityManager.a(mutableList);
            setUpGeofences(true);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void registerGeofencesWithGooglePlay(List<BrazeGeofence> geofenceList, PendingIntent geofenceRequestIntent) {
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        Intrinsics.checkNotNullParameter(geofenceRequestIntent, "geofenceRequestIntent");
        com.braze.location.a aVar = this.brazeGeofenceApi;
        Context context = this.applicationContext;
        Intrinsics.checkNotNullExpressionValue(context, "applicationContext");
        aVar.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(geofenceList, "geofenceList");
        Intrinsics.checkNotNullParameter(geofenceRequestIntent, "geofenceRequestIntent");
        IBrazeGeofenceApi iBrazeGeofenceApi = aVar.f97a;
        if (iBrazeGeofenceApi != null) {
            iBrazeGeofenceApi.registerGeofences(context, geofenceList, geofenceRequestIntent);
        }
    }

    public void requestGeofenceRefresh(IBrazeLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda32
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String requestGeofenceRefresh$lambda$24;
                    requestGeofenceRefresh$lambda$24 = BrazeGeofenceManager.requestGeofenceRefresh$lambda$24();
                    return requestGeofenceRefresh$lambda$24;
                }
            }, 7, (Object) null);
            return;
        }
        this.geofenceRequestLocation = location;
        if (location != null) {
            ((m) this.brazeManager).a(location);
        }
    }

    public final void requestSingleLocationUpdateFromGooglePlay() {
        com.braze.location.b bVar = this.brazeLocationApi;
        Function1<? super IBrazeLocation, Unit> locationUpdateCallback = new Function1() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit requestSingleLocationUpdateFromGooglePlay$lambda$42;
                requestSingleLocationUpdateFromGooglePlay$lambda$42 = BrazeGeofenceManager.requestSingleLocationUpdateFromGooglePlay$lambda$42(BrazeGeofenceManager.this, (IBrazeLocation) obj);
                return requestSingleLocationUpdateFromGooglePlay$lambda$42;
            }
        };
        bVar.getClass();
        Intrinsics.checkNotNullParameter(locationUpdateCallback, "locationUpdateCallback");
        IBrazeLocationApi iBrazeLocationApi = bVar.f98a;
        if (iBrazeLocationApi != null) {
            iBrazeLocationApi.requestSingleLocationUpdate(locationUpdateCallback);
        }
    }

    public final void setBrazeGeofenceReEligibilityManager(i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.brazeGeofenceReEligibilityManager = iVar;
    }

    public final void setGeofenceRequestLocation(IBrazeLocation iBrazeLocation) {
        this.geofenceRequestLocation = iBrazeLocation;
    }

    public final void setGeofencesEnabled(boolean z) {
        this.isGeofencesEnabled = z;
    }

    public final void setMaxNumToRegister(int i) {
        this.maxNumToRegister = i;
    }

    public final void setUpGeofences(final boolean reRegisterGeofences) {
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String upGeofences$lambda$11;
                    upGeofences$lambda$11 = BrazeGeofenceManager.setUpGeofences$lambda$11();
                    return upGeofences$lambda$11;
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String upGeofences$lambda$12;
                upGeofences$lambda$12 = BrazeGeofenceManager.setUpGeofences$lambda$12(reRegisterGeofences);
                return upGeofences$lambda$12;
            }
        }, 6, (Object) null);
        PendingIntent pendingIntent = this.geofenceTransitionPendingIntent;
        if (pendingIntent == null) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda27
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String upGeofences$lambda$13;
                    upGeofences$lambda$13 = BrazeGeofenceManager.setUpGeofences$lambda$13();
                    return upGeofences$lambda$13;
                }
            }, 7, (Object) null);
            return;
        }
        if (reRegisterGeofences) {
            ReentrantLock reentrantLock = this.geofenceListLock;
            reentrantLock.lock();
            try {
                registerGeofencesWithGooglePlay(this.brazeGeofences, pendingIntent);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final void tearDownGeofences(PendingIntent geofenceRequestIntent) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String tearDownGeofences$lambda$15;
                tearDownGeofences$lambda$15 = BrazeGeofenceManager.tearDownGeofences$lambda$15();
                return tearDownGeofences$lambda$15;
            }
        }, 7, (Object) null);
        if (geofenceRequestIntent != null) {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda28
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String tearDownGeofences$lambda$16;
                    tearDownGeofences$lambda$16 = BrazeGeofenceManager.tearDownGeofences$lambda$16();
                    return tearDownGeofences$lambda$16;
                }
            }, 7, (Object) null);
            com.braze.location.a aVar = this.brazeGeofenceApi;
            Context applicationContext = this.applicationContext;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            aVar.getClass();
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            Intrinsics.checkNotNullParameter(geofenceRequestIntent, "intent");
            IBrazeGeofenceApi iBrazeGeofenceApi = aVar.f97a;
            if (iBrazeGeofenceApi != null) {
                iBrazeGeofenceApi.teardownGeofences(applicationContext, geofenceRequestIntent);
            }
        }
        ReentrantLock reentrantLock = this.geofenceListLock;
        reentrantLock.lock();
        try {
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda29
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String tearDownGeofences$lambda$18$lambda$17;
                    tearDownGeofences$lambda$18$lambda$17 = BrazeGeofenceManager.tearDownGeofences$lambda$18$lambda$17();
                    return tearDownGeofences$lambda$18$lambda$17;
                }
            }, 7, (Object) null);
            this.geofenceStorageSharedPreferences.edit().clear().apply();
            this.brazeGeofences.clear();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void unregisterGeofences() {
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String unregisterGeofences$lambda$38;
                    unregisterGeofences$lambda$38 = BrazeGeofenceManager.unregisterGeofences$lambda$38();
                    return unregisterGeofences$lambda$38;
                }
            }, 7, (Object) null);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda24
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String unregisterGeofences$lambda$39;
                    unregisterGeofences$lambda$39 = BrazeGeofenceManager.unregisterGeofences$lambda$39();
                    return unregisterGeofences$lambda$39;
                }
            }, 7, (Object) null);
            tearDownGeofences(this.geofenceTransitionPendingIntent);
        }
    }

    public final int getMaxNumToRegister() {
        return this.maxNumToRegister;
    }

    public void requestGeofenceRefresh(boolean ignoreRateLimit) {
        if (!this.isGeofencesEnabled) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.BrazeGeofenceManager$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String requestGeofenceRefresh$lambda$26;
                    requestGeofenceRefresh$lambda$26 = BrazeGeofenceManager.requestGeofenceRefresh$lambda$26();
                    return requestGeofenceRefresh$lambda$26;
                }
            }, 7, (Object) null);
        } else if (this.brazeGeofenceReEligibilityManager.a(ignoreRateLimit, DateTimeUtils.nowInSeconds())) {
            requestSingleLocationUpdateFromGooglePlay();
        }
    }
}
