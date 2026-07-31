package androidx.emoji2.text;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.ArraySet;
import androidx.core.provider.CallbackWrapper$2;
import androidx.room.Room;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EmojiCompat {
    public static final Object INSTANCE_LOCK = new Object();
    public static volatile EmojiCompat sInstance;
    public final DefaultGlyphChecker mGlyphChecker;
    public final CompatInternal19 mHelper;
    public final ArraySet mInitCallbacks;
    public final ReentrantReadWriteLock mInitLock;
    public volatile int mLoadState;
    public final Handler mMainHandler;
    public final int mMetadataLoadStrategy;
    public final MetadataRepoLoader mMetadataLoader;
    public final Transition.AnonymousClass1 mSpanFactory;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CompatInternal19 {
        public final EmojiCompat mEmojiCompat;
        public volatile Dispatcher mMetadataRepo;
        public volatile ProcessFinisher mProcessor;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: androidx.emoji2.text.EmojiCompat$CompatInternal19$1, reason: invalid class name */
        public final class AnonymousClass1 extends CharsKt {
            public AnonymousClass1() {
            }

            @Override // kotlin.text.CharsKt
            public final void onFailed(Throwable th) {
                CompatInternal19.this.mEmojiCompat.onMetadataLoadFailed(th);
            }

            @Override // kotlin.text.CharsKt
            public final void onLoaded(Dispatcher dispatcher) {
                CompatInternal19 compatInternal19 = CompatInternal19.this;
                compatInternal19.mMetadataRepo = dispatcher;
                Dispatcher dispatcher2 = compatInternal19.mMetadataRepo;
                EmojiCompat emojiCompat = compatInternal19.mEmojiCompat;
                compatInternal19.mProcessor = new ProcessFinisher(dispatcher2, emojiCompat.mSpanFactory, emojiCompat.mGlyphChecker, Build.VERSION.SDK_INT >= 34 ? EmojiExclusions$EmojiExclusions_Api34.getExclusions() : Room.getExclusions());
                EmojiCompat emojiCompat2 = compatInternal19.mEmojiCompat;
                ArrayList arrayList = new ArrayList();
                emojiCompat2.mInitLock.writeLock().lock();
                try {
                    emojiCompat2.mLoadState = 1;
                    arrayList.addAll(emojiCompat2.mInitCallbacks);
                    emojiCompat2.mInitCallbacks.clear();
                    emojiCompat2.mInitLock.writeLock().unlock();
                    emojiCompat2.mMainHandler.post(new CallbackWrapper$2(arrayList, emojiCompat2.mLoadState, null));
                } catch (Throwable th) {
                    emojiCompat2.mInitLock.writeLock().unlock();
                    throw th;
                }
            }
        }

        public CompatInternal19(EmojiCompat emojiCompat) {
            this.mEmojiCompat = emojiCompat;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface MetadataRepoLoader {
        void load(CharsKt charsKt);
    }

    public EmojiCompat(FontRequestEmojiCompatConfig fontRequestEmojiCompatConfig) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mInitLock = reentrantReadWriteLock;
        this.mLoadState = 3;
        MetadataRepoLoader metadataRepoLoader = (MetadataRepoLoader) fontRequestEmojiCompatConfig.identityHash;
        this.mMetadataLoader = metadataRepoLoader;
        int i = fontRequestEmojiCompatConfig.version;
        this.mMetadataLoadStrategy = i;
        this.mGlyphChecker = (DefaultGlyphChecker) fontRequestEmojiCompatConfig.legacyIdentityHash;
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mInitCallbacks = new ArraySet(0);
        this.mSpanFactory = new Transition.AnonymousClass1(11);
        CompatInternal19 compatInternal19 = new CompatInternal19(this);
        this.mHelper = compatInternal19;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.mLoadState = 0;
            } catch (Throwable th) {
                this.mInitLock.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (getLoadState() == 0) {
            try {
                metadataRepoLoader.load(compatInternal19.new AnonymousClass1());
            } catch (Throwable th2) {
                onMetadataLoadFailed(th2);
            }
        }
    }

    public static EmojiCompat get() {
        EmojiCompat emojiCompat;
        synchronized (INSTANCE_LOCK) {
            try {
                emojiCompat = sInstance;
                if (!(emojiCompat != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return emojiCompat;
    }

    public static boolean isConfigured() {
        return sInstance != null;
    }

    public final int getLoadState() {
        this.mInitLock.readLock().lock();
        try {
            return this.mLoadState;
        } finally {
            this.mInitLock.readLock().unlock();
        }
    }

    public final void load() {
        if (!(this.mMetadataLoadStrategy == 1)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
            return;
        }
        if (getLoadState() == 1) {
            return;
        }
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 0) {
                return;
            }
            this.mLoadState = 0;
            this.mInitLock.writeLock().unlock();
            CompatInternal19 compatInternal19 = this.mHelper;
            EmojiCompat emojiCompat = compatInternal19.mEmojiCompat;
            try {
                emojiCompat.mMetadataLoader.load(compatInternal19.new AnonymousClass1());
            } catch (Throwable th) {
                emojiCompat.onMetadataLoadFailed(th);
            }
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    public final void onMetadataLoadFailed(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 2;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new CallbackWrapper$2(arrayList, this.mLoadState, th));
        } catch (Throwable th2) {
            this.mInitLock.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x009d A[Catch: all -> 0x007f, TryCatch #2 {all -> 0x007f, blocks: (B:82:0x0057, B:85:0x005c, B:87:0x0060, B:89:0x006d, B:35:0x008c, B:37:0x0096, B:39:0x0099, B:41:0x009d, B:43:0x00ad, B:44:0x00b0), top: B:81:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence process(int r12, int r13, int r14, java.lang.CharSequence r15) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiCompat.process(int, int, int, java.lang.CharSequence):java.lang.CharSequence");
    }

    public final void registerInitCallback(InitCallback initCallback) {
        RangesKt.checkNotNull(initCallback, "initCallback cannot be null");
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState != 1 && this.mLoadState != 2) {
                this.mInitCallbacks.add(initCallback);
                this.mInitLock.writeLock().unlock();
            }
            this.mMainHandler.post(new CallbackWrapper$2(Arrays.asList(initCallback), this.mLoadState, null));
            this.mInitLock.writeLock().unlock();
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class InitCallback {
        public abstract void onInitialized();

        public void onFailed() {
        }
    }
}
