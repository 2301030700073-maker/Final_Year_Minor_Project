package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.cloudmessaging.zzd;
import com.google.android.gms.internal.cloudmessaging.zzf;
import j$.util.Objects;
import java.util.regex.Matcher;

/* loaded from: classes.dex */
public final class UO extends zzf {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TA f3864do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UO(TA ta, Looper looper) {
        super(looper);
        this.f3864do = ta;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        TA ta = this.f3864do;
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new ZQ());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zzd) {
                        ta.f3610do = (zzd) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        ta.f3613if = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!Objects.equals(action, "com.google.android.c2dm.intent.REGISTRATION")) {
                    if (Log.isLoggable("Rpc", 3)) {
                        "Unexpected response action: ".concat(String.valueOf(action));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra != null) {
                    Matcher matcher = TA.f3606do.matcher(stringExtra);
                    if (!matcher.matches()) {
                        if (Log.isLoggable("Rpc", 3)) {
                            "Unexpected response string: ".concat(stringExtra);
                            return;
                        }
                        return;
                    }
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group != null) {
                        Bundle extras = intent2.getExtras();
                        extras.putString("registration_id", group2);
                        ta.m2226new(extras, group);
                        return;
                    }
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    "Unexpected response, no error or registration id ".concat(String.valueOf(intent2.getExtras()));
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    "Received InstanceID error ".concat(stringExtra2);
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (ta.f3611do) {
                        int i = 0;
                        while (true) {
                            C2680eE c2680eE = ta.f3611do;
                            if (i < c2680eE.f12632for) {
                                ta.m2226new(intent2.getExtras(), (String) c2680eE.m6527goto(i));
                                i++;
                            }
                        }
                    }
                    return;
                }
                String[] split = stringExtra2.split("\\|");
                if (split.length <= 2 || !Objects.equals(split[1], "ID")) {
                    "Unexpected structured response ".concat(stringExtra2);
                    return;
                }
                String str = split[2];
                String str2 = split[3];
                if (str2.startsWith(CertificateUtil.DELIMITER)) {
                    str2 = str2.substring(1);
                }
                ta.m2226new(intent2.putExtra("error", str2).getExtras(), str);
            }
        }
    }
}
