package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.appevents.internal.AppEventUtility;
import defpackage.C3756th;
import defpackage.G0;
import defpackage.RunnableC3137j9;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class AnalyticsUserIDStore {
    private static final String ANALYTICS_USER_ID_KEY = "com.facebook.appevents.AnalyticsUserIDStore.userID";
    private static volatile boolean initialized;
    private static String userID;
    public static final AnalyticsUserIDStore INSTANCE = new AnalyticsUserIDStore();
    private static final String TAG = "AnalyticsUserIDStore";
    private static final ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    private AnalyticsUserIDStore() {
    }

    public static final String getUserID() {
        if (!initialized) {
            INSTANCE.initAndWait();
        }
        ReentrantReadWriteLock reentrantReadWriteLock = lock;
        reentrantReadWriteLock.readLock().lock();
        try {
            String str = userID;
            reentrantReadWriteLock.readLock().unlock();
            return str;
        } catch (Throwable th) {
            lock.readLock().unlock();
            throw th;
        }
    }

    private final void initAndWait() {
        if (initialized) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = lock;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (initialized) {
                reentrantReadWriteLock.writeLock().unlock();
                return;
            }
            userID = PreferenceManager.getDefaultSharedPreferences(C3756th.m8299do()).getString(ANALYTICS_USER_ID_KEY, null);
            initialized = true;
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            lock.writeLock().unlock();
            throw th;
        }
    }

    public static final void initStore() {
        if (initialized) {
            return;
        }
        InternalAppEventsLogger.Companion.getAnalyticsExecutor().execute(new G0(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initStore$lambda-0, reason: not valid java name */
    public static final void m5299initStore$lambda0() {
        INSTANCE.initAndWait();
    }

    public static final void setUserID(String str) {
        AppEventUtility.assertIsNotMainThread();
        if (!initialized) {
            INSTANCE.initAndWait();
        }
        InternalAppEventsLogger.Companion.getAnalyticsExecutor().execute(new RunnableC3137j9(str, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setUserID$lambda-1, reason: not valid java name */
    public static final void m5300setUserID$lambda1(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = lock;
        reentrantReadWriteLock.writeLock().lock();
        try {
            userID = str;
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C3756th.m8299do()).edit();
            edit.putString(ANALYTICS_USER_ID_KEY, userID);
            edit.apply();
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th) {
            lock.writeLock().unlock();
            throw th;
        }
    }
}
