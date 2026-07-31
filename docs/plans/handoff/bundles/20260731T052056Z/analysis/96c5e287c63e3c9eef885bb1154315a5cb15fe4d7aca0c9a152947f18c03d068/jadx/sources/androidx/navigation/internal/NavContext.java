package androidx.navigation.internal;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.emoji2.text.ConcurrencyHelpers$$ExternalSyntheticLambda0;
import androidx.emoji2.text.EmojiCompat;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.util.UtilsKt;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavContext implements EmojiCompat.MetadataRepoLoader {
    public final Context context;

    public NavContext(Context context) {
        this.context = context.getApplicationContext();
    }

    public Bitmap generateBitmap(int i, Integer num) {
        return HttpUrl.Companion.getBitmapFromDrawable(HttpUrl.Companion.getDrawableFromRes(this.context, i, num));
    }

    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
    public void load(UtilsKt utilsKt) {
        ConcurrencyHelpers$$ExternalSyntheticLambda0 concurrencyHelpers$$ExternalSyntheticLambda0 = new ConcurrencyHelpers$$ExternalSyntheticLambda0("EmojiCompatInitializer");
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), concurrencyHelpers$$ExternalSyntheticLambda0);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, utilsKt, threadPoolExecutor, 2));
    }

    public /* synthetic */ NavContext(Context context, boolean z) {
        this.context = context;
    }
}
