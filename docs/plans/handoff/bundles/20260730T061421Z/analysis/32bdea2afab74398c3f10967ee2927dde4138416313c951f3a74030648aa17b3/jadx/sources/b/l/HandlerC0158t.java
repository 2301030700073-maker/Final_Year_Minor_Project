package b.l;

import android.os.Handler;
import android.os.Message;
import androidx.preference.PreferenceFragment;

/* renamed from: b.l.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class HandlerC0158t extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceFragment f1068a;

    public HandlerC0158t(PreferenceFragment preferenceFragment) {
        this.f1068a = preferenceFragment;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        this.f1068a.a();
    }
}
