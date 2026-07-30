package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.session.MediaButtonReceiver;
import defpackage.C3532ps;
import defpackage.C3645ro;
import defpackage.C3649rs;
import defpackage.C3767ts;
import defpackage.F2;
import defpackage.InterfaceC3473os;
import defpackage.InterfaceC3591qs;
import defpackage.InterfaceC3708ss;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f5010do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5011do;

    public static class CustomActionResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        /* renamed from: do, reason: not valid java name */
        public final void mo3167do(int i, Bundle bundle) {
        }
    }

    public static class ItemReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        /* renamed from: do */
        public final void mo3167do(int i, Bundle bundle) {
            MediaSessionCompat.m3184do(bundle);
            if (i != 0) {
                throw null;
            }
            if (bundle == null) {
                throw null;
            }
            if (!bundle.containsKey("media_item")) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable != null && !(parcelable instanceof MediaItem)) {
                throw null;
            }
            throw null;
        }
    }

    public static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        /* renamed from: do */
        public final void mo3167do(int i, Bundle bundle) {
            MediaSessionCompat.m3184do(bundle);
            if (i != 0) {
                throw null;
            }
            if (bundle == null) {
                throw null;
            }
            if (!bundle.containsKey("search_results")) {
                throw null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            if (parcelableArray == null) {
                throw null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            throw null;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$case, reason: invalid class name */
    public interface Ccase {
        /* renamed from: do, reason: not valid java name */
        void mo3169do();

        /* renamed from: for, reason: not valid java name */
        void mo3170for(Messenger messenger, String str, Bundle bundle);

        /* renamed from: if, reason: not valid java name */
        void mo3171if();
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$do, reason: invalid class name */
    public static class Cdo extends Handler {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<Ccase> f5014do;

        /* renamed from: if, reason: not valid java name */
        public WeakReference<Messenger> f5015if;

        public Cdo(Ccase ccase) {
            this.f5014do = new WeakReference<>(ccase);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f5015if;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            WeakReference<Ccase> weakReference2 = this.f5014do;
            if (weakReference2.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.m3184do(data);
            Ccase ccase = weakReference2.get();
            Messenger messenger = this.f5015if.get();
            try {
                int i = message.what;
                if (i == 1) {
                    MediaSessionCompat.m3184do(data.getBundle("data_root_hints"));
                    data.getString("data_media_item_id");
                    ccase.mo3171if();
                } else if (i == 2) {
                    ccase.mo3169do();
                } else if (i != 3) {
                    message.toString();
                } else {
                    Bundle bundle = data.getBundle("data_options");
                    MediaSessionCompat.m3184do(bundle);
                    MediaSessionCompat.m3184do(data.getBundle("data_notify_children_changed_options"));
                    String string = data.getString("data_media_item_id");
                    data.getParcelableArrayList("data_media_item_list");
                    ccase.mo3170for(messenger, string, bundle);
                }
            } catch (BadParcelableException unused) {
                if (message.what == 1) {
                    ccase.mo3169do();
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: do, reason: not valid java name */
        public final Bundle f5016do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Messenger f5017do;

        public Celse(IBinder iBinder, Bundle bundle) {
            this.f5017do = new Messenger(iBinder);
            this.f5016do = bundle;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3172do(int i, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f5017do.send(obtain);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$for, reason: invalid class name */
    public static class Cfor implements Ccase, Cif.Cdo {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Context f5019do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final MediaBrowser f5020do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Bundle f5021do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Messenger f5022do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Celse f5024do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public MediaSessionCompat.Token f5025do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f5023do = new Cdo(this);

        /* renamed from: do, reason: not valid java name */
        public final F2<String, Cgoto> f5018do = new F2<>();

        public Cfor(Context context, ComponentName componentName, MediaButtonReceiver.Cdo cdo) {
            this.f5019do = context;
            Bundle bundle = new Bundle();
            this.f5021do = bundle;
            bundle.putInt("extra_client_version", 1);
            ((Cif) cdo).f5028do = this;
            this.f5020do = new MediaBrowser(context, componentName, ((Cif) cdo).f5029do, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.Ccase
        /* renamed from: do */
        public final void mo3169do() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.Ccase
        /* renamed from: for */
        public final void mo3170for(Messenger messenger, String str, Bundle bundle) {
            if (this.f5022do != messenger) {
                return;
            }
            Cgoto orDefault = this.f5018do.getOrDefault(str, null);
            if (orDefault == null) {
                int i = MediaBrowserCompat.f5010do;
            } else {
                orDefault.m3173do(bundle);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.Ccase
        /* renamed from: if */
        public final void mo3171if() {
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: do, reason: not valid java name */
        public final ArrayList f5026do = new ArrayList();

        /* renamed from: if, reason: not valid java name */
        public final ArrayList f5027if = new ArrayList();

        /* renamed from: do, reason: not valid java name */
        public final void m3173do(Bundle bundle) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.f5027if;
                if (i >= arrayList.size()) {
                    return;
                }
                if (C3645ro.m8002if((Bundle) arrayList.get(i), bundle)) {
                    return;
                }
                i++;
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public Cdo f5028do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C3532ps f5029do = new C3532ps(new C0021if());

        /* renamed from: android.support.v4.media.MediaBrowserCompat$if$do, reason: invalid class name */
        public interface Cdo {
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$if$if, reason: invalid class name and collision with other inner class name */
        public class C0021if implements InterfaceC3473os {
            public C0021if() {
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$new, reason: invalid class name */
    public static class Cnew extends Cfor {
        public Cnew(Context context, ComponentName componentName, MediaButtonReceiver.Cdo cdo) {
            super(context, componentName, cdo);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$this, reason: invalid class name */
    public static abstract class Cthis {

        /* renamed from: android.support.v4.media.MediaBrowserCompat$this$do, reason: invalid class name */
        public class Cdo implements InterfaceC3591qs {
            public Cdo() {
            }

            @Override // defpackage.InterfaceC3591qs
            /* renamed from: for, reason: not valid java name */
            public final void mo3174for(List list) {
                Cthis.this.getClass();
                MediaItem.m3168do(list);
            }

            @Override // defpackage.InterfaceC3591qs
            public final void onError() {
                Cthis.this.getClass();
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$this$if, reason: invalid class name */
        public class Cif extends Cdo implements InterfaceC3708ss {
            public Cif() {
                super();
            }

            @Override // defpackage.InterfaceC3708ss
            /* renamed from: do, reason: not valid java name */
            public final void mo3175do() {
                Cthis.this.getClass();
            }

            @Override // defpackage.InterfaceC3708ss
            /* renamed from: if, reason: not valid java name */
            public final void mo3176if(List list) {
                MediaItem.m3168do(list);
                Cthis.this.getClass();
            }
        }

        public Cthis() {
            new Binder();
            if (Build.VERSION.SDK_INT >= 26) {
                new C3767ts(new Cif());
            } else {
                new C3649rs(new Cdo());
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$try, reason: invalid class name */
    public static class Ctry extends Cnew {
        public Ctry(Context context, ComponentName componentName, MediaButtonReceiver.Cdo cdo) {
            super(context, componentName, cdo);
        }
    }

    static {
        Log.isLoggable("MediaBrowserCompat", 3);
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, MediaButtonReceiver.Cdo cdo) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f5011do = new Ctry(context, componentName, cdo);
        } else if (i >= 23) {
            this.f5011do = new Cnew(context, componentName, cdo);
        } else {
            this.f5011do = new Cfor(context, componentName, cdo);
        }
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final MediaDescriptionCompat f5012do;

        /* renamed from: for, reason: not valid java name */
        public final int f5013for;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<MediaItem> {
            @Override // android.os.Parcelable.Creator
            public final MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.f5033break)) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            this.f5013for = i;
            this.f5012do = mediaDescriptionCompat;
        }

        /* renamed from: do, reason: not valid java name */
        public static void m3168do(List list) {
            MediaItem mediaItem;
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                for (Object obj : list) {
                    if (obj != null) {
                        MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                        mediaItem = new MediaItem(MediaDescriptionCompat.m3177do(mediaItem2.getDescription()), mediaItem2.getFlags());
                    } else {
                        mediaItem = null;
                    }
                    arrayList.add(mediaItem);
                }
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaItem{mFlags=" + this.f5013for + ", mDescription=" + this.f5012do + '}';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f5013for);
            this.f5012do.writeToParcel(parcel, i);
        }

        public MediaItem(Parcel parcel) {
            this.f5013for = parcel.readInt();
            this.f5012do = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }
}
