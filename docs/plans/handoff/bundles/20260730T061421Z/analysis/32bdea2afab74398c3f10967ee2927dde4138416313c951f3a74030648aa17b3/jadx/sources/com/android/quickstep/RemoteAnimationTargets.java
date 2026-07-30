package com.android.quickstep;

import com.android.quickstep.RemoteAnimationTargets;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class RemoteAnimationTargets {
    public final RemoteAnimationTargetCompat[] apps;
    public final boolean hasRecents;
    public final CopyOnWriteArrayList mReleaseChecks = new CopyOnWriteArrayList();
    public boolean mReleased = false;
    public final int targetMode;
    public final RemoteAnimationTargetCompat[] unfilteredApps;
    public final RemoteAnimationTargetCompat[] wallpapers;

    public class ReleaseCheck {
        public Runnable mAfterApplyCallback;
        public boolean mCanRelease = false;

        public void addOnSafeToReleaseCallback(final Runnable runnable) {
            if (this.mCanRelease) {
                runnable.run();
                return;
            }
            final Runnable runnable2 = this.mAfterApplyCallback;
            if (runnable2 == null) {
                this.mAfterApplyCallback = runnable;
            } else {
                this.mAfterApplyCallback = new Runnable() { // from class: c.a.b.d1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable3 = runnable;
                        Runnable runnable4 = runnable2;
                        runnable3.run();
                        runnable4.run();
                    }
                };
            }
        }

        public void setCanRelease(boolean z) {
            Runnable runnable;
            this.mCanRelease = z;
            if (!z || (runnable = this.mAfterApplyCallback) == null) {
                return;
            }
            this.mAfterApplyCallback = null;
            runnable.run();
        }
    }

    public RemoteAnimationTargets(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, int i) {
        boolean z = false;
        ArrayList arrayList = new ArrayList();
        if (remoteAnimationTargetCompatArr != null) {
            boolean z2 = false;
            for (RemoteAnimationTargetCompat remoteAnimationTargetCompat : remoteAnimationTargetCompatArr) {
                if (remoteAnimationTargetCompat.mode == i) {
                    arrayList.add(remoteAnimationTargetCompat);
                }
                z2 |= remoteAnimationTargetCompat.activityType == 3;
            }
            z = z2;
        }
        this.unfilteredApps = remoteAnimationTargetCompatArr;
        this.apps = (RemoteAnimationTargetCompat[]) arrayList.toArray(new RemoteAnimationTargetCompat[arrayList.size()]);
        this.wallpapers = remoteAnimationTargetCompatArr2;
        this.targetMode = i;
        this.hasRecents = z;
    }

    public void addReleaseCheck(ReleaseCheck releaseCheck) {
        this.mReleaseChecks.add(releaseCheck);
    }

    public RemoteAnimationTargetCompat findTask(int i) {
        for (RemoteAnimationTargetCompat remoteAnimationTargetCompat : this.apps) {
            if (remoteAnimationTargetCompat.taskId == i) {
                return remoteAnimationTargetCompat;
            }
        }
        return null;
    }

    public boolean isAnimatingHome() {
        for (RemoteAnimationTargetCompat remoteAnimationTargetCompat : this.unfilteredApps) {
            if (remoteAnimationTargetCompat.activityType == 2) {
                return true;
            }
        }
        return false;
    }

    public void release() {
        if (this.mReleased) {
            return;
        }
        Iterator it = this.mReleaseChecks.iterator();
        while (it.hasNext()) {
            ReleaseCheck releaseCheck = (ReleaseCheck) it.next();
            if (!releaseCheck.mCanRelease) {
                releaseCheck.addOnSafeToReleaseCallback(new Runnable() { // from class: c.a.b.R1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoteAnimationTargets.this.release();
                    }
                });
                return;
            }
        }
        this.mReleaseChecks.clear();
        this.mReleased = true;
        for (RemoteAnimationTargetCompat remoteAnimationTargetCompat : this.unfilteredApps) {
            remoteAnimationTargetCompat.release();
        }
        for (RemoteAnimationTargetCompat remoteAnimationTargetCompat2 : this.wallpapers) {
            remoteAnimationTargetCompat2.release();
        }
    }
}
