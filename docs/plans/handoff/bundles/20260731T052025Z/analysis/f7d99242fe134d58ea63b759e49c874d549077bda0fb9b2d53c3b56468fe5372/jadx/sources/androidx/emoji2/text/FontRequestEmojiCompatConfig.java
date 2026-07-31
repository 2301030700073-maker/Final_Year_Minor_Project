package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.core.provider.FontProvider;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat$FontFamilyResult;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.emoji2.text.EmojiCompat;
import androidx.room.RoomOpenDelegate;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.work.Operation$State;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FontRequestEmojiCompatConfig extends RoomOpenDelegate {
    public static final Path.Companion DEFAULT_FONTS_CONTRACT = new Path.Companion();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        public Operation$State mCallback;
        public final Context mContext;
        public ThreadPoolExecutor mExecutor;
        public final Path.Companion mFontProviderHelper;
        public final Object mLock = new Object();
        public Handler mMainHandler;
        public ThreadPoolExecutor mMyThreadPoolExecutor;
        public final FontRequest mRequest;

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest) {
            RelationUtil.checkNotNull(context, "Context cannot be null");
            this.mContext = context.getApplicationContext();
            this.mRequest = fontRequest;
            this.mFontProviderHelper = FontRequestEmojiCompatConfig.DEFAULT_FONTS_CONTRACT;
        }

        public final void cleanUp() {
            synchronized (this.mLock) {
                try {
                    this.mCallback = null;
                    Handler handler = this.mMainHandler;
                    if (handler != null) {
                        handler.removeCallbacks(null);
                    }
                    this.mMainHandler = null;
                    ThreadPoolExecutor threadPoolExecutor = this.mMyThreadPoolExecutor;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.mExecutor = null;
                    this.mMyThreadPoolExecutor = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void load(Operation$State operation$State) {
            synchronized (this.mLock) {
                this.mCallback = operation$State;
            }
            loadInternal();
        }

        public final void loadInternal() {
            synchronized (this.mLock) {
                try {
                    if (this.mCallback == null) {
                        return;
                    }
                    if (this.mExecutor == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ConcurrencyHelpers$$ExternalSyntheticLambda0("emojiCompat"));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.mMyThreadPoolExecutor = threadPoolExecutor;
                        this.mExecutor = threadPoolExecutor;
                    }
                    this.mExecutor.execute(new Preview$$ExternalSyntheticLambda0(29, this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat$FontInfo retrieveFontInfo() {
            try {
                Path.Companion companion = this.mFontProviderHelper;
                Context context = this.mContext;
                FontRequest fontRequest = this.mRequest;
                companion.getClass();
                Object[] objArr = {fontRequest};
                ArrayList arrayList = new ArrayList(1);
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                arrayList.add(obj);
                FontsContractCompat$FontFamilyResult fontFamilyResult = FontProvider.getFontFamilyResult(context, DesugarCollections.unmodifiableList(arrayList));
                int i = fontFamilyResult.mStatusCode;
                if (i != 0) {
                    DBUtil$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "fetchFonts failed (", ")"));
                    return null;
                }
                FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr = (FontsContractCompat$FontInfo[]) fontFamilyResult.mFonts.get(0);
                if (fontsContractCompat$FontInfoArr != null && fontsContractCompat$FontInfoArr.length != 0) {
                    return fontsContractCompat$FontInfoArr[0];
                }
                DBUtil$$ExternalSyntheticBUOutline0.m("fetchFonts failed (empty result)");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                DBUtil$$ExternalSyntheticBUOutline0.m("provider not found", (Throwable) e);
                return null;
            }
        }
    }
}
