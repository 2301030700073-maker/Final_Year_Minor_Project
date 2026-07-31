package org.schabi.newpipe.views;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.menu.CascadingMenuPopup$3$1;
import androidx.compose.ui.Modifier;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$3;
import androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$5;
import androidx.media.MediaBrowserServiceCompat.ConnectionRecord;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroupAdapter;
import androidx.preference.PreferenceScreen;
import coil3.memory.MemoryCacheService;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusOverlayView extends Drawable implements ViewTreeObserver.OnGlobalFocusChangeListener, ViewTreeObserver.OnDrawListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnTouchModeChangeListener {
    public final AnonymousClass1 animator;
    public final Rect focusRect = new Rect();
    public WeakReference focused;
    public boolean isInTouchMode;
    public final Paint rectPaint;

    public FocusOverlayView(Context context) {
        Paint paint = new Paint();
        this.rectPaint = paint;
        this.animator = new AnonymousClass1(this, Looper.getMainLooper(), 0);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2.0f);
        paint.setColor(context.getResources().getColor(R.color.white));
    }

    public static void clearFocusObstacles(ViewGroup viewGroup) {
        viewGroup.setTouchscreenBlocksFocus(false);
        if (viewGroup.isKeyboardNavigationCluster()) {
            viewGroup.setKeyboardNavigationCluster(false);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                clearFocusObstacles((ViewGroup) childAt);
            }
        }
    }

    public static void setupFocusObserver(Dialog dialog) {
        Rect rect = new Rect();
        Window window = dialog.getWindow();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        FocusOverlayView focusOverlayView = new FocusOverlayView(dialog.getContext());
        focusOverlayView.setBounds(0, 0, rect.width(), rect.height());
        setupOverlay(window, focusOverlayView);
    }

    public static void setupOverlay(Window window, final FocusOverlayView focusOverlayView) {
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        viewGroup.getOverlay().add(focusOverlayView);
        if (Build.VERSION.SDK_INT >= 26) {
            clearFocusObstacles(viewGroup);
        }
        ViewTreeObserver viewTreeObserver = viewGroup.getViewTreeObserver();
        viewTreeObserver.addOnScrollChangedListener(focusOverlayView);
        viewTreeObserver.addOnGlobalFocusChangeListener(focusOverlayView);
        viewTreeObserver.addOnGlobalLayoutListener(focusOverlayView);
        viewTreeObserver.addOnTouchModeChangeListener(focusOverlayView);
        viewTreeObserver.addOnDrawListener(focusOverlayView);
        View focusedChild = viewGroup.getFocusedChild();
        if (focusedChild != null) {
            focusOverlayView.isInTouchMode = focusedChild.isInTouchMode();
            focusOverlayView.onGlobalFocusChanged(null, focusedChild);
        }
        window.setCallback(new SimpleWindowCallback(window.getCallback()) { // from class: org.schabi.newpipe.views.FocusOverlayView.2
            @Override // android.view.Window.Callback
            public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
                boolean dispatchKeyEvent = this.baseCallback.dispatchKeyEvent(keyEvent);
                if (keyEvent.getAction() != 0) {
                    return dispatchKeyEvent;
                }
                FocusOverlayView focusOverlayView2 = focusOverlayView;
                focusOverlayView2.updateRect();
                focusOverlayView2.animator.sendEmptyMessageDelayed(0, 100L);
                return dispatchKeyEvent;
            }
        });
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.isInTouchMode) {
            return;
        }
        Rect rect = this.focusRect;
        if (rect.width() != 0) {
            canvas.drawRect(rect, this.rectPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        updateRect();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (view2 != null) {
            this.focused = new WeakReference(view2);
        } else {
            this.focused = null;
        }
        updateRect();
        this.animator.sendEmptyMessageDelayed(0, 1000L);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        updateRect();
        this.animator.sendEmptyMessageDelayed(0, 1000L);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        updateRect();
        AnonymousClass1 anonymousClass1 = this.animator;
        anonymousClass1.removeMessages(0);
        anonymousClass1.sendEmptyMessageDelayed(0, 1000L);
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public final void onTouchModeChanged(boolean z) {
        this.isInTouchMode = z;
        if (z) {
            updateRect();
        } else {
            invalidateSelf();
        }
    }

    public final void updateRect() {
        WeakReference weakReference = this.focused;
        View view = weakReference == null ? null : (View) weakReference.get();
        Rect rect = this.focusRect;
        int i = rect.left;
        int i2 = rect.right;
        int i3 = rect.top;
        int i4 = rect.bottom;
        if (view != null && view.getWidth() != 0 && view.getHeight() != 0 && view.isShown()) {
            view.getGlobalVisibleRect(rect);
        }
        if (view == null || rect.equals(getBounds())) {
            rect.setEmpty();
        }
        if (i == rect.left && i2 == rect.right && i3 == rect.top && i4 == rect.bottom) {
            return;
        }
        invalidateSelf();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.views.FocusOverlayView$1, reason: invalid class name */
    public final class AnonymousClass1 extends Handler {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(Object obj, Looper looper, int i) {
            super(looper);
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            final int i = 1;
            switch (this.$r8$classId) {
                case 0:
                    ((FocusOverlayView) this.this$0).updateRect();
                    return;
                case 1:
                    int i2 = message.what;
                    if (i2 == -3 || i2 == -2 || i2 == -1) {
                        ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) ((WeakReference) this.this$0).get(), message.what);
                        return;
                    } else {
                        if (i2 != 1) {
                            return;
                        }
                        ((DialogInterface) message.obj).dismiss();
                        return;
                    }
                case 2:
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) this.this$0;
                    if (mediaBrowserServiceCompat == null) {
                        removeCallbacksAndMessages(null);
                        return;
                    }
                    final MemoryCacheService memoryCacheService = mediaBrowserServiceCompat.mServiceBinderImpl;
                    Bundle data = message.getData();
                    final int i3 = 0;
                    switch (message.what) {
                        case 1:
                            final Bundle bundle = data.getBundle("data_root_hints");
                            MediaSessionCompat.ensureClassLoader(bundle);
                            final String string = data.getString("data_package_name");
                            final int i4 = data.getInt("data_calling_pid");
                            final int i5 = data.getInt("data_calling_uid");
                            final MemoryCacheService memoryCacheService2 = new MemoryCacheService(message.replyTo);
                            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = (MediaBrowserServiceCompat) memoryCacheService.imageLoader;
                            if (string != null) {
                                String[] packagesForUid = mediaBrowserServiceCompat2.getPackageManager().getPackagesForUid(i5);
                                int length = packagesForUid.length;
                                while (i3 < length) {
                                    if (packagesForUid[i3].equals(string)) {
                                        mediaBrowserServiceCompat2.mHandler.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MemoryCacheService memoryCacheService3 = memoryCacheService2;
                                                IBinder binder = ((Messenger) memoryCacheService3.imageLoader).getBinder();
                                                MemoryCacheService memoryCacheService4 = memoryCacheService;
                                                ((MediaBrowserServiceCompat) memoryCacheService4.imageLoader).mConnections.remove(binder);
                                                MediaBrowserServiceCompat mediaBrowserServiceCompat3 = (MediaBrowserServiceCompat) memoryCacheService4.imageLoader;
                                                int i6 = i4;
                                                int i7 = i5;
                                                String str = string;
                                                MediaBrowserServiceCompat.ConnectionRecord connectionRecord = mediaBrowserServiceCompat3.new ConnectionRecord(str, i6, i7, memoryCacheService3);
                                                MediaMetadataCompat.Builder onGetRoot = mediaBrowserServiceCompat3.onGetRoot(str, i5, bundle);
                                                connectionRecord.root = onGetRoot;
                                                if (onGetRoot == null) {
                                                    StringBuilder m180m = Modifier.CC.m180m("No root for client ", str, " from service ");
                                                    m180m.append(MediaBrowserServiceCompat$ServiceBinderImpl$1.class.getName());
                                                    Log.i("MBServiceCompat", m180m.toString());
                                                    try {
                                                        memoryCacheService3.sendRequest(2, null);
                                                        return;
                                                    } catch (RemoteException unused) {
                                                        Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=".concat(str));
                                                        return;
                                                    }
                                                }
                                                try {
                                                    mediaBrowserServiceCompat3.mConnections.put(binder, connectionRecord);
                                                    binder.linkToDeath(connectionRecord, 0);
                                                    MediaSessionCompat.Token token = mediaBrowserServiceCompat3.mSession;
                                                    if (token != null) {
                                                        MediaMetadataCompat.Builder builder = connectionRecord.root;
                                                        builder.getClass();
                                                        Bundle bundle2 = builder.mBundle;
                                                        if (bundle2 == null) {
                                                            bundle2 = new Bundle();
                                                        }
                                                        bundle2.putInt("extra_service_version", 2);
                                                        Bundle bundle3 = new Bundle();
                                                        bundle3.putString("data_media_item_id", "//org.schabi.newpipe");
                                                        bundle3.putParcelable("data_media_session_token", token);
                                                        bundle3.putBundle("data_root_hints", bundle2);
                                                        memoryCacheService3.sendRequest(1, bundle3);
                                                    }
                                                } catch (RemoteException unused2) {
                                                    Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=".concat(str));
                                                    mediaBrowserServiceCompat3.mConnections.remove(binder);
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    i3++;
                                }
                            }
                            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i5 + " package=" + string);
                        case 2:
                            final MemoryCacheService memoryCacheService3 = new MemoryCacheService(message.replyTo);
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i6 = i3;
                                    MemoryCacheService memoryCacheService4 = memoryCacheService;
                                    MemoryCacheService memoryCacheService5 = memoryCacheService3;
                                    switch (i6) {
                                        case 0:
                                            MediaBrowserServiceCompat.ConnectionRecord connectionRecord = (MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService4.imageLoader).mConnections.remove(((Messenger) memoryCacheService5.imageLoader).getBinder());
                                            if (connectionRecord != null) {
                                                ((Messenger) connectionRecord.callbacks.imageLoader).getBinder().unlinkToDeath(connectionRecord, 0);
                                                break;
                                            }
                                            break;
                                        default:
                                            IBinder binder = ((Messenger) memoryCacheService5.imageLoader).getBinder();
                                            MediaBrowserServiceCompat.ConnectionRecord connectionRecord2 = (MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService4.imageLoader).mConnections.remove(binder);
                                            if (connectionRecord2 != null) {
                                                binder.unlinkToDeath(connectionRecord2, 0);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            return;
                        case 3:
                            Bundle bundle2 = data.getBundle("data_options");
                            MediaSessionCompat.ensureClassLoader(bundle2);
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$3(memoryCacheService, new MemoryCacheService(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), bundle2));
                            return;
                        case 4:
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new CascadingMenuPopup$3$1(memoryCacheService, new MemoryCacheService(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), 2));
                            return;
                        case 5:
                            String string2 = data.getString("data_media_item_id");
                            ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                            MemoryCacheService memoryCacheService4 = new MemoryCacheService(message.replyTo);
                            memoryCacheService.getClass();
                            if (TextUtils.isEmpty(string2) || resultReceiver == null) {
                                return;
                            }
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$5(memoryCacheService, memoryCacheService4, string2, resultReceiver));
                            return;
                        case 6:
                            final Bundle bundle3 = data.getBundle("data_root_hints");
                            MediaSessionCompat.ensureClassLoader(bundle3);
                            final MemoryCacheService memoryCacheService5 = new MemoryCacheService(message.replyTo);
                            final String string3 = data.getString("data_package_name");
                            final int i6 = data.getInt("data_calling_pid");
                            final int i7 = data.getInt("data_calling_uid");
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new Runnable(i7, i6, bundle3, memoryCacheService, memoryCacheService5, string3) { // from class: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$6
                                public final /* synthetic */ MemoryCacheService this$1;
                                public final /* synthetic */ MemoryCacheService val$callbacks;
                                public final /* synthetic */ int val$pid;
                                public final /* synthetic */ String val$pkg;
                                public final /* synthetic */ int val$uid;

                                {
                                    this.this$1 = memoryCacheService;
                                    this.val$callbacks = memoryCacheService5;
                                    this.val$pkg = string3;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    MediaBrowserServiceCompat.ConnectionRecord connectionRecord;
                                    MemoryCacheService memoryCacheService6 = this.val$callbacks;
                                    IBinder binder = ((Messenger) memoryCacheService6.imageLoader).getBinder();
                                    MemoryCacheService memoryCacheService7 = this.this$1;
                                    ((MediaBrowserServiceCompat) memoryCacheService7.imageLoader).mConnections.remove(binder);
                                    MediaBrowserServiceCompat mediaBrowserServiceCompat3 = (MediaBrowserServiceCompat) memoryCacheService7.imageLoader;
                                    Iterator it = mediaBrowserServiceCompat3.mPendingConnections.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        MediaBrowserServiceCompat.ConnectionRecord connectionRecord2 = (MediaBrowserServiceCompat.ConnectionRecord) it.next();
                                        if (connectionRecord2.uid == this.val$uid) {
                                            connectionRecord = (TextUtils.isEmpty(this.val$pkg) || this.val$pid <= 0) ? mediaBrowserServiceCompat3.new ConnectionRecord(connectionRecord2.pkg, connectionRecord2.pid, connectionRecord2.uid, memoryCacheService6) : null;
                                            it.remove();
                                        }
                                    }
                                    if (connectionRecord == null) {
                                        connectionRecord = mediaBrowserServiceCompat3.new ConnectionRecord(this.val$pkg, this.val$pid, this.val$uid, memoryCacheService6);
                                    }
                                    mediaBrowserServiceCompat3.mConnections.put(binder, connectionRecord);
                                    try {
                                        binder.linkToDeath(connectionRecord, 0);
                                    } catch (RemoteException unused) {
                                        Log.w("MBServiceCompat", "IBinder is already dead.");
                                    }
                                }
                            });
                            return;
                        case 7:
                            final MemoryCacheService memoryCacheService6 = new MemoryCacheService(message.replyTo);
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i62 = i;
                                    MemoryCacheService memoryCacheService42 = memoryCacheService;
                                    MemoryCacheService memoryCacheService52 = memoryCacheService6;
                                    switch (i62) {
                                        case 0:
                                            MediaBrowserServiceCompat.ConnectionRecord connectionRecord = (MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService42.imageLoader).mConnections.remove(((Messenger) memoryCacheService52.imageLoader).getBinder());
                                            if (connectionRecord != null) {
                                                ((Messenger) connectionRecord.callbacks.imageLoader).getBinder().unlinkToDeath(connectionRecord, 0);
                                                break;
                                            }
                                            break;
                                        default:
                                            IBinder binder = ((Messenger) memoryCacheService52.imageLoader).getBinder();
                                            MediaBrowserServiceCompat.ConnectionRecord connectionRecord2 = (MediaBrowserServiceCompat.ConnectionRecord) ((MediaBrowserServiceCompat) memoryCacheService42.imageLoader).mConnections.remove(binder);
                                            if (connectionRecord2 != null) {
                                                binder.unlinkToDeath(connectionRecord2, 0);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            return;
                        case 8:
                            Bundle bundle4 = data.getBundle("data_search_extras");
                            MediaSessionCompat.ensureClassLoader(bundle4);
                            String string4 = data.getString("data_search_query");
                            ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                            MemoryCacheService memoryCacheService7 = new MemoryCacheService(message.replyTo);
                            memoryCacheService.getClass();
                            if (TextUtils.isEmpty(string4) || resultReceiver2 == null) {
                                return;
                            }
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$5(memoryCacheService, memoryCacheService7, string4, bundle4, resultReceiver2));
                            return;
                        case 9:
                            Bundle bundle5 = data.getBundle("data_custom_action_extras");
                            MediaSessionCompat.ensureClassLoader(bundle5);
                            String string5 = data.getString("data_custom_action");
                            ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                            MemoryCacheService memoryCacheService8 = new MemoryCacheService(message.replyTo);
                            memoryCacheService.getClass();
                            if (TextUtils.isEmpty(string5) || resultReceiver3 == null) {
                                return;
                            }
                            ((MediaBrowserServiceCompat) memoryCacheService.imageLoader).mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$3(memoryCacheService, memoryCacheService8, string5, bundle5, resultReceiver3));
                            return;
                        default:
                            Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                            return;
                    }
                default:
                    if (message.what != 1) {
                        return;
                    }
                    PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) this.this$0;
                    PreferenceScreen preferenceScreen = (PreferenceScreen) preferenceFragmentCompat.mPreferenceManager.mPreferenceScreen;
                    if (preferenceScreen != null) {
                        preferenceFragmentCompat.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen));
                        preferenceScreen.onAttached();
                        return;
                    }
                    return;
            }
        }

        public void postOrRun(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            switch (this.$r8$classId) {
                case 2:
                    Bundle data = message.getData();
                    data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
                    data.putInt("data_calling_uid", Binder.getCallingUid());
                    int callingPid = Binder.getCallingPid();
                    if (callingPid > 0) {
                        data.putInt("data_calling_pid", callingPid);
                    } else if (!data.containsKey("data_calling_pid")) {
                        data.putInt("data_calling_pid", -1);
                    }
                    break;
            }
            return super.sendMessageAtTime(message, j);
        }

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }

    public static void setupFocusObserver(AppCompatActivity appCompatActivity) {
        Rect rect = new Rect();
        Window window = appCompatActivity.getWindow();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        FocusOverlayView focusOverlayView = new FocusOverlayView(appCompatActivity);
        focusOverlayView.setBounds(0, 0, rect.width(), rect.height());
        setupOverlay(window, focusOverlayView);
    }
}
