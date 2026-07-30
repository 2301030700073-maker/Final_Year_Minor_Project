package com.android.contacts;

import android.app.Service;
import android.content.Intent;
import android.content.Loader;
import android.os.IBinder;
import android.util.Log;
import com.android.contacts.model.Contact;
import com.android.contacts.model.ContactLoader;

/* loaded from: classes.dex */
public class ViewNotificationService extends Service {
    private static final String TAG = ViewNotificationService.class.getSimpleName();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, final int i2) {
        ContactLoader contactLoader = new ContactLoader(this, intent.getData(), true);
        contactLoader.registerListener(0, new Loader.OnLoadCompleteListener<Contact>() { // from class: com.android.contacts.ViewNotificationService.1
            @Override // android.content.Loader.OnLoadCompleteListener
            public void onLoadComplete(Loader<Contact> loader, Contact contact) {
                try {
                    loader.reset();
                } catch (RuntimeException e) {
                    Log.e(ViewNotificationService.TAG, "Error reseting loader", e);
                }
                try {
                    ViewNotificationService.this.stopSelfResult(i2);
                } catch (RuntimeException e2) {
                    Log.e(ViewNotificationService.TAG, "Error stopping service", e2);
                }
            }
        });
        contactLoader.startLoading();
        return 3;
    }
}
