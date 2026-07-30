package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.BinderC3652rv;
import defpackage.C3626rR;
import defpackage.C4102zV;
import defpackage.EV;
import defpackage.GU;
import defpackage.InterfaceC0456Qm;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

@KeepForSdk
/* loaded from: classes.dex */
public final class DynamiteModule {

    /* renamed from: do, reason: not valid java name */
    public static int f10176do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static EV f10177do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Boolean f10182do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static String f10183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C4102zV f10186do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f10187do;

    /* renamed from: if, reason: not valid java name */
    public static Boolean f10188if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f10189do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadLocal f10184do = new ThreadLocal();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3626rR f10185do = new C3626rR();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final com.google.android.gms.dynamite.Cdo f10178do = new com.google.android.gms.dynamite.Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @KeepForSdk
    public static final com.google.android.gms.dynamite.Cif f10180do = new com.google.android.gms.dynamite.Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @KeepForSdk
    public static final Cfor f10179do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @KeepForSdk
    public static final Cnew f10181do = new Cnew();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$do, reason: invalid class name */
    public static class Cdo extends Exception {
        public /* synthetic */ Cdo(String str) {
            super(str);
        }

        public /* synthetic */ Cdo(String str, Throwable th) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$if, reason: invalid class name */
    public interface Cif {

        @KeepForSdk
        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$if$do, reason: invalid class name */
        public interface Cdo {
            /* renamed from: do, reason: not valid java name */
            int mo5612do(Context context, String str, boolean z);

            /* renamed from: if, reason: not valid java name */
            int mo5613if(Context context, String str);
        }

        @KeepForSdk
        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$if$if, reason: invalid class name and collision with other inner class name */
        public static class C0053if {

            /* renamed from: do, reason: not valid java name */
            @KeepForSdk
            public int f10190do = 0;

            /* renamed from: if, reason: not valid java name */
            @KeepForSdk
            public int f10192if = 0;

            /* renamed from: for, reason: not valid java name */
            @KeepForSdk
            public int f10191for = 0;
        }

        @KeepForSdk
        /* renamed from: do, reason: not valid java name */
        C0053if mo5611do(Context context, String str, Cdo cdo);
    }

