package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import androidx.media.Cbreak;
import defpackage.C0133Bs;
import defpackage.C3712sw;
import defpackage.C3826us;
import defpackage.C3885vs;
import defpackage.C4003xs;
import defpackage.F2;
import defpackage.InterfaceC3944ws;
import defpackage.InterfaceC4062ys;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: do, reason: not valid java name */
    public final F2<IBinder, Cif> f7163do = new F2<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccatch f7164do = new Ccatch(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f7165do;

    /* renamed from: androidx.media.MediaBrowserServiceCompat$break, reason: invalid class name */
    public static class Cbreak implements Cthis {

        /* renamed from: do, reason: not valid java name */
        public final Messenger f7166do;

        public Cbreak(Messenger messenger) {
            this.f7166do = messenger;
        }

        /* renamed from: do, reason: not valid java name */
        public final IBinder m4281do() {
            return this.f7166do.getBinder();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$case, reason: invalid class name */
    public class Ccase extends Ctry implements Cbreak.Cfor {
        public Ccase() {
            super();
        }

        @Override // androidx.media.Cbreak.Cfor
        /* renamed from: if, reason: not valid java name */
        public final void mo4282if(String str, Cbreak.Cif cif) {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.getClass();
            mediaBrowserServiceCompat.m4280if();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Ctry, androidx.media.MediaBrowserServiceCompat.Cnew, androidx.media.MediaBrowserServiceCompat.Cfor
        public final void onCreate() {
            int i = androidx.media.Cbreak.f7180do;
            Cbreak.Cdo cdo = new Cbreak.Cdo(MediaBrowserServiceCompat.this, this);
            ((Cnew) this).f7178do = cdo;
            cdo.onCreate();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$catch, reason: invalid class name */
    public final class Ccatch extends Handler {

        /* renamed from: do, reason: not valid java name */
        public final Cgoto f7168do;

        public Ccatch(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            this.f7168do = mediaBrowserServiceCompat.new Cgoto();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4283do(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Bundle data = message.getData();
            int i = message.what;
            Cgoto cgoto = this.f7168do;
            switch (i) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.m3184do(bundle);
                    String string = data.getString("data_package_name");
                    int i2 = data.getInt("data_calling_pid");
                    int i3 = data.getInt("data_calling_uid");
                    Cbreak cbreak = new Cbreak(message.replyTo);
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                    boolean z = false;
                    if (string == null) {
                        mediaBrowserServiceCompat.getClass();
                    } else {
                        String[] packagesForUid = mediaBrowserServiceCompat.getPackageManager().getPackagesForUid(i3);
                        int length = packagesForUid.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 < length) {
                                if (packagesForUid[i4].equals(string)) {
                                    z = true;
                                } else {
                                    i4++;
                                }
                            }
                        }
                    }
                    if (z) {
                        mediaBrowserServiceCompat.f7164do.m4283do(new androidx.media.Cdo(cgoto, cbreak, string, i2, i3, bundle));
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i3 + " package=" + string);
                case 2:
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Cif(cgoto, new Cbreak(message.replyTo)));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m3184do(bundle2);
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Cfor(cgoto, new Cbreak(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), bundle2));
                    return;
                case 4:
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Cnew(cgoto, new Cbreak(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token")));
                    return;
                case 5:
                    String string2 = data.getString("data_media_item_id");
                    ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    Cbreak cbreak2 = new Cbreak(message.replyTo);
                    cgoto.getClass();
                    if (TextUtils.isEmpty(string2) || resultReceiver == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Ctry(cgoto, cbreak2, string2, resultReceiver));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.m3184do(bundle3);
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Ccase(cgoto, new Cbreak(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3));
                    return;
                case 7:
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Celse(cgoto, new Cbreak(message.replyTo)));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.m3184do(bundle4);
                    String string3 = data.getString("data_search_query");
                    ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    Cbreak cbreak3 = new Cbreak(message.replyTo);
                    cgoto.getClass();
                    if (TextUtils.isEmpty(string3) || resultReceiver2 == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Cgoto(cgoto, cbreak3, string3, bundle4, resultReceiver2));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.m3184do(bundle5);
                    String string4 = data.getString("data_custom_action");
                    ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    Cbreak cbreak4 = new Cbreak(message.replyTo);
                    cgoto.getClass();
                    if (TextUtils.isEmpty(string4) || resultReceiver3 == null) {
                        return;
                    }
                    MediaBrowserServiceCompat.this.f7164do.m4283do(new androidx.media.Cthis(cgoto, cbreak4, string4, bundle5, resultReceiver3));
                    return;
                default:
                    message.toString();
                    return;
            }
        }

        @Override // android.os.Handler
        public final boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            data.putInt("data_calling_pid", Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$do, reason: invalid class name */
    public static final class Cdo {
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$else, reason: invalid class name */
    public class Celse extends Ccase {
        public Celse(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$for, reason: invalid class name */
    public interface Cfor {
        void onCreate();
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$goto, reason: invalid class name */
    public class Cgoto {
        public Cgoto() {
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$if, reason: invalid class name */
    public class Cif implements IBinder.DeathRecipient {

        /* renamed from: do, reason: not valid java name */
        public final Cthis f7170do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f7172do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashMap<String, List<C3712sw<IBinder, Bundle>>> f7173do = new HashMap<>();

        /* renamed from: androidx.media.MediaBrowserServiceCompat$if$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                Cif cif = Cif.this;
                MediaBrowserServiceCompat.this.f7163do.remove(((Cbreak) cif.f7170do).m4281do());
            }
        }

        public Cif(String str, int i, int i2, Cthis cthis) {
            this.f7172do = str;
            if (Build.VERSION.SDK_INT >= 28) {
                new C0133Bs(str, i, i2);
            }
            this.f7170do = cthis;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.f7164do.post(new Cdo());
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$new, reason: invalid class name */
    public class Cnew implements Cfor, InterfaceC3944ws {

        /* renamed from: do, reason: not valid java name */
        public Messenger f7175do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f7177do = new ArrayList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3826us f7178do;

        public Cnew() {
        }

        @Override // defpackage.InterfaceC3944ws
        /* renamed from: for, reason: not valid java name */
        public final void mo4284for(String str, C3885vs<List<Parcel>> c3885vs) {
            MediaBrowserServiceCompat.this.m4280if();
        }

        @Override // defpackage.InterfaceC3944ws
        /* renamed from: new, reason: not valid java name */
        public final void mo4285new(String str, int i, Bundle bundle) {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            if (bundle != null && bundle.getInt("extra_client_version", 0) != 0) {
                bundle.remove("extra_client_version");
                this.f7175do = new Messenger(mediaBrowserServiceCompat.f7164do);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("extra_service_version", 2);
                bundle2.putBinder("extra_messenger", this.f7175do.getBinder());
                this.f7177do.add(bundle2);
            }
            new HashMap();
            if (Build.VERSION.SDK_INT >= 28) {
                new C0133Bs(str, -1, i);
            }
            mediaBrowserServiceCompat.getClass();
            mediaBrowserServiceCompat.m4279do();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Cfor
        public void onCreate() {
            C3826us c3826us = new C3826us(MediaBrowserServiceCompat.this, this);
            this.f7178do = c3826us;
            c3826us.onCreate();
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$this, reason: invalid class name */
    public interface Cthis {
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$try, reason: invalid class name */
    public class Ctry extends Cnew implements InterfaceC4062ys {
        public Ctry() {
            super();
        }

        @Override // defpackage.InterfaceC4062ys
        /* renamed from: do, reason: not valid java name */
        public final void mo4286do(C3885vs c3885vs) {
            MediaBrowserServiceCompat.this.getClass();
            c3885vs.m8483do(null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Cnew, androidx.media.MediaBrowserServiceCompat.Cfor
        public void onCreate() {
            C4003xs c4003xs = new C4003xs(MediaBrowserServiceCompat.this, this);
            ((Cnew) this).f7178do = c4003xs;
            c4003xs.onCreate();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Cdo m4279do();

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void m4280if();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f7165do.f7178do.onBind(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f7165do = new Celse(this);
        } else if (i >= 26) {
            this.f7165do = new Ccase();
        } else if (i >= 23) {
            this.f7165do = new Ctry();
        } else {
            this.f7165do = new Cnew();
        }
        this.f7165do.onCreate();
    }
}
