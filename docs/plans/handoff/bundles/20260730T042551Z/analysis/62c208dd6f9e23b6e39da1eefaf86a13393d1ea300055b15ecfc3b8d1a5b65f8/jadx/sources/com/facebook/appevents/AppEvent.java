package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.Constants;
import com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3206kJ;
import defpackage.C3344mh;
import defpackage.Cif;
import defpackage.EnumC0658Zq;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AppEvent implements Serializable {
    private static final int MAX_IDENTIFIER_LENGTH = 40;
    private static final long serialVersionUID = 1;
    private final String checksum;
    private final boolean inBackground;
    private final boolean isImplicit;
    private final JSONObject jsonObject;
    private final String name;
    public static final Companion Companion = new Companion(null);
    private static final HashSet<String> validatedIdentifiers = new HashSet<>();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String md5Checksum(String str) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Charset forName = Charset.forName("UTF-8");
                C0173Do.m399new(forName, "Charset.forName(charsetName)");
                if (str == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                byte[] bytes = str.getBytes(forName);
                C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
                messageDigest.update(bytes, 0, bytes.length);
                byte[] digest = messageDigest.digest();
                C0173Do.m399new(digest, "digest.digest()");
                return AppEventUtility.bytesToHex(digest);
            } catch (UnsupportedEncodingException e) {
                Utility.logd("Failed to generate checksum: ", e);
                return AppEventsConstants.EVENT_PARAM_VALUE_YES;
            } catch (NoSuchAlgorithmException e2) {
                Utility.logd("Failed to generate checksum: ", e2);
                return AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void validateIdentifier(String str) {
            boolean contains;
            if (str != null) {
                if (!(str.length() == 0) && str.length() <= AppEvent.MAX_IDENTIFIER_LENGTH) {
                    synchronized (AppEvent.validatedIdentifiers) {
                        contains = AppEvent.validatedIdentifiers.contains(str);
                        C3206kJ c3206kJ = C3206kJ.f13965do;
                    }
                    if (contains) {
                        return;
                    }
                    Pattern compile = Pattern.compile("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$");
                    C0173Do.m399new(compile, "compile(pattern)");
                    if (!compile.matcher(str).matches()) {
                        throw new C3344mh(Cif.m6913else(new Object[]{str}, 1, "Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", "java.lang.String.format(format, *args)"));
                    }
                    synchronized (AppEvent.validatedIdentifiers) {
                        AppEvent.validatedIdentifiers.add(str);
                    }
                    return;
                }
            }
            if (str == null) {
                str = "<None Provided>";
            }
            String format = String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", Arrays.copyOf(new Object[]{str, Integer.valueOf(AppEvent.MAX_IDENTIFIER_LENGTH)}, 2));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            throw new C3344mh(format);
        }
    }

    public static final class SerializationProxyV2 implements Serializable {
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = 20160803001L;
        private final String checksum;
        private final boolean inBackground;
        private final boolean isImplicit;
        private final String jsonString;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }
        }

        public SerializationProxyV2(String str, boolean z, boolean z2, String str2) {
            C0173Do.m401try(str, "jsonString");
            this.jsonString = str;
            this.isImplicit = z;
            this.inBackground = z2;
            this.checksum = str2;
        }

        private final Object readResolve() {
            return new AppEvent(this.jsonString, this.isImplicit, this.inBackground, this.checksum, null);
        }
    }

    public AppEvent(String str, String str2, Double d, Bundle bundle, boolean z, boolean z2, UUID uuid) {
        C0173Do.m401try(str, "contextName");
        C0173Do.m401try(str2, "eventName");
        this.isImplicit = z;
        this.inBackground = z2;
        this.name = str2;
        this.jsonObject = getJSONObjectForAppEvent(str, str2, d, bundle, uuid);
        this.checksum = calculateChecksum();
    }

    public /* synthetic */ AppEvent(String str, boolean z, boolean z2, String str2, C2819gd c2819gd) {
        this(str, z, z2, str2);
    }

    private final String calculateChecksum() {
        Companion companion = Companion;
        String jSONObject = this.jsonObject.toString();
        C0173Do.m399new(jSONObject, "jsonObject.toString()");
        return companion.md5Checksum(jSONObject);
    }

    private final JSONObject getJSONObjectForAppEvent(String str, String str2, Double d, Bundle bundle, UUID uuid) {
        Companion companion = Companion;
        companion.validateIdentifier(str2);
        JSONObject jSONObject = new JSONObject();
        String processEvent = RestrictiveDataManager.processEvent(str2);
        jSONObject.put(Constants.EVENT_NAME_EVENT_KEY, processEvent);
        jSONObject.put(Constants.EVENT_NAME_MD5_EVENT_KEY, companion.md5Checksum(processEvent));
        jSONObject.put(Constants.LOG_TIME_APP_EVENT_KEY, System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> validateParameters = validateParameters(bundle);
            for (String str3 : validateParameters.keySet()) {
                jSONObject.put(str3, validateParameters.get(str3));
            }
        }
        if (d != null) {
            jSONObject.put(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM, d.doubleValue());
        }
        if (this.inBackground) {
            jSONObject.put("_inBackground", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (this.isImplicit) {
            jSONObject.put("_implicitlyLogged", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        } else {
            Logger.Companion companion2 = Logger.Companion;
            EnumC0658Zq enumC0658Zq = EnumC0658Zq.APP_EVENTS;
            String jSONObject2 = jSONObject.toString();
            C0173Do.m399new(jSONObject2, "eventObject.toString()");
            companion2.log(enumC0658Zq, "AppEvents", "Created app event '%s'", jSONObject2);
        }
        return jSONObject;
    }

    private final Map<String, String> validateParameters(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Companion companion = Companion;
            C0173Do.m399new(str, "key");
            companion.validateIdentifier(str);
            Object obj = bundle.get(str);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                throw new C3344mh(Cif.m6913else(new Object[]{obj, str}, 2, "Parameter value '%s' for key '%s' should be a string or a numeric type.", "java.lang.String.format(format, *args)"));
            }
            hashMap.put(str, obj.toString());
        }
        IntegrityManager.processParameters(hashMap);
        RestrictiveDataManager restrictiveDataManager = RestrictiveDataManager.INSTANCE;
        RestrictiveDataManager.processParameters(hashMap, this.name);
        EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
        EventDeactivationManager.processDeprecatedParameters(hashMap, this.name);
        return hashMap;
    }

    private final Object writeReplace() {
        String jSONObject = this.jsonObject.toString();
        C0173Do.m399new(jSONObject, "jsonObject.toString()");
        return new SerializationProxyV2(jSONObject, this.isImplicit, this.inBackground, this.checksum);
    }

    public final boolean getIsImplicit() {
        return this.isImplicit;
    }

    public final JSONObject getJSONObject() {
        return this.jsonObject;
    }

    public final JSONObject getJsonObject() {
        return this.jsonObject;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean isChecksumValid() {
        if (this.checksum == null) {
            return true;
        }
        return C0173Do.m394do(calculateChecksum(), this.checksum);
    }

    public final boolean isImplicit() {
        return this.isImplicit;
    }

    public String toString() {
        return Cif.m6913else(new Object[]{this.jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY), Boolean.valueOf(this.isImplicit), this.jsonObject.toString()}, 3, "\"%s\", implicit: %b, json: %s", "java.lang.String.format(format, *args)");
    }

    private AppEvent(String str, boolean z, boolean z2, String str2) {
        JSONObject jSONObject = new JSONObject(str);
        this.jsonObject = jSONObject;
        this.isImplicit = z;
        String optString = jSONObject.optString(Constants.EVENT_NAME_EVENT_KEY);
        C0173Do.m399new(optString, "jsonObject.optString(Constants.EVENT_NAME_EVENT_KEY)");
        this.name = optString;
        this.checksum = str2;
        this.inBackground = z2;
    }
}
