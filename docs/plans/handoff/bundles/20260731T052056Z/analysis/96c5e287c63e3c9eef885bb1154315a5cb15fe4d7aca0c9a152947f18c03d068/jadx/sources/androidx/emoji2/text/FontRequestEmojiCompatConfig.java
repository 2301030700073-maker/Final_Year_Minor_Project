package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import androidx.compose.animation.core.Animation;
import androidx.core.provider.FontProvider;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.emoji2.text.EmojiCompat;
import androidx.room.RoomOpenDelegate;
import androidx.work.Operation$State;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.android.flexbox.FlexboxHelper$FlexLinesResult;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FontRequestEmojiCompatConfig extends RoomOpenDelegate {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        public UtilsKt mCallback;
        public final Context mContext;
        public ThreadPoolExecutor mExecutor;
        public final Object mLock = new Object();
        public Handler mMainHandler;
        public ThreadPoolExecutor mMyThreadPoolExecutor;
        public final FontRequest mRequest;

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest) {
            Operation$State.checkNotNull("Context cannot be null", context);
            this.mContext = context.getApplicationContext();
            this.mRequest = fontRequest;
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
        public final void load(UtilsKt utilsKt) {
            synchronized (this.mLock) {
                this.mCallback = utilsKt;
            }
            loadInternal();
        }

        public final void loadInternal() {
            synchronized (this.mLock) {
                try {
                    if (this.mCallback == null) {
                        return;
                    }
                    ThreadPoolExecutor threadPoolExecutor = this.mExecutor;
                    if (threadPoolExecutor == null) {
                        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ConcurrencyHelpers$$ExternalSyntheticLambda0("emojiCompat"));
                        threadPoolExecutor2.allowCoreThreadTimeOut(true);
                        this.mMyThreadPoolExecutor = threadPoolExecutor2;
                        this.mExecutor = threadPoolExecutor2;
                        threadPoolExecutor = threadPoolExecutor2;
                    }
                    threadPoolExecutor.execute(new Task$$ExternalSyntheticLambda0(14, this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat$FontInfo retrieveFontInfo() {
            try {
                Context context = this.mContext;
                Object[] objArr = {this.mRequest};
                ArrayList arrayList = new ArrayList(1);
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                arrayList.add(obj);
                FlexboxHelper$FlexLinesResult fontFamilyResult = FontProvider.getFontFamilyResult(context, DesugarCollections.unmodifiableList(arrayList));
                int i = fontFamilyResult.mChildState;
                if (i != 0) {
                    Gson$$ExternalSyntheticBUOutline0.m$1(Animation.CC.m(i, "fetchFonts failed (", ")"));
                    return null;
                }
                FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr = (FontsContractCompat$FontInfo[]) fontFamilyResult.mFlexLines.get(0);
                if (fontsContractCompat$FontInfoArr != null && fontsContractCompat$FontInfoArr.length != 0) {
                    return fontsContractCompat$FontInfoArr[0];
                }
                Gson$$ExternalSyntheticBUOutline0.m$1("fetchFonts failed (empty result)");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("provider not found", (Throwable) e);
                return null;
            }
        }
    }
}
