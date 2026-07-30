package com.android.launcher3.model;

import android.os.UserHandle;
import android.os.UserManager;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import com.android.launcher3.pm.UserCache;

/* loaded from: classes.dex */
public class UserManagerState {
    public final LongSparseArray allUsers = new LongSparseArray();
    public final LongSparseArray mQuietUsersSerialNoMap = new LongSparseArray();
    public final SparseBooleanArray mQuietUsersHashCodeMap = new SparseBooleanArray();

    public void init(UserCache userCache, UserManager userManager) {
        for (UserHandle userHandle : userCache.getUserProfiles()) {
            long serialNumberForUser = userCache.getSerialNumberForUser(userHandle);
            boolean isQuietModeEnabled = userManager.isQuietModeEnabled(userHandle);
            this.allUsers.put(serialNumberForUser, userHandle);
            this.mQuietUsersHashCodeMap.put(userHandle.hashCode(), isQuietModeEnabled);
            this.mQuietUsersSerialNoMap.put(serialNumberForUser, Boolean.valueOf(isQuietModeEnabled));
        }
    }

    public boolean isAnyProfileQuietModeEnabled() {
        for (int size = this.mQuietUsersHashCodeMap.size() - 1; size >= 0; size--) {
            if (this.mQuietUsersHashCodeMap.valueAt(size)) {
                return true;
            }
        }
        return false;
    }

    public boolean isUserQuiet(long j) {
        return ((Boolean) this.mQuietUsersSerialNoMap.get(j)).booleanValue();
    }

    public boolean isUserQuiet(UserHandle userHandle) {
        return this.mQuietUsersHashCodeMap.get(userHandle.hashCode());
    }
}
