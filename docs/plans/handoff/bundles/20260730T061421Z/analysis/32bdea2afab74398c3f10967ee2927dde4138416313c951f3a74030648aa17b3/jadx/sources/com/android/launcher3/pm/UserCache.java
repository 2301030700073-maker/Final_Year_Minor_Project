package com.android.launcher3.pm;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class UserCache {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.Q0.d
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new UserCache(context);
        }
    });
    public final Context mContext;
    public final ArrayList mUserChangeListeners = new ArrayList();
    public final SimpleBroadcastReceiver mUserChangeReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.a.Q0.e
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            UserCache.a(UserCache.this, (Intent) obj);
        }
    });
    public final UserManager mUserManager;
    public ArrayMap mUserToSerialMap;
    public LongSparseArray mUsers;

    public UserCache(Context context) {
        this.mContext = context;
        this.mUserManager = (UserManager) context.getSystemService(UserManager.class);
    }

    public static void a(UserCache userCache, Intent intent) {
        userCache.enableAndResetCache();
        userCache.mUserChangeListeners.forEach(new Consumer() { // from class: c.a.a.Q0.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Runnable) obj).run();
            }
        });
    }

    public SafeCloseable addUserChangeListener(final Runnable runnable) {
        SafeCloseable safeCloseable;
        synchronized (this) {
            if (this.mUserChangeListeners.isEmpty()) {
                this.mUserChangeReceiver.register(this.mContext, "android.intent.action.MANAGED_PROFILE_ADDED", "android.intent.action.MANAGED_PROFILE_REMOVED");
                enableAndResetCache();
            }
            this.mUserChangeListeners.add(runnable);
            safeCloseable = new SafeCloseable() { // from class: c.a.a.Q0.f
                @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
                public final void close() {
                    UserCache userCache = UserCache.this;
                    Runnable runnable2 = runnable;
                    synchronized (userCache) {
                        userCache.mUserChangeListeners.remove(runnable2);
                        if (userCache.mUserChangeListeners.isEmpty()) {
                            userCache.mContext.unregisterReceiver(userCache.mUserChangeReceiver);
                            userCache.mUsers = null;
                            userCache.mUserToSerialMap = null;
                        }
                    }
                }
            };
        }
        return safeCloseable;
    }

    public final void enableAndResetCache() {
        synchronized (this) {
            this.mUsers = new LongSparseArray();
            this.mUserToSerialMap = new ArrayMap();
            List<UserHandle> userProfiles = this.mUserManager.getUserProfiles();
            if (userProfiles != null) {
                for (UserHandle userHandle : userProfiles) {
                    long serialNumberForUser = this.mUserManager.getSerialNumberForUser(userHandle);
                    this.mUsers.put(serialNumberForUser, userHandle);
                    this.mUserToSerialMap.put(userHandle, Long.valueOf(serialNumberForUser));
                }
            }
        }
    }

    public long getSerialNumberForUser(UserHandle userHandle) {
        synchronized (this) {
            if (this.mUserToSerialMap == null) {
                return this.mUserManager.getSerialNumberForUser(userHandle);
            }
            Long l = (Long) this.mUserToSerialMap.get(userHandle);
            return l == null ? 0L : l.longValue();
        }
    }

    public UserHandle getUserForSerialNumber(long j) {
        synchronized (this) {
            if (this.mUsers == null) {
                return this.mUserManager.getUserForSerialNumber(j);
            }
            return (UserHandle) this.mUsers.get(j);
        }
    }

    public List getUserProfiles() {
        synchronized (this) {
            if (this.mUsers != null) {
                return new ArrayList(this.mUserToSerialMap.keySet());
            }
            List<UserHandle> userProfiles = this.mUserManager.getUserProfiles();
            return userProfiles == null ? Collections.emptyList() : userProfiles;
        }
    }
}
