package com.google.android.gms.ads.rewarded;

import defpackage.C0820cd;

/* loaded from: classes.dex */
public interface RewardItem {
    public static final RewardItem DEFAULT_REWARD = new C0820cd(2);

    int getAmount();

    String getType();
}
