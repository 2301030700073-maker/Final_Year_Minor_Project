package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import androidx.compose.ui.Modifier;
import androidx.core.provider.FontProvider;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.emoji2.text.EmojiCompat;
import androidx.room.RoomOpenDelegate;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import io.noties.markwon.BlockHandlerDef;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import okio.PriorityQueue;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FontRequestEmojiCompatConfig extends RoomOpenDelegate {
    public static final BlockHandlerDef DEFAULT_FONTS_CONTRACT = new BlockHandlerDef(11);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        public CharsKt mCallback;
        public final Context mContext;
        public ThreadPoolExecutor mExecutor;
        public final BlockHandlerDef mFontProviderHelper;
        public final Object mLock = new Object();
        public Handler mMainHandler;
        public ThreadPoolExecutor mMyThreadPoolExecutor;
        public final FontRequest mRequest;

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest) {
            RangesKt.checkNotNull(context, "Context cannot be null");
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
        public final void load(CharsKt charsKt) {
            synchronized (this.mLock) {
                this.mCallback = charsKt;
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
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ConcurrencyHelpers$$ExternalSyntheticLambda0("emojiCompat", 0));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.mMyThreadPoolExecutor = threadPoolExecutor;
                        this.mExecutor = threadPoolExecutor;
                    }
                    this.mExecutor.execute(new ReportExecutor$$ExternalSyntheticLambda0(this, 7));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat$FontInfo retrieveFontInfo() {
            try {
                BlockHandlerDef blockHandlerDef = this.mFontProviderHelper;
                Context context = this.mContext;
                FontRequest fontRequest = this.mRequest;
                blockHandlerDef.getClass();
                Object[] objArr = {fontRequest};
                ArrayList arrayList = new ArrayList(1);
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                arrayList.add(obj);
                PriorityQueue fontFamilyResult = FontProvider.getFontFamilyResult(context, DesugarCollections.unmodifiableList(arrayList));
                int i = fontFamilyResult.size;
                if (i != 0) {
                    Node$$ExternalSyntheticBUOutline0.m811m(Modifier.CC.m("fetchFonts failed (", i, ")"));
                    return null;
                }
                FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr = (FontsContractCompat$FontInfo[]) ((List) fontFamilyResult.array).get(0);
                if (fontsContractCompat$FontInfoArr != null && fontsContractCompat$FontInfoArr.length != 0) {
                    return fontsContractCompat$FontInfoArr[0];
                }
                Node$$ExternalSyntheticBUOutline0.m811m("fetchFonts failed (empty result)");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m("provider not found", e);
                return null;
            }
        }
    }
}
