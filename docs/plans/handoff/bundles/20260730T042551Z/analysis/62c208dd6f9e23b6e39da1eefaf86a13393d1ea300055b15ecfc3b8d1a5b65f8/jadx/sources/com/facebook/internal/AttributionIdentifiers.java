package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import defpackage.MJ;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class AttributionIdentifiers {
    private static final String ANDROID_ID_COLUMN_NAME = "androidid";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    public static final String ATTRIBUTION_ID_CONTENT_PROVIDER = "com.facebook.katana.provider.AttributionIdProvider";
    private static final String ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI = "com.facebook.wakizashi.provider.AttributionIdProvider";
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000;
    private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
    public static AttributionIdentifiers cachedIdentifiers;
    private String androidAdvertiserIdValue;
    private String androidInstallerPackage;
    private String attributionId;
    private long fetchTime;
    private boolean isTrackingLimited;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = AttributionIdentifiers.class.getCanonicalName();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        private final AttributionIdentifiers cacheAndReturnIdentifiers(AttributionIdentifiers attributionIdentifiers) {
            attributionIdentifiers.fetchTime = System.currentTimeMillis();
            AttributionIdentifiers.cachedIdentifiers = attributionIdentifiers;
            return attributionIdentifiers;
        }

        public static /* synthetic */ void getATTRIBUTION_ID_CONTENT_PROVIDER$facebook_core_release$annotations() {
        }

        private final AttributionIdentifiers getAndroidId(Context context) {
            AttributionIdentifiers androidIdViaReflection = getAndroidIdViaReflection(context);
            if (androidIdViaReflection != null) {
                return androidIdViaReflection;
            }
            AttributionIdentifiers androidIdViaService = getAndroidIdViaService(context);
            return androidIdViaService == null ? new AttributionIdentifiers() : androidIdViaService;
        }

        private final AttributionIdentifiers getAndroidIdViaReflection(Context context) {
            Object invokeMethodQuietly;
            try {
                if (!isGooglePlayServicesAvailable(context)) {
                    return null;
                }
                boolean z = false;
                Method methodQuietly = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
                if (methodQuietly == null || (invokeMethodQuietly = Utility.invokeMethodQuietly(null, methodQuietly, context)) == null) {
                    return null;
                }
                Method methodQuietly2 = Utility.getMethodQuietly(invokeMethodQuietly.getClass(), "getId", (Class<?>[]) new Class[0]);
                Method methodQuietly3 = Utility.getMethodQuietly(invokeMethodQuietly.getClass(), "isLimitAdTrackingEnabled", (Class<?>[]) new Class[0]);
                if (methodQuietly2 != null && methodQuietly3 != null) {
                    AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                    attributionIdentifiers.androidAdvertiserIdValue = (String) Utility.invokeMethodQuietly(invokeMethodQuietly, methodQuietly2, new Object[0]);
                    Boolean bool = (Boolean) Utility.invokeMethodQuietly(invokeMethodQuietly, methodQuietly3, new Object[0]);
                    if (bool != null) {
                        z = bool.booleanValue();
                    }
                    attributionIdentifiers.isTrackingLimited = z;
                    return attributionIdentifiers;
                }
                return null;
            } catch (Exception e) {
                Utility.logd("android_id", e);
                return null;
            }
        }

        private final AttributionIdentifiers getAndroidIdViaService(Context context) {
            GoogleAdServiceConnection googleAdServiceConnection = new GoogleAdServiceConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, googleAdServiceConnection, 1)) {
                    try {
                        GoogleAdInfo googleAdInfo = new GoogleAdInfo(googleAdServiceConnection.getBinder());
                        AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                        attributionIdentifiers.androidAdvertiserIdValue = googleAdInfo.getAdvertiserId();
                        attributionIdentifiers.isTrackingLimited = googleAdInfo.isTrackingLimited();
                        return attributionIdentifiers;
                    } catch (Exception e) {
                        Utility.logd("android_id", e);
                    } finally {
                        context.unbindService(googleAdServiceConnection);
                    }
                }
            } catch (SecurityException unused) {
            }
            return null;
        }

        public static /* synthetic */ void getCachedIdentifiers$facebook_core_release$annotations() {
        }

        private final String getInstallerPackageName(Context context) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return packageManager.getInstallerPackageName(context.getPackageName());
        }

        private final boolean isGooglePlayServicesAvailable(Context context) {
            Method methodQuietly = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
            if (methodQuietly == null) {
                return false;
            }
            Object invokeMethodQuietly = Utility.invokeMethodQuietly(null, methodQuietly, context);
            return (invokeMethodQuietly instanceof Integer) && C0173Do.m394do(invokeMethodQuietly, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0084 A[Catch: all -> 0x00f5, Exception -> 0x00f7, TryCatch #4 {Exception -> 0x00f7, all -> 0x00f5, blocks: (B:3:0x0010, B:5:0x001e, B:7:0x0022, B:11:0x0033, B:13:0x004e, B:15:0x005d, B:17:0x007e, B:19:0x0084, B:21:0x0089, B:23:0x008e, B:57:0x0067, B:59:0x0076, B:61:0x00ed, B:62:0x00f4), top: B:2:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0089 A[Catch: all -> 0x00f5, Exception -> 0x00f7, TryCatch #4 {Exception -> 0x00f7, all -> 0x00f5, blocks: (B:3:0x0010, B:5:0x001e, B:7:0x0022, B:11:0x0033, B:13:0x004e, B:15:0x005d, B:17:0x007e, B:19:0x0084, B:21:0x0089, B:23:0x008e, B:57:0x0067, B:59:0x0076, B:61:0x00ed, B:62:0x00f4), top: B:2:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008e A[Catch: all -> 0x00f5, Exception -> 0x00f7, TRY_LEAVE, TryCatch #4 {Exception -> 0x00f7, all -> 0x00f5, blocks: (B:3:0x0010, B:5:0x001e, B:7:0x0022, B:11:0x0033, B:13:0x004e, B:15:0x005d, B:17:0x007e, B:19:0x0084, B:21:0x0089, B:23:0x008e, B:57:0x0067, B:59:0x0076, B:61:0x00ed, B:62:0x00f4), top: B:2:0x0010 }] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0114  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.internal.AttributionIdentifiers getAttributionIdentifiers(android.content.Context r13) {
            /*
                Method dump skipped, instructions count: 280
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.AttributionIdentifiers.Companion.getAttributionIdentifiers(android.content.Context):com.facebook.internal.AttributionIdentifiers");
        }

        public final boolean isTrackingLimited(Context context) {
            C0173Do.m401try(context, "context");
            AttributionIdentifiers attributionIdentifiers = getAttributionIdentifiers(context);
            return attributionIdentifiers != null && attributionIdentifiers.isTrackingLimited();
        }
    }

    public static final class GoogleAdInfo implements IInterface {
        public static final Companion Companion = new Companion(null);
        private static final int FIRST_TRANSACTION_CODE = 1;
        private static final int SECOND_TRANSACTION_CODE = 2;
        private final IBinder binder;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }
        }

        public GoogleAdInfo(IBinder iBinder) {
            C0173Do.m401try(iBinder, "binder");
            this.binder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public final String getAdvertiserId() {
            Parcel obtain = Parcel.obtain();
            C0173Do.m399new(obtain, "obtain()");
            Parcel obtain2 = Parcel.obtain();
            C0173Do.m399new(obtain2, "obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.binder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public final boolean isTrackingLimited() {
            Parcel obtain = Parcel.obtain();
            C0173Do.m399new(obtain, "obtain()");
            Parcel obtain2 = Parcel.obtain();
            C0173Do.m399new(obtain2, "obtain()");
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.binder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public static final class GoogleAdServiceConnection implements ServiceConnection {
        private final AtomicBoolean consumed = new AtomicBoolean(false);
        private final BlockingQueue<IBinder> queue = new LinkedBlockingDeque();

        public final IBinder getBinder() {
            if (!(!this.consumed.compareAndSet(true, true))) {
                throw new IllegalStateException("Binder already consumed".toString());
            }
            IBinder take = this.queue.take();
            C0173Do.m399new(take, "queue.take()");
            return take;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.queue.put(iBinder);
                } catch (InterruptedException unused) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static final AttributionIdentifiers getAttributionIdentifiers(Context context) {
        return Companion.getAttributionIdentifiers(context);
    }

    public static final boolean isTrackingLimited(Context context) {
        return Companion.isTrackingLimited(context);
    }

    public final String getAndroidAdvertiserId() {
        if (C3756th.m8305this() && MJ.m1410do()) {
            return this.androidAdvertiserIdValue;
        }
        return null;
    }

    public final String getAndroidInstallerPackage() {
        return this.androidInstallerPackage;
    }

    public final String getAttributionId() {
        return this.attributionId;
    }

    public final boolean isTrackingLimited() {
        return this.isTrackingLimited;
    }
}
