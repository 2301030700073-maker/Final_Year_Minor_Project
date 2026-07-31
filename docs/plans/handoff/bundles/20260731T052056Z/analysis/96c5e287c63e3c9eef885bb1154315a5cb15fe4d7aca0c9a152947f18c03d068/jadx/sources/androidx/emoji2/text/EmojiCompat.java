package androidx.emoji2.text;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Spanned;
import android.view.inputmethod.EditorInfo;
import androidx.collection.ArraySet;
import androidx.core.provider.CallbackWrapper$2;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.work.Operation$State;
import androidx.work.impl.AutoMigration_14_15;
import coil3.ImageLoader$Builder;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVG;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final AutoMigration_14_15 mSpanFactory;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CompatInternal19 {
        public final EmojiCompat mEmojiCompat;
        public volatile ImageLoader$Builder mMetadataRepo;
        public volatile SVG mProcessor;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        /* renamed from: androidx.emoji2.text.EmojiCompat$CompatInternal19$1, reason: invalid class name */
        public final class AnonymousClass1 extends UtilsKt {
            public AnonymousClass1() {
            }

            @Override // coil3.util.UtilsKt
            public final void onFailed(Throwable th) {
                CompatInternal19.this.mEmojiCompat.onMetadataLoadFailed(th);
            }

            @Override // coil3.util.UtilsKt
            public final void onLoaded(ImageLoader$Builder imageLoader$Builder) {
                CompatInternal19 compatInternal19 = CompatInternal19.this;
                compatInternal19.mMetadataRepo = imageLoader$Builder;
                ImageLoader$Builder imageLoader$Builder2 = compatInternal19.mMetadataRepo;
                EmojiCompat emojiCompat = compatInternal19.mEmojiCompat;
                compatInternal19.mProcessor = new SVG(imageLoader$Builder2, emojiCompat.mSpanFactory, emojiCompat.mGlyphChecker, Build.VERSION.SDK_INT >= 34 ? EmojiExclusions$EmojiExclusions_Api34.getExclusions() : RegexKt.getExclusions());
                EmojiCompat emojiCompat2 = compatInternal19.mEmojiCompat;
                ArrayList arrayList = new ArrayList();
                emojiCompat2.mInitLock.writeLock().lock();
                try {
                    emojiCompat2.mLoadState = 1;
                    arrayList.addAll(emojiCompat2.mInitCallbacks);
                    emojiCompat2.mInitCallbacks.clear();
                    emojiCompat2.mInitLock.writeLock().unlock();
                    emojiCompat2.mMainHandler.post(new CallbackWrapper$2(arrayList, emojiCompat2.mLoadState, (Throwable) null));
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface MetadataRepoLoader {
        void load(UtilsKt utilsKt);
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
        this.mSpanFactory = new AutoMigration_14_15(9);
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

    public final int getEmojiStart(CharSequence charSequence, int i) {
        if (!(getLoadState() == 1)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Not initialized yet");
            return 0;
        }
        Operation$State.checkNotNull("charSequence cannot be null", charSequence);
        SVG svg = this.mHelper.mProcessor;
        svg.getClass();
        if (i < 0 || i >= charSequence.length()) {
            return -1;
        }
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            TypefaceEmojiSpan[] typefaceEmojiSpanArr = (TypefaceEmojiSpan[]) spanned.getSpans(i, i + 1, TypefaceEmojiSpan.class);
            if (typefaceEmojiSpanArr.length > 0) {
                return spanned.getSpanStart(typefaceEmojiSpanArr[0]);
            }
        }
        return ((EmojiProcessor$EmojiProcessLookupCallback) svg.process(charSequence, Math.max(0, i - 16), Math.min(charSequence.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessor$EmojiProcessLookupCallback(i))).start;
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
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

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a5 A[Catch: all -> 0x0088, TryCatch #1 {all -> 0x0088, blocks: (B:31:0x0060, B:34:0x0065, B:36:0x0069, B:38:0x0076, B:40:0x0095, B:42:0x009f, B:44:0x00a2, B:46:0x00a5, B:48:0x00b5, B:49:0x00b8), top: B:30:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence process(int r12, int r13, int r14, java.lang.CharSequence r15) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.EmojiCompat.process(int, int, int, java.lang.CharSequence):java.lang.CharSequence");
    }

    public final void registerInitCallback(InitCallback initCallback) {
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState != 1 && this.mLoadState != 2) {
                this.mInitCallbacks.add(initCallback);
                this.mInitLock.writeLock().unlock();
            }
            this.mMainHandler.post(new CallbackWrapper$2(Arrays.asList(initCallback), this.mLoadState, (Throwable) null));
            this.mInitLock.writeLock().unlock();
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public final void updateEditorInfo(EditorInfo editorInfo) {
        if (getLoadState() != 1 || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        CompatInternal19 compatInternal19 = this.mHelper;
        compatInternal19.getClass();
        Bundle bundle = editorInfo.extras;
        MetadataList metadataList = (MetadataList) compatInternal19.mMetadataRepo.application;
        int __offset = metadataList.__offset(4);
        bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", __offset != 0 ? ((ByteBuffer) metadataList.bb).getInt(__offset + metadataList.bb_pos) : 0);
        editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class InitCallback {
        public abstract void onInitialized();

        public void onFailed() {
        }
    }
}
