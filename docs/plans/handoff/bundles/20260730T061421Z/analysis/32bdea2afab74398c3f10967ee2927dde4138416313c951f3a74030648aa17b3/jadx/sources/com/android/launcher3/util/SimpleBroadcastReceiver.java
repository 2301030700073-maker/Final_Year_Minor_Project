package com.android.launcher3.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class SimpleBroadcastReceiver extends BroadcastReceiver {
    public final Consumer mIntentConsumer;

    public SimpleBroadcastReceiver(Consumer consumer) {
        this.mIntentConsumer = consumer;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.mIntentConsumer.accept(intent);
    }

    public void register(Context context, String... strArr) {
        IntentFilter intentFilter = new IntentFilter();
        for (String str : strArr) {
            intentFilter.addAction(str);
        }
        context.registerReceiver(this, intentFilter);
    }
}
