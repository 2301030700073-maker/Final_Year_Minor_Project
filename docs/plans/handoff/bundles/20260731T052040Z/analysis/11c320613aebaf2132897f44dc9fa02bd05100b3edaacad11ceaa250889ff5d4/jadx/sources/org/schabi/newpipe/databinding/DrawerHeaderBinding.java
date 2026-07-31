package org.schabi.newpipe.databinding;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.IMediaSession$Stub$Proxy;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.appcompat.widget.ThemeUtils;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import coil3.decode.StaticImageDecoderKt;
import j$.util.DesugarCollections;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.platform.ContextAwarePlatform;
import okhttp3.internal.platform.Platform;
import okio.ByteString;
import okio.InputStreamSource;
import okio.Okio;
import okio.RealBufferedSource;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DrawerHeaderBinding implements ViewBinding {
    public final /* synthetic */ int $r8$classId;
    public Object drawerArrow;
    public Object drawerHeaderActionButton;
    public Object drawerHeaderNewpipeTitle;
    public Object drawerHeaderServiceIcon;
    public Object drawerHeaderServiceView;
    public final Object rootView;

    public DrawerHeaderBinding(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 3:
                this.rootView = new AtomicBoolean(false);
                this.drawerArrow = new CountDownLatch(1);
                this.drawerHeaderServiceView = "PublicSuffixDatabase.list";
                break;
            default:
                this.rootView = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                this.drawerArrow = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                this.drawerHeaderServiceIcon = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                this.drawerHeaderActionButton = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                this.drawerHeaderNewpipeTitle = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                this.drawerHeaderServiceView = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                break;
        }
    }

    public static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList createButtonColorStateList(Context context, int i) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
    }

    public static LayerDrawable getRatingBarLayerDrawable(ResourceManagerInternal resourceManagerInternal, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable drawable = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_black_48dp);
        Drawable drawable2 = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_half_black_48dp);
        if ((drawable instanceof BitmapDrawable) && drawable.getIntrinsicWidth() == dimensionPixelSize && drawable.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawable;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawable.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawable2 instanceof BitmapDrawable) && drawable2.getIntrinsicWidth() == dimensionPixelSize && drawable2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawable2;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            drawable2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawable2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = AppCompatDrawableManager.DEFAULT_MODE;
        }
        mutate.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode));
    }

    public void finish() {
        Messenger messenger;
        MediaBrowserCompat.MediaBrowserImplApi23 mediaBrowserImplApi23 = ((MediaBrowserCompat) this.drawerHeaderServiceView).mImpl;
        CardView.AnonymousClass1 anonymousClass1 = mediaBrowserImplApi23.mServiceBinderWrapper;
        if (anonymousClass1 != null && (messenger = mediaBrowserImplApi23.mCallbacksMessenger) != null) {
            try {
                Message obtain = Message.obtain();
                obtain.what = 7;
                obtain.arg1 = 1;
                obtain.setData(null);
                obtain.replyTo = messenger;
                ((Messenger) anonymousClass1.mCardBackground).send(obtain);
            } catch (RemoteException unused) {
                Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
            }
        }
        mediaBrowserImplApi23.mBrowserFwk.disconnect();
        ((BroadcastReceiver.PendingResult) this.drawerHeaderNewpipeTitle).finish();
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        switch (this.$r8$classId) {
            case 0:
                return (ConstraintLayout) this.rootView;
            case 4:
                return (RelativeLayout) this.rootView;
            default:
                return (CardView) this.rootView;
        }
    }

    public ColorStateList getTintListForDrawableRes(Context context, int i) {
        if (i == R.drawable.abc_edit_text_material) {
            return StaticImageDecoderKt.getColorStateList(context, R.color.abc_tint_edittext);
        }
        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
            return StaticImageDecoderKt.getColorStateList(context, R.color.abc_tint_switch_track);
        }
        if (i != R.drawable.abc_switch_thumb_material) {
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return createButtonColorStateList(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorAccent));
            }
            if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                return StaticImageDecoderKt.getColorStateList(context, R.color.abc_tint_spinner);
            }
            if (arrayContains((int[]) this.drawerArrow, i)) {
                return ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
            }
            if (arrayContains((int[]) this.drawerHeaderNewpipeTitle, i)) {
                return StaticImageDecoderKt.getColorStateList(context, R.color.abc_tint_default);
            }
            if (arrayContains((int[]) this.drawerHeaderServiceView, i)) {
                return StaticImageDecoderKt.getColorStateList(context, R.color.abc_tint_btn_checkable);
            }
            if (i == R.drawable.abc_seekbar_thumb_material) {
                return StaticImageDecoderKt.getColorStateList(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = ThemeUtils.DISABLED_STATE_SET;
            iArr[0] = iArr3;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr3, 0);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public InputStreamSource listSource() {
        Platform platform = Platform.platform;
        Object obj = Platform.platform;
        ContextAwarePlatform contextAwarePlatform = obj != null ? (ContextAwarePlatform) obj : null;
        Context applicationContext = contextAwarePlatform != null ? contextAwarePlatform.getApplicationContext() : null;
        AssetManager assets = applicationContext != null ? applicationContext.getAssets() : null;
        if (assets != null) {
            InputStream open = assets.open((String) this.drawerHeaderServiceView);
            open.getClass();
            return Okio.source(open);
        }
        if (Build.FINGERPRINT == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        return null;
    }

    public void readTheList() {
        try {
            RealBufferedSource realBufferedSource = new RealBufferedSource(listSource());
            try {
                ByteString readByteString = realBufferedSource.readByteString(realBufferedSource.readInt());
                ByteString readByteString2 = realBufferedSource.readByteString(realBufferedSource.readInt());
                realBufferedSource.close();
                synchronized (this) {
                    readByteString.getClass();
                    this.drawerHeaderServiceIcon = readByteString;
                    readByteString2.getClass();
                    this.drawerHeaderActionButton = readByteString2;
                }
            } finally {
            }
        } finally {
            ((CountDownLatch) this.drawerArrow).countDown();
        }
    }

    public DrawerHeaderBinding(ConstraintLayout constraintLayout, ImageView imageView, Button button, NewPipeTextView newPipeTextView, ImageView imageView2, NewPipeTextView newPipeTextView2) {
        this.$r8$classId = 0;
        this.rootView = constraintLayout;
        this.drawerArrow = imageView;
        this.drawerHeaderActionButton = button;
        this.drawerHeaderNewpipeTitle = newPipeTextView;
        this.drawerHeaderServiceIcon = imageView2;
        this.drawerHeaderServiceView = newPipeTextView2;
    }

    public DrawerHeaderBinding(RelativeLayout relativeLayout, NewPipeTextView newPipeTextView, View view, NewPipeTextView newPipeTextView2, RecyclerView recyclerView, LinearLayout linearLayout) {
        this.$r8$classId = 4;
        this.rootView = relativeLayout;
        this.drawerHeaderNewpipeTitle = newPipeTextView;
        this.drawerArrow = view;
        this.drawerHeaderServiceView = newPipeTextView2;
        this.drawerHeaderServiceIcon = recyclerView;
        this.drawerHeaderActionButton = linearLayout;
    }

    public DrawerHeaderBinding(CardView cardView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TextView textView, TextView textView2, RadioButton radioButton) {
        this.$r8$classId = 5;
        this.rootView = cardView;
        this.drawerArrow = appCompatImageView;
        this.drawerHeaderServiceIcon = appCompatImageView2;
        this.drawerHeaderActionButton = textView;
        this.drawerHeaderNewpipeTitle = textView2;
        this.drawerHeaderServiceView = radioButton;
    }

    public DrawerHeaderBinding(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        this.$r8$classId = 2;
        this.rootView = new MediaBrowser.ConnectionCallback() { // from class: android.support.v4.media.MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v10, types: [android.support.v4.media.session.IMediaSession] */
            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnected() {
                IMediaSession$Stub$Proxy iMediaSession$Stub$Proxy;
                DrawerHeaderBinding drawerHeaderBinding = DrawerHeaderBinding.this;
                MediaBrowserCompat.MediaBrowserImplApi23 mediaBrowserImplApi23 = (MediaBrowserCompat.MediaBrowserImplApi23) drawerHeaderBinding.drawerArrow;
                if (mediaBrowserImplApi23 != null) {
                    MediaBrowserCompat.CallbackHandler callbackHandler = mediaBrowserImplApi23.mHandler;
                    MediaBrowser mediaBrowser = mediaBrowserImplApi23.mBrowserFwk;
                    try {
                        Bundle extras = mediaBrowser.getExtras();
                        if (extras != null) {
                            boolean z = false;
                            extras.getInt("extra_service_version", 0);
                            IBinder binder = extras.getBinder("extra_messenger");
                            if (binder != null) {
                                Bundle bundle = mediaBrowserImplApi23.mRootHints;
                                CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(1, z);
                                anonymousClass1.mCardBackground = new Messenger(binder);
                                anonymousClass1.this$0 = bundle;
                                mediaBrowserImplApi23.mServiceBinderWrapper = anonymousClass1;
                                Messenger messenger = new Messenger(callbackHandler);
                                mediaBrowserImplApi23.mCallbacksMessenger = messenger;
                                callbackHandler.getClass();
                                callbackHandler.mCallbacksMessengerRef = new WeakReference(messenger);
                                try {
                                    CardView.AnonymousClass1 anonymousClass12 = mediaBrowserImplApi23.mServiceBinderWrapper;
                                    Context context2 = mediaBrowserImplApi23.mContext;
                                    Messenger messenger2 = mediaBrowserImplApi23.mCallbacksMessenger;
                                    anonymousClass12.getClass();
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putString("data_package_name", context2.getPackageName());
                                    bundle2.putInt("data_calling_pid", Process.myPid());
                                    bundle2.putBundle("data_root_hints", (Bundle) anonymousClass12.this$0);
                                    Message obtain = Message.obtain();
                                    obtain.what = 6;
                                    obtain.arg1 = 1;
                                    obtain.setData(bundle2);
                                    obtain.replyTo = messenger2;
                                    ((Messenger) anonymousClass12.mCardBackground).send(obtain);
                                } catch (RemoteException unused) {
                                    Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                                }
                            }
                            IBinder binder2 = extras.getBinder("extra_session_binder");
                            int i = MediaSessionCompat$MediaSessionImplApi21$ExtraSession.$r8$clinit;
                            if (binder2 == null) {
                                iMediaSession$Stub$Proxy = null;
                            } else {
                                IInterface queryLocalInterface = binder2.queryLocalInterface("android.support.v4.media.session.IMediaSession");
                                if (queryLocalInterface == null || !(queryLocalInterface instanceof IMediaSession)) {
                                    IMediaSession$Stub$Proxy iMediaSession$Stub$Proxy2 = new IMediaSession$Stub$Proxy();
                                    iMediaSession$Stub$Proxy2.mRemote = binder2;
                                    iMediaSession$Stub$Proxy = iMediaSession$Stub$Proxy2;
                                } else {
                                    iMediaSession$Stub$Proxy = (IMediaSession) queryLocalInterface;
                                }
                            }
                            if (iMediaSession$Stub$Proxy != null) {
                                MediaSession.Token sessionToken = mediaBrowser.getSessionToken();
                                mediaBrowserImplApi23.mMediaSessionToken = sessionToken != null ? new MediaSessionCompat.Token(sessionToken, iMediaSession$Stub$Proxy) : null;
                            }
                        }
                    } catch (IllegalStateException e) {
                        Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e);
                    }
                }
                Context context3 = (Context) drawerHeaderBinding.drawerHeaderServiceIcon;
                MediaBrowserCompat.MediaBrowserImplApi23 mediaBrowserImplApi232 = ((MediaBrowserCompat) drawerHeaderBinding.drawerHeaderServiceView).mImpl;
                if (mediaBrowserImplApi232.mMediaSessionToken == null) {
                    MediaSession.Token sessionToken2 = mediaBrowserImplApi232.mBrowserFwk.getSessionToken();
                    mediaBrowserImplApi232.mMediaSessionToken = sessionToken2 != null ? new MediaSessionCompat.Token(sessionToken2, null) : null;
                }
                MediaSessionCompat.Token token = mediaBrowserImplApi232.mMediaSessionToken;
                if (token == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("sessionToken must not be null");
                    return;
                }
                DesugarCollections.synchronizedSet(new HashSet());
                MediaControllerCompat.MediaControllerImplApi21 mediaControllerImplApi29 = Build.VERSION.SDK_INT >= 29 ? new MediaControllerCompat.MediaControllerImplApi29(context3, token) : new MediaControllerCompat.MediaControllerImplApi21(context3, token);
                KeyEvent keyEvent = (KeyEvent) ((Intent) drawerHeaderBinding.drawerHeaderActionButton).getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (keyEvent == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("KeyEvent may not be null");
                } else {
                    mediaControllerImplApi29.mControllerFwk.dispatchMediaButtonEvent(keyEvent);
                    drawerHeaderBinding.finish();
                }
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionFailed() {
                DrawerHeaderBinding.this.finish();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionSuspended() {
                DrawerHeaderBinding drawerHeaderBinding = DrawerHeaderBinding.this;
                MediaBrowserCompat.MediaBrowserImplApi23 mediaBrowserImplApi23 = (MediaBrowserCompat.MediaBrowserImplApi23) drawerHeaderBinding.drawerArrow;
                if (mediaBrowserImplApi23 != null) {
                    mediaBrowserImplApi23.mServiceBinderWrapper = null;
                    mediaBrowserImplApi23.mCallbacksMessenger = null;
                    mediaBrowserImplApi23.mMediaSessionToken = null;
                    MediaBrowserCompat.CallbackHandler callbackHandler = mediaBrowserImplApi23.mHandler;
                    callbackHandler.getClass();
                    callbackHandler.mCallbacksMessengerRef = new WeakReference(null);
                }
                drawerHeaderBinding.finish();
            }
        };
        this.drawerHeaderServiceIcon = context;
        this.drawerHeaderActionButton = intent;
        this.drawerHeaderNewpipeTitle = pendingResult;
    }
}
