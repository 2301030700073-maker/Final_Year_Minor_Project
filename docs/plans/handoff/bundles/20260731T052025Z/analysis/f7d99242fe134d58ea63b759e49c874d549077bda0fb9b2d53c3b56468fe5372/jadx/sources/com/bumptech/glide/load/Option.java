package com.bumptech.glide.load;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.text.TextUtils;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.PlatformTypefaces;
import androidx.lifecycle.AtomicReference;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.DefaultViewModelProviderFactory;
import androidx.sqlite.SQLite;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.backend.api.SyncListener;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity;
import java.io.File;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.net.Domain;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Option {
    public static final AnonymousClass1 EMPTY_UPDATER = new AnonymousClass1();
    public final CacheKeyUpdater cacheKeyUpdater;
    public final Object defaultValue;
    public final String key;
    public volatile byte[] keyBytes;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface CacheKeyUpdater {
        void update(byte[] bArr, Object obj, MessageDigest messageDigest);
    }

    public Option(String str, Object obj, CacheKeyUpdater cacheKeyUpdater) {
        if (TextUtils.isEmpty(str)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Must not be null or empty");
            throw null;
        }
        this.key = str;
        this.defaultValue = obj;
        this.cacheKeyUpdater = cacheKeyUpdater;
    }

    public static Option memory(Object obj, String str) {
        return new Option(str, obj, EMPTY_UPDATER);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Option) {
            return this.key.equals(((Option) obj).key);
        }
        return false;
    }

    public final int hashCode() {
        return this.key.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("Option{key='"), this.key, "'}");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.load.Option$1, reason: invalid class name */
    public final class AnonymousClass1 implements Function, PlatformTypefaces, SupportSQLiteOpenHelper.Factory, CacheKeyUpdater, DiskCache, SyncListener {
        public static ArrayList alpnProtocolNames(List list) {
            list.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Protocol) it.next()).protocol);
            }
            return arrayList2;
        }

        public static byte[] concatLengthPrefixed(List list) {
            list.getClass();
            Buffer buffer = new Buffer();
            Iterator it = alpnProtocolNames(list).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                buffer.m1053writeByte(str.length());
                buffer.m1057writeUtf8(str);
            }
            return buffer.readByteArray(buffer.size);
        }

        public static AtomicReference create$default(ViewModelStoreOwner viewModelStoreOwner, ViewModelProvider$Factory viewModelProvider$Factory, int i) {
            if ((i & 2) != 0) {
                viewModelProvider$Factory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory() : DefaultViewModelProviderFactory.INSTANCE;
            }
            CreationExtras defaultViewModelCreationExtras = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            viewModelProvider$Factory.getClass();
            defaultViewModelCreationExtras.getClass();
            return new AtomicReference(viewModelStoreOwner.getViewModelStore(), viewModelProvider$Factory, defaultViewModelCreationExtras);
        }

        /* renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg, reason: not valid java name */
        public static Typeface m926createAndroidTypefaceUsingTypefaceStyleRetOiIg(String str, FontWeight fontWeight, int i) {
            if (i == 0 && Intrinsics.areEqual(fontWeight, FontWeight.Normal) && (str == null || str.length() == 0)) {
                return Typeface.DEFAULT;
            }
            int m817getAndroidTypefaceStyleFO1MlWM = SQLite.m817getAndroidTypefaceStyleFO1MlWM(fontWeight, i);
            return (str == null || str.length() == 0) ? Typeface.defaultFromStyle(m817getAndroidTypefaceStyleFO1MlWM) : Typeface.create(str, m817getAndroidTypefaceStyleFO1MlWM);
        }

        /* renamed from: extractBaseDomain-nA3-jW4, reason: not valid java name */
        public static String m927extractBaseDomainnA3jW4(String str) {
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.scheme("https");
            builder.host(str);
            String str2 = builder.build().host;
            str2.getClass();
            String effectiveTldPlusOne = _HostnamesCommonKt.VERIFY_AS_IP_ADDRESS.matches(str2) ? null : PublicSuffixDatabase.instance.getEffectiveTldPlusOne(str2);
            if (effectiveTldPlusOne == null) {
                return str;
            }
            Domain.m1026constructorimpl(effectiveTldPlusOne);
            return effectiveTldPlusOne;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
        
            if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
        
            if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
        
            if (r11 != false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00a2, code lost:
        
            if (r10 != (-1)) goto L70;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean handleDeleteSurroundingText(androidx.emoji2.viewsintegration.EmojiInputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 240
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.Option.AnonymousClass1.handleDeleteSurroundingText(androidx.emoji2.viewsintegration.EmojiInputConnection, android.text.Editable, int, int, boolean):boolean");
        }

        public static void start(Context context, String str, String str2) {
            str.getClass();
            Intent intent = new Intent(context, (Class<?>) AccountSettingsActivity.class);
            intent.putExtra("accountUuid", str);
            if (str2 != null) {
                intent.putExtra("startScreen", str2);
            }
            context.startActivity(intent);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
        public SupportSQLiteOpenHelper create(MessageHomeActivity.LaunchData launchData) {
            return new FrameworkSQLiteOpenHelper((Context) launchData.search, (String) launchData.account, (PriorityQueue) launchData.messageReference, launchData.noThreading, launchData.messageViewOnly);
        }

        @Override // androidx.compose.ui.text.font.PlatformTypefaces
        /* renamed from: createDefault-FO1MlWM */
        public Typeface mo709createDefaultFO1MlWM(FontWeight fontWeight, int i) {
            return m926createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i);
        }

        @Override // androidx.compose.ui.text.font.PlatformTypefaces
        /* renamed from: createNamed-RetOiIg */
        public Typeface mo710createNamedRetOiIg(GenericFontFamily genericFontFamily, FontWeight fontWeight, int i) {
            String str = genericFontFamily.name;
            int i2 = fontWeight.weight / 100;
            if (i2 >= 0 && i2 < 2) {
                str = str.concat("-thin");
            } else if (2 <= i2 && i2 < 4) {
                str = str.concat("-light");
            } else if (i2 != 4) {
                if (i2 == 5) {
                    str = str.concat("-medium");
                } else if ((6 > i2 || i2 >= 8) && 8 <= i2 && i2 < 11) {
                    str = str.concat("-black");
                }
            }
            Typeface typeface = null;
            if (str.length() != 0) {
                Typeface m926createAndroidTypefaceUsingTypefaceStyleRetOiIg = m926createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i);
                if (!Intrinsics.areEqual(m926createAndroidTypefaceUsingTypefaceStyleRetOiIg, Typeface.create(Typeface.DEFAULT, SQLite.m817getAndroidTypefaceStyleFO1MlWM(fontWeight, i))) && !Intrinsics.areEqual(m926createAndroidTypefaceUsingTypefaceStyleRetOiIg, m926createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i))) {
                    typeface = m926createAndroidTypefaceUsingTypefaceStyleRetOiIg;
                }
            }
            return typeface == null ? m926createAndroidTypefaceUsingTypefaceStyleRetOiIg(genericFontFamily.name, fontWeight, i) : typeface;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskCache
        public File get(Key key) {
            return null;
        }

        @Override // com.fsck.k9.backend.api.SyncListener
        public void syncFlagChanged(String str, String str2) {
            str.getClass();
            str2.getClass();
        }

        @Override // com.fsck.k9.backend.api.SyncListener
        public void syncNewMessage(String str, String str2, boolean z) {
            str.getClass();
            str2.getClass();
        }

        @Override // com.fsck.k9.backend.api.SyncListener
        public void syncProgress(int i, String str, int i2) {
            str.getClass();
        }

        @Override // androidx.arch.core.util.Function
        public Object apply(Object obj) {
            return obj;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskCache
        public void put(Key key, ImapSync imapSync) {
        }

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public void update(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }
}
