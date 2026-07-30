package com.facebook.appevents;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Patterns;
import com.facebook.appevents.aam.MetadataRule;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C0315Kc;
import defpackage.C2900hz;
import defpackage.C3756th;
import defpackage.EH;
import defpackage.J2;
import defpackage.RunnableC2610d2;
import defpackage.RunnableC2668e2;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class UserDataStore {
    public static final String CITY = "ct";
    public static final String COUNTRY = "country";
    private static final String DATA_SEPARATOR = ",";
    public static final String DATE_OF_BIRTH = "db";
    public static final String EMAIL = "em";
    public static final String FIRST_NAME = "fn";
    public static final String GENDER = "ge";
    private static final String INTERNAL_USER_DATA_KEY = "com.facebook.appevents.UserDataStore.internalUserData";
    public static final String LAST_NAME = "ln";
    private static final int MAX_NUM = 5;
    public static final String PHONE = "ph";
    public static final String STATE = "st";
    private static final String USER_DATA_KEY = "com.facebook.appevents.UserDataStore.userData";
    public static final String ZIP = "zp";
    private static SharedPreferences sharedPreferences;
    public static final UserDataStore INSTANCE = new UserDataStore();
    private static final String TAG = "UserDataStore";
    private static final AtomicBoolean initialized = new AtomicBoolean(false);
    private static final ConcurrentHashMap<String, String> externalHashedUserData = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, String> internalHashedUserData = new ConcurrentHashMap<>();

    private UserDataStore() {
    }

    public static final void clear() {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            InternalAppEventsLogger.Companion.getAnalyticsExecutor().execute(new RunnableC2610d2(1));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: clear$lambda-2, reason: not valid java name */
    public static final void m5329clear$lambda2() {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            if (!initialized.get()) {
                INSTANCE.initAndWait();
            }
            externalHashedUserData.clear();
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 != null) {
                sharedPreferences2.edit().putString(USER_DATA_KEY, null).apply();
            } else {
                C0173Do.m400this("sharedPreferences");
                throw null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    public static final String getAllHashedUserData() {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return null;
        }
        try {
            if (!initialized.get()) {
                INSTANCE.initAndWait();
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(externalHashedUserData);
            hashMap.putAll(INSTANCE.getEnabledInternalUserData());
            return Utility.mapToJsonStr(hashMap);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
            return null;
        }
    }

    private final Map<String, String> getEnabledInternalUserData() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            Set<String> enabledRuleNames = MetadataRule.Companion.getEnabledRuleNames();
            for (String str : internalHashedUserData.keySet()) {
                if (enabledRuleNames.contains(str)) {
                    hashMap.put(str, internalHashedUserData.get(str));
                }
            }
            return hashMap;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final String getHashedUserData$facebook_core_release() {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return null;
        }
        try {
            if (!initialized.get()) {
                INSTANCE.initAndWait();
            }
            Utility utility = Utility.INSTANCE;
            return Utility.mapToJsonStr(externalHashedUserData);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
            return null;
        }
    }

    private final synchronized void initAndWait() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = initialized;
            if (atomicBoolean.get()) {
                return;
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C3756th.m8299do());
            C0173Do.m399new(defaultSharedPreferences, "getDefaultSharedPreferences(FacebookSdk.getApplicationContext())");
            sharedPreferences = defaultSharedPreferences;
            String string = defaultSharedPreferences.getString(USER_DATA_KEY, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            if (string == null) {
                string = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 == null) {
                C0173Do.m400this("sharedPreferences");
                throw null;
            }
            String string2 = sharedPreferences2.getString(INTERNAL_USER_DATA_KEY, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            if (string2 == null) {
                string2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            externalHashedUserData.putAll(Utility.jsonStrToMap(string));
            internalHashedUserData.putAll(Utility.jsonStrToMap(string2));
            atomicBoolean.set(true);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void initStore() {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            if (initialized.get()) {
                return;
            }
            INSTANCE.initAndWait();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    private final boolean maybeSHA256Hashed(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Pattern compile = Pattern.compile("[A-Fa-f0-9]{64}");
            C0173Do.m399new(compile, "compile(pattern)");
            C0173Do.m401try(str, "input");
            return compile.matcher(str).matches();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    private final String normalizeData(String str, String str2) {
        String str3;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            int length = str2.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = C0173Do.m393case(str2.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            String obj = str2.subSequence(i, length + 1).toString();
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = obj.toLowerCase();
            C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (C0173Do.m394do(EMAIL, str)) {
                return Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches() ? lowerCase : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (C0173Do.m394do(PHONE, str)) {
                Pattern compile = Pattern.compile("[^0-9]");
                C0173Do.m399new(compile, "compile(pattern)");
                String replaceAll = compile.matcher(lowerCase).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                C0173Do.m399new(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                return replaceAll;
            }
            if (!C0173Do.m394do(GENDER, str)) {
                return lowerCase;
            }
            if (lowerCase.length() > 0) {
                str3 = lowerCase.substring(0, 1);
                C0173Do.m399new(str3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            } else {
                str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return (C0173Do.m394do("f", str3) || C0173Do.m394do("m", str3)) ? str3 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final void setInternalUd(Map<String, String> map) {
        String[] strArr;
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            C0173Do.m401try(map, "ud");
            if (!initialized.get()) {
                INSTANCE.initAndWait();
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                Utility utility = Utility.INSTANCE;
                UserDataStore userDataStore = INSTANCE;
                int i = 1;
                int length = value.length() - 1;
                int i2 = 0;
                boolean z = false;
                while (i2 <= length) {
                    boolean z2 = C0173Do.m393case(value.charAt(!z ? i2 : length), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z2) {
                        i2++;
                    } else {
                        z = true;
                    }
                }
                String sha256hash = Utility.sha256hash(userDataStore.normalizeData(key, value.subSequence(i2, length + 1).toString()));
                ConcurrentHashMap<String, String> concurrentHashMap = internalHashedUserData;
                if (concurrentHashMap.containsKey(key)) {
                    String str = concurrentHashMap.get(key);
                    if (str == null) {
                        strArr = null;
                    } else {
                        Object[] array = new C2900hz(DATA_SEPARATOR).m6853do(str).toArray(new String[0]);
                        if (array == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                        strArr = (String[]) array;
                    }
                    if (strArr == null) {
                        strArr = new String[0];
                    }
                    Object[] copyOf = Arrays.copyOf(strArr, strArr.length);
                    C0173Do.m401try(copyOf, "elements");
                    LinkedHashSet linkedHashSet = new LinkedHashSet(C0315Kc.m1180switch(copyOf.length));
                    J2.h(linkedHashSet, copyOf);
                    if (linkedHashSet.contains(sha256hash)) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    if (strArr.length == 0) {
                        sb.append(sha256hash);
                    } else if (strArr.length < 5) {
                        sb.append(str);
                        sb.append(DATA_SEPARATOR);
                        sb.append(sha256hash);
                    } else {
                        while (true) {
                            int i3 = i + 1;
                            sb.append(strArr[i]);
                            sb.append(DATA_SEPARATOR);
                            if (i3 >= 5) {
                                break;
                            } else {
                                i = i3;
                            }
                        }
                        sb.append(sha256hash);
                        linkedHashSet.remove(strArr[0]);
                    }
                    internalHashedUserData.put(key, sb.toString());
                } else {
                    concurrentHashMap.put(key, sha256hash);
                }
            }
            UserDataStore userDataStore2 = INSTANCE;
            Utility utility2 = Utility.INSTANCE;
            userDataStore2.writeDataIntoCache(INTERNAL_USER_DATA_KEY, Utility.mapToJsonStr(internalHashedUserData));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    public static final void setUserDataAndHash(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            InternalAppEventsLogger.Companion.getAnalyticsExecutor().execute(new EH(bundle, 1));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setUserDataAndHash$lambda-1, reason: not valid java name */
    public static final void m5333setUserDataAndHash$lambda1(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            if (!initialized.get()) {
                INSTANCE.initAndWait();
            }
            UserDataStore userDataStore = INSTANCE;
            userDataStore.updateHashUserData(bundle);
            Utility utility = Utility.INSTANCE;
            userDataStore.writeDataIntoCache(USER_DATA_KEY, Utility.mapToJsonStr(externalHashedUserData));
            userDataStore.writeDataIntoCache(INTERNAL_USER_DATA_KEY, Utility.mapToJsonStr(internalHashedUserData));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    private final void updateHashUserData(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(this) || bundle == null) {
            return;
        }
        try {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null) {
                    String obj2 = obj.toString();
                    if (maybeSHA256Hashed(obj2)) {
                        ConcurrentHashMap<String, String> concurrentHashMap = externalHashedUserData;
                        if (obj2 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                        }
                        String lowerCase = obj2.toLowerCase();
                        C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase()");
                        concurrentHashMap.put(str, lowerCase);
                    } else {
                        Utility utility = Utility.INSTANCE;
                        C0173Do.m399new(str, "key");
                        String sha256hash = Utility.sha256hash(normalizeData(str, obj2));
                        if (sha256hash != null) {
                            externalHashedUserData.put(str, sha256hash);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void writeDataIntoCache(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C3756th.m8304new().execute(new RunnableC2668e2(1, str, str2));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: writeDataIntoCache$lambda-0, reason: not valid java name */
    public static final void m5334writeDataIntoCache$lambda0(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            C0173Do.m401try(str, "$key");
            C0173Do.m401try(str2, "$value");
            if (!initialized.get()) {
                INSTANCE.initAndWait();
            }
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 != null) {
                sharedPreferences2.edit().putString(str, str2).apply();
            } else {
                C0173Do.m400this("sharedPreferences");
                throw null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }

    public static final void setUserDataAndHash(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        if (CrashShieldHandler.isObjectCrashing(UserDataStore.class)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                bundle.putString(EMAIL, str);
            }
            if (str2 != null) {
                bundle.putString(FIRST_NAME, str2);
            }
            if (str3 != null) {
                bundle.putString(LAST_NAME, str3);
            }
            if (str4 != null) {
                bundle.putString(PHONE, str4);
            }
            if (str5 != null) {
                bundle.putString(DATE_OF_BIRTH, str5);
            }
            if (str6 != null) {
                bundle.putString(GENDER, str6);
            }
            if (str7 != null) {
                bundle.putString(CITY, str7);
            }
            if (str8 != null) {
                bundle.putString(STATE, str8);
            }
            if (str9 != null) {
                bundle.putString(ZIP, str9);
            }
            if (str10 != null) {
                bundle.putString(COUNTRY, str10);
            }
            setUserDataAndHash(bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, UserDataStore.class);
        }
    }
}