    public DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.f10189do = context;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m5603case(ClassLoader classLoader) {
        EV ev;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                ev = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                ev = queryLocalInterface instanceof EV ? (EV) queryLocalInterface : new EV(iBinder);
            }
            f10177do = ev;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new Cdo("Failed to instantiate dynamite loader", e);
        }
    }

    @KeepForSdk
    /* renamed from: do, reason: not valid java name */
    public static int m5604do(Context context, String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String.valueOf(declaredField.get(null));
            return 0;
        } catch (ClassNotFoundException unused) {
            return 0;
        } catch (Exception e) {
            "Failed to load module descriptor class: ".concat(String.valueOf(e.getMessage()));
            return 0;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m5605else(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f10188if)) {
            return true;
        }
        boolean z = false;
        if (f10188if == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z = true;
            }
            Boolean valueOf = Boolean.valueOf(z);
            f10188if = valueOf;
            z = valueOf.booleanValue();
            if (z && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                f10187do = true;
            }
        }
        return z;
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    /* renamed from: for, reason: not valid java name */
    public static DynamiteModule m5606for(Context context, Cif cif, String str) {
        DynamiteModule dynamiteModule;
        Boolean bool;
        InterfaceC0456Qm p;
        DynamiteModule dynamiteModule2;
        EV ev;
        Boolean valueOf;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new Cdo("null application Context");
        }
        ThreadLocal threadLocal = f10184do;
        GU gu = (GU) threadLocal.get();
        GU gu2 = new GU(0);
        threadLocal.set(gu2);
        C3626rR c3626rR = f10185do;
        long longValue = ((Long) c3626rR.get()).longValue();
        try {
            c3626rR.set(Long.valueOf(SystemClock.elapsedRealtime()));
            Cif.C0053if mo5611do = cif.mo5611do(context, str, f10178do);
            int i = mo5611do.f10190do;
            int i2 = mo5611do.f10192if;
            int i3 = mo5611do.f10191for;
            if (i3 != 0) {
                if (i3 == -1) {
                    if (i != 0) {
                        i3 = -1;
                    }
                }
                if (i3 != 1 || i2 != 0) {
                    if (i3 == -1) {
                        "Selected local version of ".concat(str);
                        dynamiteModule = new DynamiteModule(applicationContext);
                    } else {
                        try {
                            if (i3 != 1) {
                                throw new Cdo("VersionPolicy returned invalid code:" + i3);
                            }
                            try {
                                synchronized (DynamiteModule.class) {
                                    if (!m5605else(context)) {
                                        throw new Cdo("Remote loading disabled");
                                    }
                                    bool = f10182do;
                                }
                                if (bool == null) {
                                    throw new Cdo("Failed to determine which loading route to use.");
                                }
                                if (bool.booleanValue()) {
                                    synchronized (DynamiteModule.class) {
                                        ev = f10177do;
                                    }
                                    if (ev == null) {
                                        throw new Cdo("DynamiteLoaderV2 was not cached.");
                                    }
                                    GU gu3 = (GU) threadLocal.get();
                                    if (gu3 == null || gu3.f1190do == null) {
                                        throw new Cdo("No result cursor");
                                    }
                                    Context applicationContext2 = context.getApplicationContext();
                                    Cursor cursor = gu3.f1190do;
                                    new BinderC3652rv(null);
                                    synchronized (DynamiteModule.class) {
                                        valueOf = Boolean.valueOf(f10176do >= 2);
                                    }
                                    Context context2 = (Context) BinderC3652rv.o(valueOf.booleanValue() ? ev.o(new BinderC3652rv(applicationContext2), str, i2, new BinderC3652rv(cursor)) : ev.n(new BinderC3652rv(applicationContext2), str, i2, new BinderC3652rv(cursor)));
                                    if (context2 == null) {
                                        throw new Cdo("Failed to get module context");
                                    }
                                    dynamiteModule2 = new DynamiteModule(context2);
                                } else {
                                    C4102zV m5607goto = m5607goto(context);
                                    if (m5607goto == null) {
                                        throw new Cdo("Failed to create IDynamiteLoader.");
                                    }
                                    Parcel zzB = m5607goto.zzB(6, m5607goto.zza());
                                    int readInt = zzB.readInt();
                                    zzB.recycle();
                                    if (readInt >= 3) {
                                        GU gu4 = (GU) threadLocal.get();
                                        if (gu4 == null) {
                                            throw new Cdo("No cached result cursor holder");
                                        }
                                        p = m5607goto.o(new BinderC3652rv(context), str, i2, new BinderC3652rv(gu4.f1190do));
                                    } else {
                                        p = readInt == 2 ? m5607goto.p(new BinderC3652rv(context), str, i2) : m5607goto.n(new BinderC3652rv(context), str, i2);
                                    }
                                    Object o = BinderC3652rv.o(p);
                                    if (o == null) {
                                        throw new Cdo("Failed to load remote module.");
                                    }
                                    dynamiteModule2 = new DynamiteModule((Context) o);
                                }
                                dynamiteModule = dynamiteModule2;
                            } catch (RemoteException e) {
                                throw new Cdo("Failed to load remote module.", e);
                            } catch (Cdo e2) {
                                throw e2;
                            } catch (Throwable th) {
                                CrashUtils.addDynamiteErrorToDropBox(context, th);
                                throw new Cdo("Failed to load remote module.", th);
                            }
                        } catch (Cdo e3) {
                            e3.getMessage();
                            int i4 = mo5611do.f10190do;
                            if (i4 == 0 || cif.mo5611do(context, str, new Ctry(i4)).f10191for != -1) {
                                throw new Cdo("Remote load failed. No local fallback found.", e3);
                            }
                            "Selected local version of ".concat(str);
                            dynamiteModule = new DynamiteModule(applicationContext);
                        }
                    }
                    return dynamiteModule;
                }
            }
            throw new Cdo("No acceptable module " + str + " found. Local version is " + mo5611do.f10190do + " and remote version is " + mo5611do.f10192if + ".");
        } finally {
            if (longValue == 0) {
                f10185do.remove();
            } else {
                f10185do.set(Long.valueOf(longValue));
            }
            Cursor cursor2 = gu2.f1190do;
            if (cursor2 != null) {
                cursor2.close();
            }
            f10184do.set(gu);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static C4102zV m5607goto(Context context) {
        C4102zV c4102zV;
        synchronized (DynamiteModule.class) {
            C4102zV c4102zV2 = f10186do;
            if (c4102zV2 != null) {
                return c4102zV2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    c4102zV = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    c4102zV = queryLocalInterface instanceof C4102zV ? (C4102zV) queryLocalInterface : new C4102zV(iBinder);
                }
                if (c4102zV != null) {
                    f10186do = c4102zV;
                    return c4102zV;
                }
            } catch (Exception e) {
                e.getMessage();
            }
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x013d, code lost:
    
        if (r2 != false) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a7 A[Catch: all -> 0x01ae, TryCatch #7 {all -> 0x01ae, blocks: (B:3:0x0002, B:9:0x00c2, B:73:0x00c8, B:11:0x00d2, B:42:0x0143, B:26:0x014f, B:59:0x01a7, B:60:0x01aa, B:53:0x01a0, B:77:0x00ce, B:135:0x01ad, B:5:0x0003, B:80:0x000a, B:81:0x0026, B:88:0x00bf, B:93:0x0047, B:110:0x0098, B:118:0x009b, B:129:0x00b4, B:8:0x00c1, B:132:0x00ba), top: B:2:0x0002, inners: #5, #11 }] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m5608new(android.content.Context r11, java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m5608new(android.content.Context, java.lang.String, boolean):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd A[Catch: all -> 0x00e9, TryCatch #2 {all -> 0x00e9, blocks: (B:41:0x00a6, B:42:0x00ad, B:45:0x00c8, B:47:0x00cd, B:48:0x00ce, B:49:0x00e8), top: B:40:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ce A[Catch: all -> 0x00e9, TryCatch #2 {all -> 0x00e9, blocks: (B:41:0x00a6, B:42:0x00ad, B:45:0x00c8, B:47:0x00cd, B:48:0x00ce, B:49:0x00e8), top: B:40:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ed  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m5609try(android.content.Context r8, java.lang.String r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m5609try(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    @KeepForSdk
    /* renamed from: if, reason: not valid java name */
    public final IBinder m5610if(String str) {
        try {
            return (IBinder) this.f10189do.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new Cdo("Failed to instantiate module class: ".concat(String.valueOf(str)), e);
        }
    }
}
