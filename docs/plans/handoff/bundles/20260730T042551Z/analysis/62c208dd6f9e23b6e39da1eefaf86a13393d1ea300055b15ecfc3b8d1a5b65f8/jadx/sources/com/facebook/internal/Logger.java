package com.facebook.internal;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import defpackage.EnumC0658Zq;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class Logger {
    public static final String LOG_TAG_BASE = "FacebookSDK.";
    private final EnumC0658Zq behavior;
    private StringBuilder contents;
    private int priority;
    private final String tag;
    public static final Companion Companion = new Companion(null);
    private static final HashMap<String, String> stringsToReplace = new HashMap<>();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final synchronized String replaceStrings(String str) {
            for (Map.Entry entry : Logger.stringsToReplace.entrySet()) {
                str = BF.i(str, (String) entry.getKey(), (String) entry.getValue());
            }
            return str;
        }

        public final void log(EnumC0658Zq enumC0658Zq, String str, String str2) {
            C0173Do.m401try(enumC0658Zq, "behavior");
            C0173Do.m401try(str, ViewHierarchyConstants.TAG_KEY);
            C0173Do.m401try(str2, "string");
            log(enumC0658Zq, 3, str, str2);
        }

        public final synchronized void registerAccessToken(String str) {
            C0173Do.m401try(str, "accessToken");
            C3756th c3756th = C3756th.f15751do;
            C3756th.m8295break(EnumC0658Zq.INCLUDE_ACCESS_TOKENS);
            registerStringToReplace(str, "ACCESS_TOKEN_REMOVED");
        }

        public final synchronized void registerStringToReplace(String str, String str2) {
            C0173Do.m401try(str, "original");
            C0173Do.m401try(str2, "replace");
            Logger.stringsToReplace.put(str, str2);
        }

        public final void log(EnumC0658Zq enumC0658Zq, String str, String str2, Object... objArr) {
            C0173Do.m401try(enumC0658Zq, "behavior");
            C0173Do.m401try(str, ViewHierarchyConstants.TAG_KEY);
            C0173Do.m401try(str2, "format");
            C0173Do.m401try(objArr, "args");
            C3756th.m8295break(enumC0658Zq);
        }

        public final void log(EnumC0658Zq enumC0658Zq, int i, String str, String str2, Object... objArr) {
            C0173Do.m401try(enumC0658Zq, "behavior");
            C0173Do.m401try(str, ViewHierarchyConstants.TAG_KEY);
            C0173Do.m401try(str2, "format");
            C0173Do.m401try(objArr, "args");
            C3756th.m8295break(enumC0658Zq);
        }

        public final void log(EnumC0658Zq enumC0658Zq, int i, String str, String str2) {
            C0173Do.m401try(enumC0658Zq, "behavior");
            C0173Do.m401try(str, ViewHierarchyConstants.TAG_KEY);
            C0173Do.m401try(str2, "string");
            C3756th.m8295break(enumC0658Zq);
        }
    }

    public Logger(EnumC0658Zq enumC0658Zq, String str) {
        C0173Do.m401try(enumC0658Zq, "behavior");
        C0173Do.m401try(str, ViewHierarchyConstants.TAG_KEY);
        this.priority = 3;
        this.behavior = enumC0658Zq;
        this.tag = C0173Do.m397goto(Validate.notNullOrEmpty(str, ViewHierarchyConstants.TAG_KEY), LOG_TAG_BASE);
        this.contents = new StringBuilder();
    }

    public static final void log(EnumC0658Zq enumC0658Zq, int i, String str, String str2) {
        Companion.log(enumC0658Zq, i, str, str2);
    }

    public static final void log(EnumC0658Zq enumC0658Zq, int i, String str, String str2, Object... objArr) {
        Companion.log(enumC0658Zq, i, str, str2, objArr);
    }

    public static final void log(EnumC0658Zq enumC0658Zq, String str, String str2) {
        Companion.log(enumC0658Zq, str, str2);
    }

    public static final void log(EnumC0658Zq enumC0658Zq, String str, String str2, Object... objArr) {
        Companion.log(enumC0658Zq, str, str2, objArr);
    }

    public static final synchronized void registerAccessToken(String str) {
        synchronized (Logger.class) {
            Companion.registerAccessToken(str);
        }
    }

    public static final synchronized void registerStringToReplace(String str, String str2) {
        synchronized (Logger.class) {
            Companion.registerStringToReplace(str, str2);
        }
    }

    private final boolean shouldLog() {
        C3756th c3756th = C3756th.f15751do;
        C3756th.m8295break(this.behavior);
        return false;
    }

    public final void append(StringBuilder sb) {
        C0173Do.m401try(sb, "stringBuilder");
        if (shouldLog()) {
            this.contents.append((CharSequence) sb);
        }
    }

    public final void appendKeyValue(String str, Object obj) {
        C0173Do.m401try(str, "key");
        C0173Do.m401try(obj, "value");
        append("  %s:\t%s\n", str, obj);
    }

    public final String getContents() {
        Companion companion = Companion;
        String sb = this.contents.toString();
        C0173Do.m399new(sb, "contents.toString()");
        return companion.replaceStrings(sb);
    }

    public final int getPriority() {
        return this.priority;
    }

    public final void log() {
        String sb = this.contents.toString();
        C0173Do.m399new(sb, "contents.toString()");
        logString(sb);
        this.contents = new StringBuilder();
    }

    public final void logString(String str) {
        C0173Do.m401try(str, "string");
        Companion.log(this.behavior, this.priority, this.tag, str);
    }

    public final void setPriority(int i) {
        Validate validate = Validate.INSTANCE;
        Validate.oneOf(Integer.valueOf(i), "value", 7, 3, 6, 4, 2, 5);
        setPriority(i);
    }

    public final void append(String str) {
        C0173Do.m401try(str, "string");
        if (shouldLog()) {
            this.contents.append(str);
        }
    }

    public final void append(String str, Object... objArr) {
        C0173Do.m401try(str, "format");
        C0173Do.m401try(objArr, "args");
        if (shouldLog()) {
            StringBuilder sb = this.contents;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            String format = String.format(str, Arrays.copyOf(copyOf, copyOf.length));
            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
            sb.append(format);
        }
    }
}
