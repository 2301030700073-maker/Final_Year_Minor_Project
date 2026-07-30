package c.b.a.b.b.l;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class P implements Handler.Callback {
    public static final Uri k = Uri.parse("content://com.google.android.googlequicksearchbox.GsaPublicContentProvider/publicvalue");
    public static final MainThreadInitializedObject l = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.b.a.b.b.l.j
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new P(context);
        }
    });
    public static final boolean m = Utilities.isPropertyEnabled("DoodleLogging");

    /* renamed from: b, reason: collision with root package name */
    public final Context f2637b;
    public final ContentObserver e;
    public final SharedPreferences f;
    public Bitmap h;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2636a = new ArrayList(2);
    public final ArrayMap g = new ArrayMap();
    public final BroadcastReceiver i = new L(this);
    public final BroadcastReceiver j = new M(this);

    /* renamed from: d, reason: collision with root package name */
    public final Handler f2639d = new Handler(this);

    /* renamed from: c, reason: collision with root package name */
    public final Handler f2638c = new Handler(Executors.createAndStartNewLooper("qsb-experiments"), this);

    public P(Context context) {
        this.f2637b = context;
        this.f = context.getSharedPreferences("dynamic_qsb_prefs", 0);
        a("pixel_2017_qsb_background_color", new Predicate() { // from class: c.b.a.b.b.l.h
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.f(P.this, (Cursor) obj);
            }
        });
        a("pixel_2017_qsb_hint_text", new Predicate() { // from class: c.b.a.b.b.l.l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.i(P.this, (Cursor) obj);
            }
        });
        a("pixel_2018_qsb_hint_is_for_assistant", new Predicate() { // from class: c.b.a.b.b.l.m
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.j(P.this, (Cursor) obj);
            }
        });
        a("pixel_2017_qsb_use_colored_g", new Predicate() { // from class: c.b.a.b.b.l.n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.k(P.this, (Cursor) obj);
            }
        });
        a("pixel_2018_qsb_use_two_bubbles", new Predicate() { // from class: c.b.a.b.b.l.i
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.g(P.this, (Cursor) obj);
            }
        });
        a("pixel_2018_qsb_mic_stroke_width_dp", new Predicate() { // from class: c.b.a.b.b.l.o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.l(P.this, (Cursor) obj);
            }
        });
        a("pixel_2018_qsb_mic_opacity", new Predicate() { // from class: c.b.a.b.b.l.k
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.h(P.this, (Cursor) obj);
            }
        });
        a("qsb.superg.animation", new Predicate() { // from class: c.b.a.b.b.l.p
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return P.m(P.this, (Cursor) obj);
            }
        });
        this.e = new N(this, this.f2638c);
        context.registerReceiver(this.i, PackageManagerHelper.getPackageFilter("com.google.android.googlequicksearchbox", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED"), null, this.f2638c);
        context.registerReceiver(this.j, new IntentFilter("android.intent.action.LOCALE_CHANGED"), null, this.f2638c);
        this.f2638c.sendEmptyMessage(101);
    }

    public static String d(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            if (cursor.getCount() < 1) {
                return null;
            }
            int columnIndex = cursor.getColumnIndex("value");
            if (columnIndex < 0) {
                return null;
            }
            cursor.moveToNext();
            return cursor.getString(columnIndex);
        } finally {
            cursor.close();
        }
    }

    public static boolean f(P p, Cursor cursor) {
        return p.o(cursor, "pixel_2017_qsb_background_color");
    }

    public static boolean g(P p, Cursor cursor) {
        boolean b2 = p.b(cursor);
        if (b2 == p.f.getBoolean("pixel_2018_qsb_use_two_bubbles", false)) {
            return false;
        }
        p.f.edit().putBoolean("pixel_2018_qsb_use_two_bubbles", b2).apply();
        return true;
    }

    public static boolean h(P p, Cursor cursor) {
        return p.o(cursor, "pixel_2018_qsb_mic_opacity");
    }

    public static boolean i(P p, Cursor cursor) {
        Objects.requireNonNull(p);
        return p.p(d(cursor));
    }

    public static boolean j(P p, Cursor cursor) {
        boolean b2 = p.b(cursor);
        if (b2 == p.f.getBoolean("pixel_2018_qsb_hint_is_for_assistant", false)) {
            return false;
        }
        p.f.edit().putBoolean("pixel_2018_qsb_hint_is_for_assistant", b2).apply();
        return true;
    }

    public static boolean k(P p, Cursor cursor) {
        boolean b2 = p.b(cursor);
        if (b2 == p.f.getBoolean("pixel_2017_qsb_use_colored_g", false)) {
            return false;
        }
        p.f.edit().putBoolean("pixel_2017_qsb_use_colored_g", b2).apply();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0046 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean l(c.b.a.b.b.l.P r3, android.database.Cursor r4) {
        /*
            java.util.Objects.requireNonNull(r3)
            java.lang.String r4 = d(r4)
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto Lf
            goto L2a
        Lf:
            float r4 = java.lang.Float.parseFloat(r4)     // Catch: java.lang.Exception -> L14
            goto L2b
        L14:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Invalid float value: "
            r0.append(r2)
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            java.lang.String r0 = "QsbUiManager"
            android.util.Log.e(r0, r4)
        L2a:
            r4 = r1
        L2b:
            android.content.SharedPreferences r0 = r3.f
            java.lang.String r2 = "pixel_2018_qsb_mic_stroke_width_dp"
            float r0 = r0.getFloat(r2, r1)
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 == 0) goto L46
            android.content.SharedPreferences r3 = r3.f
            android.content.SharedPreferences$Editor r3 = r3.edit()
            android.content.SharedPreferences$Editor r3 = r3.putFloat(r2, r4)
            r3.apply()
            r3 = 1
            goto L47
        L46:
            r3 = 0
        L47:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.l.P.l(c.b.a.b.b.l.P, android.database.Cursor):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m(c.b.a.b.b.l.P r17, android.database.Cursor r18) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.l.P.m(c.b.a.b.b.l.P, android.database.Cursor):boolean");
    }

    public final void a(String str, Predicate predicate) {
        this.g.put(k.buildUpon().appendPath(str).build(), predicate);
    }

    public final boolean b(Cursor cursor) {
        String d2 = d(cursor);
        if (TextUtils.isEmpty(d2)) {
            return false;
        }
        try {
            return Boolean.parseBoolean(d2);
        } catch (Exception unused) {
            Log.e("QsbUiManager", "Invalid boolean value: " + d2);
            return false;
        }
    }

    public final d.a.a.a.a.a.b c(String str) {
        if (str == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str, 3);
            d.a.a.a.a.a.b bVar = new d.a.a.a.a.a.b();
            c.b.b.a1.e.mergeFrom(bVar, decode);
            return bVar;
        } catch (Exception unused) {
            this.f.edit().putString("qsb.superg.animation", null).apply();
            Log.e("QsbUiManager", "Could not create Doodle proto: " + str);
            return null;
        }
    }

    public final void e(ArrayMap arrayMap) {
        try {
            ContentProviderClient acquireUnstableContentProviderClient = this.f2637b.getContentResolver().acquireUnstableContentProviderClient(k);
            try {
                if (acquireUnstableContentProviderClient == null) {
                    Log.d("QsbUiManager", "Unable to get content provider client, skipping");
                    if (acquireUnstableContentProviderClient != null) {
                        acquireUnstableContentProviderClient.close();
                        return;
                    }
                    return;
                }
                boolean z = false;
                for (int size = arrayMap.size() - 1; size >= 0; size--) {
                    if (((Predicate) arrayMap.valueAt(size)).test(acquireUnstableContentProviderClient.query((Uri) arrayMap.keyAt(size), null, null, null, null))) {
                        z = true;
                    }
                }
                if (z) {
                    this.f2639d.sendEmptyMessage(201);
                }
                acquireUnstableContentProviderClient.close();
            } finally {
            }
        } catch (Exception e) {
            Log.e("QsbUiManager", "Error getting client ", e);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 101) {
            n();
            return true;
        }
        if (i != 201) {
            return false;
        }
        Iterator it = this.f2636a.iterator();
        while (it.hasNext()) {
            ((O) it.next()).a();
        }
        return true;
    }

    public final void n() {
        ContentResolver contentResolver = this.f2637b.getContentResolver();
        contentResolver.unregisterContentObserver(this.e);
        try {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                contentResolver.registerContentObserver((Uri) this.g.keyAt(size), false, this.e);
            }
        } catch (SecurityException unused) {
            Log.e("QsbUiManager", "Unable to register for configuration changes, UI changes will be reset");
            if (!this.f.getAll().isEmpty()) {
                this.f.edit().clear().apply();
                this.f2639d.sendEmptyMessage(201);
                return;
            }
        }
        e(this.g);
        Context context = this.f2637b;
        SharedPreferences sharedPreferences = context.getSharedPreferences("pref_doodle_impressions", 0);
        Map<String, ?> all = sharedPreferences.getAll();
        if (all.isEmpty()) {
            return;
        }
        Bundle[] bundleArr = new Bundle[all.size()];
        int i = 0;
        for (String str : all.keySet()) {
            String[] split = ((String) all.get(str)).split(",");
            Bundle bundle = new Bundle();
            bundle.putLong("impression_timestamp", Long.parseLong(str));
            bundle.putLong("impression_duration", Long.parseLong(split[0]));
            bundle.putLong("impression_num_loops", Long.parseLong(split[1]));
            bundleArr[i] = bundle;
            i++;
        }
        context.sendBroadcast(new Intent("com.google.android.apps.gsa.LAUNCHER_DOODLE_IMPRESSION").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456).putExtra("impression_bundles", bundleArr));
        sharedPreferences.edit().clear().apply();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean o(android.database.Cursor r6, java.lang.String r7) {
        /*
            r5 = this;
            r0 = 1
            boolean[] r1 = new boolean[r0]
            r2 = 0
            r1[r2] = r2
            java.lang.String r6 = d(r6)
            boolean r3 = android.text.TextUtils.isEmpty(r6)
            if (r3 == 0) goto L13
            r1[r2] = r0
            goto L30
        L13:
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Exception -> L18
            goto L31
        L18:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Invalid integer value: "
            r3.append(r4)
            r3.append(r6)
            java.lang.String r6 = r3.toString()
            java.lang.String r3 = "QsbUiManager"
            android.util.Log.e(r3, r6)
            r1[r2] = r0
        L30:
            r6 = r2
        L31:
            boolean r1 = r1[r2]
            if (r1 == 0) goto L4c
            android.content.SharedPreferences r6 = r5.f
            boolean r6 = r6.contains(r7)
            if (r6 == 0) goto L4b
            android.content.SharedPreferences r5 = r5.f
            android.content.SharedPreferences$Editor r5 = r5.edit()
            android.content.SharedPreferences$Editor r5 = r5.remove(r7)
            r5.apply()
            return r0
        L4b:
            return r2
        L4c:
            android.content.SharedPreferences r1 = r5.f
            boolean r1 = r1.contains(r7)
            if (r1 == 0) goto L5e
            android.content.SharedPreferences r1 = r5.f
            int r1 = r1.getInt(r7, r2)
            if (r1 == r6) goto L5d
            goto L5e
        L5d:
            return r2
        L5e:
            android.content.SharedPreferences r5 = r5.f
            android.content.SharedPreferences$Editor r5 = r5.edit()
            android.content.SharedPreferences$Editor r5 = r5.putInt(r7, r6)
            r5.apply()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.l.P.o(android.database.Cursor, java.lang.String):boolean");
    }

    public final boolean p(String str) {
        String string = this.f.getString("pixel_2017_qsb_hint_text_value", "");
        if (TextUtils.isEmpty(str)) {
            this.f.edit().remove("pixel_2017_qsb_hint_text").remove("pixel_2017_qsb_hint_text_value").apply();
            return !TextUtils.isEmpty(string);
        }
        try {
            Resources resourcesForApplication = this.f2637b.getPackageManager().getResourcesForApplication("com.google.android.googlequicksearchbox");
            int identifier = resourcesForApplication.getIdentifier(str, "string", "com.google.android.googlequicksearchbox");
            this.f.edit().putString("pixel_2017_qsb_hint_text", str).putString("pixel_2017_qsb_hint_text_value", identifier != 0 ? resourcesForApplication.getString(identifier) : "").apply();
            return !string.equals(r3);
        } catch (Exception unused) {
            Log.e("QsbUiManager", "Error loading hint text: " + str);
            return false;
        }
    }
}
