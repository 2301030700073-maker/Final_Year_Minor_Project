package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.cardview.widget.CardView;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentState;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaBrowserCompat {
    public static final boolean DEBUG = Log.isLoggable("MediaBrowserCompat", 3);
    public final MediaBrowserImplApi23 mImpl;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CallbackHandler extends Handler {
        public final WeakReference mCallbackImplRef;
        public WeakReference mCallbacksMessengerRef;

        public CallbackHandler(MediaBrowserImplApi23 mediaBrowserImplApi23) {
            this.mCallbackImplRef = new WeakReference(mediaBrowserImplApi23);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference weakReference = this.mCallbacksMessengerRef;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            WeakReference weakReference2 = this.mCallbackImplRef;
            if (weakReference2.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.ensureClassLoader(data);
            MediaBrowserImplApi23 mediaBrowserImplApi23 = (MediaBrowserImplApi23) weakReference2.get();
            Messenger messenger = (Messenger) this.mCallbacksMessengerRef.get();
            try {
                int i = message.what;
                if (i == 1) {
                    MediaSessionCompat.ensureClassLoader(data.getBundle("data_root_hints"));
                    data.getString("data_media_item_id");
                    mediaBrowserImplApi23.getClass();
                    return;
                }
                if (i == 2) {
                    mediaBrowserImplApi23.getClass();
                    return;
                }
                if (i != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    return;
                }
                MediaSessionCompat.ensureClassLoader(data.getBundle("data_options"));
                MediaSessionCompat.ensureClassLoader(data.getBundle("data_notify_children_changed_options"));
                String string = data.getString("data_media_item_id");
                data.getParcelableArrayList("data_media_item_list");
                if (mediaBrowserImplApi23.mCallbacksMessenger != messenger) {
                    return;
                }
                if (mediaBrowserImplApi23.mSubscriptions.get(string) != null) {
                    throw new ClassCastException();
                }
                if (MediaBrowserCompat.DEBUG) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + string);
                }
            } catch (BadParcelableException unused) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what == 1) {
                    mediaBrowserImplApi23.getClass();
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    class ItemReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.unparcelWithClassLoader(bundle);
            }
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class MediaBrowserImplApi23 {
        public final MediaBrowser mBrowserFwk;
        public Messenger mCallbacksMessenger;
        public final Context mContext;
        public MediaSessionCompat.Token mMediaSessionToken;
        public final Bundle mRootHints;
        public CardView.AnonymousClass1 mServiceBinderWrapper;
        public final CallbackHandler mHandler = new CallbackHandler(this);
        public final ArrayMap mSubscriptions = new ArrayMap(0);

        public MediaBrowserImplApi23(Context context, ComponentName componentName, DrawerHeaderBinding drawerHeaderBinding) {
            this.mContext = context;
            Bundle bundle = new Bundle();
            this.mRootHints = bundle;
            bundle.putInt("extra_client_version", 1);
            bundle.putInt("extra_calling_pid", Process.myPid());
            drawerHeaderBinding.drawerArrow = this;
            this.mBrowserFwk = new MediaBrowser(context, componentName, (MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21) drawerHeaderBinding.rootView, bundle);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MediaBrowserImplApi26 extends MediaBrowserImplApi23 {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.unparcelWithClassLoader(bundle);
            }
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
            parcelableArray.getClass();
            ArrayList arrayList = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            throw null;
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, DrawerHeaderBinding drawerHeaderBinding) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mImpl = new MediaBrowserImplApi26(context, componentName, drawerHeaderBinding);
        } else {
            this.mImpl = new MediaBrowserImplApi23(context, componentName, drawerHeaderBinding);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new FragmentState.AnonymousClass1(1);
        public final MediaDescriptionCompat mDescription;
        public final int mFlags;

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (TextUtils.isEmpty(mediaDescriptionCompat.mMediaId)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("description must have a non-empty media id");
                throw null;
            }
            this.mFlags = i;
            this.mDescription = mediaDescriptionCompat;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i);
        }

        public MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    class CustomActionResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
        }
    }
}
