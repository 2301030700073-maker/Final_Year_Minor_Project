package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Bundle;

/* loaded from: assets/audience_network.dex */
public interface DS {
    void AAj(Intent intent, Bundle bundle, C09886e c09886e);

    void AEP(boolean z);

    void AEs(boolean z);

    void AI1(Bundle bundle);

    String getCurrentClientToken();

    boolean onActivityResult(int i, int i2, Intent intent);

    void onDestroy();
}
