package com.android.launcher3.hybridhotseat;

import android.content.Intent;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.IntArray;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class HotseatEduController {
    public HotseatEduDialog mActiveDialog;
    public final Hotseat mHotseat;
    public final Launcher mLauncher;
    public ArrayList mNewItems = new ArrayList();
    public IntArray mNewScreens = null;
    public Runnable mOnOnboardingComplete;
    public List mPredictedApps;
    public HotseatRestoreHelper mRestoreHelper;

    public HotseatEduController(Launcher launcher, HotseatRestoreHelper hotseatRestoreHelper, Runnable runnable) {
        this.mLauncher = launcher;
        this.mHotseat = launcher.mHotseat;
        this.mRestoreHelper = hotseatRestoreHelper;
        this.mOnOnboardingComplete = runnable;
    }

    public static Intent getSettingsIntent() {
        return new Intent("android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS").addFlags(268435456);
    }
}
