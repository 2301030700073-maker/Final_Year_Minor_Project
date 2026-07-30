package com.google.android.play.core.integrity;

import android.app.Activity;
import defpackage.FG;

/* loaded from: classes3.dex */
public abstract class IntegrityTokenResponse {
    public abstract FG<Integer> showDialog(Activity activity, int i);

    public abstract String token();
}
