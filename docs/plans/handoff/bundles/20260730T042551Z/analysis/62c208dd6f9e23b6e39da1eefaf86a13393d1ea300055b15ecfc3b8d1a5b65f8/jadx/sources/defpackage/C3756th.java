package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import com.facebook.AccessToken;
import com.facebook.internal.LockOnGetVariable;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: th, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3756th {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Context f15741do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static LockOnGetVariable<File> f15742do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile Boolean f15743do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Executor f15746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f15752do;

    /* renamed from: for, reason: not valid java name */
    public static volatile String f15754for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static boolean f15755for;

    /* renamed from: if, reason: not valid java name */
    public static volatile String f15756if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static boolean f15757if;

    /* renamed from: new, reason: not valid java name */
    public static volatile String f15758new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static boolean f15759new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3756th f15751do = new C3756th();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String f15744do = C3756th.class.getCanonicalName();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashSet<EnumC0658Zq> f15745do = O4.m1625switch(EnumC0658Zq.DEVELOPER_ERRORS);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicLong f15748do = new AtomicLong(65536);

    /* renamed from: do, reason: not valid java name */
    public static int f15740do = 64206;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ReentrantLock f15749do = new ReentrantLock();

    /* renamed from: try, reason: not valid java name */
    public static final String f15760try = ServerProtocol.getDefaultAPIVersion();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicBoolean f15747do = new AtomicBoolean(false);

    /* renamed from: case, reason: not valid java name */
    public static volatile String f15739case = "instagram.com";

    /* renamed from: else, reason: not valid java name */
    public static volatile String f15753else = "facebook.com";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3697sh f15750do = new C3697sh(0);

    /* renamed from: break, reason: not valid java name */
    public static final void m8295break(EnumC0658Zq enumC0658Zq) {
        C0173Do.m401try(enumC0658Zq, "behavior");
        synchronized (f15745do) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static final String m8296case() {
        Date date = AccessToken.f9198new;
        AccessToken m5258if = AccessToken.Cif.m5258if();
        return Utility.getGraphDomainFromTokenDomain(m5258if != null ? m5258if.f9203const : null);
    }

    /* renamed from: catch, reason: not valid java name */
    public static final void m8297catch(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            C0173Do.m399new(applicationInfo, "try {\n          context.packageManager.getApplicationInfo(\n              context.packageName, PackageManager.GET_META_DATA)\n        } catch (e: PackageManager.NameNotFoundException) {\n          return\n        }");
            if (applicationInfo.metaData == null) {
                return;
            }
            if (f15756if == null) {
                Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                if (obj instanceof String) {
                    String str = (String) obj;
                    Locale locale = Locale.ROOT;
                    C0173Do.m399new(locale, "ROOT");
                    String lowerCase = str.toLowerCase(locale);
                    C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    if (BF.j(lowerCase, "fb")) {
                        String substring = str.substring(2);
                        C0173Do.m399new(substring, "(this as java.lang.String).substring(startIndex)");
                        f15756if = substring;
                    } else {
                        f15756if = str;
                    }
                } else if (obj instanceof Number) {
                    throw new C3344mh("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                }
            }
            if (f15754for == null) {
                f15754for = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
            }
            if (f15758new == null) {
                f15758new = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
            }
            if (f15740do == 64206) {
                f15740do = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
            }
            if (f15743do == null) {
                f15743do = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[Catch: all -> 0x0117, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d A[Catch: all -> 0x0117, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e A[Catch: all -> 0x0117, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074 A[Catch: all -> 0x0117, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fb A[Catch: all -> 0x0117, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0101 A[Catch: all -> 0x0117, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0109 A[Catch: all -> 0x0117, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x000e, B:12:0x0029, B:14:0x0031, B:19:0x003d, B:21:0x0041, B:26:0x004d, B:30:0x006e, B:31:0x0070, B:33:0x0074, B:35:0x0078, B:37:0x007e, B:39:0x0084, B:40:0x008c, B:41:0x0091, B:42:0x0092, B:44:0x009e, B:47:0x00f5, B:48:0x00fa, B:49:0x00fb, B:50:0x0100, B:55:0x0068, B:56:0x0101, B:57:0x0108, B:59:0x0109, B:60:0x0110, B:62:0x0111, B:63:0x0116, B:52:0x005b), top: B:3:0x0003, inners: #0 }] */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final synchronized void m8298class(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3756th.m8298class(android.content.Context):void");
    }

    /* renamed from: do, reason: not valid java name */
    public static final Context m8299do() {
        Validate.sdkInitialized();
        Context context = f15741do;
        if (context != null) {
            return context;
        }
        C0173Do.m400this("applicationContext");
        throw null;
    }

    /* renamed from: else, reason: not valid java name */
    public static final boolean m8300else(Context context) {
        Validate.sdkInitialized();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /* renamed from: for, reason: not valid java name */
    public static final String m8301for() {
        Validate.sdkInitialized();
        String str = f15758new;
        if (str != null) {
            return str;
        }
        throw new C3344mh("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
    }

    /* renamed from: goto, reason: not valid java name */
    public static final synchronized boolean m8302goto() {
        boolean z;
        synchronized (C3756th.class) {
            z = f15759new;
        }
        return z;
    }

    /* renamed from: if, reason: not valid java name */
    public static final String m8303if() {
        Validate.sdkInitialized();
        String str = f15756if;
        if (str != null) {
            return str;
        }
        throw new C3344mh("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
    }

    /* renamed from: new, reason: not valid java name */
    public static final Executor m8304new() {
        ReentrantLock reentrantLock = f15749do;
        reentrantLock.lock();
        try {
            if (f15746do == null) {
                f15746do = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            C3206kJ c3206kJ = C3206kJ.f13965do;
            reentrantLock.unlock();
            Executor executor = f15746do;
            if (executor != null) {
                return executor;
            }
            throw new IllegalStateException("Required value was null.".toString());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static final boolean m8305this() {
        return f15747do.get();
    }

    /* renamed from: try, reason: not valid java name */
    public static final String m8306try() {
        Utility utility = Utility.INSTANCE;
        String str = f15760try;
        String format = String.format("getGraphApiVersion: %s", Arrays.copyOf(new Object[]{str}, 1));
        C0173Do.m399new(format, "java.lang.String.format(format, *args)");
        Utility.logd(f15744do, format);
        return str;
    }
}
