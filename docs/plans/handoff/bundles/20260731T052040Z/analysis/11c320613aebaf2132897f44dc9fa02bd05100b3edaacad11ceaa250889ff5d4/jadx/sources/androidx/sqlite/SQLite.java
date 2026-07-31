package androidx.sqlite;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.SQLException;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LocaleSpan;
import android.text.style.RelativeSizeSpan;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.appcompat.app.AlertDialog;
import androidx.collection.LruCache;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidContentType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.room.util.DBUtil;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.utils.Api28Impl;
import androidx.work.impl.utils.NetworkRequest31;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.jakewharton.processphoenix.PhoenixActivity;
import com.xwray.groupie.Group;
import com.xwray.groupie.Item;
import j$.util.Optional;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.UStringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.helper.ValidationException;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Evaluator$$ExternalSyntheticLambda0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.download.DownloadActivity;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda3;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.fragments.MainFragment;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.channel.ChannelFragment;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.fragments.list.search.SearchFragment;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.PlayerIntentType;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.util.InfoCache;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda1;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda5;
import org.schabi.newpipe.util.SerializedCache;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SQLite implements Encoder {
    public static boolean sActionBarFieldsFetched = false;
    public static Method sActionBarOnMenuKeyMethod = null;
    public static boolean sDialogFieldsFetched = false;
    public static Field sDialogKeyListenerField;

    public static final AndroidContentType ContentType(String str) {
        return new AndroidContentType(setOf(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyColumn(int r20, int r21, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r22, androidx.compose.foundation.gestures.FlingBehavior r23, androidx.compose.foundation.layout.Arrangement$Vertical r24, androidx.compose.foundation.layout.PaddingValues r25, androidx.compose.foundation.lazy.LazyListState r26, androidx.compose.runtime.Composer r27, androidx.compose.ui.BiasAlignment.Horizontal r28, androidx.compose.ui.Modifier r29, kotlin.jvm.functions.Function1 r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.LazyColumn(int, int, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.foundation.gestures.FlingBehavior, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.lazy.LazyListState, androidx.compose.runtime.Composer, androidx.compose.ui.BiasAlignment$Horizontal, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, boolean):void");
    }

    public static final GapAnchor asGapAnchor(GapAnchor gapAnchor) {
        if (gapAnchor == null) {
            gapAnchor = null;
        }
        if (gapAnchor != null) {
            return gapAnchor;
        }
        ComposerKt.composeRuntimeError("Inconsistent composition");
        LayoutNode$$ExternalSyntheticBUOutline0.m322m();
        return null;
    }

    public static final LinkedHashSet byteArrayToSetOfTriggers(byte[] bArr) {
        bArr.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int readInt = objectInputStream.readInt();
                    for (int i = 0; i < readInt; i++) {
                        Uri parse = Uri.parse(objectInputStream.readUTF());
                        boolean readBoolean = objectInputStream.readBoolean();
                        parse.getClass();
                        linkedHashSet.add(new Constraints.ContentUriTrigger(parse, readBoolean));
                    }
                    objectInputStream.close();
                } finally {
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            byteArrayInputStream.close();
            return linkedHashSet;
        } finally {
        }
    }

    public static Elements collect(Evaluator evaluator, Element element) {
        Stream filter;
        if (evaluator.wantsNodes()) {
            evaluator.reset();
            element.getClass();
            filter = RangesKt.stream(element, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(evaluator, element, 0));
        } else {
            evaluator.reset();
            element.getClass();
            filter = RangesKt.stream(element, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(evaluator, element, 1));
        }
        Elements elements = (Elements) filter.collect(Collectors.toCollection(new Entities$$ExternalSyntheticLambda0(6)));
        evaluator.reset();
        return elements;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.emoji2.text.FontRequestEmojiCompatConfig create(android.content.Context r13) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            r2 = 10
            if (r0 < r1) goto Le
            androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28 r0 = new androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28
            r0.<init>(r2)
            goto L13
        Le:
            io.noties.markwon.BlockHandlerDef r0 = new io.noties.markwon.BlockHandlerDef
            r0.<init>(r2)
        L13:
            android.content.pm.PackageManager r1 = r13.getPackageManager()
            java.lang.String r2 = "Package manager required to locate emoji font provider"
            kotlin.ranges.RangesKt.checkNotNull(r1, r2)
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "androidx.content.action.LOAD_EMOJI_FONT"
            r2.<init>(r3)
            r3 = 0
            java.util.List r2 = r1.queryIntentContentProviders(r2, r3)
            java.util.Iterator r2 = r2.iterator()
        L2c:
            boolean r4 = r2.hasNext()
            r5 = 0
            if (r4 == 0) goto L48
            java.lang.Object r4 = r2.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r4.providerInfo
            if (r4 == 0) goto L2c
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L2c
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L2c
            goto L49
        L48:
            r4 = r5
        L49:
            if (r4 != 0) goto L4d
        L4b:
            r6 = r5
            goto L7e
        L4d:
            java.lang.String r7 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            java.lang.String r8 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            android.content.pm.Signature[] r0 = r0.getSigningSignatures(r1, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            r1.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            int r2 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
        L5b:
            if (r3 >= r2) goto L69
            r4 = r0[r3]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            byte[] r4 = r4.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            r1.add(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            int r3 = r3 + 1
            goto L5b
        L69:
            java.util.List r10 = java.util.Collections.singletonList(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            androidx.core.provider.FontRequest r6 = new androidx.core.provider.FontRequest     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            java.lang.String r9 = "emojicompat-emoji-font"
            r11 = 0
            r12 = 0
            r6.<init>(r7, r8, r9, r10, r11, r12)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L77
            goto L7e
        L77:
            r0 = move-exception
            java.lang.String r1 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r1, r0)
            goto L4b
        L7e:
            if (r6 != 0) goto L81
            goto L8b
        L81:
            androidx.emoji2.text.FontRequestEmojiCompatConfig r5 = new androidx.emoji2.text.FontRequestEmojiCompatConfig
            androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader r0 = new androidx.emoji2.text.FontRequestEmojiCompatConfig$FontRequestMetadataLoader
            r0.<init>(r13, r6)
            r5.<init>(r0)
        L8b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.create(android.content.Context):androidx.emoji2.text.FontRequestEmojiCompatConfig");
    }

    public static BackStackRecord defaultTransaction(FragmentManager fragmentManager) {
        fragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        backStackRecord.mEnterAnim = R.animator.custom_fade_in;
        backStackRecord.mExitAnim = R.animator.custom_fade_out;
        backStackRecord.mPopEnterAnim = R.animator.custom_fade_in;
        backStackRecord.mPopExitAnim = R.animator.custom_fade_out;
        return backStackRecord;
    }

    public static boolean dispatchBeforeHierarchy(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int indexOfKey;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList2 = ViewCompat.UnhandledKeyEventManager.sViewsWithListeners;
            ViewCompat.UnhandledKeyEventManager unhandledKeyEventManager = (ViewCompat.UnhandledKeyEventManager) view.getTag(R.id.tag_unhandled_key_event_manager);
            WeakReference weakReference = null;
            if (unhandledKeyEventManager == null) {
                unhandledKeyEventManager = new ViewCompat.UnhandledKeyEventManager();
                unhandledKeyEventManager.mViewsContainingListeners = null;
                unhandledKeyEventManager.mCapturedKeys = null;
                unhandledKeyEventManager.mLastDispatchedPreViewKeyEvent = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, unhandledKeyEventManager);
            }
            WeakReference weakReference2 = unhandledKeyEventManager.mLastDispatchedPreViewKeyEvent;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                unhandledKeyEventManager.mLastDispatchedPreViewKeyEvent = new WeakReference(keyEvent);
                if (unhandledKeyEventManager.mCapturedKeys == null) {
                    unhandledKeyEventManager.mCapturedKeys = new SparseArray();
                }
                SparseArray sparseArray = unhandledKeyEventManager.mCapturedKeys;
                if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = (WeakReference) sparseArray.valueAt(indexOfKey);
                    sparseArray.removeAt(indexOfKey);
                }
                if (weakReference == null) {
                    weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = (View) weakReference.get();
                    if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
                        return true;
                    }
                    arrayList.get(size).getClass();
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    return false;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean dispatchKeyEvent(androidx.core.view.KeyEventDispatcher$Component r7, android.view.View r8, android.view.Window.Callback r9, android.view.KeyEvent r10) {
        /*
            r0 = 0
            if (r7 != 0) goto L5
            goto Le4
        L5:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r1 < r2) goto L10
            boolean r7 = r7.superDispatchKeyEvent(r10)
            return r7
        L10:
            boolean r1 = r9 instanceof android.app.Activity
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L82
            android.app.Activity r9 = (android.app.Activity) r9
            r9.onUserInteraction()
            android.view.Window r7 = r9.getWindow()
            r8 = 8
            boolean r8 = r7.hasFeature(r8)
            if (r8 == 0) goto L65
            android.app.ActionBar r8 = r9.getActionBar()
            int r1 = r10.getKeyCode()
            r4 = 82
            if (r1 != r4) goto L65
            if (r8 == 0) goto L65
            boolean r1 = androidx.sqlite.SQLite.sActionBarFieldsFetched
            if (r1 != 0) goto L4d
            java.lang.Class r1 = r8.getClass()     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.String r4 = "onMenuKeyEvent"
            java.lang.Class[] r5 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.Class<android.view.KeyEvent> r6 = android.view.KeyEvent.class
            r5[r0] = r6     // Catch: java.lang.NoSuchMethodException -> L4b
            java.lang.reflect.Method r1 = r1.getMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L4b
            androidx.sqlite.SQLite.sActionBarOnMenuKeyMethod = r1     // Catch: java.lang.NoSuchMethodException -> L4b
        L4b:
            androidx.sqlite.SQLite.sActionBarFieldsFetched = r3
        L4d:
            java.lang.reflect.Method r1 = androidx.sqlite.SQLite.sActionBarOnMenuKeyMethod
            if (r1 == 0) goto L62
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4[r0] = r10     // Catch: java.lang.Throwable -> L62
            java.lang.Object r8 = r1.invoke(r8, r4)     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L5c
            goto L62
        L5c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L62
            boolean r0 = r8.booleanValue()     // Catch: java.lang.Throwable -> L62
        L62:
            if (r0 == 0) goto L65
            goto L81
        L65:
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto L6c
            goto L81
        L6c:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r7, r10)
            if (r8 == 0) goto L77
            goto L81
        L77:
            if (r7 == 0) goto L7d
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        L7d:
            boolean r3 = r10.dispatch(r9, r2, r9)
        L81:
            return r3
        L82:
            boolean r1 = r9 instanceof android.app.Dialog
            if (r1 == 0) goto Ld5
            android.app.Dialog r9 = (android.app.Dialog) r9
            boolean r7 = androidx.sqlite.SQLite.sDialogFieldsFetched
            if (r7 != 0) goto L9b
            java.lang.Class<android.app.Dialog> r7 = android.app.Dialog.class
            java.lang.String r8 = "mOnKeyListener"
            java.lang.reflect.Field r7 = r7.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L99
            androidx.sqlite.SQLite.sDialogKeyListenerField = r7     // Catch: java.lang.NoSuchFieldException -> L99
            r7.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L99
        L99:
            androidx.sqlite.SQLite.sDialogFieldsFetched = r3
        L9b:
            java.lang.reflect.Field r7 = androidx.sqlite.SQLite.sDialogKeyListenerField
            if (r7 == 0) goto La6
            java.lang.Object r7 = r7.get(r9)     // Catch: java.lang.IllegalAccessException -> La6
            android.content.DialogInterface$OnKeyListener r7 = (android.content.DialogInterface.OnKeyListener) r7     // Catch: java.lang.IllegalAccessException -> La6
            goto La7
        La6:
            r7 = r2
        La7:
            if (r7 == 0) goto Lb4
            int r8 = r10.getKeyCode()
            boolean r7 = r7.onKey(r9, r8, r10)
            if (r7 == 0) goto Lb4
            goto Ld4
        Lb4:
            android.view.Window r7 = r9.getWindow()
            boolean r8 = r7.superDispatchKeyEvent(r10)
            if (r8 == 0) goto Lbf
            goto Ld4
        Lbf:
            android.view.View r7 = r7.getDecorView()
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r7, r10)
            if (r8 == 0) goto Lca
            goto Ld4
        Lca:
            if (r7 == 0) goto Ld0
            android.view.KeyEvent$DispatcherState r2 = r7.getKeyDispatcherState()
        Ld0:
            boolean r3 = r10.dispatch(r9, r2, r9)
        Ld4:
            return r3
        Ld5:
            if (r8 == 0) goto Ldd
            boolean r8 = androidx.core.view.ViewCompat.dispatchUnhandledKeyEventBeforeCallback(r8, r10)
            if (r8 != 0) goto Le3
        Ldd:
            boolean r7 = r7.superDispatchKeyEvent(r10)
            if (r7 == 0) goto Le4
        Le3:
            return r3
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.dispatchKeyEvent(androidx.core.view.KeyEventDispatcher$Component, android.view.View, android.view.Window$Callback, android.view.KeyEvent):boolean");
    }

    public static void enqueueOnPlayer(Context context, PlayQueue playQueue, PlayerType playerType) {
        if (playerType != PlayerType.POPUP || Utility.isPopupEnabledElseAsk(context)) {
            Toast.makeText(context, R.string.enqueued, 0).show();
            StaticImageDecoderKt.startForegroundService(context, getPlayerIntent(context, PlayerService.class, playQueue, PlayerIntentType.Enqueue).putExtra("resume_playback", false).putExtra("player_type", playerType));
        }
    }

    public static final void execSQL(SQLiteConnection sQLiteConnection, String str) {
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.step();
            BundleKt.closeFinally(prepare, null);
        } finally {
        }
    }

    public static final String formatDuration(long j) {
        return String.format("%6s", Arrays.copyOf(new Object[]{j <= -999500000 ? Modifier.CC.m((j - 500000000) / C.NANOS_PER_SECOND, " s ", new StringBuilder()) : j <= -999500 ? Modifier.CC.m((j - 500000) / 1000000, " ms", new StringBuilder()) : j <= 0 ? Modifier.CC.m((j - 500) / 1000, " µs", new StringBuilder()) : j < 999500 ? Modifier.CC.m((j + 500) / 1000, " µs", new StringBuilder()) : j < 999500000 ? Modifier.CC.m((j + 500000) / 1000000, " ms", new StringBuilder()) : Modifier.CC.m((j + 500000000) / C.NANOS_PER_SECOND, " s ", new StringBuilder())}, 1));
    }

    public static final byte[] fromNetworkRequest$work_runtime_release(NetworkRequestCompat networkRequestCompat) {
        int[] intArray;
        int[] intArray2;
        networkRequestCompat.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            return new byte[0];
        }
        NetworkRequest networkRequest = (NetworkRequest) networkRequestCompat.wrapped;
        if (networkRequest == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                if (i >= 31) {
                    intArray = NetworkRequest31.transportTypes(networkRequest);
                } else {
                    int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < 10; i2++) {
                        int i3 = iArr[i2];
                        if (Api28Impl.hasTransport$work_runtime_release(networkRequest, i3)) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    intArray = CollectionsKt.toIntArray(arrayList);
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    intArray2 = NetworkRequest31.capabilities(networkRequest);
                } else {
                    int[] iArr2 = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
                    ArrayList arrayList2 = new ArrayList();
                    for (int i4 = 0; i4 < 30; i4++) {
                        int i5 = iArr2[i4];
                        if (Api28Impl.hasCapability$work_runtime_release(networkRequest, i5)) {
                            arrayList2.add(Integer.valueOf(i5));
                        }
                    }
                    intArray2 = CollectionsKt.toIntArray(arrayList2);
                }
                objectOutputStream.writeInt(intArray.length);
                for (int i6 : intArray) {
                    objectOutputStream.writeInt(i6);
                }
                objectOutputStream.writeInt(intArray2.length);
                for (int i7 : intArray2) {
                    objectOutputStream.writeInt(i7);
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArray.getClass();
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static final String[] getContentHints(ContentType contentType) {
        contentType.getClass();
        return (String[]) ((AndroidContentType) contentType).androidAutofillHints.toArray(new String[0]);
    }

    public static CallbackToFutureAdapter$SafeFuture getFuture(CallbackToFutureAdapter$Resolver callbackToFutureAdapter$Resolver) {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = callbackToFutureAdapter$Resolver.getClass();
        try {
            Object attachCompleter = callbackToFutureAdapter$Resolver.attachCompleter(callbackToFutureAdapter$Completer);
            if (attachCompleter == null) {
                return callbackToFutureAdapter$SafeFuture;
            }
            callbackToFutureAdapter$Completer.tag = attachCompleter;
            return callbackToFutureAdapter$SafeFuture;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.delegate.setException(e);
            return callbackToFutureAdapter$SafeFuture;
        }
    }

    public static Intent getIntentByLink(Context context, StreamingService streamingService, String str) {
        StreamingService.LinkType linkTypeByUrl = streamingService.getLinkTypeByUrl(str);
        if (linkTypeByUrl != StreamingService.LinkType.NONE) {
            return getOpenIntent(context, str, streamingService.serviceId, linkTypeByUrl);
        }
        throw new ExtractionException("Url not known to service. service=" + streamingService + " url=" + str);
    }

    public static Item getItem(int i, Collection collection) {
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Group group = (Group) it.next();
            int itemCount = group.getItemCount() + i2;
            if (itemCount > i) {
                return group.getItem(i - i2);
            }
            i2 = itemCount;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Wanted item at ", i, " but there are only ", i2, " items");
        return null;
    }

    public static int getItemCount(Collection collection) {
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((Group) it.next()).getItemCount();
        }
        return i;
    }

    public static Intent getOpenIntent(Context context, String str, int i, StreamingService.LinkType linkType) {
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.putExtra("key_service_id", i);
        intent.putExtra("key_url", str);
        intent.putExtra("key_link_type", linkType);
        return intent;
    }

    public static Intent getPlayerIntent(Context context, Class cls, PlayQueue playQueue, PlayerIntentType playerIntentType) {
        return new Intent(context, (Class<?>) cls).putExtra("play_queue_key", (String) Optional.ofNullable(playQueue).map(new ListHelper$$ExternalSyntheticLambda0(27)).orElse(null)).putExtra("player_type", PlayerType.MAIN).putExtra("should_start_foreground_extra", true).putExtra("player_intent_type", playerIntentType);
    }

    public static void gotoMainFragment(FragmentManager fragmentManager) {
        if (fragmentManager.popBackStackImmediate(-1, 0, "main_fragment_tag")) {
            return;
        }
        openMainFragment(fragmentManager);
    }

    public static final BackoffPolicy intToBackoffPolicy(int i) {
        if (i == 0) {
            return BackoffPolicy.EXPONENTIAL;
        }
        if (i == 1) {
            return BackoffPolicy.LINEAR;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Could not convert ", i, " to BackoffPolicy"));
        return null;
    }

    public static final NetworkType intToNetworkType(int i) {
        if (i == 0) {
            return NetworkType.NOT_REQUIRED;
        }
        if (i == 1) {
            return NetworkType.CONNECTED;
        }
        if (i == 2) {
            return NetworkType.UNMETERED;
        }
        if (i == 3) {
            return NetworkType.NOT_ROAMING;
        }
        if (i == 4) {
            return NetworkType.METERED;
        }
        if (Build.VERSION.SDK_INT >= 30 && i == 5) {
            return NetworkType.TEMPORARILY_UNMETERED;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Could not convert ", i, " to NetworkType"));
        return null;
    }

    public static final OutOfQuotaPolicy intToOutOfQuotaPolicy(int i) {
        if (i == 0) {
            return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i == 1) {
            return OutOfQuotaPolicy.DROP_WORK_REQUEST;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Could not convert ", i, " to OutOfQuotaPolicy"));
        return null;
    }

    public static final WorkInfo$State intToState(int i) {
        if (i == 0) {
            return WorkInfo$State.ENQUEUED;
        }
        if (i == 1) {
            return WorkInfo$State.RUNNING;
        }
        if (i == 2) {
            return WorkInfo$State.SUCCEEDED;
        }
        if (i == 3) {
            return WorkInfo$State.FAILED;
        }
        if (i == 4) {
            return WorkInfo$State.BLOCKED;
        }
        if (i == 5) {
            return WorkInfo$State.CANCELLED;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Could not convert ", i, " to State"));
        return null;
    }

    public static void isTrue(boolean z) {
        if (!z) {
            throw new ValidationException("Must be true");
        }
    }

    public static SequenceBuilderIterator iterator(Function2 function2) {
        SequenceBuilderIterator sequenceBuilderIterator = new SequenceBuilderIterator();
        sequenceBuilderIterator.nextStep = UStringsKt.createCoroutineUnintercepted(sequenceBuilderIterator, sequenceBuilderIterator, function2);
        return sequenceBuilderIterator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0060, code lost:
    
        if (r11 != org.schabi.newpipe.extractor.utils.jsextractor.Token.THIS) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x00ec, code lost:
    
        org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m("msg.invalid.re.flag");
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x00f1, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x011d, code lost:
    
        org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m("msg.unterminated.re.lit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0120, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0136, code lost:
    
        org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m("msg.unterminated.re.lit");
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0139, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0091, code lost:
    
        if (r11 != org.schabi.newpipe.extractor.utils.jsextractor.Token.RB) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a4, code lost:
    
        if (r12 != r7) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c2, code lost:
    
        if (r12 != r7) goto L126;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String matchToClosingBrace(java.lang.String r20, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.sqlite.SQLite.matchToClosingBrace(java.lang.String, java.lang.String):java.lang.String");
    }

    public static final int networkTypeToInt(NetworkType networkType) {
        networkType.getClass();
        int ordinal = networkType.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
                            return 5;
                        }
                        DecodeUtils$$ExternalSyntheticBUOutline0.m$2(networkType, " to int", "Could not convert ");
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static void notEmpty(String str) {
        if (str == null || str.length() == 0) {
            throw new ValidationException("String must not be empty");
        }
    }

    public static void notNull(Object obj) {
        if (obj == null) {
            throw new ValidationException("Object must not be null");
        }
    }

    public static void openChannelFragment(FragmentManager fragmentManager, int i, String str, String str2) {
        BackStackRecord defaultTransaction = defaultTransaction(fragmentManager);
        defaultTransaction.replace(R.id.fragment_holder, ChannelFragment.getInstance(str, i, str2), null);
        defaultTransaction.addToBackStack(null);
        defaultTransaction.commit();
    }

    public static void openCommentAuthorIfPresent(FragmentActivity fragmentActivity, CommentsInfoItem commentsInfoItem) {
        if (TextUtils.isEmpty(commentsInfoItem.getUploaderUrl())) {
            return;
        }
        try {
            openChannelFragment(fragmentActivity.getSupportFragmentManager(), commentsInfoItem.getServiceId(), commentsInfoItem.getUploaderUrl(), commentsInfoItem.getUploaderName());
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(fragmentActivity, "Opening channel fragment", e);
        }
    }

    public static void openDownloads(Activity activity) {
        if (Utility.checkStoragePermissions(activity, 777)) {
            activity.startActivity(new Intent(activity, (Class<?>) DownloadActivity.class));
        }
    }

    public static void openFeedFragment(FragmentManager fragmentManager, long j, String str) {
        BackStackRecord defaultTransaction = defaultTransaction(fragmentManager);
        defaultTransaction.replace(R.id.fragment_holder, FeedFragment.newInstance(str, j), null);
        defaultTransaction.addToBackStack(null);
        defaultTransaction.commit();
    }

    public static void openMainFragment(FragmentManager fragmentManager) {
        InfoCache.INSTANCE.getClass();
        LruCache lruCache = InfoCache.LRU_CACHE;
        synchronized (lruCache) {
            InfoCache.removeStaleCache();
            lruCache.trimToSize(30);
        }
        fragmentManager.popBackStackImmediate(-1, 1, null);
        BackStackRecord defaultTransaction = defaultTransaction(fragmentManager);
        defaultTransaction.replace(R.id.fragment_holder, new MainFragment(), null);
        defaultTransaction.addToBackStack("main_fragment_tag");
        defaultTransaction.commit();
    }

    public static void openPlaylistFragment(FragmentManager fragmentManager, int i, String str, String str2) {
        BackStackRecord defaultTransaction = defaultTransaction(fragmentManager);
        PlaylistFragment playlistFragment = new PlaylistFragment();
        playlistFragment.setInitialData(str, i, str2);
        defaultTransaction.replace(R.id.fragment_holder, playlistFragment, null);
        defaultTransaction.addToBackStack(null);
        defaultTransaction.commit();
    }

    public static void openSearchFragment(FragmentManager fragmentManager, int i, String str) {
        BackStackRecord defaultTransaction = defaultTransaction(fragmentManager);
        defaultTransaction.replace(R.id.fragment_holder, SearchFragment.getInstance(i, str), null);
        defaultTransaction.addToBackStack("search_fragment_tag");
        defaultTransaction.commit();
    }

    public static void openVideoDetailFragment(Context context, FragmentManager fragmentManager, int i, String str, String str2, PlayQueue playQueue, boolean z) {
        boolean z2;
        boolean isAutoplayAllowedByUser;
        NavigationHelper$$ExternalSyntheticLambda1 navigationHelper$$ExternalSyntheticLambda1;
        Fragment findFragmentById;
        PlayerType type = PlayerHolder.getInstance().getType();
        if (type == null) {
            isAutoplayAllowedByUser = PlayerHelper.isAutoplayAllowedByUser(context);
        } else if (z) {
            isAutoplayAllowedByUser = ((Boolean) PlayerHolder.getInstance().getPlayer().map(new Player$$ExternalSyntheticLambda28(17)).orElse(Boolean.FALSE)).booleanValue();
        } else {
            if (type != PlayerType.MAIN) {
                z2 = false;
                navigationHelper$$ExternalSyntheticLambda1 = new NavigationHelper$$ExternalSyntheticLambda1(z2, z, str, type, context, i, str2, playQueue);
                findFragmentById = fragmentManager.findFragmentById(R.id.fragment_player_holder);
                if (!(findFragmentById instanceof VideoDetailFragment) && findFragmentById.isVisible()) {
                    navigationHelper$$ExternalSyntheticLambda1.run((VideoDetailFragment) findFragmentById);
                    return;
                }
                VideoDetailFragment videoDetailFragment = new VideoDetailFragment();
                videoDetailFragment.setInitialData(i, null, str2, playQueue);
                videoDetailFragment.setAutoPlay(z2);
                BackStackRecord defaultTransaction = defaultTransaction(fragmentManager);
                defaultTransaction.replace(R.id.fragment_player_holder, videoDetailFragment, null);
                defaultTransaction.runOnCommitInternal(false, new Processor$$ExternalSyntheticLambda2(navigationHelper$$ExternalSyntheticLambda1, videoDetailFragment, 24));
                defaultTransaction.commit();
            }
            isAutoplayAllowedByUser = PlayerHelper.isAutoplayAllowedByUser(context);
        }
        z2 = isAutoplayAllowedByUser;
        navigationHelper$$ExternalSyntheticLambda1 = new NavigationHelper$$ExternalSyntheticLambda1(z2, z, str, type, context, i, str2, playQueue);
        findFragmentById = fragmentManager.findFragmentById(R.id.fragment_player_holder);
        if (!(findFragmentById instanceof VideoDetailFragment)) {
        }
        VideoDetailFragment videoDetailFragment2 = new VideoDetailFragment();
        videoDetailFragment2.setInitialData(i, null, str2, playQueue);
        videoDetailFragment2.setAutoPlay(z2);
        BackStackRecord defaultTransaction2 = defaultTransaction(fragmentManager);
        defaultTransaction2.replace(R.id.fragment_player_holder, videoDetailFragment2, null);
        defaultTransaction2.runOnCommitInternal(false, new Processor$$ExternalSyntheticLambda2(navigationHelper$$ExternalSyntheticLambda1, videoDetailFragment2, 24));
        defaultTransaction2.commit();
    }

    public static void playOnBackgroundPlayer(Context context, PlayQueue playQueue, boolean z) {
        Toast.makeText(context, R.string.background_player_playing_toast, 0).show();
        StaticImageDecoderKt.startForegroundService(context, getPlayerIntent(context, PlayerService.class, playQueue, PlayerIntentType.AllOthers).putExtra("player_type", PlayerType.AUDIO).putExtra("resume_playback", z));
    }

    public static void playOnExternalPlayer(Context context, String str, String str2, org.schabi.newpipe.extractor.stream.Stream stream) {
        String str3;
        DeliveryMethod deliveryMethod = stream.getDeliveryMethod();
        int i = 0;
        if (!stream.isUrl() || deliveryMethod == DeliveryMethod.TORRENT) {
            Toast.makeText(context, R.string.selected_stream_external_player_not_supported, 0).show();
            return;
        }
        int ordinal = deliveryMethod.ordinal();
        int i2 = 1;
        if (ordinal != 0) {
            str3 = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? "" : MimeTypes.APPLICATION_SS : MimeTypes.APPLICATION_M3U8 : MimeTypes.APPLICATION_MPD;
        } else if (stream.getFormat() != null) {
            str3 = stream.getFormat().mimeType;
        } else if (stream instanceof AudioStream) {
            str3 = "audio/*";
        } else if (!(stream instanceof VideoStream)) {
            return;
        } else {
            str3 = "video/*";
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(Uri.parse(stream.getContent()), str3);
        intent.putExtra("android.intent.extra.TITLE", str);
        intent.putExtra("title", str);
        intent.putExtra("artist", str2);
        intent.addFlags(268435456);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            if (!(context instanceof Activity)) {
                Toast.makeText(context, R.string.no_player_found_toast, 1).show();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setMessage(R.string.no_player_found);
            builder.setPositiveButton(R.string.install, new ErrorActivity$$ExternalSyntheticLambda3(context, i2)).setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(i)).show();
        }
    }

    public static void playOnMainPlayer(ContextWrapper contextWrapper, PlayQueue playQueue, boolean z) {
        PlayQueueItem item = playQueue.getItem();
        if (item != null) {
            int serviceId = item.getServiceId();
            String url = item.getUrl();
            Intent putExtra = getOpenIntent(contextWrapper, url, serviceId, StreamingService.LinkType.STREAM).setFlags(268435456).putExtra("key_title", item.getTitle()).putExtra("switching_players", z);
            SerializedCache.INSTANCE.getClass();
            String put = SerializedCache.put(playQueue);
            if (put != null) {
                putExtra.putExtra("play_queue_key", put);
            }
            contextWrapper.startActivity(putExtra);
        }
    }

    public static void playOnPopupPlayer(Context context, PlayQueue playQueue, boolean z) {
        if (Utility.isPopupEnabledElseAsk(context)) {
            Toast.makeText(context, R.string.popup_playing_toast, 0).show();
            StaticImageDecoderKt.startForegroundService(context, getPlayerIntent(context, PlayerService.class, playQueue, PlayerIntentType.AllOthers).putExtra("player_type", PlayerType.POPUP).putExtra("resume_playback", z));
        }
    }

    /* renamed from: resolveLineHeightInPx-o2QH7mI, reason: not valid java name */
    public static final float m470resolveLineHeightInPxo2QH7mI(long j, float f, Density density) {
        float m453getValueimpl;
        long m452getTypeUIouoOA = TextUnit.m452getTypeUIouoOA(j);
        if (TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 4294967296L)) {
            if (density.getFontScale() <= 1.05d) {
                return density.mo62toPxR2X_6o(j);
            }
            m453getValueimpl = TextUnit.m453getValueimpl(j) / TextUnit.m453getValueimpl(density.mo65toSpkPz2Gy4(f));
        } else {
            if (!TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 8589934592L)) {
                return Float.NaN;
            }
            m453getValueimpl = TextUnit.m453getValueimpl(j);
        }
        return m453getValueimpl * f;
    }

    public static void restartApp(Activity activity) {
        if (AppKt.databaseInstance != null) {
            synchronized (AppKt.class) {
                if (AppKt.databaseInstance != null) {
                    AppDatabase appDatabase = AppKt.databaseInstance;
                    appDatabase.getClass();
                    appDatabase.close();
                    AppKt.databaseInstance = null;
                }
            }
        }
        Context applicationContext = activity.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        PackageManager packageManager = applicationContext.getPackageManager();
        Intent leanbackLaunchIntentForPackage = packageManager.hasSystemFeature("android.software.leanback") ? packageManager.getLeanbackLaunchIntentForPackage(packageName) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
        }
        if (leanbackLaunchIntentForPackage == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m("Unable to determine default activity for ", packageName, ". Does an activity specify the DEFAULT category in its intent filter?"));
            return;
        }
        Intent[] intentArr = {leanbackLaunchIntentForPackage};
        intentArr[0].addFlags(268468224);
        Intent intent = new Intent(applicationContext, (Class<?>) PhoenixActivity.class);
        intent.addFlags(268435456);
        intent.putParcelableArrayListExtra("phoenix_restart_intents", new ArrayList<>(Arrays.asList(intentArr)));
        intent.putExtra("phoenix_main_process_pid", Process.myPid());
        applicationContext.startActivity(intent);
    }

    /* renamed from: setColor-RPmYEkk, reason: not valid java name */
    public static final void m471setColorRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            spannable.setSpan(new ForegroundColorSpan(Brush.m235toArgb8_81llA(j)), i, i2, 33);
        }
    }

    /* renamed from: setFontSize-KmRG4DE, reason: not valid java name */
    public static final void m472setFontSizeKmRG4DE(Spannable spannable, long j, Density density, int i, int i2) {
        long m452getTypeUIouoOA = TextUnit.m452getTypeUIouoOA(j);
        if (TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 4294967296L)) {
            spannable.setSpan(new AbsoluteSizeSpan(MathKt.roundToInt(density.mo62toPxR2X_6o(j)), false), i, i2, 33);
        } else if (TextUnitType.m456equalsimpl0(m452getTypeUIouoOA, 8589934592L)) {
            spannable.setSpan(new RelativeSizeSpan(TextUnit.m453getValueimpl(j)), i, i2, 33);
        }
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        LocaleSpan localeSpan;
        if (localeList != null) {
            List list = localeList.localeList;
            if (Build.VERSION.SDK_INT >= 24) {
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(localeList, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Locale) it.next()).platformLocale);
                }
                java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
                localeSpan = OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
            } else {
                localeSpan = new LocaleSpan((list.isEmpty() ? PlatformLocaleKt.platformLocaleDelegate.getCurrent().get() : localeList.get()).platformLocale);
            }
            spannable.setSpan(localeSpan, i, i2, 33);
        }
    }

    public static Set setOf(Object obj) {
        Set singleton = Collections.singleton(obj);
        singleton.getClass();
        return singleton;
    }

    public static final byte[] setOfTriggersToByteArray(Set set) {
        set.getClass();
        if (set.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(set.size());
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    Constraints.ContentUriTrigger contentUriTrigger = (Constraints.ContentUriTrigger) it.next();
                    objectOutputStream.writeUTF(contentUriTrigger.uri.toString());
                    objectOutputStream.writeBoolean(contentUriTrigger.isTriggeredForDescendants);
                }
                objectOutputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArray.getClass();
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static final int stateToInt(WorkInfo$State workInfo$State) {
        workInfo$State.getClass();
        int ordinal = workInfo$State.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static final void throwSQLiteException(int i, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error code: " + i);
        sb.append(", message: ".concat(str));
        throw new SQLException(sb.toString());
    }

    public static final NetworkRequestCompat toNetworkRequest$work_runtime_release(byte[] bArr) {
        bArr.getClass();
        if (Build.VERSION.SDK_INT < 28 || bArr.length == 0) {
            return new NetworkRequestCompat(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int readInt = objectInputStream.readInt();
                int[] iArr = new int[readInt];
                for (int i = 0; i < readInt; i++) {
                    iArr[i] = objectInputStream.readInt();
                }
                int readInt2 = objectInputStream.readInt();
                int[] iArr2 = new int[readInt2];
                for (int i2 = 0; i2 < readInt2; i2++) {
                    iArr2[i2] = objectInputStream.readInt();
                }
                NetworkRequestCompat createNetworkRequestCompat$work_runtime_release = Api28Impl.createNetworkRequestCompat$work_runtime_release(iArr2, iArr);
                objectInputStream.close();
                byteArrayInputStream.close();
                return createNetworkRequestCompat$work_runtime_release;
            } finally {
            }
        } finally {
        }
    }

    public SQLite beginCollection(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return beginStructure(serialDescriptor);
    }

    public abstract void bind(SQLiteStatement sQLiteStatement, Object obj);

    public abstract int calculateInnerMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float calculateSlideOffset(int i);

    public abstract String createQuery();

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeBoolean(boolean z);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeByte(byte b);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeChar(char c);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeDouble(double d);

    public abstract void encodeElement(SerialDescriptor serialDescriptor, int i);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeFloat(float f);

    @Override // kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    public Encoder encodeInlineElement(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        encodeElement(primitiveArrayDescriptor, i);
        return encodeInline(primitiveArrayDescriptor.getElementDescriptor(i));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeInt(int i);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeLong(long j);

    public void encodeNullableSerializableElement(SerialDescriptor serialDescriptor, int i, Object obj) {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        serialDescriptor.getClass();
        encodeElement(serialDescriptor, i);
        StringSerializer.descriptor.getClass();
        if (obj == null) {
            encodeNull();
        } else {
            encodeSerializableValue(stringSerializer, obj);
        }
    }

    public void encodeSerializableElement(SerialDescriptor serialDescriptor, int i, KSerializer kSerializer, Object obj) {
        serialDescriptor.getClass();
        kSerializer.getClass();
        encodeElement(serialDescriptor, i);
        encodeSerializableValue(kSerializer, obj);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeSerializableValue(KSerializer kSerializer, Object obj);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeShort(short s);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeString(String str);

    public void encodeStringElement(SerialDescriptor serialDescriptor, int i, String str) {
        serialDescriptor.getClass();
        str.getClass();
        encodeElement(serialDescriptor, i);
        encodeString(str);
    }

    public void endStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    public abstract int getCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int getExpandedOffset();

    public abstract int getHiddenOffset();

    public abstract int getMaxViewPositionHorizontal();

    public abstract int getMinViewPositionHorizontal();

    public abstract int getOuterEdge(View view);

    public abstract int getParentInnerEdge(CoordinatorLayout coordinatorLayout);

    public abstract int getSheetEdge();

    public int handle(SQLiteConnection sQLiteConnection, Object obj) {
        sQLiteConnection.getClass();
        if (obj == null) {
            return 0;
        }
        SQLiteStatement prepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(prepare, obj);
            prepare.step();
            BundleKt.closeFinally(prepare, null);
            return DBUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
        }
    }

    public abstract boolean isExpandingOutwards(float f);

    public abstract boolean isReleasedCloseToInnerEdge(View view);

    public abstract boolean isSwipeSignificant(float f, float f2);

    public abstract boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor);

    public abstract boolean shouldHide(View view, float f);

    public abstract void updateCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams, int i);

    public abstract void updateCoplanarSiblingLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);

    public static void isTrue(String str, boolean z) {
        if (!z) {
            throw new ValidationException(str);
        }
    }

    public static void notEmpty(String str, String str2) {
        if (str.length() == 0) {
            throw new ValidationException(str2);
        }
    }
}
