package com.android.launcher3.util;

import android.os.Binder;

/* loaded from: classes.dex */
public class ObjectWrapper extends Binder {
    public Object mObject;

    public ObjectWrapper(Object obj) {
        this.mObject = obj;
    }
}
