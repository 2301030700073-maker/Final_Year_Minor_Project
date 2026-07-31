package com.eygraber.uri;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.appcompat.widget.ThemeUtils;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.AutoValue_CameraThreadConfig;
import androidx.camera.core.impl.Config;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.CoroutineLiveData;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.room.util.DBUtil;
import androidx.tracing.TraceApi29Impl;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.eygraber.uri.parts.Part;
import com.eygraber.uri.parts.PathPart;
import com.eygraber.uri.uris.HierarchicalUri;
import com.eygraber.uri.uris.OpaqueUri;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.SpecialFolderSelectionStrategy;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda6;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.CharRange;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.folder.api.SpecialFolderSelection;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.platform.ContextAwarePlatform;
import okhttp3.internal.platform.Platform;
import okio.ByteString;
import okio.InputStreamSource;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = UriSerializer.class)
/* loaded from: classes.dex */
public interface Uri extends Comparable<Uri> {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        static {
            Part.EmptyPart emptyPart = Part.NULL;
            new HierarchicalUri(null, emptyPart, PathPart.EMPTY, emptyPart, emptyPart);
        }

        public final KSerializer serializer() {
            return UriSerializer.INSTANCE;
        }
    }

    Builder buildUpon();

    String getEncodedAuthority();

    List getPathSegments();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public final /* synthetic */ int $r8$classId;
        public Object authority;
        public Object fragment;
        public Object opaquePart;
        public Object path;
        public Object query;
        public Object scheme;

        public Builder(int i) {
            this.$r8$classId = i;
            switch (i) {
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    this.opaquePart = new AtomicBoolean(false);
                    this.authority = new CountDownLatch(1);
                    this.scheme = "PublicSuffixDatabase.list";
                    break;
                default:
                    this.scheme = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                    this.opaquePart = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                    this.authority = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                    this.query = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                    this.fragment = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                    this.path = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                    break;
            }
        }

        public static final void access$closeAndReleaseUnprocessedElements(Builder builder, Throwable th) {
            ArrayDeque arrayDeque = (ArrayDeque) builder.path;
            BufferedChannel bufferedChannel = (BufferedChannel) builder.fragment;
            if (bufferedChannel.closeOrCancelImpl(th, false)) {
                for (Object mo1015tryReceivePtdJZtk = bufferedChannel.mo1015tryReceivePtdJZtk(); !(mo1015tryReceivePtdJZtk instanceof ChannelResult.Failed); mo1015tryReceivePtdJZtk = bufferedChannel.mo1015tryReceivePtdJZtk()) {
                    ChannelResult.m1018getOrThrowimpl(mo1015tryReceivePtdJZtk);
                    arrayDeque.addLast(mo1015tryReceivePtdJZtk);
                }
                if (arrayDeque.isEmpty()) {
                    return;
                }
                ((Function1) builder.opaquePart).invoke(new ArrayList(arrayDeque));
                arrayDeque.clear();
            }
        }

        public static final void access$updateSpecialFoldersSynchronous(Builder builder) {
            Object obj;
            List list;
            Builder builder2;
            AccountId accountId = (AccountId) builder.query;
            LegacyAccount accountById = builder.getAccountById(accountId);
            DefaultFolderRepository defaultFolderRepository = (DefaultFolderRepository) builder.opaquePart;
            List remoteFolders = defaultFolderRepository.getRemoteFolders(accountId);
            MessageStoreManager messageStoreManager = defaultFolderRepository.messageStoreManager;
            Long l = accountById.inboxFolderId;
            Iterator it = remoteFolders.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it.next();
                    if (((RemoteFolder) obj).type == FolderType.INBOX) {
                        break;
                    }
                }
            }
            RemoteFolder remoteFolder = (RemoteFolder) obj;
            Long valueOf = remoteFolder != null ? Long.valueOf(remoteFolder.id) : null;
            if (Intrinsics.areEqual(valueOf, l)) {
                list = remoteFolders;
            } else {
                list = remoteFolders;
                accountById = LegacyAccount.copy$default(accountById, null, null, null, null, null, 0, 0, valueOf, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -8388609, -1, 8388607);
                if (l != null && !list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        } else if (((RemoteFolder) it2.next()).id == l.longValue()) {
                            messageStoreManager.getMessageStore(accountId).setIncludeInUnifiedInbox(l.longValue(), false);
                            break;
                        }
                    }
                }
                if (valueOf != null) {
                    messageStoreManager.getMessageStore(accountId).setIncludeInUnifiedInbox(valueOf.longValue(), true);
                    messageStoreManager.getMessageStore(accountId).setVisible(valueOf.longValue());
                    long longValue = valueOf.longValue();
                    ListenableMessageStore messageStore = messageStoreManager.getMessageStore(accountId);
                    ((K9MessageStore) messageStore.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda6(longValue, "sync_enabled", true, 0));
                    messageStore.notifyFolderSettingsChanged();
                    long longValue2 = valueOf.longValue();
                    ListenableMessageStore messageStore2 = messageStoreManager.getMessageStore(accountId);
                    ((K9MessageStore) messageStore2.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda6(longValue2, "notifications_enabled", true, 0));
                    messageStore2.notifyFolderSettingsChanged();
                }
            }
            if (Intrinsics.areEqual(accountById.incomingServerSettings.type, "pop3")) {
                builder2 = builder;
            } else {
                builder2 = builder;
                List list2 = list;
                accountById = builder2.updateSpecialFolderSynchronous(builder2.updateSpecialFolderSynchronous(builder2.updateSpecialFolderSynchronous(builder2.updateSpecialFolderSynchronous(builder2.updateSpecialFolderSynchronous(accountById, FolderType.ARCHIVE, list2), FolderType.DRAFTS, list2), FolderType.SENT, list2), FolderType.SPAM, list2), FolderType.TRASH, list2);
            }
            ((DefaultLegacyAccountManager) builder2.scheme).saveAccount(LegacyAccount.copy$default(accountById, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -8126465, -1, 8388607));
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

        public static Long getSpecialFolderId(LegacyAccount legacyAccount, FolderType folderType) {
            int ordinal = folderType.ordinal();
            if (ordinal == 3) {
                return legacyAccount.sentFolderId;
            }
            if (ordinal == 4) {
                return legacyAccount.trashFolderId;
            }
            if (ordinal == 5) {
                return legacyAccount.draftsFolderId;
            }
            if (ordinal == 6) {
                return legacyAccount.archiveFolderId;
            }
            if (ordinal == 7) {
                return legacyAccount.spamFolderId;
            }
            UriKt$$ExternalSyntheticBUOutline0.m$1(folderType, "Unsupported: ");
            return null;
        }

        public static SpecialFolderSelection getSpecialFolderSelection(LegacyAccount legacyAccount, FolderType folderType) {
            int ordinal = folderType.ordinal();
            if (ordinal == 3) {
                return legacyAccount.sentFolderSelection;
            }
            if (ordinal == 4) {
                return legacyAccount.trashFolderSelection;
            }
            if (ordinal == 5) {
                return legacyAccount.draftsFolderSelection;
            }
            if (ordinal == 6) {
                return legacyAccount.archiveFolderSelection;
            }
            if (ordinal == 7) {
                return legacyAccount.spamFolderSelection;
            }
            UriKt$$ExternalSyntheticBUOutline0.m$1(folderType, "Unsupported: ");
            return null;
        }

        public static void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable mutate = drawable.mutate();
            if (mode == null) {
                mode = AppCompatDrawableManager.DEFAULT_MODE;
            }
            mutate.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode));
        }

        public void appendPath$1(String str) {
            PathPart fromEncoded;
            PathPart pathPart = PathPart.NULL;
            PathPart pathPart2 = (PathPart) this.path;
            CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
            String encode = UriCodec.encode(str, null);
            if (pathPart2 == null) {
                fromEncoded = DebugUtils.fromEncoded("/".concat(encode));
            } else {
                String encoded = pathPart2.getEncoded();
                if (encoded == null) {
                    encoded = "";
                }
                int length = encoded.length();
                fromEncoded = DebugUtils.fromEncoded(length == 0 ? "/".concat(encode) : encoded.charAt(length + (-1)) == '/' ? encoded.concat(encode) : Config.CC.m(encoded, "/", encode));
            }
            this.opaquePart = null;
            this.path = fromEncoded;
        }

        public void appendQueryParameter$1(String str) {
            Part fromEncoded;
            this.opaquePart = null;
            CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
            String m = Config.CC.m(UriCodec.encode("v", null), "=", str != null ? UriCodec.encode(str, null) : null);
            Part part = (Part) this.query;
            if (part == null) {
                Part.EmptyPart emptyPart = Part.NULL;
                this.query = DBUtil.fromEncoded(m);
                return;
            }
            String encoded = part.getEncoded();
            if (encoded == null || encoded.length() == 0) {
                Part.EmptyPart emptyPart2 = Part.NULL;
                fromEncoded = DBUtil.fromEncoded(m);
            } else {
                Part.EmptyPart emptyPart3 = Part.NULL;
                fromEncoded = DBUtil.fromEncoded(encoded + "&" + m);
            }
            this.query = fromEncoded;
        }

        public Uri build() {
            Part part;
            Part part2 = (Part) this.opaquePart;
            if (part2 != null) {
                String str = (String) this.scheme;
                if (str != null) {
                    return new OpaqueUri(str, part2, (Part) this.fragment);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("An opaque URI must have a scheme.");
                return null;
            }
            PathPart pathPart = (PathPart) this.path;
            if (pathPart == null || pathPart == PathPart.NULL) {
                pathPart = PathPart.EMPTY;
            } else if (((String) this.scheme) != null || ((part = (Part) this.authority) != null && part != Part.NULL)) {
                boolean z = pathPart.wasEncodedCached;
                String encoded = z ? pathPart.getEncoded() : pathPart.getDecoded();
                if (encoded != null && encoded.length() != 0 && !StringsKt__StringsJVMKt.startsWith(encoded, "/", false)) {
                    pathPart = new PathPart(z ? CameraDevices$CC.m("/", pathPart.getEncoded()) : NotCachedHolder.NotCached, pathPart.wasDecodedCached ? CameraDevices$CC.m("/", pathPart.getDecoded()) : NotCachedHolder.NotCached);
                }
            }
            return new HierarchicalUri((String) this.scheme, (Part) this.authority, pathPart, (Part) this.query, (Part) this.fragment);
        }

        public LegacyAccount getAccountById(AccountId accountId) {
            LegacyAccount byIdSync = ((DefaultLegacyAccountManager) this.scheme).getByIdSync(accountId);
            if (byIdSync != null) {
                return byIdSync;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
            return null;
        }

        public ColorStateList getTintListForDrawableRes(Context context, int i) {
            if (i == R.drawable.abc_edit_text_material) {
                return TraceApi29Impl.getColorStateList(context, R.color.abc_tint_edittext);
            }
            if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                return TraceApi29Impl.getColorStateList(context, R.color.abc_tint_switch_track);
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
                    return TraceApi29Impl.getColorStateList(context, R.color.abc_tint_spinner);
                }
                if (arrayContains((int[]) this.opaquePart, i)) {
                    return ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
                }
                if (arrayContains((int[]) this.fragment, i)) {
                    return TraceApi29Impl.getColorStateList(context, R.color.abc_tint_default);
                }
                if (arrayContains((int[]) this.path, i)) {
                    return TraceApi29Impl.getColorStateList(context, R.color.abc_tint_btn_checkable);
                }
                if (i == R.drawable.abc_seekbar_thumb_material) {
                    return TraceApi29Impl.getColorStateList(context, R.color.abc_tint_seek_thumb);
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
                InputStream open = assets.open((String) this.scheme);
                open.getClass();
                return Okio.source(open);
            }
            if (Build.FINGERPRINT == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
                return null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
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
                        this.query = readByteString;
                        readByteString2.getClass();
                        this.fragment = readByteString2;
                    }
                } finally {
                }
            } finally {
                ((CountDownLatch) this.authority).countDown();
            }
        }

        public LegacyAccount setSpecialFolderSynchronous(LegacyAccount legacyAccount, FolderType folderType, Long l, SpecialFolderSelection specialFolderSelection) {
            LegacyAccount copy$default;
            if (Intrinsics.areEqual(getSpecialFolderId(legacyAccount, folderType), l)) {
                return legacyAccount;
            }
            int ordinal = folderType.ordinal();
            if (ordinal == 3) {
                copy$default = LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, l, null, null, null, null, specialFolderSelection, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1107296257, -1, 8388607);
            } else if (ordinal == 4) {
                copy$default = LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, null, l, null, null, null, null, specialFolderSelection, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, 2080374783, -1, 8388607);
            } else if (ordinal == 5) {
                copy$default = LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, l, null, null, null, null, specialFolderSelection, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -553648129, -1, 8388607);
            } else if (ordinal == 6) {
                copy$default = LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, null, null, l, null, null, null, null, specialFolderSelection, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -134217729, -2, 8388607);
            } else {
                if (ordinal != 7) {
                    UriKt$$ExternalSyntheticBUOutline0.m$1(folderType, "Unsupported: ");
                    return null;
                }
                copy$default = LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, null, null, null, l, null, null, null, null, specialFolderSelection, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -268435457, -3, 8388607);
            }
            if (l != null) {
                DefaultFolderRepository defaultFolderRepository = (DefaultFolderRepository) this.opaquePart;
                AccountId accountId = (AccountId) this.query;
                long longValue = l.longValue();
                defaultFolderRepository.getClass();
                accountId.getClass();
                defaultFolderRepository.messageStoreManager.getMessageStore(accountId).setVisible(longValue);
            }
            return copy$default;
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return build().toString();
                case 9:
                    StringBuilder sb = new StringBuilder("[mimeType=");
                    sb.append((String) this.scheme);
                    sb.append(", mediaType=");
                    sb.append((String) this.opaquePart);
                    sb.append(", subType=");
                    sb.append((String) this.authority);
                    sb.append(", boundary=");
                    sb.append((String) this.query);
                    sb.append(", charset=");
                    return CameraDevices$CC.m(sb, (String) this.fragment, "]");
                default:
                    return super.toString();
            }
        }

        public LegacyAccount updateSpecialFolderSynchronous(LegacyAccount legacyAccount, FolderType folderType, List list) {
            String str;
            Object obj;
            SpecialFolderSelectionStrategy specialFolderSelectionStrategy = (SpecialFolderSelectionStrategy) this.authority;
            int ordinal = folderType.ordinal();
            if (ordinal == 3) {
                str = legacyAccount.importedSentFolder;
            } else if (ordinal == 4) {
                str = legacyAccount.importedTrashFolder;
            } else if (ordinal == 5) {
                str = legacyAccount.importedDraftsFolder;
            } else if (ordinal == 6) {
                str = legacyAccount.importedArchiveFolder;
            } else {
                if (ordinal != 7) {
                    UriKt$$ExternalSyntheticBUOutline0.m$1(folderType, "Unsupported: ");
                    return null;
                }
                str = legacyAccount.importedSpamFolder;
            }
            if (str != null) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (((RemoteFolder) obj).serverId.equals(str)) {
                        break;
                    }
                }
                RemoteFolder remoteFolder = (RemoteFolder) obj;
                Long valueOf = remoteFolder != null ? Long.valueOf(remoteFolder.id) : null;
                if (valueOf != null) {
                    return setSpecialFolderSynchronous(legacyAccount, folderType, valueOf, getSpecialFolderSelection(legacyAccount, folderType));
                }
            }
            int ordinal2 = getSpecialFolderSelection(legacyAccount, folderType).ordinal();
            SpecialFolderSelection specialFolderSelection = SpecialFolderSelection.AUTOMATIC;
            if (ordinal2 == 0) {
                specialFolderSelectionStrategy.getClass();
                RemoteFolder selectSpecialFolder = SpecialFolderSelectionStrategy.selectSpecialFolder(list, folderType);
                return setSpecialFolderSynchronous(legacyAccount, folderType, selectSpecialFolder != null ? Long.valueOf(selectSpecialFolder.id) : null, specialFolderSelection);
            }
            if (ordinal2 != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            if (!list.isEmpty()) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    long j = ((RemoteFolder) it2.next()).id;
                    Long specialFolderId = getSpecialFolderId(legacyAccount, folderType);
                    if (specialFolderId != null && j == specialFolderId.longValue()) {
                        return legacyAccount;
                    }
                }
            }
            specialFolderSelectionStrategy.getClass();
            RemoteFolder selectSpecialFolder2 = SpecialFolderSelectionStrategy.selectSpecialFolder(list, folderType);
            return setSpecialFolderSynchronous(legacyAccount, folderType, selectSpecialFolder2 != null ? Long.valueOf(selectSpecialFolder2.id) : null, specialFolderSelection);
        }

        public Builder(DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultFolderRepository defaultFolderRepository, SpecialFolderSelectionStrategy specialFolderSelectionStrategy, AccountId accountId, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher) {
            this.$r8$classId = 7;
            defaultLegacyAccountManager.getClass();
            defaultFolderRepository.getClass();
            specialFolderSelectionStrategy.getClass();
            accountId.getClass();
            coroutineScope.getClass();
            coroutineDispatcher.getClass();
            this.scheme = defaultLegacyAccountManager;
            this.opaquePart = defaultFolderRepository;
            this.authority = specialFolderSelectionStrategy;
            this.query = accountId;
            this.fragment = coroutineScope;
            this.path = coroutineDispatcher;
        }

        public Builder(String str, String str2, String str3, String str4, String str5, String str6) {
            this.$r8$classId = 9;
            this.scheme = str;
            this.opaquePart = str2;
            this.authority = str3;
            this.query = str4;
            this.fragment = str5;
            this.path = str6;
        }

        public Builder(Context context, AutoValue_CameraThreadConfig autoValue_CameraThreadConfig, CameraPipeImpl cameraPipeImpl, CardView.AnonymousClass1 anonymousClass1, CameraCoordinatorAdapter cameraCoordinatorAdapter, CameraXConfig cameraXConfig) {
            this.$r8$classId = 2;
            cameraPipeImpl.getClass();
            anonymousClass1.getClass();
            cameraCoordinatorAdapter.getClass();
            this.scheme = context;
            this.opaquePart = autoValue_CameraThreadConfig;
            this.authority = cameraPipeImpl;
            this.query = anonymousClass1;
            this.fragment = cameraCoordinatorAdapter;
            this.path = cameraXConfig;
        }

        public /* synthetic */ Builder(int i, boolean z) {
            this.$r8$classId = i;
        }

        public Builder(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, RippleNode$onAttach$1 rippleNode$onAttach$1) {
            this.$r8$classId = 4;
            BorderKt$$ExternalSyntheticLambda1 borderKt$$ExternalSyntheticLambda1 = new BorderKt$$ExternalSyntheticLambda1(6);
            this.scheme = invalidationTracker$implementation$1;
            this.opaquePart = borderKt$$ExternalSyntheticLambda1;
            this.authority = rippleNode$onAttach$1;
            this.query = AtomicFU.atomic(false);
            this.fragment = Cookie.Companion.Channel$default(Integer.MAX_VALUE, null, new TorchControl$$ExternalSyntheticLambda1(7, this), 2);
            this.path = new ArrayDeque();
        }

        public Builder(Camera2Backend camera2Backend, CameraGraphId cameraGraphId, CameraGraph$Config cameraGraph$Config, GraphProcessorImpl graphProcessorImpl, StreamGraphImpl streamGraphImpl, SurfaceGraph surfaceGraph, Camera2Backend camera2Backend2) {
            this.$r8$classId = 3;
            cameraGraph$Config.getClass();
            this.scheme = cameraGraphId;
            this.opaquePart = cameraGraph$Config;
            this.authority = graphProcessorImpl;
            this.query = streamGraphImpl;
            this.fragment = surfaceGraph;
            this.path = camera2Backend2;
        }

        public Builder(CoroutineLiveData coroutineLiveData, Function2 function2, ContextScope contextScope, ImageLoader$Builder$$ExternalSyntheticLambda1 imageLoader$Builder$$ExternalSyntheticLambda1) {
            this.$r8$classId = 5;
            this.scheme = coroutineLiveData;
            this.opaquePart = function2;
            this.authority = contextScope;
            this.query = imageLoader$Builder$$ExternalSyntheticLambda1;
        }
    }
}
